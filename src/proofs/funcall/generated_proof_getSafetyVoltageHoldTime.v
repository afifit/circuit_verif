From refinedc.typing Require Import typing.
From refinedc.project.learning.src.funcall Require Import generated_code.
From refinedc.project.learning.src.funcall Require Import generated_spec.
Set Default Proof Using "Type".

(* Generated from [src/funcall.c]. *)
Section proof_getSafetyVoltageHoldTime.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Typing proof for [getSafetyVoltageHoldTime]. *)
  Lemma type_getSafetyVoltageHoldTime :
    ⊢ typed_function impl_getSafetyVoltageHoldTime type_of_getSafetyVoltageHoldTime.
  Proof.
    Open Scope printing_sugar.
    start_function "getSafetyVoltageHoldTime" ([last_time current_time]) => arg_startTime arg_curTime local_safetyVoltageHoldTime.
    prepare_parameters (last_time current_time).
    split_blocks ((
      ∅
    )%I : gmap label (iProp Σ)) ((
      ∅
    )%I : gmap label (iProp Σ)).
    - repeat liRStep; liShow.
      all: print_typesystem_goal "getSafetyVoltageHoldTime" "#0".
    Unshelve. all: li_unshelve_sidecond; sidecond_hook; prepare_sideconditions; normalize_and_simpl_goal; try solve_goal; unsolved_sidecond_hook.
    all: print_sidecondition_goal "getSafetyVoltageHoldTime".
    Unshelve. all: try done; try apply: inhabitant; print_remaining_shelved_goal "getSafetyVoltageHoldTime".
  Qed.
End proof_getSafetyVoltageHoldTime.
