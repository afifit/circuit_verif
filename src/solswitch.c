#include <stdint.h>
#include <stdlib.h>

typedef  struct
[[rc::refined_by("state: nat", "msg: nat")]]
SolenoidSwitchingParams_t{
    [[rc::field("state @ int<size_t>")]]
    size_t state;
    [[rc::field("msg @ int<size_t>")]]
    size_t msg;
} SolenoidSwitchingParams_t;


[[rc::parameters("state: nat", "msg: nat", "p: loc")]]
[[rc::args("p @ &own<{state, msg} @ SolenoidSwitchingParams_t>")]]
[[rc::exists("new_msg : nat")]]
[[rc::ensures("own p : {state,new_msg} @ SolenoidSwitchingParams_t")]]
 uint8_t SCH_recieveFullMsg(SolenoidSwitchingParams_t* ssp) 
 {

 }

[[rc::parameters("state: nat", "msg: nat", "p: loc")]]
[[rc::args("p @ &own<{state, msg} @ SolenoidSwitchingParams_t>")]]
[[rc::ensures("own p : { (if Nat.eqb state 0%nat then 1%nat else state) ,msg} @ SolenoidSwitchingParams_t")]]
[[rc::tactics("all: try destruct state. try lia. try auto.")]]
void SML_switchTheSolenoid( SolenoidSwitchingParams_t* ssp){

	if ( 0 == ssp->state ){
		//OUT_switchSolenoid();
		ssp->state  = 1;
	}
}

#define UNIQUE_MSG 8
[[rc::parameters("state: nat", "msg: nat", "p: loc")]]
[[rc::args("p @ &own<{state, msg} @ SolenoidSwitchingParams_t>")]]
[[rc::exists("new_msg : nat")]]
[[rc::exists("new_state : nat")]] // todo - remove this. fix postcondition.
[[rc::ensures("own p : { new_state ,new_msg} @ SolenoidSwitchingParams_t")]]
void SML_handleReceivedMsgs(SolenoidSwitchingParams_t* ssp)
{
    SCH_recieveFullMsg(ssp);
    if(ssp->msg == UNIQUE_MSG){
        SML_switchTheSolenoid(ssp);
    }
}