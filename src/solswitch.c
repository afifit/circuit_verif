#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>

#define INVALID_MSG_SIZE 0
#define UNIQUE_MSG_SIZE 8
#define UNIQUE_MSG_A 7
#define UNIQUE_MSG_B 12
#define SOLENOID_OFF 0

typedef struct [[rc::refined_by("msg: nat")]] ComHandler_t{
	// uint8_t rxMsg_buf[UNIQUE_MSG_SIZE];
	// uint8_t rxMsgByteNum;
	// uint8_t decodedTxMsg_buf[DECODE_MSG_MAX_SIZE];
    [[rc::field("msg @ int<u8>")]]
    uint8_t msg;

} ComHandler_t;

typedef struct 
[[rc::refined_by("unique_voltage: nat")]]
// [[rc::refined_by("incoming_voltage: nat")]]
// [[rc::refined_by("msp_activation_voltage: nat")]]
// [[rc::refined_by("solenoid_actiavation_volatage: nat")]]
VoltageHandler_t{
    [[rc::field("unique_voltage @ int<u8>")]]
	uint8_t uniqueSafetyVoltage;
    // Aren't used for now
    // [[rc::field("incoming_voltage @ int<u8>")]]
	// uint8_t mainIncomingVoltage;
    // [[rc::field("msp_activation_voltage @ int<u8>")]]
	// uint8_t mspActivationVoltage;
    // [[rc::field("solenoid_actiavation_volatage @ int<u8>")]]
	// uint8_t solenoidActivationVoltage;
}VoltageHandler_t;

typedef  struct
[[rc::refined_by("state: nat", "msg: nat", "voltage : nat")]]
SolenoidSwitchingParams_t{
    [[rc::field("state @ int<size_t>")]]
    size_t state;
    [[rc::field("msg @ ComHandler_t")]]
    ComHandler_t handler;
    [[rc::field("voltage @ VoltageHandler_t")]]
    VoltageHandler_t voltage; 
} SolenoidSwitchingParams_t;

[[rc::parameters("msg: nat", "p: loc")]]
[[rc::args("p @ &own<{msg} @ ComHandler_t>")]]
[[rc::exists("new_msg : nat")]]
[[rc::exists("new_msg_size : nat")]]
[[rc::returns("new_msg_size @ int<u8>")]]
[[rc::ensures("own p : {new_msg} @ ComHandler_t")]]
 uint8_t SCH_recieveFullMsg(ComHandler_t* handler) { return 2; /* need to return something for proof to work */ }

[[rc::parameters("state: nat", "msg: nat", "p: loc", "voltage : nat")]]
[[rc::args("p @ &own<{state, msg, voltage} @ SolenoidSwitchingParams_t>")]]
[[rc::exists("new_state : nat")]]
[[rc::ensures("own p : {new_state ,msg, voltage} @ SolenoidSwitchingParams_t")]]
[[rc::ensures("{new_state = (if Nat.eqb state 0%nat then 1%nat else state)}")]]
[[rc::tactics("all: try destruct state. try lia. try auto.")]]
void SML_switchTheSolenoid( SolenoidSwitchingParams_t* ssp){

	if ( SOLENOID_OFF == ssp->state ){
		//OUT_switchSolenoid();
		ssp->state  = 1;
	}
}



[[rc::parameters("state: nat", "msg: nat", "len: nat", "p: loc", "voltage : nat")]]
[[rc::args("p @ &own<{state, msg, voltage} @ SolenoidSwitchingParams_t>", "len @ int<u8>")]]
[[rc::exists("new_msg : nat")]]
[[rc::exists("new_state : nat")]]
[[rc::ensures("own p : { new_state ,new_msg, voltage} @ SolenoidSwitchingParams_t")]]
[[rc::ensures("{((new_msg = 7%nat ∨ new_msg = 12%nat) ∧ (len = 8%nat) ∧ (state = 0%nat) -> (new_state = 1%nat)) ∨ (new_state = state)}")]]
void SML_trySwitch(SolenoidSwitchingParams_t* ssp, uint8_t length)
{
    if(length != INVALID_MSG_SIZE){
        if(length == UNIQUE_MSG_SIZE){
            if(ssp->handler.msg == UNIQUE_MSG_A || ssp->handler.msg == UNIQUE_MSG_B){ // todo - msg should be array.
               SML_switchTheSolenoid(ssp);
            }
        }
    }
}

