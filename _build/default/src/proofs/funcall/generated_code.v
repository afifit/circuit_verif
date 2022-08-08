From caesium Require Export notation.
From caesium Require Import tactics.
From refinedc.typing Require Import annotations.
Set Default Proof Using "Type".

(* Generated from [src/funcall.c]. *)
Section code.

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

  (* Definition of struct [ComHandler]. *)
  Program Definition struct_ComHandler := {|
    sl_members := [
      (Some "msg", it_layout u8)
    ];
  |}.
  Solve Obligations with solve_struct_obligations.

  (* Definition of struct [MyStruct]. *)
  Program Definition struct_MyStruct := {|
    sl_members := [
      (Some "cmdhandler", layout_of struct_ComHandler)
    ];
  |}.
  Solve Obligations with solve_struct_obligations.
End code.
