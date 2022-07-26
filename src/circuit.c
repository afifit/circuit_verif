#include <stdbool.h>


/*
    A simple circuit program with the safety requirement of 
    both switches (one and two) must never be true at the same time.
*/

typedef struct 
[[rc::refined_by("a: bool", "b: bool")]]
[[rc::constraints("{~(and (Is_true a) (Is_true b))}")]]
circuit {
    [[rc::field("a @ builtin_boolean")]]
    bool one;
    [[rc::field("b @ builtin_boolean")]]
    bool two;
} circuit;

[[rc::parameters("a: bool", "b: bool", "p: loc")]]
[[rc::args("p @ &own<{a, b} @ circuit>")]]
[[rc::ensures("own p : {a,b} @ circuit")]]
void assert_circuit(circuit* c){}

[[rc::parameters("a: bool", "b: bool", "p: loc")]]
[[rc::args("p @ &own<{a, b} @ circuit>")]]
[[rc::returns("a @ builtin_boolean")]]
[[rc::ensures("own p : {a,b} @ circuit")]]
bool check_one(circuit* c){
    return c->one;
}

[[rc::parameters("a: bool", "b: bool", "p: loc")]]
[[rc::args("p @ &own<{a, b} @ circuit>")]]
[[rc::returns("b @ builtin_boolean")]]
[[rc::ensures("own p : {a,b} @ circuit")]]
bool check_two(circuit* c){
    return c->two;
}

[[rc::parameters("a: bool", "b: bool", "x: bool", "p: loc")]]
[[rc::args("p @ &own<{a, b} @ circuit>", "x @ builtin_boolean")]]
[[rc::requires("{~(and (Is_true x) (Is_true b))}")]]
[[rc::ensures("own p : {x,b} @ circuit")]]
void set_one(circuit* c, bool v){
        c->one = v;
}

[[rc::parameters("a: bool", "b: bool", "x: bool", "p: loc")]]
[[rc::args("p @ &own<{a, b} @ circuit>", "x @ builtin_boolean")]]
[[rc::requires("{~(and (Is_true x) (Is_true a))}")]]
[[rc::ensures("own p : {a,x} @ circuit")]]
[[rc::tactics ("all: tauto.")]] //needed for ~(x /\ a) -> ~(a /\ x)
void set_two(circuit* c, bool v){
        c->two = v;
}



[[rc::parameters("a: bool", "b: bool", "p: loc")]]
[[rc::args("p @ &own<{a, b} @ circuit>")]]
[[rc::exists("x : bool")]]
[[rc::exists("y : bool")]]
[[rc::ensures("own p : {x,y} @ circuit")]]
void circuit_action(circuit* c){
     if(!check_two(c)){
        set_one(c, true);
     }
     
     set_one(c,false);

     set_two(c,true);
     set_two(c,false);
}

int main(){
    return 0;
}