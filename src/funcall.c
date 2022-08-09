#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>

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