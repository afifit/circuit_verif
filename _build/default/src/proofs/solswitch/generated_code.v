From caesium Require Export notation.
From caesium Require Import tactics.
From refinedc.typing Require Import annotations.
Set Default Proof Using "Type".

(* Generated from [src/solswitch.c]. *)
Section code.
  Definition file_0 : string := "src/solswitch.c".
  Definition loc_2 : location_info := LocationInfo file_0 23 62 23 71.
  Definition loc_3 : location_info := LocationInfo file_0 23 69 23 70.
  Definition loc_6 : location_info := LocationInfo file_0 36 1 39 2.
  Definition loc_7 : location_info := LocationInfo file_0 36 23 39 2.
  Definition loc_8 : location_info := LocationInfo file_0 38 2 38 17.
  Definition loc_9 : location_info := LocationInfo file_0 38 2 38 12.
  Definition loc_10 : location_info := LocationInfo file_0 38 2 38 5.
  Definition loc_11 : location_info := LocationInfo file_0 38 2 38 5.
  Definition loc_12 : location_info := LocationInfo file_0 38 15 38 16.
  Definition loc_13 : location_info := LocationInfo file_0 36 1 39 2.
  Definition loc_14 : location_info := LocationInfo file_0 36 6 36 21.
  Definition loc_15 : location_info := LocationInfo file_0 36 6 36 7.
  Definition loc_16 : location_info := LocationInfo file_0 36 11 36 21.
  Definition loc_17 : location_info := LocationInfo file_0 36 11 36 21.
  Definition loc_18 : location_info := LocationInfo file_0 36 11 36 14.
  Definition loc_19 : location_info := LocationInfo file_0 36 11 36 14.
  Definition loc_22 : location_info := LocationInfo file_0 64 4 64 48.
  Definition loc_23 : location_info := LocationInfo file_0 65 4 72 5.
  Definition loc_24 : location_info := LocationInfo file_0 65 22 72 5.
  Definition loc_25 : location_info := LocationInfo file_0 66 8 71 9.
  Definition loc_26 : location_info := LocationInfo file_0 66 26 71 9.
  Definition loc_27 : location_info := LocationInfo file_0 70 12 70 27.
  Definition loc_28 : location_info := LocationInfo file_0 70 12 70 22.
  Definition loc_29 : location_info := LocationInfo file_0 70 12 70 15.
  Definition loc_30 : location_info := LocationInfo file_0 70 12 70 15.
  Definition loc_31 : location_info := LocationInfo file_0 70 25 70 26.
  Definition loc_32 : location_info := LocationInfo file_0 66 8 71 9.
  Definition loc_33 : location_info := LocationInfo file_0 66 11 66 25.
  Definition loc_34 : location_info := LocationInfo file_0 66 11 66 20.
  Definition loc_35 : location_info := LocationInfo file_0 66 11 66 20.
  Definition loc_36 : location_info := LocationInfo file_0 66 24 66 25.
  Definition loc_37 : location_info := LocationInfo file_0 65 4 72 5.
  Definition loc_38 : location_info := LocationInfo file_0 65 7 65 21.
  Definition loc_39 : location_info := LocationInfo file_0 65 7 65 16.
  Definition loc_40 : location_info := LocationInfo file_0 65 7 65 16.
  Definition loc_41 : location_info := LocationInfo file_0 65 20 65 21.
  Definition loc_42 : location_info := LocationInfo file_0 64 24 64 47.
  Definition loc_43 : location_info := LocationInfo file_0 64 24 64 42.
  Definition loc_44 : location_info := LocationInfo file_0 64 24 64 42.
  Definition loc_45 : location_info := LocationInfo file_0 64 43 64 46.
  Definition loc_46 : location_info := LocationInfo file_0 64 43 64 46.

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
        locinfo: loc_2 ;
        Return (LocInfoE loc_3 (UnOp (CastOp $ IntOp u8) (IntOp i32) (LocInfoE loc_3 (i2v 2 i32))))
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
        locinfo: loc_14 ;
        if{IntOp i32}: LocInfoE loc_14 ((LocInfoE loc_15 (UnOp (CastOp $ IntOp size_t) (IntOp i32) (LocInfoE loc_15 (i2v 0 i32)))) ={IntOp size_t, IntOp size_t, i32} (LocInfoE loc_16 (use{IntOp size_t} (LocInfoE loc_17 ((LocInfoE loc_18 (!{PtrOp} (LocInfoE loc_19 ("ssp")))) at{struct_SolenoidSwitchingParams_t} "state")))))
        then
        locinfo: loc_8 ;
          Goto "#1"
        else
        Goto "#2"
      ]> $
      <[ "#1" :=
        locinfo: loc_8 ;
        LocInfoE loc_9 ((LocInfoE loc_10 (!{PtrOp} (LocInfoE loc_11 ("ssp")))) at{struct_SolenoidSwitchingParams_t} "state") <-{ IntOp size_t }
          LocInfoE loc_12 (UnOp (CastOp $ IntOp size_t) (IntOp i32) (LocInfoE loc_12 (i2v 1 i32))) ;
        Return (VOID)
      ]> $
      <[ "#2" :=
        Return (VOID)
      ]> $∅
    )%E
  |}.

  (* Definition of function [SML_handleReceivedMsgs]. *)
  Definition impl_SML_handleReceivedMsgs (global_SCH_recieveFullMsg : loc): function := {|
    f_args := [
      ("ssp", void*)
    ];
    f_local_vars := [
      ("rxMsgSize", it_layout u8)
    ];
    f_init := "#0";
    f_code := (
      <[ "#0" :=
        "rxMsgSize" <-{ IntOp u8 }
          LocInfoE loc_42 (Call (LocInfoE loc_44 (global_SCH_recieveFullMsg)) [@{expr} LocInfoE loc_45 (use{PtrOp} (LocInfoE loc_46 ("ssp"))) ]) ;
        locinfo: loc_38 ;
        if{IntOp i32}: LocInfoE loc_38 ((LocInfoE loc_39 (UnOp (CastOp $ IntOp i32) (IntOp u8) (LocInfoE loc_39 (use{IntOp u8} (LocInfoE loc_40 ("rxMsgSize")))))) !={IntOp i32, IntOp i32, i32} (LocInfoE loc_41 (i2v 0 i32)))
        then
        locinfo: loc_33 ;
          Goto "#1"
        else
        Goto "#4"
      ]> $
      <[ "#1" :=
        locinfo: loc_33 ;
        if{IntOp i32}: LocInfoE loc_33 ((LocInfoE loc_34 (UnOp (CastOp $ IntOp i32) (IntOp u8) (LocInfoE loc_34 (use{IntOp u8} (LocInfoE loc_35 ("rxMsgSize")))))) ={IntOp i32, IntOp i32, i32} (LocInfoE loc_36 (i2v 8 i32)))
        then
        locinfo: loc_27 ;
          Goto "#2"
        else
        Goto "#3"
      ]> $
      <[ "#2" :=
        locinfo: loc_27 ;
        LocInfoE loc_28 ((LocInfoE loc_29 (!{PtrOp} (LocInfoE loc_30 ("ssp")))) at{struct_SolenoidSwitchingParams_t} "state") <-{ IntOp size_t }
          LocInfoE loc_31 (UnOp (CastOp $ IntOp size_t) (IntOp i32) (LocInfoE loc_31 (i2v 1 i32))) ;
        Return (VOID)
      ]> $
      <[ "#3" :=
        Return (VOID)
      ]> $
      <[ "#4" :=
        Return (VOID)
      ]> $∅
    )%E
  |}.
End code.
