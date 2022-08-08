From refinedc.typing Require Import typing.
From refinedc.project.learning.src.funcall Require Import generated_code.
From refinedc.project.learning.src.funcall Require Import generated_spec.
Set Default Proof Using "Type".

(* Generated from [src/funcall.c]. *)
Section proof_foo.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Typing proof for [foo]. *)
  Lemma type_foo (global_nondent : loc) :
    global_nondent ◁ᵥ global_nondent @ function_ptr type_of_nondent -∗
    typed_function (impl_foo global_nondent) type_of_foo.
  Proof.
    Open Scope printing_sugar.
    start_function "foo" ([]).
    split_blocks ((
      ∅
    )%I : gmap label (iProp Σ)) ((
      ∅
    )%I : gmap label (iProp Σ)).
    - repeat liRStep; liShow.
      all: print_typesystem_goal "foo" "#0".
    Unshelve. all: li_unshelve_sidecond; sidecond_hook; prepare_sideconditions; normalize_and_simpl_goal; try solve_goal; unsolved_sidecond_hook.
    all: print_sidecondition_goal "foo".
    Unshelve. all: try done; try apply: inhabitant; print_remaining_shelved_goal "foo".
  Qed.
End proof_foo.
