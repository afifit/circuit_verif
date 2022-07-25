From refinedc.typing Require Import typing.
From refinedc.project.learning.src.circuit Require Import generated_code.
From refinedc.project.learning.src.circuit Require Import generated_spec.
Set Default Proof Using "Type".

(* Generated from [src/circuit.c]. *)
Section proof_check_two.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Typing proof for [check_two]. *)
  Lemma type_check_two :
    ⊢ typed_function impl_check_two type_of_check_two.
  Proof.
    Open Scope printing_sugar.
    start_function "check_two" ([[a b] p]) => arg_c.
    prepare_parameters (a b p).
    split_blocks ((
      ∅
    )%I : gmap label (iProp Σ)) ((
      ∅
    )%I : gmap label (iProp Σ)).
    - repeat liRStep; liShow.
      all: print_typesystem_goal "check_two" "#0".
    Unshelve. all: li_unshelve_sidecond; sidecond_hook; prepare_sideconditions; normalize_and_simpl_goal; try solve_goal; unsolved_sidecond_hook.
    all: print_sidecondition_goal "check_two".
    Unshelve. all: try done; try apply: inhabitant; print_remaining_shelved_goal "check_two".
  Qed.
End proof_check_two.
