From refinedc.typing Require Import typing.
From refinedc.project.learning.src.circuit Require Import generated_code.
From refinedc.project.learning.src.circuit Require Import generated_spec.
Set Default Proof Using "Type".

(* Generated from [src/circuit.c]. *)
Section proof_set_two.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Typing proof for [set_two]. *)
  Lemma type_set_two :
    ⊢ typed_function impl_set_two type_of_set_two.
  Proof.
    Open Scope printing_sugar.
    start_function "set_two" ([[[a b] x] p]) => arg_c arg_v.
    prepare_parameters (a b x p).
    split_blocks ((
      ∅
    )%I : gmap label (iProp Σ)) ((
      ∅
    )%I : gmap label (iProp Σ)).
    - repeat liRStep; liShow.
      all: print_typesystem_goal "set_two" "#0".
    Unshelve. all: li_unshelve_sidecond; sidecond_hook; prepare_sideconditions; normalize_and_simpl_goal; try solve_goal; unsolved_sidecond_hook.
    all: tauto.
    all: print_sidecondition_goal "set_two".
    Unshelve. all: try done; try apply: inhabitant; print_remaining_shelved_goal "set_two".
  Qed.
End proof_set_two.
