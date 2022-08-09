From caesium Require Export notation.
From caesium Require Import tactics.
From refinedc.typing Require Import annotations.
Set Default Proof Using "Type".

(* Generated from [src/solswitch.c]. *)
Section code.
  Definition file_0 : string := "src/solswitch.c".
  Definition loc_2 : location_info := LocationInfo file_0 54 53 54 62.
  Definition loc_3 : location_info := LocationInfo file_0 54 60 54 61.
  Definition loc_6 : location_info := LocationInfo file_0 64 1 67 2.
  Definition loc_7 : location_info := LocationInfo file_0 64 23 67 2.
  Definition loc_8 : location_info := LocationInfo file_0 66 2 66 17.
  Definition loc_9 : location_info := LocationInfo file_0 66 2 66 12.
  Definition loc_10 : location_info := LocationInfo file_0 66 2 66 5.
  Definition loc_11 : location_info := LocationInfo file_0 66 2 66 5.
  Definition loc_12 : location_info := LocationInfo file_0 66 15 66 16.
  Definition loc_13 : location_info := LocationInfo file_0 64 1 67 2.
  Definition loc_14 : location_info := LocationInfo file_0 64 6 64 21.
  Definition loc_15 : location_info := LocationInfo file_0 64 6 64 7.
  Definition loc_16 : location_info := LocationInfo file_0 64 11 64 21.
  Definition loc_17 : location_info := LocationInfo file_0 64 11 64 21.
  Definition loc_18 : location_info := LocationInfo file_0 64 11 64 14.
  Definition loc_19 : location_info := LocationInfo file_0 64 11 64 14.
  Definition loc_22 : location_info := LocationInfo file_0 80 4 86 5.
  Definition loc_23 : location_info := LocationInfo file_0 80 19 86 5.
  Definition loc_24 : location_info := LocationInfo file_0 81 8 85 9.
  Definition loc_25 : location_info := LocationInfo file_0 81 23 85 9.
  Definition loc_26 : location_info := LocationInfo file_0 82 12 84 13.
  Definition loc_27 : location_info := LocationInfo file_0 82 63 84 13.
  Definition loc_28 : location_info := LocationInfo file_0 83 15 83 42.
  Definition loc_29 : location_info := LocationInfo file_0 83 15 83 36.
  Definition loc_30 : location_info := LocationInfo file_0 83 15 83 36.
  Definition loc_31 : location_info := LocationInfo file_0 83 37 83 40.
  Definition loc_32 : location_info := LocationInfo file_0 83 37 83 40.
  Definition loc_33 : location_info := LocationInfo file_0 82 12 84 13.
  Definition loc_34 : location_info := LocationInfo file_0 82 15 82 62.
  Definition loc_35 : location_info := LocationInfo file_0 82 15 82 36.
  Definition loc_36 : location_info := LocationInfo file_0 82 15 82 31.
  Definition loc_37 : location_info := LocationInfo file_0 82 15 82 31.
  Definition loc_38 : location_info := LocationInfo file_0 82 15 82 27.
  Definition loc_39 : location_info := LocationInfo file_0 82 15 82 18.
  Definition loc_40 : location_info := LocationInfo file_0 82 15 82 18.
  Definition loc_41 : location_info := LocationInfo file_0 82 35 82 36.
  Definition loc_42 : location_info := LocationInfo file_0 82 40 82 62.
  Definition loc_43 : location_info := LocationInfo file_0 82 40 82 56.
  Definition loc_44 : location_info := LocationInfo file_0 82 40 82 56.
  Definition loc_45 : location_info := LocationInfo file_0 82 40 82 52.
  Definition loc_46 : location_info := LocationInfo file_0 82 40 82 43.
  Definition loc_47 : location_info := LocationInfo file_0 82 40 82 43.
  Definition loc_48 : location_info := LocationInfo file_0 82 60 82 62.
  Definition loc_49 : location_info := LocationInfo file_0 81 8 85 9.
  Definition loc_50 : location_info := LocationInfo file_0 81 11 81 22.
  Definition loc_51 : location_info := LocationInfo file_0 81 11 81 17.
  Definition loc_52 : location_info := LocationInfo file_0 81 11 81 17.
  Definition loc_53 : location_info := LocationInfo file_0 81 21 81 22.
  Definition loc_54 : location_info := LocationInfo file_0 80 4 86 5.
  Definition loc_55 : location_info := LocationInfo file_0 80 7 80 18.
  Definition loc_56 : location_info := LocationInfo file_0 80 7 80 13.
  Definition loc_57 : location_info := LocationInfo file_0 80 7 80 13.
  Definition loc_58 : location_info := LocationInfo file_0 80 17 80 18.
  Definition loc_61 : location_info := LocationInfo file_0 98 4 98 58.
  Definition loc_62 : location_info := LocationInfo file_0 99 4 99 34.
  Definition loc_63 : location_info := LocationInfo file_0 99 4 99 17.
  Definition loc_64 : location_info := LocationInfo file_0 99 4 99 17.
  Definition loc_65 : location_info := LocationInfo file_0 99 18 99 21.
  Definition loc_66 : location_info := LocationInfo file_0 99 18 99 21.
  Definition loc_67 : location_info := LocationInfo file_0 99 23 99 32.
  Definition loc_68 : location_info := LocationInfo file_0 99 23 99 32.
  Definition loc_69 : location_info := LocationInfo file_0 98 24 98 57.
  Definition loc_70 : location_info := LocationInfo file_0 98 24 98 42.
  Definition loc_71 : location_info := LocationInfo file_0 98 24 98 42.
  Definition loc_72 : location_info := LocationInfo file_0 98 43 98 56.
  Definition loc_73 : location_info := LocationInfo file_0 98 44 98 56.
  Definition loc_74 : location_info := LocationInfo file_0 98 44 98 47.
  Definition loc_75 : location_info := LocationInfo file_0 98 44 98 47.
  Definition loc_80 : location_info := LocationInfo file_0 121 4 127 6.
  Definition loc_81 : location_info := LocationInfo file_0 128 4 128 33.
  Definition loc_82 : location_info := LocationInfo file_0 128 11 128 32.
  Definition loc_83 : location_info := LocationInfo file_0 128 11 128 32.
  Definition loc_84 : location_info := LocationInfo file_0 121 29 123 6.
  Definition loc_85 : location_info := LocationInfo file_0 122 8 122 60.
  Definition loc_86 : location_info := LocationInfo file_0 122 8 122 29.
  Definition loc_87 : location_info := LocationInfo file_0 122 31 122 59.
  Definition loc_88 : location_info := LocationInfo file_0 122 31 122 49.
  Definition loc_89 : location_info := LocationInfo file_0 122 32 122 37.
  Definition loc_90 : location_info := LocationInfo file_0 122 39 122 48.
  Definition loc_91 : location_info := LocationInfo file_0 122 39 122 48.
  Definition loc_92 : location_info := LocationInfo file_0 122 52 122 59.
  Definition loc_93 : location_info := LocationInfo file_0 122 52 122 59.
  Definition loc_94 : location_info := LocationInfo file_0 123 10 127 6.
  Definition loc_95 : location_info := LocationInfo file_0 126 8 126 64.
  Definition loc_96 : location_info := LocationInfo file_0 126 8 126 29.
  Definition loc_97 : location_info := LocationInfo file_0 126 32 126 63.
  Definition loc_98 : location_info := LocationInfo file_0 126 42 126 63.
  Definition loc_99 : location_info := LocationInfo file_0 126 43 126 50.
  Definition loc_100 : location_info := LocationInfo file_0 126 43 126 50.
  Definition loc_101 : location_info := LocationInfo file_0 126 53 126 62.
  Definition loc_102 : location_info := LocationInfo file_0 126 53 126 62.
  Definition loc_103 : location_info := LocationInfo file_0 121 8 121 27.
  Definition loc_104 : location_info := LocationInfo file_0 121 8 121 15.
  Definition loc_105 : location_info := LocationInfo file_0 121 8 121 15.
  Definition loc_106 : location_info := LocationInfo file_0 121 18 121 27.
  Definition loc_107 : location_info := LocationInfo file_0 121 18 121 27.
  Definition loc_110 : location_info := LocationInfo file_0 144 1 155 5.
  Definition loc_111 : location_info := LocationInfo file_0 156 4 156 13.
  Definition loc_112 : location_info := LocationInfo file_0 156 11 156 12.
  Definition loc_113 : location_info := LocationInfo file_0 145 4 155 5.
  Definition loc_114 : location_info := LocationInfo file_0 146 8 146 95.
  Definition loc_115 : location_info := LocationInfo file_0 147 2 154 9.
  Definition loc_116 : location_info := LocationInfo file_0 147 67 154 9.
  Definition loc_117 : location_info := LocationInfo file_0 151 3 153 4.
  Definition loc_118 : location_info := LocationInfo file_0 151 38 153 4.
  Definition loc_119 : location_info := LocationInfo file_0 152 5 152 14.
  Definition loc_120 : location_info := LocationInfo file_0 152 12 152 13.
  Definition loc_121 : location_info := LocationInfo file_0 151 3 153 4.
  Definition loc_122 : location_info := LocationInfo file_0 151 8 151 37.
  Definition loc_123 : location_info := LocationInfo file_0 151 8 151 21.
  Definition loc_124 : location_info := LocationInfo file_0 151 8 151 10.
  Definition loc_125 : location_info := LocationInfo file_0 151 14 151 21.
  Definition loc_126 : location_info := LocationInfo file_0 151 14 151 21.
  Definition loc_127 : location_info := LocationInfo file_0 151 25 151 37.
  Definition loc_128 : location_info := LocationInfo file_0 151 25 151 32.
  Definition loc_129 : location_info := LocationInfo file_0 151 25 151 32.
  Definition loc_130 : location_info := LocationInfo file_0 151 35 151 37.
  Definition loc_131 : location_info := LocationInfo file_0 147 2 154 9.
  Definition loc_132 : location_info := LocationInfo file_0 147 7 147 66.
  Definition loc_133 : location_info := LocationInfo file_0 147 7 147 35.
  Definition loc_134 : location_info := LocationInfo file_0 147 8 147 11.
  Definition loc_135 : location_info := LocationInfo file_0 147 15 147 34.
  Definition loc_136 : location_info := LocationInfo file_0 147 15 147 34.
  Definition loc_137 : location_info := LocationInfo file_0 147 39 147 66.
  Definition loc_138 : location_info := LocationInfo file_0 147 40 147 59.
  Definition loc_139 : location_info := LocationInfo file_0 147 40 147 59.
  Definition loc_140 : location_info := LocationInfo file_0 147 62 147 65.
  Definition loc_141 : location_info := LocationInfo file_0 146 38 146 94.
  Definition loc_142 : location_info := LocationInfo file_0 146 38 146 94.
  Definition loc_143 : location_info := LocationInfo file_0 146 38 146 74.
  Definition loc_144 : location_info := LocationInfo file_0 146 38 146 65.
  Definition loc_145 : location_info := LocationInfo file_0 146 38 146 65.
  Definition loc_148 : location_info := LocationInfo file_0 144 1 155 5.
  Definition loc_149 : location_info := LocationInfo file_0 144 5 144 67.
  Definition loc_150 : location_info := LocationInfo file_0 144 5 144 46.
  Definition loc_151 : location_info := LocationInfo file_0 144 6 144 40.
  Definition loc_152 : location_info := LocationInfo file_0 144 6 144 40.
  Definition loc_153 : location_info := LocationInfo file_0 144 6 144 33.
  Definition loc_154 : location_info := LocationInfo file_0 144 6 144 33.
  Definition loc_155 : location_info := LocationInfo file_0 144 44 144 45.
  Definition loc_156 : location_info := LocationInfo file_0 144 50 144 67.
  Definition loc_157 : location_info := LocationInfo file_0 144 50 144 67.

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

  (* Definition of struct [VoltageHandler_t]. *)
  Program Definition struct_VoltageHandler_t := {|
    sl_members := [
      (Some "uniqueSafetyVoltage", it_layout u8)
    ];
  |}.
  Solve Obligations with solve_struct_obligations.

  (* Definition of struct [SolenoidSwitchingParams_t]. *)
  Program Definition struct_SolenoidSwitchingParams_t := {|
    sl_members := [
      (Some "state", it_layout size_t);
      (Some "handler", layout_of struct_ComHandler_t);
      (Some "voltage", layout_of struct_VoltageHandler_t);
      (None, Layout 6%nat 0%nat)
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
        locinfo: loc_103 ;
        if{IntOp i32}: LocInfoE loc_103 ((LocInfoE loc_104 (UnOp (CastOp $ IntOp i32) (IntOp u16) (LocInfoE loc_104 (use{IntOp u16} (LocInfoE loc_105 ("curTime")))))) <{IntOp i32, IntOp i32, i32} (LocInfoE loc_106 (UnOp (CastOp $ IntOp i32) (IntOp u16) (LocInfoE loc_106 (use{IntOp u16} (LocInfoE loc_107 ("startTime")))))))
        then
        locinfo: loc_85 ;
          Goto "#2"
        else
        locinfo: loc_95 ;
          Goto "#3"
      ]> $
      <[ "#1" :=
        locinfo: loc_81 ;
        Return (LocInfoE loc_82 (use{IntOp u8} (LocInfoE loc_83 ("safetyVoltageHoldTime"))))
      ]> $
      <[ "#2" :=
        locinfo: loc_85 ;
        LocInfoE loc_86 ("safetyVoltageHoldTime") <-{ IntOp u8 }
          LocInfoE loc_87 (UnOp (CastOp $ IntOp u8) (IntOp i32) (LocInfoE loc_87 ((LocInfoE loc_88 ((LocInfoE loc_89 (i2v 4095 i32)) -{IntOp i32, IntOp i32} (LocInfoE loc_90 (UnOp (CastOp $ IntOp i32) (IntOp u16) (LocInfoE loc_90 (use{IntOp u16} (LocInfoE loc_91 ("startTime")))))))) +{IntOp i32, IntOp i32} (LocInfoE loc_92 (UnOp (CastOp $ IntOp i32) (IntOp u16) (LocInfoE loc_92 (use{IntOp u16} (LocInfoE loc_93 ("curTime"))))))))) ;
        locinfo: loc_81 ;
        Goto "#1"
      ]> $
      <[ "#3" :=
        locinfo: loc_95 ;
        LocInfoE loc_96 ("safetyVoltageHoldTime") <-{ IntOp u8 }
          LocInfoE loc_97 (UnOp (CastOp $ IntOp u8) (IntOp i32) (LocInfoE loc_98 ((LocInfoE loc_99 (UnOp (CastOp $ IntOp i32) (IntOp u16) (LocInfoE loc_99 (use{IntOp u16} (LocInfoE loc_100 ("curTime")))))) -{IntOp i32, IntOp i32} (LocInfoE loc_101 (UnOp (CastOp $ IntOp i32) (IntOp u16) (LocInfoE loc_101 (use{IntOp u16} (LocInfoE loc_102 ("startTime"))))))))) ;
        locinfo: loc_81 ;
        Goto "#1"
      ]> $∅
    )%E
  |}.

  (* Definition of function [SML_isSafetyVoltageCondExists]. *)
  Definition impl_SML_isSafetyVoltageCondExists (global_curTime : loc): function := {|
    f_args := [
      ("solenoidSwitchingParams_ptr", void*);
      ("isConversionEnded", bool_layout)
    ];
    f_local_vars := [
      ("uniqueSafetyVoltage", it_layout u8)
    ];
    f_init := "#0";
    f_code := (
      <[ "#0" :=
        locinfo: loc_149 ;
        if{IntOp i32}: LocInfoE loc_149 ((LocInfoE loc_150 ((LocInfoE loc_151 (use{IntOp size_t} (LocInfoE loc_152 ((LocInfoE loc_153 (!{PtrOp} (LocInfoE loc_154 ("solenoidSwitchingParams_ptr")))) at{struct_SolenoidSwitchingParams_t} "state")))) ={IntOp size_t, IntOp size_t, i32} (LocInfoE loc_155 (UnOp (CastOp $ IntOp size_t) (IntOp i32) (LocInfoE loc_155 (i2v 0 i32)))))) &&{IntOp i32, IntOp i32, i32} (LocInfoE loc_156 (UnOp (CastOp $ IntOp i32) (BoolOp) (LocInfoE loc_156 (use{BoolOp} (LocInfoE loc_157 ("isConversionEnded")))))))
        then
        Goto "#2"
        else
        locinfo: loc_111 ;
          Goto "#7"
      ]> $
      <[ "#1" :=
        locinfo: loc_111 ;
        Return (LocInfoE loc_112 (UnOp (CastOp $ BoolOp) (IntOp i32) (LocInfoE loc_112 (i2v 0 i32))))
      ]> $
      <[ "#2" :=
        "uniqueSafetyVoltage" <-{ IntOp u8 }
          LocInfoE loc_141 (use{IntOp u8} (LocInfoE loc_142 ((LocInfoE loc_143 ((LocInfoE loc_144 (!{PtrOp} (LocInfoE loc_145 ("solenoidSwitchingParams_ptr")))) at{struct_SolenoidSwitchingParams_t} "voltage")) at{struct_VoltageHandler_t} "uniqueSafetyVoltage"))) ;
        locinfo: loc_132 ;
        if{IntOp i32}: LocInfoE loc_132 ((LocInfoE loc_133 ((LocInfoE loc_134 (i2v 217 i32)) ={IntOp i32, IntOp i32, i32} (LocInfoE loc_135 (UnOp (CastOp $ IntOp i32) (IntOp u8) (LocInfoE loc_135 (use{IntOp u8} (LocInfoE loc_136 ("uniqueSafetyVoltage")))))))) ||{IntOp i32, IntOp i32, i32} (LocInfoE loc_137 ((LocInfoE loc_138 (UnOp (CastOp $ IntOp i32) (IntOp u8) (LocInfoE loc_138 (use{IntOp u8} (LocInfoE loc_139 ("uniqueSafetyVoltage")))))) >{IntOp i32, IntOp i32, i32} (LocInfoE loc_140 (i2v 217 i32)))))
        then
        locinfo: loc_122 ;
          Goto "#3"
        else
        locinfo: loc_111 ;
          Goto "#6"
      ]> $
      <[ "#3" :=
        locinfo: loc_122 ;
        if{IntOp i32}: LocInfoE loc_122 ((LocInfoE loc_123 ((LocInfoE loc_124 (i2v 11 i32)) ={IntOp i32, IntOp i32, i32} (LocInfoE loc_125 (UnOp (CastOp $ IntOp i32) (IntOp u16) (LocInfoE loc_125 (use{IntOp u16} (LocInfoE loc_126 (global_curTime)))))))) ||{IntOp i32, IntOp i32, i32} (LocInfoE loc_127 ((LocInfoE loc_128 (UnOp (CastOp $ IntOp i32) (IntOp u16) (LocInfoE loc_128 (use{IntOp u16} (LocInfoE loc_129 (global_curTime)))))) >{IntOp i32, IntOp i32, i32} (LocInfoE loc_130 (i2v 11 i32)))))
        then
        locinfo: loc_119 ;
          Goto "#4"
        else
        locinfo: loc_111 ;
          Goto "#5"
      ]> $
      <[ "#4" :=
        locinfo: loc_119 ;
        Return (LocInfoE loc_120 (UnOp (CastOp $ BoolOp) (IntOp i32) (LocInfoE loc_120 (i2v 1 i32))))
      ]> $
      <[ "#5" :=
        locinfo: loc_111 ;
        Goto "#1"
      ]> $
      <[ "#6" :=
        locinfo: loc_111 ;
        Goto "#1"
      ]> $
      <[ "#7" :=
        locinfo: loc_111 ;
        Goto "#1"
      ]> $∅
    )%E
  |}.
End code.