[[rc::parameters("state: nat", "msg: nat", "p: loc", "voltage : nat")]]
[[rc::args("p @ &own<{state, msg, voltage} @ SolenoidSwitchingParams_t>")]]
[[rc::exists("new_msg : nat")]]
[[rc::exists("new_state : nat")]]
[[rc::ensures("own p : {new_state ,new_msg, voltage} @ SolenoidSwitchingParams_t")]]
//todo - how to write a spec here to descrive the desried solenoid state? how to handle rxMsgSize?
//as i understand you cant really include SCH_recieveFullMsg return value in your spec (unless you can refine it, by using return). 
void SML_handleReceivedMsgs(SolenoidSwitchingParams_t* ssp)
{
    uint8_t rxMsgSize = SCH_recieveFullMsg(&ssp->handler);
    SML_trySwitch(ssp, rxMsgSize);
}
[[rc::parameters("time: nat")]]
[[rc::returns("time @ int<u16>")]]
uint16_t Timer_getCurTime();

[[rc::parameters("global_time: nat")]]
[[rc::global("global_time @ int<u16>")]]
uint16_t curTime; // Not a global in real code. But otherwise it is a problem to reason about the output of getCurTime.

#define MAX_TIME_VAL 0xFFFF
[[rc::parameters("last_time: nat", "current_time: nat")]]
[[rc::args("last_time @ int<u16>", "current_time @ int<u16>")]]
[[rc::requires("{current_time ≤ last_time -> 65535 - last_time + current_time ≤ 10}")]]
[[rc::requires("{current_time > last_time -> current_time - last_time ≤ 10}")]]
[[rc::exists("t : nat")]]
[[ensures("{ t = (current_time ≤ last_time ) ? (current_time - last_time) : (65535 - last_time + current_time)}")]]
[[rc::returns("t @ int<u8>")]]
uint8_t getSafetyVoltageHoldTime(uint16_t  startTime, uint16_t  curTime){
    // these lines will execute untill the difference (safetyVoltageHoldTime) will be greater than 10 . 
    // so it's leagal to store safetyVoltageHoldTime in one byte.
    uint8_t safetyVoltageHoldTime;
  
    // handle edge case where timeCounter is around the max value
    // after timeCounter is equal to MAX_TIME_VAL-1 it become equal to zero
    if( curTime < startTime ){
        safetyVoltageHoldTime= (MAX_TIME_VAL-startTime) + curTime;
     }else{
        // this lines will be execute untill the difference (safetyVoltageHoldTime) will be greater than 10 . 
        // so the cast to uint8_t is leagal.
        safetyVoltageHoldTime = (uint8_t) (curTime - startTime);
     }
    return safetyVoltageHoldTime;
}


#define SAFETY_VOLTAGE_TRESHOLD 217
#define SAFETY_VOLTAGE_REQUIRED_HOLD_TIME 11
[[rc::parameters("state: nat", "msg: nat", "conversionEnded: bool", "voltage : nat", "p: loc", "global_time : nat")]]
[[rc::args("p @ &own<{state, msg, voltage} @ SolenoidSwitchingParams_t>", "conversionEnded @ builtin_boolean")]]
[[rc::requires  ("[initialized \"curTime\" global_time]")]]
[[rc::ensures("own p : {state ,msg, voltage} @ SolenoidSwitchingParams_t")]]
[[rc::exists("changed : bool ")]]
[[rc::ensures("{changed = if (andb (state =? 0%nat) conversionEnded) then ( if (217 <=? voltage) then (11 <=? global_time) else false) else false}")]]
[[rc::returns("changed @ builtin_boolean")]]
[[rc::tactics("all: try destruct state; tauto.")]]
bool SML_isSafetyVoltageCondExists( SolenoidSwitchingParams_t* solenoidSwitchingParams_ptr, bool isConversionEnded)
{
	if ((solenoidSwitchingParams_ptr->state == SOLENOID_OFF) && isConversionEnded)
    {
        uint8_t uniqueSafetyVoltage = solenoidSwitchingParams_ptr->voltage.uniqueSafetyVoltage;
		if ( (SAFETY_VOLTAGE_TRESHOLD == uniqueSafetyVoltage) || (uniqueSafetyVoltage > SAFETY_VOLTAGE_TRESHOLD)){
            //curTime = Timer_getCurTime();
			//uint8_t safetyVoltageHoldTime = getSafetyVoltageHoldTime(solenoidSwitchingParams_ptr->startTime, curTime);                         	
			//if ( SAFETY_VOLTAGE_REQUIRED_HOLD_TIME == safetyVoltageHoldTime ||  safetyVoltageHoldTime > SAFETY_VOLTAGE_REQUIRED_HOLD_TIME){
			if ( SAFETY_VOLTAGE_REQUIRED_HOLD_TIME == curTime ||  curTime > SAFETY_VOLTAGE_REQUIRED_HOLD_TIME){
					return true;
			}
        }
    }
    return false;
}

/*
→
∧
∨
∃
*/