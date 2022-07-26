From refinedc.typing Require Import typing.
From refinedc.project.learning.src.solswitch Require Import generated_code.
From refinedc.project.learning.src.solswitch Require Import generated_spec.
Set Default Proof Using "Type".

(* Generated from [src/solswitch.c]. *)
Section proof_SML_switchTheSolenoid.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Typing proof for [SML_switchTheSolenoid]. *)
  Lemma type_SML_switchTheSolenoid :
    ⊢ typed_function impl_SML_switchTheSolenoid type_of_SML_switchTheSolenoid.
  Proof.
    Open Scope printing_sugar.
    start_function "SML_switchTheSolenoid" ([[state msg] p]) => arg_ssp.
    prepare_parameters (state msg p).
    split_blocks ((
      ∅
    )%I : gmap label (iProp Σ)) ((
      ∅
    )%I : gmap label (iProp Σ)).
    - repeat liRStep; liShow.
      all: print_typesystem_goal "SML_switchTheSolenoid" "#0".
    Unshelve. all: li_unshelve_sidecond; sidecond_hook; prepare_sideconditions; normalize_and_simpl_goal; try solve_goal; unsolved_sidecond_hook.
    all: try destruct state. try lia. try auto.
    all: print_sidecondition_goal "SML_switchTheSolenoid".
    Unshelve. all: try done; try apply: inhabitant; print_remaining_shelved_goal "SML_switchTheSolenoid".
  Qed.
End proof_SML_switchTheSolenoid.
