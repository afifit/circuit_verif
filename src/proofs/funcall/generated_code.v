From caesium Require Export notation.
From caesium Require Import tactics.
From refinedc.typing Require Import annotations.
Set Default Proof Using "Type".

(* Generated from [src/funcall.c]. *)
Section code.
  Definition file_0 : string := "src/funcall.c".
  Definition loc_2 : location_info := LocationInfo file_0 22 19 22 28.
  Definition loc_3 : location_info := LocationInfo file_0 22 26 22 27.
  Definition loc_6 : location_info := LocationInfo file_0 29 4 31 5.
  Definition loc_7 : location_info := LocationInfo file_0 32 4 32 13.
  Definition loc_8 : location_info := LocationInfo file_0 32 11 32 12.
  Definition loc_9 : location_info := LocationInfo file_0 29 22 31 5.
  Definition loc_10 : location_info := LocationInfo file_0 30 8 30 17.
  Definition loc_11 : location_info := LocationInfo file_0 30 15 30 16.
  Definition loc_12 : location_info := LocationInfo file_0 29 4 31 5.
  Definition loc_13 : location_info := LocationInfo file_0 29 7 29 21.
  Definition loc_14 : location_info := LocationInfo file_0 29 7 29 16.
  Definition loc_15 : location_info := LocationInfo file_0 29 7 29 14.
  Definition loc_16 : location_info := LocationInfo file_0 29 7 29 14.
  Definition loc_17 : location_info := LocationInfo file_0 29 20 29 21.

  (* Definition of struct [div]. *)
  Program Definition struct_div := {|
    sl_members := [
      (Some "quot", it_layout i32);
      (Some "rem", it_layout i32)
    ];
  |}.
  Solve Obligations with solve_struct_obligations.

  (* Definition of struct [ldiv]. *)
  Program Definition struct_ldiv := {|
    sl_members := [
      (Some "quot", it_layout i64);
      (Some "rem", it_layout i64)
    ];
  |}.
  Solve Obligations with solve_struct_obligations.

  (* Definition of struct [lldiv]. *)
  Program Definition struct_lldiv := {|
    sl_members := [
      (Some "quot", it_layout i64);
      (Some "rem", it_layout i64)
    ];
  |}.
  Solve Obligations with solve_struct_obligations.

  (* Definition of function [nondent]. *)
  Definition impl_nondent : function := {|
    f_args := [
    ];
    f_local_vars := [
    ];
    f_init := "#0";
    f_code := (
      <[ "#0" :=
        locinfo: loc_2 ;
        Return (LocInfoE loc_3 (UnOp (CastOp $ BoolOp) (IntOp i32) (LocInfoE loc_3 (i2v 2 i32))))
      ]> $∅
    )%E
  |}.

  (* Definition of function [foo]. *)
  Definition impl_foo (global_nondent : loc): function := {|
    f_args := [
    ];
    f_local_vars := [
    ];
    f_init := "#0";
    f_code := (
      <[ "#0" :=
        locinfo: loc_13 ;
        if{IntOp i32}: LocInfoE loc_13 ((LocInfoE loc_14 (UnOp (CastOp $ IntOp i32) (BoolOp) (LocInfoE loc_14 (Call (LocInfoE loc_16 (global_nondent)) [@{expr}  ])))) ={IntOp i32, IntOp i32, i32} (LocInfoE loc_17 (i2v 2 i32)))
        then
        locinfo: loc_10 ;
          Goto "#2"
        else
        locinfo: loc_7 ;
          Goto "#3"
      ]> $
      <[ "#1" :=
        locinfo: loc_7 ;
        Return (LocInfoE loc_8 (i2v 2 i32))
      ]> $
      <[ "#2" :=
        locinfo: loc_10 ;
        Return (LocInfoE loc_11 (i2v 1 i32))
      ]> $
      <[ "#3" :=
        locinfo: loc_7 ;
        Goto "#1"
      ]> $∅
    )%E
  |}.
End code.
