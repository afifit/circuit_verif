From refinedc.typing Require Import typing.
From refinedc.project.learning.src.example Require Import generated_code.
Set Default Proof Using "Type".

(* Generated from [src/example.c]. *)
Section spec.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Type definitions. *)

  (* Specifications for function [add3]. *)
  Definition type_of_add3 :=
    fn(∀ (nx, ny, nz) : nat * nat * nat; (nx @ (int (u32))), (ny @ (int (u32))), (nz @ (int (u32))); ⌜nx + ny ≤ max_int u32⌝ ∗ ⌜(nx + ny) + nz ≤ max_int u32⌝)
      → ∃ () : (), ((nx + ny + nz) @ (int (u32))); True.

  (* Specifications for function [main]. *)
  Definition type_of_main :=
    fn(∀ () : (); True) → ∃ () : (), ((0) @ (int (i32))); True.
End spec.
