From caesium Require Export notation.
From caesium Require Import tactics.
From refinedc.typing Require Import annotations.
Set Default Proof Using "Type".

(* Generated from [src/example.c]. *)
Section code.
  Definition file_0 : string := "src/example.c".
  Definition loc_2 : location_info := LocationInfo file_0 8 2 8 25.
  Definition loc_3 : location_info := LocationInfo file_0 9 2 9 15.
  Definition loc_4 : location_info := LocationInfo file_0 9 9 9 14.
  Definition loc_5 : location_info := LocationInfo file_0 9 9 9 10.
  Definition loc_6 : location_info := LocationInfo file_0 9 9 9 10.
  Definition loc_7 : location_info := LocationInfo file_0 9 13 9 14.
  Definition loc_8 : location_info := LocationInfo file_0 9 13 9 14.
  Definition loc_9 : location_info := LocationInfo file_0 8 19 8 24.
  Definition loc_10 : location_info := LocationInfo file_0 8 19 8 20.
  Definition loc_11 : location_info := LocationInfo file_0 8 19 8 20.
  Definition loc_12 : location_info := LocationInfo file_0 8 23 8 24.
  Definition loc_13 : location_info := LocationInfo file_0 8 23 8 24.
  Definition loc_18 : location_info := LocationInfo file_0 16 2 16 20.
  Definition loc_19 : location_info := LocationInfo file_0 17 2 17 18.
  Definition loc_20 : location_info := LocationInfo file_0 19 2 19 20.
  Definition loc_21 : location_info := LocationInfo file_0 20 2 20 19.
  Definition loc_22 : location_info := LocationInfo file_0 22 2 22 11.
  Definition loc_23 : location_info := LocationInfo file_0 22 9 22 10.
  Definition loc_24 : location_info := LocationInfo file_0 20 9 20 17.
  Definition loc_25 : location_info := LocationInfo file_0 20 9 20 10.
  Definition loc_26 : location_info := LocationInfo file_0 20 9 20 10.
  Definition loc_27 : location_info := LocationInfo file_0 20 14 20 17.
  Definition loc_28 : location_info := LocationInfo file_0 19 2 19 3.
  Definition loc_29 : location_info := LocationInfo file_0 19 6 19 19.
  Definition loc_30 : location_info := LocationInfo file_0 19 6 19 10.
  Definition loc_31 : location_info := LocationInfo file_0 19 6 19 10.
  Definition loc_32 : location_info := LocationInfo file_0 19 11 19 12.
  Definition loc_33 : location_info := LocationInfo file_0 19 11 19 12.
  Definition loc_34 : location_info := LocationInfo file_0 19 14 19 15.
  Definition loc_35 : location_info := LocationInfo file_0 19 14 19 15.
  Definition loc_36 : location_info := LocationInfo file_0 19 17 19 18.
  Definition loc_37 : location_info := LocationInfo file_0 19 17 19 18.
  Definition loc_38 : location_info := LocationInfo file_0 17 9 17 16.
  Definition loc_39 : location_info := LocationInfo file_0 17 9 17 10.
  Definition loc_40 : location_info := LocationInfo file_0 17 9 17 10.
  Definition loc_41 : location_info := LocationInfo file_0 17 14 17 16.
  Definition loc_42 : location_info := LocationInfo file_0 16 2 16 3.
  Definition loc_43 : location_info := LocationInfo file_0 16 6 16 19.
  Definition loc_44 : location_info := LocationInfo file_0 16 6 16 10.
  Definition loc_45 : location_info := LocationInfo file_0 16 6 16 10.
  Definition loc_46 : location_info := LocationInfo file_0 16 11 16 12.
  Definition loc_47 : location_info := LocationInfo file_0 16 14 16 15.
  Definition loc_48 : location_info := LocationInfo file_0 16 17 16 18.

  (* Definition of function [add3]. *)
  Definition impl_add3 : function := {|
    f_args := [
      ("x", it_layout u32);
      ("y", it_layout u32);
      ("z", it_layout u32)
    ];
    f_local_vars := [
      ("r", it_layout u32)
    ];
    f_init := "#0";
    f_code := (
      <[ "#0" :=
        "r" <-{ IntOp u32 }
          LocInfoE loc_9 ((LocInfoE loc_10 (use{IntOp u32} (LocInfoE loc_11 ("x")))) +{IntOp u32, IntOp u32} (LocInfoE loc_12 (use{IntOp u32} (LocInfoE loc_13 ("y"))))) ;
        locinfo: loc_3 ;
        Return (LocInfoE loc_4 ((LocInfoE loc_5 (use{IntOp u32} (LocInfoE loc_6 ("r")))) +{IntOp u32, IntOp u32} (LocInfoE loc_7 (use{IntOp u32} (LocInfoE loc_8 ("z"))))))
      ]> $∅
    )%E
  |}.

  (* Definition of function [main]. *)
  Definition impl_main (global_add3 : loc): function := {|
    f_args := [
    ];
    f_local_vars := [
      ("a", it_layout u32)
    ];
    f_init := "#0";
    f_code := (
      <[ "#0" :=
        locinfo: loc_18 ;
        LocInfoE loc_42 ("a") <-{ IntOp u32 }
          LocInfoE loc_43 (Call (LocInfoE loc_45 (global_add3)) [@{expr} LocInfoE loc_46 (UnOp (CastOp $ IntOp u32) (IntOp i32) (LocInfoE loc_46 (i2v 1 i32))) ;
          LocInfoE loc_47 (UnOp (CastOp $ IntOp u32) (IntOp i32) (LocInfoE loc_47 (i2v 2 i32))) ;
          LocInfoE loc_48 (UnOp (CastOp $ IntOp u32) (IntOp i32) (LocInfoE loc_48 (i2v 3 i32))) ]) ;
        locinfo: loc_19 ;
        assert{IntOp i32}: (LocInfoE loc_38 ((LocInfoE loc_39 (use{IntOp u32} (LocInfoE loc_40 ("a")))) ={IntOp u32, IntOp u32, i32} (LocInfoE loc_41 (i2v 6 u32)))) ;
        locinfo: loc_20 ;
        LocInfoE loc_28 ("a") <-{ IntOp u32 }
          LocInfoE loc_29 (Call (LocInfoE loc_31 (global_add3)) [@{expr} LocInfoE loc_32 (use{IntOp u32} (LocInfoE loc_33 ("a"))) ;
          LocInfoE loc_34 (use{IntOp u32} (LocInfoE loc_35 ("a"))) ;
          LocInfoE loc_36 (use{IntOp u32} (LocInfoE loc_37 ("a"))) ]) ;
        locinfo: loc_21 ;
        assert{IntOp i32}: (LocInfoE loc_24 ((LocInfoE loc_25 (use{IntOp u32} (LocInfoE loc_26 ("a")))) ={IntOp u32, IntOp u32, i32} (LocInfoE loc_27 (i2v 18 u32)))) ;
        locinfo: loc_22 ;
        Return (LocInfoE loc_23 (i2v 0 i32))
      ]> $∅
    )%E
  |}.
End code.
