From caesium Require Export notation.
From caesium Require Import tactics.
From refinedc.typing Require Import annotations.
Set Default Proof Using "Type".

(* Generated from [src/funcall.c]. *)
Section code.
  Definition file_0 : string := "src/funcall.c".
  Definition loc_2 : location_info := LocationInfo file_0 20 4 26 6.
  Definition loc_3 : location_info := LocationInfo file_0 27 4 27 33.
  Definition loc_4 : location_info := LocationInfo file_0 27 11 27 32.
  Definition loc_5 : location_info := LocationInfo file_0 27 11 27 32.
  Definition loc_6 : location_info := LocationInfo file_0 20 29 22 6.
  Definition loc_7 : location_info := LocationInfo file_0 21 8 21 61.
  Definition loc_8 : location_info := LocationInfo file_0 21 8 21 29.
  Definition loc_9 : location_info := LocationInfo file_0 21 31 21 60.
  Definition loc_10 : location_info := LocationInfo file_0 21 31 21 50.
  Definition loc_11 : location_info := LocationInfo file_0 21 32 21 38.
  Definition loc_12 : location_info := LocationInfo file_0 21 40 21 49.
  Definition loc_13 : location_info := LocationInfo file_0 21 40 21 49.
  Definition loc_14 : location_info := LocationInfo file_0 21 53 21 60.
  Definition loc_15 : location_info := LocationInfo file_0 21 53 21 60.
  Definition loc_16 : location_info := LocationInfo file_0 22 10 26 6.
  Definition loc_17 : location_info := LocationInfo file_0 25 8 25 64.
  Definition loc_18 : location_info := LocationInfo file_0 25 8 25 29.
  Definition loc_19 : location_info := LocationInfo file_0 25 32 25 63.
  Definition loc_20 : location_info := LocationInfo file_0 25 42 25 63.
  Definition loc_21 : location_info := LocationInfo file_0 25 43 25 50.
  Definition loc_22 : location_info := LocationInfo file_0 25 43 25 50.
  Definition loc_23 : location_info := LocationInfo file_0 25 53 25 62.
  Definition loc_24 : location_info := LocationInfo file_0 25 53 25 62.
  Definition loc_25 : location_info := LocationInfo file_0 20 8 20 27.
  Definition loc_26 : location_info := LocationInfo file_0 20 8 20 15.
  Definition loc_27 : location_info := LocationInfo file_0 20 8 20 15.
  Definition loc_28 : location_info := LocationInfo file_0 20 18 20 27.
  Definition loc_29 : location_info := LocationInfo file_0 20 18 20 27.

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

  (* Definition of function [getSafetyVoltageHoldTime]. *)
  Definition impl_getSafetyVoltageHoldTime : function := {|
    f_args := [
      ("startTime", it_layout u16);
      ("curTime", it_layout u16)
    ];
    f_local_vars := [
      ("safetyVoltageHoldTime", it_layout u8)
    ];
    f_init := "#0";
    f_code := (
      <[ "#0" :=
        locinfo: loc_25 ;
        if{IntOp i32}: LocInfoE loc_25 ((LocInfoE loc_26 (UnOp (CastOp $ IntOp i32) (IntOp u16) (LocInfoE loc_26 (use{IntOp u16} (LocInfoE loc_27 ("curTime")))))) <{IntOp i32, IntOp i32, i32} (LocInfoE loc_28 (UnOp (CastOp $ IntOp i32) (IntOp u16) (LocInfoE loc_28 (use{IntOp u16} (LocInfoE loc_29 ("startTime")))))))
        then
        locinfo: loc_7 ;
          Goto "#2"
        else
        locinfo: loc_17 ;
          Goto "#3"
      ]> $
      <[ "#1" :=
        locinfo: loc_3 ;
        Return (LocInfoE loc_4 (use{IntOp u8} (LocInfoE loc_5 ("safetyVoltageHoldTime"))))
      ]> $
      <[ "#2" :=
        locinfo: loc_7 ;
        LocInfoE loc_8 ("safetyVoltageHoldTime") <-{ IntOp u8 }
          LocInfoE loc_9 (UnOp (CastOp $ IntOp u8) (IntOp i32) (LocInfoE loc_9 ((LocInfoE loc_10 ((LocInfoE loc_11 (i2v 65535 i32)) -{IntOp i32, IntOp i32} (LocInfoE loc_12 (UnOp (CastOp $ IntOp i32) (IntOp u16) (LocInfoE loc_12 (use{IntOp u16} (LocInfoE loc_13 ("startTime")))))))) +{IntOp i32, IntOp i32} (LocInfoE loc_14 (UnOp (CastOp $ IntOp i32) (IntOp u16) (LocInfoE loc_14 (use{IntOp u16} (LocInfoE loc_15 ("curTime"))))))))) ;
        locinfo: loc_3 ;
        Goto "#1"
      ]> $
      <[ "#3" :=
        locinfo: loc_17 ;
        LocInfoE loc_18 ("safetyVoltageHoldTime") <-{ IntOp u8 }
          LocInfoE loc_19 (UnOp (CastOp $ IntOp u8) (IntOp i32) (LocInfoE loc_20 ((LocInfoE loc_21 (UnOp (CastOp $ IntOp i32) (IntOp u16) (LocInfoE loc_21 (use{IntOp u16} (LocInfoE loc_22 ("curTime")))))) -{IntOp i32, IntOp i32} (LocInfoE loc_23 (UnOp (CastOp $ IntOp i32) (IntOp u16) (LocInfoE loc_23 (use{IntOp u16} (LocInfoE loc_24 ("startTime"))))))))) ;
        locinfo: loc_3 ;
        Goto "#1"
      ]> $∅
    )%E
  |}.
End code.
