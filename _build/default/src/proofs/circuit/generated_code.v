From caesium Require Export notation.
From caesium Require Import tactics.
From refinedc.typing Require Import annotations.
Set Default Proof Using "Type".

(* Generated from [src/circuit.c]. *)
Section code.
  Definition file_0 : string := "src/circuit.c".
  Definition loc_4 : location_info := LocationInfo file_0 25 4 25 18.
  Definition loc_5 : location_info := LocationInfo file_0 25 11 25 17.
  Definition loc_6 : location_info := LocationInfo file_0 25 11 25 17.
  Definition loc_7 : location_info := LocationInfo file_0 25 11 25 12.
  Definition loc_8 : location_info := LocationInfo file_0 25 11 25 12.
  Definition loc_11 : location_info := LocationInfo file_0 33 4 33 18.
  Definition loc_12 : location_info := LocationInfo file_0 33 11 33 17.
  Definition loc_13 : location_info := LocationInfo file_0 33 11 33 17.
  Definition loc_14 : location_info := LocationInfo file_0 33 11 33 12.
  Definition loc_15 : location_info := LocationInfo file_0 33 11 33 12.
  Definition loc_18 : location_info := LocationInfo file_0 41 8 41 19.
  Definition loc_19 : location_info := LocationInfo file_0 41 8 41 14.
  Definition loc_20 : location_info := LocationInfo file_0 41 8 41 9.
  Definition loc_21 : location_info := LocationInfo file_0 41 8 41 9.
  Definition loc_22 : location_info := LocationInfo file_0 41 17 41 18.
  Definition loc_23 : location_info := LocationInfo file_0 41 17 41 18.
  Definition loc_26 : location_info := LocationInfo file_0 50 8 50 19.
  Definition loc_27 : location_info := LocationInfo file_0 50 8 50 14.
  Definition loc_28 : location_info := LocationInfo file_0 50 8 50 9.
  Definition loc_29 : location_info := LocationInfo file_0 50 8 50 9.
  Definition loc_30 : location_info := LocationInfo file_0 50 17 50 18.
  Definition loc_31 : location_info := LocationInfo file_0 50 17 50 18.
  Definition loc_34 : location_info := LocationInfo file_0 69 4 69 13.
  Definition loc_35 : location_info := LocationInfo file_0 69 11 69 12.

  (* Definition of struct [circuit]. *)
  Program Definition struct_circuit := {|
    sl_members := [
      (Some "one", bool_layout);
      (Some "two", bool_layout)
    ];
  |}.
  Solve Obligations with solve_struct_obligations.

  (* Definition of function [assert_circuit]. *)
  Definition impl_assert_circuit : function := {|
    f_args := [
      ("c", void*)
    ];
    f_local_vars := [
    ];
    f_init := "#0";
    f_code := (
      <[ "#0" :=
        Return (VOID)
      ]> $∅
    )%E
  |}.

  (* Definition of function [check_one]. *)
  Definition impl_check_one : function := {|
    f_args := [
      ("c", void*)
    ];
    f_local_vars := [
    ];
    f_init := "#0";
    f_code := (
      <[ "#0" :=
        locinfo: loc_4 ;
        Return (LocInfoE loc_5 (use{BoolOp} (LocInfoE loc_6 ((LocInfoE loc_7 (!{PtrOp} (LocInfoE loc_8 ("c")))) at{struct_circuit} "one"))))
      ]> $∅
    )%E
  |}.

  (* Definition of function [check_two]. *)
  Definition impl_check_two : function := {|
    f_args := [
      ("c", void*)
    ];
    f_local_vars := [
    ];
    f_init := "#0";
    f_code := (
      <[ "#0" :=
        locinfo: loc_11 ;
        Return (LocInfoE loc_12 (use{BoolOp} (LocInfoE loc_13 ((LocInfoE loc_14 (!{PtrOp} (LocInfoE loc_15 ("c")))) at{struct_circuit} "two"))))
      ]> $∅
    )%E
  |}.

  (* Definition of function [set_one]. *)
  Definition impl_set_one : function := {|
    f_args := [
      ("c", void*);
      ("v", bool_layout)
    ];
    f_local_vars := [
    ];
    f_init := "#0";
    f_code := (
      <[ "#0" :=
        locinfo: loc_18 ;
        LocInfoE loc_19 ((LocInfoE loc_20 (!{PtrOp} (LocInfoE loc_21 ("c")))) at{struct_circuit} "one") <-{ BoolOp }
          LocInfoE loc_22 (use{BoolOp} (LocInfoE loc_23 ("v"))) ;
        Return (VOID)
      ]> $∅
    )%E
  |}.

  (* Definition of function [set_two]. *)
  Definition impl_set_two : function := {|
    f_args := [
      ("c", void*);
      ("v", bool_layout)
    ];
    f_local_vars := [
    ];
    f_init := "#0";
    f_code := (
      <[ "#0" :=
        locinfo: loc_26 ;
        LocInfoE loc_27 ((LocInfoE loc_28 (!{PtrOp} (LocInfoE loc_29 ("c")))) at{struct_circuit} "two") <-{ BoolOp }
          LocInfoE loc_30 (use{BoolOp} (LocInfoE loc_31 ("v"))) ;
        Return (VOID)
      ]> $∅
    )%E
  |}.

  (* Definition of function [main]. *)
  Definition impl_main : function := {|
    f_args := [
    ];
    f_local_vars := [
    ];
    f_init := "#0";
    f_code := (
      <[ "#0" :=
        locinfo: loc_34 ;
        Return (LocInfoE loc_35 (i2v 0 i32))
      ]> $∅
    )%E
  |}.
End code.
