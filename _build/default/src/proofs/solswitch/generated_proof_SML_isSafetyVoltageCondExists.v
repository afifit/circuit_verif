From refinedc.typing Require Import typing.
From refinedc.project.learning.src.solswitch Require Import generated_code.
From refinedc.project.learning.src.solswitch Require Import generated_spec.
Set Default Proof Using "Type".

(* Generated from [src/solswitch.c]. *)
Section proof_SML_isSafetyVoltageCondExists.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Typing proof for [SML_isSafetyVoltageCondExists]. *)
  Lemma type_SML_isSafetyVoltageCondExists (global_curTime : loc) :
    global_locs !! "curTime" = Some global_curTime →
    global_initialized_types !! "curTime" = Some (GT nat (λ 'global_time, (global_time @ (int (u16))) : type)%I) →
    ⊢ typed_function (impl_SML_isSafetyVoltageCondExists global_curTime) type_of_SML_isSafetyVoltageCondExists.
  Proof.
    Open Scope printing_sugar.
    start_function "SML_isSafetyVoltageCondExists" ([[[[[state msg] conversionEnded] voltage] p] global_time]) => arg_solenoidSwitchingParams_ptr arg_isConversionEnded local_uniqueSafetyVoltage.
    prepare_parameters (state msg conversionEnded voltage p global_time).
    split_blocks ((
      ∅
    )%I : gmap label (iProp Σ)) ((
      ∅
    )%I : gmap label (iProp Σ)).
    - repeat liRStep; liShow.
      all: print_typesystem_goal "SML_isSafetyVoltageCondExists" "#0".
    Unshelve. all: li_unshelve_sidecond; sidecond_hook; prepare_sideconditions; normalize_and_simpl_goal; try solve_goal; unsolved_sidecond_hook.
    all: try destruct state; tauto.
    all: print_sidecondition_goal "SML_isSafetyVoltageCondExists".
    Unshelve. all: try done; try apply: inhabitant; print_remaining_shelved_goal "SML_isSafetyVoltageCondExists".
  Qed.
End proof_SML_isSafetyVoltageCondExists.
