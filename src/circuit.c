#include <stdbool.h>

/*
    A simple circuit program with the safety requirement of 
    both switches (switch one and switch two) must never be true at the same time.
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


[[rc::parameters("a1: bool", "b1: bool", "p1: loc")]]
[[rc::parameters("a2: bool", "b2: bool", "p2: loc")]]
[[rc::args("p1 @ &own<{a1, b1} @ circuit>")]]
[[rc::args("p2 @ &own<{a2, b2} @ circuit>")]]
[[rc::exists("x1 : bool")]]
[[rc::exists("x2 : bool")]]
[[rc::exists("y1 : bool")]]
[[rc::exists("y2 : bool")]]
[[rc::ensures("own p1 : {x1,y1} @ circuit")]]
[[rc::ensures("own p2 : {x2,y2} @ circuit")]]
void foo(circuit* c1, circuit* c2){
    if(!check_two(c1)){
        set_one(c1, true);
     }
    if(!check_one(c2)){
        set_two(c2, true);
     }
}

[[rc::ensures("True")]]
void bar(){
    circuit c1 = {false, false};
    circuit c2 = {false, false};
    foo(&c1, &c1);
}
int main(){
    return 0;
}