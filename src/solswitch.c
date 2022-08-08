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

//@rc::inlined
//@Definition SCH_recieveFullMsg_ret (b : nat) : iProp Σ. Admitted. (* TODO: Fill in something here.*)
//@rc::end

[[rc::parameters("state: nat", "msg: nat", "p: loc")]]
[[rc::args("p @ &own<{state, msg} @ SolenoidSwitchingParams_t>")]]
[[rc::exists("new_msg : nat")]]
[[rc::exists("new_msg_size : nat")]]
[[rc::returns("new_msg_size @ int<u8>")]]
[[rc::ensures("own p : {state,new_msg} @ SolenoidSwitchingParams_t")]]
 uint8_t SCH_recieveFullMsg(SolenoidSwitchingParams_t* ssp) { return 2; /* need to return something for proof to work */ }

[[rc::parameters("state: nat", "msg: nat", "p: loc")]]
[[rc::args("p @ &own<{state, msg} @ SolenoidSwitchingParams_t>")]]
[[rc::exists("new_state : nat")]]
// [[rc::ensures("own p : { (if Nat.eqb state 0%nat then 1%nat else state) ,msg} @ SolenoidSwitchingParams_t")]]
[[rc::ensures("own p : { new_state ,msg} @ SolenoidSwitchingParams_t")]]
[[rc::ensures("{new_state = (if Nat.eqb state 0%nat then 1%nat else state)}")]]
// [[rc::ensures("{state = 0%nat} @ optional<1%nat,state> @ new_state")]]
// [[rc::ensures("own p : {state = 0%nat} @ optional<{1%nat,msg} @ SolenoidSwitchingParams_t ,{state,msg} @ SolenoidSwitchingParams_t>")]]
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
[[rc::parameters("state: nat", "msg: nat", "p: loc")]]
[[rc::args("p @ &own<{state, msg} @ SolenoidSwitchingParams_t>")]]
[[rc::exists("new_msg : nat")]]
[[rc::exists("new_state : nat")]]
[[rc::exists("new_msg_size : nat")]]
// [[rc::ensures("own p : { (if Nat.eqb new_msg_size 8%nat then 1%nat else state) ,new_msg} @ SolenoidSwitchingParams_t")]]
// [[rc::ensures("{((new_msg_size = 8%nat)) -> new_state = 1%nat}")]]
// [[rc::ensures("[SCH_recieveFullMsg_ret (if new_state is 1%nat then 8%nat else 0%nat)]")]]
[[rc::ensures("own p : { new_state ,new_msg} @ SolenoidSwitchingParams_t")]]
//[[rc::ensures("{(new_msg_size = 8%nat) -> (new_state = 1%nat)}")]]
// [[rc::ensures("{∃ n, (and (new_msg_size = n) (n <> 8%nat)) -> new_state = state}")]]
[[rc::ensures("{∃ len, or ((len = 8%nat) -> (new_state = 1%nat)) ((len <> 8%nat) -> (new_state = state))}")]]
[[rc::tactics("exists 8%nat. left. auto." )]]
[[rc::tactics("exists 0%nat. right. auto. " )]]
[[rc::tactics("exists 0%nat. right. auto. " )]]
void SML_handleReceivedMsgs(SolenoidSwitchingParams_t* ssp)
{
    uint8_t rxMsgSize = SCH_recieveFullMsg(ssp);
    if(rxMsgSize != INVALID_MSG_SIZE){
        if(rxMsgSize == UNIQUE_MSG_SIZE){
            //if(ssp->msg == UNIQUE_MSG_A /*|| ssp->msg == UNIQUE_MSG_B*/){ // todo - msg should be array. not supported in refinedc?
               //SML_switchTheSolenoid(ssp);
            //}
            ssp->state = 1;
        }
    }
    
}

// [[rc::parameters("state: nat", "msg: nat", "p: loc", "len: nat")]]
// [[rc::args("p @ &own<{state, msg} @ SolenoidSwitchingParams_t>", "len @ int<u8>")]]
// [[rc::exists("new_msg : nat")]]
// [[rc::exists("new_state : nat")]]
// [[rc::ensures("own p : { new_state ,new_msg} @ SolenoidSwitchingParams_t")]]
// [[rc::ensures("{or (and (len = 8%nat) (new_state = 1%nat)) (and (len <> 8%nat) (new_state = state))}")]]
// //[[rc::ensures("{new_state = 1%nat ∨ new_state = state}")]]
// void SML_handleReceivedMsgs_with_length(SolenoidSwitchingParams_t* ssp, uint8_t rxMsgSize)
// {
//     // if(rxMsgSize != INVALID_MSG_SIZE){
//         if(rxMsgSize == UNIQUE_MSG_SIZE){
//             //if(ssp->msg == UNIQUE_MSG_A /*|| ssp->msg == UNIQUE_MSG_B*/){ // todo - msg should be array. not supported in refinedc?
//                //SML_switchTheSolenoid(ssp);
//             //}
//             ssp->state = 1;
//         }
//     // }
    
// }



// void SML_handleReceivedMsgs(SolenoidSwitchingParams_t* ssp)
// {
//     uint8_t rxMsgSize = SCH_recieveFullMsg(ssp);
//     SML_handleReceivedMsgs_with_length(ssp, rxMsgSize);
// }
