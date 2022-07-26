From caesium Require Export notation.
From caesium Require Import tactics.
From refinedc.typing Require Import annotations.
Set Default Proof Using "Type".

(* Generated from [src/circuit.c]. *)
Section code.
  Definition file_0 : string := "src/circuit.c".
  Definition loc_4 : location_info := LocationInfo file_0 29 4 29 18.
  Definition loc_5 : location_info := LocationInfo file_0 29 11 29 17.
  Definition loc_6 : location_info := LocationInfo file_0 29 11 29 17.
  Definition loc_7 : location_info := LocationInfo file_0 29 11 29 12.
  Definition loc_8 : location_info := LocationInfo file_0 29 11 29 12.
  Definition loc_11 : location_info := LocationInfo file_0 37 4 37 18.
  Definition loc_12 : location_info := LocationInfo file_0 37 11 37 17.
  Definition loc_13 : location_info := LocationInfo file_0 37 11 37 17.
  Definition loc_14 : location_info := LocationInfo file_0 37 11 37 12.
  Definition loc_15 : location_info := LocationInfo file_0 37 11 37 12.
  Definition loc_18 : location_info := LocationInfo file_0 45 8 45 19.
  Definition loc_19 : location_info := LocationInfo file_0 45 8 45 14.
  Definition loc_20 : location_info := LocationInfo file_0 45 8 45 9.
  Definition loc_21 : location_info := LocationInfo file_0 45 8 45 9.
  Definition loc_22 : location_info := LocationInfo file_0 45 17 45 18.
  Definition loc_23 : location_info := LocationInfo file_0 45 17 45 18.
  Definition loc_26 : location_info := LocationInfo file_0 54 8 54 19.
  Definition loc_27 : location_info := LocationInfo file_0 54 8 54 14.
  Definition loc_28 : location_info := LocationInfo file_0 54 8 54 9.
  Definition loc_29 : location_info := LocationInfo file_0 54 8 54 9.
  Definition loc_30 : location_info := LocationInfo file_0 54 17 54 18.
  Definition loc_31 : location_info := LocationInfo file_0 54 17 54 18.
  Definition loc_34 : location_info := LocationInfo file_0 66 5 66 18.
  Definition loc_35 : location_info := LocationInfo file_0 68 8 68 22.
  Definition loc_36 : location_info := LocationInfo file_0 71 5 71 18.
  Definition loc_37 : location_info := LocationInfo file_0 73 5 73 18.
  Definition loc_38 : location_info := LocationInfo file_0 74 5 74 18.
  Definition loc_39 : location_info := LocationInfo file_0 74 5 74 12.
  Definition loc_40 : location_info := LocationInfo file_0 74 5 74 12.
  Definition loc_41 : location_info := LocationInfo file_0 74 13 74 14.
  Definition loc_42 : location_info := LocationInfo file_0 74 13 74 14.
  Definition loc_43 : location_info := LocationInfo file_0 74 15 74 16.
  Definition loc_44 : location_info := LocationInfo file_0 73 5 73 12.
  Definition loc_45 : location_info := LocationInfo file_0 73 5 73 12.
  Definition loc_46 : location_info := LocationInfo file_0 73 13 73 14.
  Definition loc_47 : location_info := LocationInfo file_0 73 13 73 14.
  Definition loc_48 : location_info := LocationInfo file_0 73 15 73 16.
  Definition loc_49 : location_info := LocationInfo file_0 71 5 71 12.
  Definition loc_50 : location_info := LocationInfo file_0 71 5 71 12.
  Definition loc_51 : location_info := LocationInfo file_0 71 13 71 14.
  Definition loc_52 : location_info := LocationInfo file_0 71 13 71 14.
  Definition loc_53 : location_info := LocationInfo file_0 71 15 71 16.
  Definition loc_54 : location_info := LocationInfo file_0 68 8 68 15.
  Definition loc_55 : location_info := LocationInfo file_0 68 8 68 15.
  Definition loc_56 : location_info := LocationInfo file_0 68 16 68 17.
  Definition loc_57 : location_info := LocationInfo file_0 68 16 68 17.
  Definition loc_58 : location_info := LocationInfo file_0 68 19 68 20.
  Definition loc_59 : location_info := LocationInfo file_0 66 5 66 12.
  Definition loc_60 : location_info := LocationInfo file_0 66 5 66 12.
  Definition loc_61 : location_info := LocationInfo file_0 66 13 66 14.
  Definition loc_62 : location_info := LocationInfo file_0 66 13 66 14.
  Definition loc_63 : location_info := LocationInfo file_0 66 15 66 16.
  Definition loc_66 : location_info := LocationInfo file_0 78 4 78 13.
  Definition loc_67 : location_info := LocationInfo file_0 78 11 78 12.

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

  (* Definition of function [circuit_action]. *)
  Definition impl_circuit_action (global_set_one global_set_two : loc): function := {|
    f_args := [
      ("c", void*)
    ];
    f_local_vars := [
    ];
    f_init := "#0";
    f_code := (
      <[ "#0" :=
        locinfo: loc_34 ;
        expr: (LocInfoE loc_34 (Call (LocInfoE loc_60 (global_set_two)) [@{expr} LocInfoE loc_61 (use{PtrOp} (LocInfoE loc_62 ("c"))) ;
        LocInfoE loc_63 (UnOp (CastOp $ BoolOp) (IntOp i32) (LocInfoE loc_63 (i2v 0 i32))) ])) ;
        locinfo: loc_35 ;
        expr: (LocInfoE loc_35 (Call (LocInfoE loc_55 (global_set_one)) [@{expr} LocInfoE loc_56 (use{PtrOp} (LocInfoE loc_57 ("c"))) ;
        LocInfoE loc_58 (UnOp (CastOp $ BoolOp) (IntOp i32) (LocInfoE loc_58 (i2v 1 i32))) ])) ;
        locinfo: loc_36 ;
        expr: (LocInfoE loc_36 (Call (LocInfoE loc_50 (global_set_one)) [@{expr} LocInfoE loc_51 (use{PtrOp} (LocInfoE loc_52 ("c"))) ;
        LocInfoE loc_53 (UnOp (CastOp $ BoolOp) (IntOp i32) (LocInfoE loc_53 (i2v 0 i32))) ])) ;
        locinfo: loc_37 ;
        expr: (LocInfoE loc_37 (Call (LocInfoE loc_45 (global_set_two)) [@{expr} LocInfoE loc_46 (use{PtrOp} (LocInfoE loc_47 ("c"))) ;
        LocInfoE loc_48 (UnOp (CastOp $ BoolOp) (IntOp i32) (LocInfoE loc_48 (i2v 1 i32))) ])) ;
        locinfo: loc_38 ;
        expr: (LocInfoE loc_38 (Call (LocInfoE loc_40 (global_set_two)) [@{expr} LocInfoE loc_41 (use{PtrOp} (LocInfoE loc_42 ("c"))) ;
        LocInfoE loc_43 (UnOp (CastOp $ BoolOp) (IntOp i32) (LocInfoE loc_43 (i2v 0 i32))) ])) ;
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
        locinfo: loc_66 ;
        Return (LocInfoE loc_67 (i2v 0 i32))
      ]> $∅
    )%E
  |}.
End code.
