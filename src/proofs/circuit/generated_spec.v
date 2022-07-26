From refinedc.typing Require Import typing.
From refinedc.project.learning.src.circuit Require Import generated_code.
Set Default Proof Using "Type".

(* Generated from [src/circuit.c]. *)
Section spec.
  Context `{!typeG Σ} `{!globalG Σ}.

  (* Definition of type [circuit]. *)
  Definition circuit_rec : (bool * bool -d> typeO) → (bool * bool -d> typeO) := (λ self patt__,
    let a := patt__.1 in
    let b := patt__.2 in
    constrained (struct struct_circuit [@{type}
      (a @ (builtin_boolean)) ;
      (b @ (builtin_boolean))
    ]) (
      ⌜~(and (Is_true a) (Is_true b))⌝
    )
  )%I.
  Typeclasses Opaque circuit_rec.

  Global Instance circuit_rec_ne : Contractive circuit_rec.
  Proof. solve_type_proper. Qed.
  Global Instance circuit_rec_proper : Proper ((≡) ==> (≡)) circuit_rec.
  Proof. apply contractive_proper, _. Qed.

  Definition circuit : rtype := {|
    rty_type := bool * bool;
    rty r__ := circuit_rec (fixp circuit_rec) r__
  |}.

  Lemma circuit_unfold (patt__ : bool * bool):
    (patt__ @ circuit)%I ≡@{type} (
      let a := patt__.1 in
      let b := patt__.2 in
      constrained (struct struct_circuit [@{type}
        (a @ (builtin_boolean)) ;
        (b @ (builtin_boolean))
      ]) (
        ⌜~(and (Is_true a) (Is_true b))⌝
      )
    )%I.
  Proof. apply: (fixp_unfold' circuit_rec). Qed.

  Global Instance circuit_simplify_hyp_place_inst_generated l_ β_ patt__:
    SimplifyHypPlace l_ β_ (patt__ @ circuit)%I (Some 100%N) :=
    λ T, i2p (simplify_hyp_place_eq l_ β_ _ _ T (circuit_unfold _)).
  Global Instance circuit_simplify_goal_place_inst_generated l_ β_ patt__:
    SimplifyGoalPlace l_ β_ (patt__ @ circuit)%I (Some 100%N) :=
    λ T, i2p (simplify_goal_place_eq l_ β_ _ _ T (circuit_unfold _)).

  Global Instance circuit_simplify_hyp_val_inst_generated v_ patt__:
    SimplifyHypVal v_ (patt__ @ circuit)%I (Some 100%N) :=
    λ T, i2p (simplify_hyp_val_eq v_ _ _ T (circuit_unfold _)).
  Global Instance circuit_simplify_goal_val_inst_generated v_ patt__:
    SimplifyGoalVal v_ (patt__ @ circuit)%I (Some 100%N) :=
    λ T, i2p (simplify_goal_val_eq v_ _ _ T (circuit_unfold _)).

  (* Type definitions. *)

  (* Specifications for function [assert_circuit]. *)
  Definition type_of_assert_circuit :=
    fn(∀ (a, b, p) : bool * bool * loc; (p @ (&own ((a, b) @ (circuit)))); True)
      → ∃ () : (), (void); (p ◁ₗ ((a,b) @ (circuit))).

  (* Specifications for function [check_one]. *)
  Definition type_of_check_one :=
    fn(∀ (a, b, p) : bool * bool * loc; (p @ (&own ((a, b) @ (circuit)))); True)
      → ∃ () : (), (a @ (builtin_boolean)); (p ◁ₗ ((a,b) @ (circuit))).

  (* Specifications for function [check_two]. *)
  Definition type_of_check_two :=
    fn(∀ (a, b, p) : bool * bool * loc; (p @ (&own ((a, b) @ (circuit)))); True)
      → ∃ () : (), (b @ (builtin_boolean)); (p ◁ₗ ((a,b) @ (circuit))).

  (* Specifications for function [set_one]. *)
  Definition type_of_set_one :=
    fn(∀ (a, b, x, p) : bool * bool * bool * loc; (p @ (&own ((a, b) @ (circuit)))), (x @ (builtin_boolean)); ⌜~(and (Is_true x) (Is_true b))⌝)
      → ∃ () : (), (void); (p ◁ₗ ((x,b) @ (circuit))).

  (* Specifications for function [set_two]. *)
  Definition type_of_set_two :=
    fn(∀ (a, b, x, p) : bool * bool * bool * loc; (p @ (&own ((a, b) @ (circuit)))), (x @ (builtin_boolean)); ⌜~(and (Is_true x) (Is_true a))⌝)
      → ∃ () : (), (void); (p ◁ₗ ((a,x) @ (circuit))).

  (* Specifications for function [circuit_action]. *)
  Definition type_of_circuit_action :=
    fn(∀ (a, b, p) : bool * bool * loc; (p @ (&own ((a, b) @ (circuit)))); True)
      → ∃ (x, y) : bool * bool, (void); (p ◁ₗ ((x,y) @ (circuit))).

  (* Function [main] has been skipped. *)
End spec.

Typeclasses Opaque circuit_rec.
