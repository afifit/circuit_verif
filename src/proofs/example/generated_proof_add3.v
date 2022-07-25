From refinedc.typing Require Import typing.
From refinedc.project.learning.src.example Require Import generated_code.
From refinedc.project.learning.src.example Require Import generated_spec.
Set Default Proof Using "Type".

(* Generated from [src/example.c]. *)
Section proof_add3.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Typing proof for [add3]. *)
  Lemma type_add3 :
    ⊢ typed_function impl_add3 type_of_add3.
  Proof.
    Open Scope printing_sugar.
    start_function "add3" ([[nx ny] nz]) => arg_x arg_y arg_z local_r.
    prepare_parameters (nx ny nz).
    split_blocks ((
      ∅
    )%I : gmap label (iProp Σ)) ((
      ∅
    )%I : gmap label (iProp Σ)).
    - repeat liRStep; liShow.
      all: print_typesystem_goal "add3" "#0".
    Unshelve. all: li_unshelve_sidecond; sidecond_hook; prepare_sideconditions; normalize_and_simpl_goal; try solve_goal; unsolved_sidecond_hook.
    all: print_sidecondition_goal "add3".
    Unshelve. all: try done; try apply: inhabitant; print_remaining_shelved_goal "add3".
  Qed.
End proof_add3.
