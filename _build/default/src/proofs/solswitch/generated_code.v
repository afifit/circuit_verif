From caesium Require Export notation.
From caesium Require Import tactics.
From refinedc.typing Require Import annotations.
Set Default Proof Using "Type".

(* Generated from [src/solswitch.c]. *)
Section code.
  Definition file_0 : string := "src/solswitch.c".
  Definition loc_2 : location_info := LocationInfo file_0 31 53 31 62.
  Definition loc_3 : location_info := LocationInfo file_0 31 60 31 61.
  Definition loc_6 : location_info := LocationInfo file_0 41 1 44 2.
  Definition loc_7 : location_info := LocationInfo file_0 41 23 44 2.
  Definition loc_8 : location_info := LocationInfo file_0 43 2 43 17.
  Definition loc_9 : location_info := LocationInfo file_0 43 2 43 12.
  Definition loc_10 : location_info := LocationInfo file_0 43 2 43 5.
  Definition loc_11 : location_info := LocationInfo file_0 43 2 43 5.
  Definition loc_12 : location_info := LocationInfo file_0 43 15 43 16.
  Definition loc_13 : location_info := LocationInfo file_0 41 1 44 2.
  Definition loc_14 : location_info := LocationInfo file_0 41 6 41 21.
  Definition loc_15 : location_info := LocationInfo file_0 41 6 41 7.
  Definition loc_16 : location_info := LocationInfo file_0 41 11 41 21.
  Definition loc_17 : location_info := LocationInfo file_0 41 11 41 21.
  Definition loc_18 : location_info := LocationInfo file_0 41 11 41 14.
  Definition loc_19 : location_info := LocationInfo file_0 41 11 41 14.
  Definition loc_22 : location_info := LocationInfo file_0 65 4 65 58.
  Definition loc_23 : location_info := LocationInfo file_0 66 4 72 5.
  Definition loc_24 : location_info := LocationInfo file_0 66 22 72 5.
  Definition loc_25 : location_info := LocationInfo file_0 67 8 71 9.
  Definition loc_26 : location_info := LocationInfo file_0 67 26 71 9.
  Definition loc_27 : location_info := LocationInfo file_0 68 12 70 13.
  Definition loc_28 : location_info := LocationInfo file_0 68 63 70 13.
  Definition loc_29 : location_info := LocationInfo file_0 69 15 69 42.
  Definition loc_30 : location_info := LocationInfo file_0 69 15 69 36.
  Definition loc_31 : location_info := LocationInfo file_0 69 15 69 36.
  Definition loc_32 : location_info := LocationInfo file_0 69 37 69 40.
  Definition loc_33 : location_info := LocationInfo file_0 69 37 69 40.
  Definition loc_34 : location_info := LocationInfo file_0 68 12 70 13.
  Definition loc_35 : location_info := LocationInfo file_0 68 15 68 62.
  Definition loc_36 : location_info := LocationInfo file_0 68 15 68 36.
  Definition loc_37 : location_info := LocationInfo file_0 68 15 68 31.
  Definition loc_38 : location_info := LocationInfo file_0 68 15 68 31.
  Definition loc_39 : location_info := LocationInfo file_0 68 15 68 27.
  Definition loc_40 : location_info := LocationInfo file_0 68 15 68 18.
  Definition loc_41 : location_info := LocationInfo file_0 68 15 68 18.
  Definition loc_42 : location_info := LocationInfo file_0 68 35 68 36.
  Definition loc_43 : location_info := LocationInfo file_0 68 40 68 62.
  Definition loc_44 : location_info := LocationInfo file_0 68 40 68 56.
  Definition loc_45 : location_info := LocationInfo file_0 68 40 68 56.
  Definition loc_46 : location_info := LocationInfo file_0 68 40 68 52.
  Definition loc_47 : location_info := LocationInfo file_0 68 40 68 43.
  Definition loc_48 : location_info := LocationInfo file_0 68 40 68 43.
  Definition loc_49 : location_info := LocationInfo file_0 68 60 68 62.
  Definition loc_50 : location_info := LocationInfo file_0 67 8 71 9.
  Definition loc_51 : location_info := LocationInfo file_0 67 11 67 25.
  Definition loc_52 : location_info := LocationInfo file_0 67 11 67 20.
  Definition loc_53 : location_info := LocationInfo file_0 67 11 67 20.
  Definition loc_54 : location_info := LocationInfo file_0 67 24 67 25.
  Definition loc_55 : location_info := LocationInfo file_0 66 4 72 5.
  Definition loc_56 : location_info := LocationInfo file_0 66 7 66 21.
  Definition loc_57 : location_info := LocationInfo file_0 66 7 66 16.
  Definition loc_58 : location_info := LocationInfo file_0 66 7 66 16.
  Definition loc_59 : location_info := LocationInfo file_0 66 20 66 21.
  Definition loc_60 : location_info := LocationInfo file_0 65 24 65 57.
  Definition loc_61 : location_info := LocationInfo file_0 65 24 65 42.
  Definition loc_62 : location_info := LocationInfo file_0 65 24 65 42.
  Definition loc_63 : location_info := LocationInfo file_0 65 43 65 56.
  Definition loc_64 : location_info := LocationInfo file_0 65 44 65 56.
  Definition loc_65 : location_info := LocationInfo file_0 65 44 65 47.
  Definition loc_66 : location_info := LocationInfo file_0 65 44 65 47.

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

  (* Definition of struct [ComHandler_t]. *)
  Program Definition struct_ComHandler_t := {|
    sl_members := [
      (Some "msg", it_layout u8)
    ];
  |}.
  Solve Obligations with solve_struct_obligations.

  (* Definition of struct [SolenoidSwitchingParams_t]. *)
  Program Definition struct_SolenoidSwitchingParams_t := {|
    sl_members := [
      (Some "state", it_layout size_t);
      (Some "handler", layout_of struct_ComHandler_t);
      (None, Layout 7%nat 0%nat)
    ];
  |}.
  Solve Obligations with solve_struct_obligations.

  (* Definition of function [SCH_recieveFullMsg]. *)
  Definition impl_SCH_recieveFullMsg : function := {|
    f_args := [
      ("handler", void*)
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
  Definition impl_SML_handleReceivedMsgs (global_SCH_recieveFullMsg global_SML_switchTheSolenoid : loc): function := {|
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
          LocInfoE loc_60 (Call (LocInfoE loc_62 (global_SCH_recieveFullMsg)) [@{expr} LocInfoE loc_63 (&(LocInfoE loc_64 ((LocInfoE loc_65 (!{PtrOp} (LocInfoE loc_66 ("ssp")))) at{struct_SolenoidSwitchingParams_t} "handler"))) ]) ;
        locinfo: loc_56 ;
        if{IntOp i32}: LocInfoE loc_56 ((LocInfoE loc_57 (UnOp (CastOp $ IntOp i32) (IntOp u8) (LocInfoE loc_57 (use{IntOp u8} (LocInfoE loc_58 ("rxMsgSize")))))) !={IntOp i32, IntOp i32, i32} (LocInfoE loc_59 (i2v 0 i32)))
        then
        locinfo: loc_51 ;
          Goto "#1"
        else
        Goto "#6"
      ]> $
      <[ "#1" :=
        locinfo: loc_51 ;
        if{IntOp i32}: LocInfoE loc_51 ((LocInfoE loc_52 (UnOp (CastOp $ IntOp i32) (IntOp u8) (LocInfoE loc_52 (use{IntOp u8} (LocInfoE loc_53 ("rxMsgSize")))))) ={IntOp i32, IntOp i32, i32} (LocInfoE loc_54 (i2v 8 i32)))
        then
        locinfo: loc_35 ;
          Goto "#2"
        else
        Goto "#5"
      ]> $
      <[ "#2" :=
        locinfo: loc_35 ;
        if{IntOp i32}: LocInfoE loc_35 ((LocInfoE loc_36 ((LocInfoE loc_37 (UnOp (CastOp $ IntOp i32) (IntOp u8) (LocInfoE loc_37 (use{IntOp u8} (LocInfoE loc_38 ((LocInfoE loc_39 ((LocInfoE loc_40 (!{PtrOp} (LocInfoE loc_41 ("ssp")))) at{struct_SolenoidSwitchingParams_t} "handler")) at{struct_ComHandler_t} "msg")))))) ={IntOp i32, IntOp i32, i32} (LocInfoE loc_42 (i2v 7 i32)))) ||{IntOp i32, IntOp i32, i32} (LocInfoE loc_43 ((LocInfoE loc_44 (UnOp (CastOp $ IntOp i32) (IntOp u8) (LocInfoE loc_44 (use{IntOp u8} (LocInfoE loc_45 ((LocInfoE loc_46 ((LocInfoE loc_47 (!{PtrOp} (LocInfoE loc_48 ("ssp")))) at{struct_SolenoidSwitchingParams_t} "handler")) at{struct_ComHandler_t} "msg")))))) ={IntOp i32, IntOp i32, i32} (LocInfoE loc_49 (i2v 12 i32)))))
        then
        locinfo: loc_29 ;
          Goto "#3"
        else
        Goto "#4"
      ]> $
      <[ "#3" :=
        locinfo: loc_29 ;
        expr: (LocInfoE loc_29 (Call (LocInfoE loc_31 (global_SML_switchTheSolenoid)) [@{expr} LocInfoE loc_32 (use{PtrOp} (LocInfoE loc_33 ("ssp"))) ])) ;
        Return (VOID)
      ]> $
      <[ "#4" :=
        Return (VOID)
      ]> $
      <[ "#5" :=
        Return (VOID)
      ]> $
      <[ "#6" :=
        Return (VOID)
      ]> $∅
    )%E
  |}.
End code.
