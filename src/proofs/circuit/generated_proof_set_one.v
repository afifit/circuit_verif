From refinedc.typing Require Import typing.
From refinedc.project.learning.src.circuit Require Import generated_code.
From refinedc.project.learning.src.circuit Require Import generated_spec.
Set Default Proof Using "Type".

(* Generated from [src/circuit.c]. *)
Section proof_set_one.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Typing proof for [set_one]. *)
  Lemma type_set_one :
    ⊢ typed_function impl_set_one type_of_set_one.
  Proof.
    Open Scope printing_sugar.
    start_function "set_one" ([[[a b] x] p]) => arg_c arg_v.
    prepare_parameters (a b x p).
    split_blocks ((
      ∅
    )%I : gmap label (iProp Σ)) ((
      ∅
    )%I : gmap label (iProp Σ)).
    - repeat liRStep; liShow.
      all: print_typesystem_goal "set_one" "#0".
    Unshelve. all: li_unshelve_sidecond; sidecond_hook; prepare_sideconditions; normalize_and_simpl_goal; try solve_goal; unsolved_sidecond_hook.
    all: print_sidecondition_goal "set_one".
    Unshelve. all: try done; try apply: inhabitant; print_remaining_shelved_goal "set_one".
  Qed.
End proof_set_one.
