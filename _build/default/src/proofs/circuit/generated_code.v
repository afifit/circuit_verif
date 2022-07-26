From caesium Require Export notation.
From caesium Require Import tactics.
From refinedc.typing Require Import annotations.
Set Default Proof Using "Type".

(* Generated from [src/circuit.c]. *)
Section code.
  Definition file_0 : string := "src/circuit.c".
  Definition loc_4 : location_info := LocationInfo file_0 28 4 28 18.
  Definition loc_5 : location_info := LocationInfo file_0 28 11 28 17.
  Definition loc_6 : location_info := LocationInfo file_0 28 11 28 17.
  Definition loc_7 : location_info := LocationInfo file_0 28 11 28 12.
  Definition loc_8 : location_info := LocationInfo file_0 28 11 28 12.
  Definition loc_11 : location_info := LocationInfo file_0 36 4 36 18.
  Definition loc_12 : location_info := LocationInfo file_0 36 11 36 17.
  Definition loc_13 : location_info := LocationInfo file_0 36 11 36 17.
  Definition loc_14 : location_info := LocationInfo file_0 36 11 36 12.
  Definition loc_15 : location_info := LocationInfo file_0 36 11 36 12.
  Definition loc_18 : location_info := LocationInfo file_0 44 8 44 19.
  Definition loc_19 : location_info := LocationInfo file_0 44 8 44 14.
  Definition loc_20 : location_info := LocationInfo file_0 44 8 44 9.
  Definition loc_21 : location_info := LocationInfo file_0 44 8 44 9.
  Definition loc_22 : location_info := LocationInfo file_0 44 17 44 18.
  Definition loc_23 : location_info := LocationInfo file_0 44 17 44 18.
  Definition loc_26 : location_info := LocationInfo file_0 53 8 53 19.
  Definition loc_27 : location_info := LocationInfo file_0 53 8 53 14.
  Definition loc_28 : location_info := LocationInfo file_0 53 8 53 9.
  Definition loc_29 : location_info := LocationInfo file_0 53 8 53 9.
  Definition loc_30 : location_info := LocationInfo file_0 53 17 53 18.
  Definition loc_31 : location_info := LocationInfo file_0 53 17 53 18.
  Definition loc_34 : location_info := LocationInfo file_0 63 5 65 6.
  Definition loc_35 : location_info := LocationInfo file_0 67 5 67 18.
  Definition loc_36 : location_info := LocationInfo file_0 69 5 69 18.
  Definition loc_37 : location_info := LocationInfo file_0 70 5 70 18.
  Definition loc_38 : location_info := LocationInfo file_0 70 5 70 12.
  Definition loc_39 : location_info := LocationInfo file_0 70 5 70 12.
  Definition loc_40 : location_info := LocationInfo file_0 70 13 70 14.
  Definition loc_41 : location_info := LocationInfo file_0 70 13 70 14.
  Definition loc_42 : location_info := LocationInfo file_0 70 15 70 16.
  Definition loc_43 : location_info := LocationInfo file_0 69 5 69 12.
  Definition loc_44 : location_info := LocationInfo file_0 69 5 69 12.
  Definition loc_45 : location_info := LocationInfo file_0 69 13 69 14.
  Definition loc_46 : location_info := LocationInfo file_0 69 13 69 14.
  Definition loc_47 : location_info := LocationInfo file_0 69 15 69 16.
  Definition loc_48 : location_info := LocationInfo file_0 67 5 67 12.
  Definition loc_49 : location_info := LocationInfo file_0 67 5 67 12.
  Definition loc_50 : location_info := LocationInfo file_0 67 13 67 14.
  Definition loc_51 : location_info := LocationInfo file_0 67 13 67 14.
  Definition loc_52 : location_info := LocationInfo file_0 67 15 67 16.
  Definition loc_53 : location_info := LocationInfo file_0 63 22 65 6.
  Definition loc_54 : location_info := LocationInfo file_0 64 8 64 22.
  Definition loc_55 : location_info := LocationInfo file_0 64 8 64 15.
  Definition loc_56 : location_info := LocationInfo file_0 64 8 64 15.
  Definition loc_57 : location_info := LocationInfo file_0 64 16 64 17.
  Definition loc_58 : location_info := LocationInfo file_0 64 16 64 17.
  Definition loc_59 : location_info := LocationInfo file_0 64 19 64 20.
  Definition loc_60 : location_info := LocationInfo file_0 63 5 65 6.
  Definition loc_61 : location_info := LocationInfo file_0 63 8 63 21.
  Definition loc_63 : location_info := LocationInfo file_0 63 9 63 21.
  Definition loc_64 : location_info := LocationInfo file_0 63 9 63 18.
  Definition loc_65 : location_info := LocationInfo file_0 63 9 63 18.
  Definition loc_66 : location_info := LocationInfo file_0 63 19 63 20.
  Definition loc_67 : location_info := LocationInfo file_0 63 19 63 20.
  Definition loc_70 : location_info := LocationInfo file_0 85 4 87 6.
  Definition loc_71 : location_info := LocationInfo file_0 88 4 90 6.
  Definition loc_72 : location_info := LocationInfo file_0 88 22 90 6.
  Definition loc_73 : location_info := LocationInfo file_0 89 8 89 23.
  Definition loc_74 : location_info := LocationInfo file_0 89 8 89 15.
  Definition loc_75 : location_info := LocationInfo file_0 89 8 89 15.
  Definition loc_76 : location_info := LocationInfo file_0 89 16 89 18.
  Definition loc_77 : location_info := LocationInfo file_0 89 16 89 18.
  Definition loc_78 : location_info := LocationInfo file_0 89 20 89 21.
  Definition loc_79 : location_info := LocationInfo file_0 88 4 90 6.
  Definition loc_80 : location_info := LocationInfo file_0 88 7 88 21.
  Definition loc_82 : location_info := LocationInfo file_0 88 8 88 21.
  Definition loc_83 : location_info := LocationInfo file_0 88 8 88 17.
  Definition loc_84 : location_info := LocationInfo file_0 88 8 88 17.
  Definition loc_85 : location_info := LocationInfo file_0 88 18 88 20.
  Definition loc_86 : location_info := LocationInfo file_0 88 18 88 20.
  Definition loc_87 : location_info := LocationInfo file_0 85 22 87 6.
  Definition loc_88 : location_info := LocationInfo file_0 86 8 86 23.
  Definition loc_89 : location_info := LocationInfo file_0 86 8 86 15.
  Definition loc_90 : location_info := LocationInfo file_0 86 8 86 15.
  Definition loc_91 : location_info := LocationInfo file_0 86 16 86 18.
  Definition loc_92 : location_info := LocationInfo file_0 86 16 86 18.
  Definition loc_93 : location_info := LocationInfo file_0 86 20 86 21.
  Definition loc_94 : location_info := LocationInfo file_0 85 4 87 6.
  Definition loc_95 : location_info := LocationInfo file_0 85 7 85 21.
  Definition loc_97 : location_info := LocationInfo file_0 85 8 85 21.
  Definition loc_98 : location_info := LocationInfo file_0 85 8 85 17.
  Definition loc_99 : location_info := LocationInfo file_0 85 8 85 17.
  Definition loc_100 : location_info := LocationInfo file_0 85 18 85 20.
  Definition loc_101 : location_info := LocationInfo file_0 85 18 85 20.
  Definition loc_104 : location_info := LocationInfo file_0 95 4 95 24.
  Definition loc_105 : location_info := LocationInfo file_0 96 4 96 24.
  Definition loc_106 : location_info := LocationInfo file_0 97 4 97 18.
  Definition loc_107 : location_info := LocationInfo file_0 97 4 97 7.
  Definition loc_108 : location_info := LocationInfo file_0 97 4 97 7.
  Definition loc_109 : location_info := LocationInfo file_0 97 8 97 11.
  Definition loc_110 : location_info := LocationInfo file_0 97 9 97 11.
  Definition loc_111 : location_info := LocationInfo file_0 97 13 97 16.
  Definition loc_112 : location_info := LocationInfo file_0 97 14 97 16.
  Definition loc_114 : location_info := LocationInfo file_0 96 18 96 19.
  Definition loc_115 : location_info := LocationInfo file_0 96 21 96 22.
  Definition loc_119 : location_info := LocationInfo file_0 95 18 95 19.
  Definition loc_120 : location_info := LocationInfo file_0 95 21 95 22.
  Definition loc_125 : location_info := LocationInfo file_0 100 4 100 13.
  Definition loc_126 : location_info := LocationInfo file_0 100 11 100 12.

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
  Definition impl_circuit_action (global_check_two global_set_one global_set_two : loc): function := {|
    f_args := [
      ("c", void*)
    ];
    f_local_vars := [
    ];
    f_init := "#0";
    f_code := (
      <[ "#0" :=
        locinfo: loc_61 ;
        if{IntOp i32}: LocInfoE loc_61 ((i2v 0 i32) ={IntOp i32, IntOp i32, i32} (LocInfoE loc_63 (UnOp (CastOp $ IntOp i32) (BoolOp) (LocInfoE loc_63 (Call (LocInfoE loc_65 (global_check_two)) [@{expr} LocInfoE loc_66 (use{PtrOp} (LocInfoE loc_67 ("c"))) ])))))
        then
        locinfo: loc_54 ;
          Goto "#2"
        else
        locinfo: loc_35 ;
          Goto "#3"
      ]> $
      <[ "#1" :=
        locinfo: loc_35 ;
        expr: (LocInfoE loc_35 (Call (LocInfoE loc_49 (global_set_one)) [@{expr} LocInfoE loc_50 (use{PtrOp} (LocInfoE loc_51 ("c"))) ;
        LocInfoE loc_52 (UnOp (CastOp $ BoolOp) (IntOp i32) (LocInfoE loc_52 (i2v 0 i32))) ])) ;
        locinfo: loc_36 ;
        expr: (LocInfoE loc_36 (Call (LocInfoE loc_44 (global_set_two)) [@{expr} LocInfoE loc_45 (use{PtrOp} (LocInfoE loc_46 ("c"))) ;
        LocInfoE loc_47 (UnOp (CastOp $ BoolOp) (IntOp i32) (LocInfoE loc_47 (i2v 1 i32))) ])) ;
        locinfo: loc_37 ;
        expr: (LocInfoE loc_37 (Call (LocInfoE loc_39 (global_set_two)) [@{expr} LocInfoE loc_40 (use{PtrOp} (LocInfoE loc_41 ("c"))) ;
        LocInfoE loc_42 (UnOp (CastOp $ BoolOp) (IntOp i32) (LocInfoE loc_42 (i2v 0 i32))) ])) ;
        Return (VOID)
      ]> $
      <[ "#2" :=
        locinfo: loc_54 ;
        expr: (LocInfoE loc_54 (Call (LocInfoE loc_56 (global_set_one)) [@{expr} LocInfoE loc_57 (use{PtrOp} (LocInfoE loc_58 ("c"))) ;
        LocInfoE loc_59 (UnOp (CastOp $ BoolOp) (IntOp i32) (LocInfoE loc_59 (i2v 1 i32))) ])) ;
        locinfo: loc_35 ;
        Goto "#1"
      ]> $
      <[ "#3" :=
        locinfo: loc_35 ;
        Goto "#1"
      ]> $∅
    )%E
  |}.

  (* Definition of function [foo]. *)
  Definition impl_foo (global_check_one global_check_two global_set_one global_set_two : loc): function := {|
    f_args := [
      ("c1", void*);
      ("c2", void*)
    ];
    f_local_vars := [
    ];
    f_init := "#0";
    f_code := (
      <[ "#0" :=
        locinfo: loc_95 ;
        if{IntOp i32}: LocInfoE loc_95 ((i2v 0 i32) ={IntOp i32, IntOp i32, i32} (LocInfoE loc_97 (UnOp (CastOp $ IntOp i32) (BoolOp) (LocInfoE loc_97 (Call (LocInfoE loc_99 (global_check_two)) [@{expr} LocInfoE loc_100 (use{PtrOp} (LocInfoE loc_101 ("c1"))) ])))))
        then
        locinfo: loc_88 ;
          Goto "#4"
        else
        locinfo: loc_80 ;
          Goto "#5"
      ]> $
      <[ "#1" :=
        locinfo: loc_80 ;
        if{IntOp i32}: LocInfoE loc_80 ((i2v 0 i32) ={IntOp i32, IntOp i32, i32} (LocInfoE loc_82 (UnOp (CastOp $ IntOp i32) (BoolOp) (LocInfoE loc_82 (Call (LocInfoE loc_84 (global_check_one)) [@{expr} LocInfoE loc_85 (use{PtrOp} (LocInfoE loc_86 ("c2"))) ])))))
        then
        locinfo: loc_73 ;
          Goto "#2"
        else
        Goto "#3"
      ]> $
      <[ "#2" :=
        locinfo: loc_73 ;
        expr: (LocInfoE loc_73 (Call (LocInfoE loc_75 (global_set_two)) [@{expr} LocInfoE loc_76 (use{PtrOp} (LocInfoE loc_77 ("c2"))) ;
        LocInfoE loc_78 (UnOp (CastOp $ BoolOp) (IntOp i32) (LocInfoE loc_78 (i2v 1 i32))) ])) ;
        Return (VOID)
      ]> $
      <[ "#3" :=
        Return (VOID)
      ]> $
      <[ "#4" :=
        locinfo: loc_88 ;
        expr: (LocInfoE loc_88 (Call (LocInfoE loc_90 (global_set_one)) [@{expr} LocInfoE loc_91 (use{PtrOp} (LocInfoE loc_92 ("c1"))) ;
        LocInfoE loc_93 (UnOp (CastOp $ BoolOp) (IntOp i32) (LocInfoE loc_93 (i2v 1 i32))) ])) ;
        locinfo: loc_80 ;
        Goto "#1"
      ]> $
      <[ "#5" :=
        locinfo: loc_80 ;
        Goto "#1"
      ]> $∅
    )%E
  |}.

  (* Definition of function [bar]. *)
  Definition impl_bar (global_foo : loc): function := {|
    f_args := [
    ];
    f_local_vars := [
      ("c1", layout_of struct_circuit);
      ("c2", layout_of struct_circuit)
    ];
    f_init := "#0";
    f_code := (
      <[ "#0" :=
        "c1" <-{ StructOp struct_circuit ([ BoolOp ; BoolOp ]) }
          StructInit struct_circuit [
            ("one", LocInfoE loc_119 (UnOp (CastOp $ BoolOp) (IntOp i32) (LocInfoE loc_119 (i2v 0 i32))) : expr) ;
            ("two", LocInfoE loc_120 (UnOp (CastOp $ BoolOp) (IntOp i32) (LocInfoE loc_120 (i2v 0 i32))) : expr)
          ] ;
        "c2" <-{ StructOp struct_circuit ([ BoolOp ; BoolOp ]) }
          StructInit struct_circuit [
            ("one", LocInfoE loc_114 (UnOp (CastOp $ BoolOp) (IntOp i32) (LocInfoE loc_114 (i2v 0 i32))) : expr) ;
            ("two", LocInfoE loc_115 (UnOp (CastOp $ BoolOp) (IntOp i32) (LocInfoE loc_115 (i2v 0 i32))) : expr)
          ] ;
        locinfo: loc_106 ;
        expr: (LocInfoE loc_106 (Call (LocInfoE loc_108 (global_foo)) [@{expr} LocInfoE loc_109 (&(LocInfoE loc_110 ("c1"))) ;
        LocInfoE loc_111 (&(LocInfoE loc_112 ("c1"))) ])) ;
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
        locinfo: loc_125 ;
        Return (LocInfoE loc_126 (i2v 0 i32))
      ]> $∅
    )%E
  |}.
End code.
