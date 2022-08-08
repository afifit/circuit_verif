From refinedc.typing Require Import typing.
From refinedc.project.learning.src.solswitch Require Import generated_code.
From refinedc.project.learning.src.solswitch Require Import generated_spec.
Set Default Proof Using "Type".

(* Generated from [src/solswitch.c]. *)
Section proof_SML_handleReceivedMsgs.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Typing proof for [SML_handleReceivedMsgs]. *)
  Lemma type_SML_handleReceivedMsgs (global_SCH_recieveFullMsg global_SML_trySwitch : loc) :
    global_SCH_recieveFullMsg ◁ᵥ global_SCH_recieveFullMsg @ function_ptr type_of_SCH_recieveFullMsg -∗
    global_SML_trySwitch ◁ᵥ global_SML_trySwitch @ function_ptr type_of_SML_trySwitch -∗
    typed_function (impl_SML_handleReceivedMsgs global_SCH_recieveFullMsg global_SML_trySwitch) type_of_SML_handleReceivedMsgs.
  Proof.
    Open Scope printing_sugar.
    start_function "SML_handleReceivedMsgs" ([[state msg] p]) => arg_ssp local_rxMsgSize.
    prepare_parameters (state msg p).
    split_blocks ((
      ∅
    )%I : gmap label (iProp Σ)) ((
      ∅
    )%I : gmap label (iProp Σ)).
    - repeat liRStep; liShow.
      all: print_typesystem_goal "SML_handleReceivedMsgs" "#0".
    Unshelve. all: li_unshelve_sidecond; sidecond_hook; prepare_sideconditions; normalize_and_simpl_goal; try solve_goal; unsolved_sidecond_hook.
    all: print_sidecondition_goal "SML_handleReceivedMsgs".
    Unshelve. all: try done; try apply: inhabitant; print_remaining_shelved_goal "SML_handleReceivedMsgs".
  Qed.
End proof_SML_handleReceivedMsgs.
