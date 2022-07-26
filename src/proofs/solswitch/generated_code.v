From caesium Require Export notation.
From caesium Require Import tactics.
From refinedc.typing Require Import annotations.
Set Default Proof Using "Type".

(* Generated from [src/solswitch.c]. *)
Section code.
  Definition file_0 : string := "src/solswitch.c".
  Definition loc_4 : location_info := LocationInfo file_0 29 1 32 2.
  Definition loc_5 : location_info := LocationInfo file_0 29 23 32 2.
  Definition loc_6 : location_info := LocationInfo file_0 31 2 31 17.
  Definition loc_7 : location_info := LocationInfo file_0 31 2 31 12.
  Definition loc_8 : location_info := LocationInfo file_0 31 2 31 5.
  Definition loc_9 : location_info := LocationInfo file_0 31 2 31 5.
  Definition loc_10 : location_info := LocationInfo file_0 31 15 31 16.
  Definition loc_11 : location_info := LocationInfo file_0 29 1 32 2.
  Definition loc_12 : location_info := LocationInfo file_0 29 6 29 21.
  Definition loc_13 : location_info := LocationInfo file_0 29 6 29 7.
  Definition loc_14 : location_info := LocationInfo file_0 29 11 29 21.
  Definition loc_15 : location_info := LocationInfo file_0 29 11 29 21.
  Definition loc_16 : location_info := LocationInfo file_0 29 11 29 14.
  Definition loc_17 : location_info := LocationInfo file_0 29 11 29 14.
  Definition loc_20 : location_info := LocationInfo file_0 43 4 43 28.
  Definition loc_21 : location_info := LocationInfo file_0 44 4 46 5.
  Definition loc_22 : location_info := LocationInfo file_0 44 21 46 5.
  Definition loc_23 : location_info := LocationInfo file_0 45 8 45 35.
  Definition loc_24 : location_info := LocationInfo file_0 45 8 45 29.
  Definition loc_25 : location_info := LocationInfo file_0 45 8 45 29.
  Definition loc_26 : location_info := LocationInfo file_0 45 30 45 33.
  Definition loc_27 : location_info := LocationInfo file_0 45 30 45 33.
  Definition loc_28 : location_info := LocationInfo file_0 44 4 46 5.
  Definition loc_29 : location_info := LocationInfo file_0 44 7 44 20.
  Definition loc_30 : location_info := LocationInfo file_0 44 7 44 15.
  Definition loc_31 : location_info := LocationInfo file_0 44 7 44 15.
  Definition loc_32 : location_info := LocationInfo file_0 44 7 44 10.
  Definition loc_33 : location_info := LocationInfo file_0 44 7 44 10.
  Definition loc_34 : location_info := LocationInfo file_0 44 19 44 20.
  Definition loc_35 : location_info := LocationInfo file_0 43 4 43 22.
  Definition loc_36 : location_info := LocationInfo file_0 43 4 43 22.
  Definition loc_37 : location_info := LocationInfo file_0 43 23 43 26.
  Definition loc_38 : location_info := LocationInfo file_0 43 23 43 26.

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

  (* Definition of struct [SolenoidSwitchingParams_t]. *)
  Program Definition struct_SolenoidSwitchingParams_t := {|
    sl_members := [
      (Some "state", it_layout size_t);
      (Some "msg", it_layout size_t)
    ];
  |}.
  Solve Obligations with solve_struct_obligations.

  (* Definition of function [SCH_recieveFullMsg]. *)
  Definition impl_SCH_recieveFullMsg : function := {|
    f_args := [
      ("ssp", void*)
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

  (* Definition of function [SML_switchTheSolenoid]. *)
  Definition impl_SML_switchTheSolenoid : function := {|
    f_args := [
      ("ssp", void*)
    ];
    f_local_vars := [
    ];
    f_init := "#0";
    f_code := (
      <[ "#0" :=
        locinfo: loc_12 ;
        if{IntOp i32}: LocInfoE loc_12 ((LocInfoE loc_13 (UnOp (CastOp $ IntOp size_t) (IntOp i32) (LocInfoE loc_13 (i2v 0 i32)))) ={IntOp size_t, IntOp size_t, i32} (LocInfoE loc_14 (use{IntOp size_t} (LocInfoE loc_15 ((LocInfoE loc_16 (!{PtrOp} (LocInfoE loc_17 ("ssp")))) at{struct_SolenoidSwitchingParams_t} "state")))))
        then
        locinfo: loc_6 ;
          Goto "#1"
        else
        Goto "#2"
      ]> $
      <[ "#1" :=
        locinfo: loc_6 ;
        LocInfoE loc_7 ((LocInfoE loc_8 (!{PtrOp} (LocInfoE loc_9 ("ssp")))) at{struct_SolenoidSwitchingParams_t} "state") <-{ IntOp size_t }
          LocInfoE loc_10 (UnOp (CastOp $ IntOp size_t) (IntOp i32) (LocInfoE loc_10 (i2v 1 i32))) ;
        Return (VOID)
      ]> $
      <[ "#2" :=
        Return (VOID)
      ]> $∅
    )%E
  |}.

  (* Definition of function [SML_handleReceivedMsgs]. *)
  Definition impl_SML_handleReceivedMsgs (global_SCH_recieveFullMsg global_SML_switchTheSolenoid : loc): function := {|
    f_args := [
      ("ssp", void*)
    ];
    f_local_vars := [
    ];
    f_init := "#0";
    f_code := (
      <[ "#0" :=
        locinfo: loc_20 ;
        expr: (LocInfoE loc_20 (Call (LocInfoE loc_36 (global_SCH_recieveFullMsg)) [@{expr} LocInfoE loc_37 (use{PtrOp} (LocInfoE loc_38 ("ssp"))) ])) ;
        locinfo: loc_29 ;
        if{IntOp i32}: LocInfoE loc_29 ((LocInfoE loc_30 (use{IntOp size_t} (LocInfoE loc_31 ((LocInfoE loc_32 (!{PtrOp} (LocInfoE loc_33 ("ssp")))) at{struct_SolenoidSwitchingParams_t} "msg")))) ={IntOp size_t, IntOp size_t, i32} (LocInfoE loc_34 (UnOp (CastOp $ IntOp size_t) (IntOp i32) (LocInfoE loc_34 (i2v 8 i32)))))
        then
        locinfo: loc_23 ;
          Goto "#1"
        else
        Goto "#2"
      ]> $
      <[ "#1" :=
        locinfo: loc_23 ;
        expr: (LocInfoE loc_23 (Call (LocInfoE loc_25 (global_SML_switchTheSolenoid)) [@{expr} LocInfoE loc_26 (use{PtrOp} (LocInfoE loc_27 ("ssp"))) ])) ;
        Return (VOID)
      ]> $
      <[ "#2" :=
        Return (VOID)
      ]> $∅
    )%E
  |}.
End code.
