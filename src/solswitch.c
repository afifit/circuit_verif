#include <stdint.h>
#include <stdlib.h>

typedef struct [[rc::refined_by("msg: nat")]] ComHandler_t{
	// uint8_t rxMsg_buf[UNIQUE_MSG_SIZE];
	// uint8_t rxMsgByteNum;
	// uint8_t decodedTxMsg_buf[DECODE_MSG_MAX_SIZE];
    [[rc::field("msg @ int<u8>")]]
    uint8_t msg;

} ComHandler_t;

typedef  struct
[[rc::refined_by("state: nat", "msg: nat")]]
SolenoidSwitchingParams_t{
    [[rc::field("state @ int<size_t>")]]
    size_t state;
    [[rc::field("msg @ ComHandler_t")]]
    ComHandler_t handler;
} SolenoidSwitchingParams_t;


[[rc::parameters("msg: nat", "p: loc")]]
[[rc::args("p @ &own<{msg} @ ComHandler_t>")]]
[[rc::exists("new_msg : nat")]]
[[rc::exists("new_msg_size : nat")]]
[[rc::returns("new_msg_size @ int<u8>")]]
[[rc::ensures("own p : {new_msg} @ ComHandler_t")]]
 uint8_t SCH_recieveFullMsg(ComHandler_t* handler) { return 2; /* need to return something for proof to work */ }

[[rc::parameters("state: nat", "msg: nat", "p: loc")]]
[[rc::args("p @ &own<{state, msg} @ SolenoidSwitchingParams_t>")]]
[[rc::exists("new_state : nat")]]
[[rc::ensures("own p : { new_state ,msg} @ SolenoidSwitchingParams_t")]]
[[rc::ensures("{new_state = (if Nat.eqb state 0%nat then 1%nat else state)}")]]
[[rc::tactics("all: try destruct state. try lia. try auto.")]]
void SML_switchTheSolenoid( SolenoidSwitchingParams_t* ssp){

	if ( 0 == ssp->state ){
		//OUT_switchSolenoid();
		ssp->state  = 1;
	}
}


#define INVALID_MSG_SIZE 0
#define UNIQUE_MSG_SIZE 8
#define UNIQUE_MSG_A 7
#define UNIQUE_MSG_B 12

[[rc::parameters("state: nat", "msg: nat", "len: nat", "p: loc")]]
[[rc::args("p @ &own<{state, msg} @ SolenoidSwitchingParams_t>", "len @ int<u8>")]]
[[rc::exists("new_msg : nat")]]
[[rc::exists("new_state : nat")]]
[[rc::ensures("own p : { new_state ,new_msg} @ SolenoidSwitchingParams_t")]]
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

[[rc::parameters("state: nat", "msg: nat", "p: loc")]]
[[rc::args("p @ &own<{state, msg} @ SolenoidSwitchingParams_t>")]]
[[rc::exists("new_msg : nat")]]
[[rc::exists("new_state : nat")]]
[[rc::ensures("own p : { new_state ,new_msg} @ SolenoidSwitchingParams_t")]]
//todo - how to write a spec here to descrive the desried solenoid state? how to handle rxMsgSize?
//as i understand you cant really include SCH_recieveFullMsg return value in your spec (unless you can refine it, by using return). 
void SML_handleReceivedMsgs(SolenoidSwitchingParams_t* ssp)
{
    uint8_t rxMsgSize = SCH_recieveFullMsg(&ssp->handler);
    SML_trySwitch(ssp, rxMsgSize);
}

/*
→
∧
∨
∃
*/