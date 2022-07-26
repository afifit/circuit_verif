From refinedc.typing Require Import typing.
From refinedc.project.learning.src.circuit Require Import generated_code.
From refinedc.project.learning.src.circuit Require Import generated_spec.
Set Default Proof Using "Type".

(* Generated from [src/circuit.c]. *)
Section proof_circuit_action.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Typing proof for [circuit_action]. *)
  Lemma type_circuit_action (global_set_one global_set_two : loc) :
    global_set_one ◁ᵥ global_set_one @ function_ptr type_of_set_one -∗
    global_set_two ◁ᵥ global_set_two @ function_ptr type_of_set_two -∗
    typed_function (impl_circuit_action global_set_one global_set_two) type_of_circuit_action.
  Proof.
    Open Scope printing_sugar.
    start_function "circuit_action" ([[a b] p]) => arg_c.
    prepare_parameters (a b p).
    split_blocks ((
      ∅
    )%I : gmap label (iProp Σ)) ((
      ∅
    )%I : gmap label (iProp Σ)).
    - repeat liRStep; liShow.
      all: print_typesystem_goal "circuit_action" "#0".
    Unshelve. all: li_unshelve_sidecond; sidecond_hook; prepare_sideconditions; normalize_and_simpl_goal; try solve_goal; unsolved_sidecond_hook.
    all: print_sidecondition_goal "circuit_action".
    Unshelve. all: try done; try apply: inhabitant; print_remaining_shelved_goal "circuit_action".
  Qed.
End proof_circuit_action.
