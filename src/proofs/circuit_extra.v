Lemma extra_1 : forall (a : Prop) (x : Prop), ~(x /\ a) -> ~(a /\ x).
Proof. unfold not. intros. apply H. destruct H0.
split. assumption. assumption.
Qed.