From refinedc.typing Require Import typing.
From refinedc.project.learning.src.solswitch Require Import generated_code.
Set Default Proof Using "Type".

(* Generated from [src/solswitch.c]. *)
Section spec.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Definition of type [ComHandler_t]. *)
  Definition ComHandler_t_rec : (nat -d> typeO) → (nat -d> typeO) := (λ self msg,
    struct struct_ComHandler_t [@{type}
      (msg @ (int (u8)))
    ]
  )%I.
  Typeclasses Opaque ComHandler_t_rec.

  Global Instance ComHandler_t_rec_ne : Contractive ComHandler_t_rec.
  Proof. solve_type_proper. Qed.
  Global Instance ComHandler_t_rec_proper : Proper ((≡) ==> (≡)) ComHandler_t_rec.
  Proof. apply contractive_proper, _. Qed.

  Definition ComHandler_t : rtype := {|
    rty_type := nat;
    rty r__ := ComHandler_t_rec (fixp ComHandler_t_rec) r__
  |}.

  Lemma ComHandler_t_unfold (msg : nat):
    (msg @ ComHandler_t)%I ≡@{type} (
      struct struct_ComHandler_t [@{type}
        (msg @ (int (u8)))
      ]
    )%I.
  Proof. apply: (fixp_unfold' ComHandler_t_rec). Qed.

  Global Instance ComHandler_t_simplify_hyp_place_inst_generated l_ β_ patt__:
    SimplifyHypPlace l_ β_ (patt__ @ ComHandler_t)%I (Some 100%N) :=
    λ T, i2p (simplify_hyp_place_eq l_ β_ _ _ T (ComHandler_t_unfold _)).
  Global Instance ComHandler_t_simplify_goal_place_inst_generated l_ β_ patt__:
    SimplifyGoalPlace l_ β_ (patt__ @ ComHandler_t)%I (Some 100%N) :=
    λ T, i2p (simplify_goal_place_eq l_ β_ _ _ T (ComHandler_t_unfold _)).

  Global Instance ComHandler_t_simplify_hyp_val_inst_generated v_ patt__:
    SimplifyHypVal v_ (patt__ @ ComHandler_t)%I (Some 100%N) :=
    λ T, i2p (simplify_hyp_val_eq v_ _ _ T (ComHandler_t_unfold _)).
  Global Instance ComHandler_t_simplify_goal_val_inst_generated v_ patt__:
    SimplifyGoalVal v_ (patt__ @ ComHandler_t)%I (Some 100%N) :=
    λ T, i2p (simplify_goal_val_eq v_ _ _ T (ComHandler_t_unfold _)).

  (* Definition of type [VoltageHandler_t]. *)
  Definition VoltageHandler_t_rec : (nat -d> typeO) → (nat -d> typeO) := (λ self unique_voltage,
    struct struct_VoltageHandler_t [@{type}
      (unique_voltage @ (int (u8)))
    ]
  )%I.
  Typeclasses Opaque VoltageHandler_t_rec.

  Global Instance VoltageHandler_t_rec_ne : Contractive VoltageHandler_t_rec.
  Proof. solve_type_proper. Qed.
  Global Instance VoltageHandler_t_rec_proper : Proper ((≡) ==> (≡)) VoltageHandler_t_rec.
  Proof. apply contractive_proper, _. Qed.

  Definition VoltageHandler_t : rtype := {|
    rty_type := nat;
    rty r__ := VoltageHandler_t_rec (fixp VoltageHandler_t_rec) r__
  |}.

  Lemma VoltageHandler_t_unfold (unique_voltage : nat):
    (unique_voltage @ VoltageHandler_t)%I ≡@{type} (
      struct struct_VoltageHandler_t [@{type}
        (unique_voltage @ (int (u8)))
      ]
    )%I.
  Proof. apply: (fixp_unfold' VoltageHandler_t_rec). Qed.

  Global Instance VoltageHandler_t_simplify_hyp_place_inst_generated l_ β_ patt__:
    SimplifyHypPlace l_ β_ (patt__ @ VoltageHandler_t)%I (Some 100%N) :=
    λ T, i2p (simplify_hyp_place_eq l_ β_ _ _ T (VoltageHandler_t_unfold _)).
  Global Instance VoltageHandler_t_simplify_goal_place_inst_generated l_ β_ patt__:
    SimplifyGoalPlace l_ β_ (patt__ @ VoltageHandler_t)%I (Some 100%N) :=
    λ T, i2p (simplify_goal_place_eq l_ β_ _ _ T (VoltageHandler_t_unfold _)).

  Global Instance VoltageHandler_t_simplify_hyp_val_inst_generated v_ patt__:
    SimplifyHypVal v_ (patt__ @ VoltageHandler_t)%I (Some 100%N) :=
    λ T, i2p (simplify_hyp_val_eq v_ _ _ T (VoltageHandler_t_unfold _)).
  Global Instance VoltageHandler_t_simplify_goal_val_inst_generated v_ patt__:
    SimplifyGoalVal v_ (patt__ @ VoltageHandler_t)%I (Some 100%N) :=
    λ T, i2p (simplify_goal_val_eq v_ _ _ T (VoltageHandler_t_unfold _)).

  (* Definition of type [SolenoidSwitchingParams_t]. *)
  Definition SolenoidSwitchingParams_t_rec : (nat * nat * nat -d> typeO) → (nat * nat * nat -d> typeO) := (λ self patt__,
    let state := patt__.1.1 in
    let msg := patt__.1.2 in
    let voltage := patt__.2 in
    struct struct_SolenoidSwitchingParams_t [@{type}
      (state @ (int (size_t))) ;
      ((msg @ (ComHandler_t))) ;
      ((voltage @ (VoltageHandler_t)))
    ]
  )%I.
  Typeclasses Opaque SolenoidSwitchingParams_t_rec.

  Global Instance SolenoidSwitchingParams_t_rec_ne : Contractive SolenoidSwitchingParams_t_rec.
  Proof. solve_type_proper. Qed.
  Global Instance SolenoidSwitchingParams_t_rec_proper : Proper ((≡) ==> (≡)) SolenoidSwitchingParams_t_rec.
  Proof. apply contractive_proper, _. Qed.

  Definition SolenoidSwitchingParams_t : rtype := {|
    rty_type := nat * nat * nat;
    rty r__ := SolenoidSwitchingParams_t_rec (fixp SolenoidSwitchingParams_t_rec) r__
  |}.

  Lemma SolenoidSwitchingParams_t_unfold (patt__ : nat * nat * nat):
    (patt__ @ SolenoidSwitchingParams_t)%I ≡@{type} (
      let state := patt__.1.1 in
      let msg := patt__.1.2 in
      let voltage := patt__.2 in
      struct struct_SolenoidSwitchingParams_t [@{type}
        (state @ (int (size_t))) ;
        ((msg @ (ComHandler_t))) ;
        ((voltage @ (VoltageHandler_t)))
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
    fn(∀ (msg, p) : nat * loc; (p @ (&own ((msg) @ (ComHandler_t)))); True)
      → ∃ (new_msg, new_msg_size) : nat * nat, (new_msg_size @ (int (u8))); (p ◁ₗ ((new_msg) @ (ComHandler_t))).

  (* Specifications for function [SML_switchTheSolenoid]. *)
  Definition type_of_SML_switchTheSolenoid :=
    fn(∀ (state, msg, p, voltage) : nat * nat * loc * nat; (p @ (&own ((state, msg, voltage) @ (SolenoidSwitchingParams_t)))); True)
      → ∃ new_state : nat, (void); (p ◁ₗ ((new_state ,msg, voltage) @ (SolenoidSwitchingParams_t))) ∗ ⌜new_state = (if Nat.eqb state 0%nat then 1%nat else state)⌝.

  (* Specifications for function [SML_trySwitch]. *)
  Definition type_of_SML_trySwitch :=
    fn(∀ (state, msg, len, p, voltage) : nat * nat * nat * loc * nat; (p @ (&own ((state, msg, voltage) @ (SolenoidSwitchingParams_t)))), (len @ (int (u8))); True)
      → ∃ (new_msg, new_state) : nat * nat, (void); (p ◁ₗ (( new_state ,new_msg, voltage) @ (SolenoidSwitchingParams_t))) ∗ ⌜((new_msg = 7%nat ∨ new_msg = 12%nat) ∧ (len = 8%nat) ∧ (state = 0%nat) -> (new_state = 1%nat)) ∨ (new_state = state)⌝.

  (* Specifications for function [SML_handleReceivedMsgs]. *)
  Definition type_of_SML_handleReceivedMsgs :=
    fn(∀ (state, msg, p, voltage) : nat * nat * loc * nat; (p @ (&own ((state, msg, voltage) @ (SolenoidSwitchingParams_t)))); True)
      → ∃ (new_msg, new_state) : nat * nat, (void); (p ◁ₗ ((new_state ,new_msg, voltage) @ (SolenoidSwitchingParams_t))).

  (* Specifications for function [Timer_getCurTime]. *)
  Definition type_of_Timer_getCurTime :=
    fn(∀ time : nat; True) → ∃ () : (), (time @ (int (u16))); True.

  (* Specifications for function [getSafetyVoltageHoldTime]. *)
  Definition type_of_getSafetyVoltageHoldTime :=
    fn(∀ (last_time, current_time) : nat * nat; (last_time @ (int (u16))), (current_time @ (int (u16))); True)
      → ∃ () : (), ((last_time > current_time ? (65535 - last_time + current_time) : (current_time - last_time)) @ (int (u8))); True.

  (* Specifications for function [SML_isSafetyVoltageCondExists]. *)
  Definition type_of_SML_isSafetyVoltageCondExists :=
    fn(∀ (state, msg, conversionEnded, voltage, p, global_time) : nat * nat * bool * nat * loc * nat; (p @ (&own ((state, msg, voltage) @ (SolenoidSwitchingParams_t)))), (conversionEnded @ (builtin_boolean)); (initialized "curTime" global_time))
      → ∃ changed : bool, (changed @ (builtin_boolean)); (p ◁ₗ ((state ,msg, voltage) @ (SolenoidSwitchingParams_t))) ∗ ⌜changed = if (andb (state =? 0%nat) conversionEnded) then ( if (217 <=? voltage) then (11 <=? global_time) else false) else false⌝.
End spec.

Typeclasses Opaque ComHandler_t_rec.
Typeclasses Opaque VoltageHandler_t_rec.
Typeclasses Opaque SolenoidSwitchingParams_t_rec.
