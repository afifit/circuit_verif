From refinedc.typing Require Import typing.
From refinedc.project.learning.src.solswitch Require Import generated_code.
From refinedc.project.learning.src.solswitch Require Import generated_spec.
Set Default Proof Using "Type".

(* Generated from [src/solswitch.c]. *)
Section proof_SCH_recieveFullMsg.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Typing proof for [SCH_recieveFullMsg]. *)
  Lemma type_SCH_recieveFullMsg :
    ⊢ typed_function impl_SCH_recieveFullMsg type_of_SCH_recieveFullMsg.
  Proof.
    Open Scope printing_sugar.
    start_function "SCH_recieveFullMsg" ([[state msg] p]) => arg_ssp.
    prepare_parameters (state msg p).
    split_blocks ((
      ∅
    )%I : gmap label (iProp Σ)) ((
      ∅
    )%I : gmap label (iProp Σ)).
    - repeat liRStep; liShow.
      all: print_typesystem_goal "SCH_recieveFullMsg" "#0".
    Unshelve. all: li_unshelve_sidecond; sidecond_hook; prepare_sideconditions; normalize_and_simpl_goal; try solve_goal; unsolved_sidecond_hook.
    all: print_sidecondition_goal "SCH_recieveFullMsg".
    Unshelve. all: try done; try apply: inhabitant; print_remaining_shelved_goal "SCH_recieveFullMsg".
  Qed.
End proof_SCH_recieveFullMsg.
