From refinedc.typing Require Import typing.
From refinedc.project.learning.src.circuit Require Import generated_code.
From refinedc.project.learning.src.circuit Require Import generated_spec.
Set Default Proof Using "Type".

(* Generated from [src/circuit.c]. *)
Section proof_assert_circuit.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Typing proof for [assert_circuit]. *)
  Lemma type_assert_circuit :
    ⊢ typed_function impl_assert_circuit type_of_assert_circuit.
  Proof.
    Open Scope printing_sugar.
    start_function "assert_circuit" ([[a b] p]) => arg_c.
    prepare_parameters (a b p).
    split_blocks ((
      ∅
    )%I : gmap label (iProp Σ)) ((
      ∅
    )%I : gmap label (iProp Σ)).
    - repeat liRStep; liShow.
      all: print_typesystem_goal "assert_circuit" "#0".
    Unshelve. all: li_unshelve_sidecond; sidecond_hook; prepare_sideconditions; normalize_and_simpl_goal; try solve_goal; unsolved_sidecond_hook.
    all: print_sidecondition_goal "assert_circuit".
    Unshelve. all: try done; try apply: inhabitant; print_remaining_shelved_goal "assert_circuit".
  Qed.
End proof_assert_circuit.
