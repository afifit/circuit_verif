From refinedc.typing Require Import typing.
From refinedc.project.learning.src.solswitch Require Import generated_code.
Set Default Proof Using "Type".

(* Generated from [src/solswitch.c]. *)
Section spec.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Definition of type [SolenoidSwitchingParams_t]. *)
  Definition SolenoidSwitchingParams_t_rec : (nat * nat -d> typeO) → (nat * nat -d> typeO) := (λ self patt__,
    let state := patt__.1 in
    let msg := patt__.2 in
    struct struct_SolenoidSwitchingParams_t [@{type}
      (state @ (int (size_t))) ;
      (msg @ (int (size_t)))
    ]
  )%I.
  Typeclasses Opaque SolenoidSwitchingParams_t_rec.

  Global Instance SolenoidSwitchingParams_t_rec_ne : Contractive SolenoidSwitchingParams_t_rec.
  Proof. solve_type_proper. Qed.
  Global Instance SolenoidSwitchingParams_t_rec_proper : Proper ((≡) ==> (≡)) SolenoidSwitchingParams_t_rec.
  Proof. apply contractive_proper, _. Qed.

  Definition SolenoidSwitchingParams_t : rtype := {|
    rty_type := nat * nat;
    rty r__ := SolenoidSwitchingParams_t_rec (fixp SolenoidSwitchingParams_t_rec) r__
  |}.

  Lemma SolenoidSwitchingParams_t_unfold (patt__ : nat * nat):
    (patt__ @ SolenoidSwitchingParams_t)%I ≡@{type} (
      let state := patt__.1 in
      let msg := patt__.2 in
      struct struct_SolenoidSwitchingParams_t [@{type}
        (state @ (int (size_t))) ;
        (msg @ (int (size_t)))
      ]
    )%I.
  Proof. apply: (fixp_unfold' SolenoidSwitchingParams_t_rec). Qed.

  Global Instance SolenoidSwitchingParams_t_simplify_hyp_place_inst_generated l_ β_ patt__:
    SimplifyHypPlace l_ β_ (patt__ @ SolenoidSwitchingParams_t)%I (Some 100%N) :=
    λ T, i2p (simplify_hyp_place_eq l_ β_ _ _ T (SolenoidSwitchingParams_t_unfold _)).
  Global Instance SolenoidSwitchingParams_t_simplify_goal_place_inst_generated l_ β_ patt__:
    SimplifyGoalPlace l_ β_ (patt__ @ SolenoidSwitchingParams_t)%I (Some 100%N) :=
    λ T, i2p (simplify_goal_place_eq l_ β_ _ _ T (SolenoidSwitchingParams_t_unfold _)).

  Global Instance SolenoidSwitchingParams_t_simplify_hyp_val_inst_generated v_ patt__:
    SimplifyHypVal v_ (patt__ @ SolenoidSwitchingParams_t)%I (Some 100%N) :=
    λ T, i2p (simplify_hyp_val_eq v_ _ _ T (SolenoidSwitchingParams_t_unfold _)).
  Global Instance SolenoidSwitchingParams_t_simplify_goal_val_inst_generated v_ patt__:
    SimplifyGoalVal v_ (patt__ @ SolenoidSwitchingParams_t)%I (Some 100%N) :=
    λ T, i2p (simplify_goal_val_eq v_ _ _ T (SolenoidSwitchingParams_t_unfold _)).

  (* Type definitions. *)

  (* Function [atoi] has been skipped. *)

  (* Function [atol] has been skipped. *)

  (* Function [atoll] has been skipped. *)

  (* Function [atof] has been skipped. *)

  (* Function [strtod] has been skipped. *)

  (* Function [strtof] has been skipped. *)

  (* Function [strtold] has been skipped. *)

  (* Function [strtol] has been skipped. *)

  (* Function [strtoll] has been skipped. *)

  (* Function [strtoul] has been skipped. *)

  (* Function [strtoull] has been skipped. *)

  (* Function [rand] has been skipped. *)

  (* Function [srand] has been skipped. *)

  (* Function [aligned_alloc] has been skipped. *)

  (* Function [calloc] has been skipped. *)

  (* Function [free] has been skipped. *)

  (* Function [malloc] has been skipped. *)

  (* Function [realloc] has been skipped. *)

  (* Function [abort] has been skipped. *)

  (* Function [atexit] has been skipped. *)

  (* Function [at_quick_exit] has been skipped. *)

  (* Function [exit] has been skipped. *)

  (* Function [_Exit] has been skipped. *)

  (* Function [quick_exit] has been skipped. *)

  (* Function [getenv] has been skipped. *)

  (* Function [system] has been skipped. *)

  (* Function [bsearch] has been skipped. *)

  (* Function [qsort] has been skipped. *)

  (* Function [abs] has been skipped. *)

  (* Function [labs] has been skipped. *)

  (* Function [llabs] has been skipped. *)

  (* Function [div] has been skipped. *)

  (* Function [ldiv] has been skipped. *)

  (* Function [lldiv] has been skipped. *)

  (* Function [mblen] has been skipped. *)

  (* Function [mbtowc] has been skipped. *)

  (* Function [wctomb] has been skipped. *)

  (* Function [mbstowcs] has been skipped. *)

  (* Function [wcstombs] has been skipped. *)

  (* Specifications for function [SCH_recieveFullMsg]. *)
  Definition type_of_SCH_recieveFullMsg :=
    fn(∀ (state, msg, p) : nat * nat * loc; (p @ (&own ((state, msg) @ (SolenoidSwitchingParams_t)))); True)
      → ∃ new_msg : nat, (void); (p ◁ₗ ((state,new_msg) @ (SolenoidSwitchingParams_t))).

  (* Specifications for function [SML_switchTheSolenoid]. *)
  Definition type_of_SML_switchTheSolenoid :=
    fn(∀ (state, msg, p) : nat * nat * loc; (p @ (&own ((state, msg) @ (SolenoidSwitchingParams_t)))); True)
      → ∃ () : (), (void); (p ◁ₗ (( (if Nat.eqb state 0%nat then 1%nat else state) ,msg) @ (SolenoidSwitchingParams_t))).

  (* Specifications for function [SML_handleReceivedMsgs]. *)
  Definition type_of_SML_handleReceivedMsgs :=
    fn(∀ (state, msg, p) : nat * nat * loc; (p @ (&own ((state, msg) @ (SolenoidSwitchingParams_t)))); True)
      → ∃ (new_msg, new_state) : nat * nat, (void); (p ◁ₗ (( new_state ,new_msg) @ (SolenoidSwitchingParams_t))).
End spec.

Typeclasses Opaque SolenoidSwitchingParams_t_rec.
