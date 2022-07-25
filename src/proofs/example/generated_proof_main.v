From refinedc.typing Require Import typing.
From refinedc.project.learning.src.example Require Import generated_code.
From refinedc.project.learning.src.example Require Import generated_spec.
Set Default Proof Using "Type".

(* Generated from [src/example.c]. *)
Section proof_main.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Typing proof for [main]. *)
  Lemma type_main (global_add3 : loc) :
    global_add3 ◁ᵥ global_add3 @ function_ptr type_of_add3 -∗
    typed_function (impl_main global_add3) type_of_main.
  Proof.
    Open Scope printing_sugar.
    start_function "main" ([]) => local_a.
    split_blocks ((
      ∅
    )%I : gmap label (iProp Σ)) ((
      ∅
    )%I : gmap label (iProp Σ)).
    - repeat liRStep; liShow.
      all: print_typesystem_goal "main" "#0".
    Unshelve. all: li_unshelve_sidecond; sidecond_hook; prepare_sideconditions; normalize_and_simpl_goal; try solve_goal; unsolved_sidecond_hook.
    all: print_sidecondition_goal "main".
    Unshelve. all: try done; try apply: inhabitant; print_remaining_shelved_goal "main".
  Qed.
End proof_main.
