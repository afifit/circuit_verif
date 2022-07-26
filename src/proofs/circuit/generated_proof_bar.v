From refinedc.typing Require Import typing.
From refinedc.project.learning.src.circuit Require Import generated_code.
From refinedc.project.learning.src.circuit Require Import generated_spec.
Set Default Proof Using "Type".

(* Generated from [src/circuit.c]. *)
Section proof_bar.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Typing proof for [bar]. *)
  Lemma type_bar (global_foo : loc) :
    global_foo ◁ᵥ global_foo @ function_ptr type_of_foo -∗
    typed_function (impl_bar global_foo) type_of_bar.
  Proof.
    Open Scope printing_sugar.
    start_function "bar" ([]) => local_c1 local_c2.
    split_blocks ((
      ∅
    )%I : gmap label (iProp Σ)) ((
      ∅
    )%I : gmap label (iProp Σ)).
    - repeat liRStep; liShow.
      all: print_typesystem_goal "bar" "#0".
    Unshelve. all: li_unshelve_sidecond; sidecond_hook; prepare_sideconditions; normalize_and_simpl_goal; try solve_goal; unsolved_sidecond_hook.
    all: print_sidecondition_goal "bar".
    Unshelve. all: try done; try apply: inhabitant; print_remaining_shelved_goal "bar".
  Qed.
End proof_bar.
