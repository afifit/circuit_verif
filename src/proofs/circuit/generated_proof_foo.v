From refinedc.typing Require Import typing.
From refinedc.project.learning.src.circuit Require Import generated_code.
From refinedc.project.learning.src.circuit Require Import generated_spec.
Set Default Proof Using "Type".

(* Generated from [src/circuit.c]. *)
Section proof_foo.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Typing proof for [foo]. *)
  Lemma type_foo (global_check_one global_check_two global_set_one global_set_two : loc) :
    global_check_one ◁ᵥ global_check_one @ function_ptr type_of_check_one -∗
    global_check_two ◁ᵥ global_check_two @ function_ptr type_of_check_two -∗
    global_set_one ◁ᵥ global_set_one @ function_ptr type_of_set_one -∗
    global_set_two ◁ᵥ global_set_two @ function_ptr type_of_set_two -∗
    typed_function (impl_foo global_check_one global_check_two global_set_one global_set_two) type_of_foo.
  Proof.
    Open Scope printing_sugar.
    start_function "foo" ([[[[[a1 b1] p1] a2] b2] p2]) => arg_c1 arg_c2.
    prepare_parameters (a1 b1 p1 a2 b2 p2).
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
