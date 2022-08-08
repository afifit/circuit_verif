From caesium Require Export notation.
From caesium Require Import tactics.
From refinedc.typing Require Import annotations.
Set Default Proof Using "Type".

(* Generated from [src/solswitch.c]. *)
Section code.
  Definition file_0 : string := "src/solswitch.c".
  Definition loc_2 : location_info := LocationInfo file_0 29 53 29 62.
  Definition loc_3 : location_info := LocationInfo file_0 29 60 29 61.
  Definition loc_6 : location_info := LocationInfo file_0 39 1 42 2.
  Definition loc_7 : location_info := LocationInfo file_0 39 23 42 2.
  Definition loc_8 : location_info := LocationInfo file_0 41 2 41 17.
  Definition loc_9 : location_info := LocationInfo file_0 41 2 41 12.
  Definition loc_10 : location_info := LocationInfo file_0 41 2 41 5.
  Definition loc_11 : location_info := LocationInfo file_0 41 2 41 5.
  Definition loc_12 : location_info := LocationInfo file_0 41 15 41 16.
  Definition loc_13 : location_info := LocationInfo file_0 39 1 42 2.
  Definition loc_14 : location_info := LocationInfo file_0 39 6 39 21.
  Definition loc_15 : location_info := LocationInfo file_0 39 6 39 7.
  Definition loc_16 : location_info := LocationInfo file_0 39 11 39 21.
  Definition loc_17 : location_info := LocationInfo file_0 39 11 39 21.
  Definition loc_18 : location_info := LocationInfo file_0 39 11 39 14.
  Definition loc_19 : location_info := LocationInfo file_0 39 11 39 14.
  Definition loc_22 : location_info := LocationInfo file_0 59 4 65 5.
  Definition loc_23 : location_info := LocationInfo file_0 59 19 65 5.
  Definition loc_24 : location_info := LocationInfo file_0 60 8 64 9.
  Definition loc_25 : location_info := LocationInfo file_0 60 23 64 9.
  Definition loc_26 : location_info := LocationInfo file_0 61 12 63 13.
  Definition loc_27 : location_info := LocationInfo file_0 61 63 63 13.
  Definition loc_28 : location_info := LocationInfo file_0 62 15 62 42.
  Definition loc_29 : location_info := LocationInfo file_0 62 15 62 36.
  Definition loc_30 : location_info := LocationInfo file_0 62 15 62 36.
  Definition loc_31 : location_info := LocationInfo file_0 62 37 62 40.
  Definition loc_32 : location_info := LocationInfo file_0 62 37 62 40.
  Definition loc_33 : location_info := LocationInfo file_0 61 12 63 13.
  Definition loc_34 : location_info := LocationInfo file_0 61 15 61 62.
  Definition loc_35 : location_info := LocationInfo file_0 61 15 61 36.
  Definition loc_36 : location_info := LocationInfo file_0 61 15 61 31.
  Definition loc_37 : location_info := LocationInfo file_0 61 15 61 31.
  Definition loc_38 : location_info := LocationInfo file_0 61 15 61 27.
  Definition loc_39 : location_info := LocationInfo file_0 61 15 61 18.
  Definition loc_40 : location_info := LocationInfo file_0 61 15 61 18.
  Definition loc_41 : location_info := LocationInfo file_0 61 35 61 36.
  Definition loc_42 : location_info := LocationInfo file_0 61 40 61 62.
  Definition loc_43 : location_info := LocationInfo file_0 61 40 61 56.
  Definition loc_44 : location_info := LocationInfo file_0 61 40 61 56.
  Definition loc_45 : location_info := LocationInfo file_0 61 40 61 52.
  Definition loc_46 : location_info := LocationInfo file_0 61 40 61 43.
  Definition loc_47 : location_info := LocationInfo file_0 61 40 61 43.
  Definition loc_48 : location_info := LocationInfo file_0 61 60 61 62.
  Definition loc_49 : location_info := LocationInfo file_0 60 8 64 9.
  Definition loc_50 : location_info := LocationInfo file_0 60 11 60 22.
  Definition loc_51 : location_info := LocationInfo file_0 60 11 60 17.
  Definition loc_52 : location_info := LocationInfo file_0 60 11 60 17.
  Definition loc_53 : location_info := LocationInfo file_0 60 21 60 22.
  Definition loc_54 : location_info := LocationInfo file_0 59 4 65 5.
  Definition loc_55 : location_info := LocationInfo file_0 59 7 59 18.
  Definition loc_56 : location_info := LocationInfo file_0 59 7 59 13.
  Definition loc_57 : location_info := LocationInfo file_0 59 7 59 13.
  Definition loc_58 : location_info := LocationInfo file_0 59 17 59 18.
  Definition loc_61 : location_info := LocationInfo file_0 78 4 78 58.
  Definition loc_62 : location_info := LocationInfo file_0 79 4 79 34.
  Definition loc_63 : location_info := LocationInfo file_0 79 4 79 17.
  Definition loc_64 : location_info := LocationInfo file_0 79 4 79 17.
  Definition loc_65 : location_info := LocationInfo file_0 79 18 79 21.
  Definition loc_66 : location_info := LocationInfo file_0 79 18 79 21.
  Definition loc_67 : location_info := LocationInfo file_0 79 23 79 32.
  Definition loc_68 : location_info := LocationInfo file_0 79 23 79 32.
  Definition loc_69 : location_info := LocationInfo file_0 78 24 78 57.
  Definition loc_70 : location_info := LocationInfo file_0 78 24 78 42.
  Definition loc_71 : location_info := LocationInfo file_0 78 24 78 42.
  Definition loc_72 : location_info := LocationInfo file_0 78 43 78 56.
  Definition loc_73 : location_info := LocationInfo file_0 78 44 78 56.
  Definition loc_74 : location_info := LocationInfo file_0 78 44 78 47.
  Definition loc_75 : location_info := LocationInfo file_0 78 44 78 47.

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

  (* Definition of function [SML_trySwitch]. *)
  Definition impl_SML_trySwitch (global_SML_switchTheSolenoid : loc): function := {|
    f_args := [
      ("ssp", void*);
      ("length", it_layout u8)
    ];
    f_local_vars := [
    ];
    f_init := "#0";
    f_code := (
      <[ "#0" :=
        locinfo: loc_55 ;
        if{IntOp i32}: LocInfoE loc_55 ((LocInfoE loc_56 (UnOp (CastOp $ IntOp i32) (IntOp u8) (LocInfoE loc_56 (use{IntOp u8} (LocInfoE loc_57 ("length")))))) !={IntOp i32, IntOp i32, i32} (LocInfoE loc_58 (i2v 0 i32)))
        then
        locinfo: loc_50 ;
          Goto "#1"
        else
        Goto "#6"
      ]> $
      <[ "#1" :=
        locinfo: loc_50 ;
        if{IntOp i32}: LocInfoE loc_50 ((LocInfoE loc_51 (UnOp (CastOp $ IntOp i32) (IntOp u8) (LocInfoE loc_51 (use{IntOp u8} (LocInfoE loc_52 ("length")))))) ={IntOp i32, IntOp i32, i32} (LocInfoE loc_53 (i2v 8 i32)))
        then
        locinfo: loc_34 ;
          Goto "#2"
        else
        Goto "#5"
      ]> $
      <[ "#2" :=
        locinfo: loc_34 ;
        if{IntOp i32}: LocInfoE loc_34 ((LocInfoE loc_35 ((LocInfoE loc_36 (UnOp (CastOp $ IntOp i32) (IntOp u8) (LocInfoE loc_36 (use{IntOp u8} (LocInfoE loc_37 ((LocInfoE loc_38 ((LocInfoE loc_39 (!{PtrOp} (LocInfoE loc_40 ("ssp")))) at{struct_SolenoidSwitchingParams_t} "handler")) at{struct_ComHandler_t} "msg")))))) ={IntOp i32, IntOp i32, i32} (LocInfoE loc_41 (i2v 7 i32)))) ||{IntOp i32, IntOp i32, i32} (LocInfoE loc_42 ((LocInfoE loc_43 (UnOp (CastOp $ IntOp i32) (IntOp u8) (LocInfoE loc_43 (use{IntOp u8} (LocInfoE loc_44 ((LocInfoE loc_45 ((LocInfoE loc_46 (!{PtrOp} (LocInfoE loc_47 ("ssp")))) at{struct_SolenoidSwitchingParams_t} "handler")) at{struct_ComHandler_t} "msg")))))) ={IntOp i32, IntOp i32, i32} (LocInfoE loc_48 (i2v 12 i32)))))
        then
        locinfo: loc_28 ;
          Goto "#3"
        else
        Goto "#4"
      ]> $
      <[ "#3" :=
        locinfo: loc_28 ;
        expr: (LocInfoE loc_28 (Call (LocInfoE loc_30 (global_SML_switchTheSolenoid)) [@{expr} LocInfoE loc_31 (use{PtrOp} (LocInfoE loc_32 ("ssp"))) ])) ;
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

  (* Definition of function [SML_handleReceivedMsgs]. *)
  Definition impl_SML_handleReceivedMsgs (global_SCH_recieveFullMsg global_SML_trySwitch : loc): function := {|
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
          LocInfoE loc_69 (Call (LocInfoE loc_71 (global_SCH_recieveFullMsg)) [@{expr} LocInfoE loc_72 (&(LocInfoE loc_73 ((LocInfoE loc_74 (!{PtrOp} (LocInfoE loc_75 ("ssp")))) at{struct_SolenoidSwitchingParams_t} "handler"))) ]) ;
        locinfo: loc_62 ;
        expr: (LocInfoE loc_62 (Call (LocInfoE loc_64 (global_SML_trySwitch)) [@{expr} LocInfoE loc_65 (use{PtrOp} (LocInfoE loc_66 ("ssp"))) ;
        LocInfoE loc_67 (use{IntOp u8} (LocInfoE loc_68 ("rxMsgSize"))) ])) ;
        Return (VOID)
      ]> $∅
    )%E
  |}.
End code.
