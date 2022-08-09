From refinedc.typing Require Import typing.
From refinedc.project.learning.src.solswitch Require Import generated_code.
From refinedc.project.learning.src.solswitch Require Import generated_spec.
Set Default Proof Using "Type".

(* Generated from [src/solswitch.c]. *)
Section proof_SML_trySwitch.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Typing proof for [SML_trySwitch]. *)
  Lemma type_SML_trySwitch (global_SML_switchTheSolenoid : loc) :
    global_SML_switchTheSolenoid ◁ᵥ global_SML_switchTheSolenoid @ function_ptr type_of_SML_switchTheSolenoid -∗
    typed_function (impl_SML_trySwitch global_SML_switchTheSolenoid) type_of_SML_trySwitch.
  Proof.
    Open Scope printing_sugar.
    start_function "SML_trySwitch" ([[[[state msg] len] p] voltage]) => arg_ssp arg_length.
    prepare_parameters (state msg len p voltage).
    split_blocks ((
      ∅
    )%I : gmap label (iProp Σ)) ((
      ∅
    )%I : gmap label (iProp Σ)).
    - repeat liRStep; liShow.
      all: print_typesystem_goal "SML_trySwitch" "#0".
    Unshelve. all: li_unshelve_sidecond; sidecond_hook; prepare_sideconditions; normalize_and_simpl_goal; try solve_goal; unsolved_sidecond_hook.
    all: print_sidecondition_goal "SML_trySwitch".
    Unshelve. all: try done; try apply: inhabitant; print_remaining_shelved_goal "SML_trySwitch".
  Qed.
End proof_SML_trySwitch.
