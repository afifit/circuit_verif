#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>

[[rc::refined_by("msg: nat")]]
typedef struct ComHandler{
	// uint8_t rxMsg_buf[UNIQUE_MSG_SIZE];
	// uint8_t rxMsgByteNum;
	// uint8_t decodedTxMsg_buf[DECODE_MSG_MAX_SIZE];
    [[rc::field("msg @ int<u8>")]]
    uint8_t msg;

} ComHandler;

[[rc::refined_by("msg: nat")]]
typedef struct MyStruct {
	// uint8_t rxMsg_buf[UNIQUE_MSG_SIZE];
	// uint8_t rxMsgByteNum;
	// uint8_t decodedTxMsg_buf[DECODE_MSG_MAX_SIZE];
    [[rc::field("msg @ ComHandler_t")]]
    ComHandler cmdhandler;

} MyStruct;

// [[rc::exists("value : nat")]]
// [[rc::returns("value @ int<u8>")]]
//  uint8_t nondent() { return 2; /* need to return something for proof to work */ }

// [[rc::exists("value : nat")]]
// [[rc::exists("nondent_value : nat")]]
// [[rc::returns("value @ int<size_t>")]]
// [[rc::ensures("{if (Nat.eqb nondent_value 2%nat) then value = 1%nat else value = 2%nat}")]]
// size_t use_nondent(){
//     if(nondent() == 2){
//         return 2;
//     }
//     return 1;
// }
// [[rc::exists("v : bool")]]
// [[rc::returns("v @ builtin_boolean")]]
//  bool nondent() { return 2;}

// [[rc::exists("v : Z")]]
// [[rc::returns("v @ int<i32>")]]
// [[rc::ensures("{\exsits w, w = 2 -> v = 1}")]]
// int foo(){
//     if(nondent() == 2){
//         return 1;
//     }
//     return 2;
// }

// [[rc::exists("value : bool")]]
// [[rc::returns("value @ builtin_boolean")]]
// [[rc::ensures("{Is_true value}")]]
// bool example_return(){
//     // if(nondent() == 2){
//     //     return 1;
//     // }
//     return 1;
// }