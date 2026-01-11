import Mathlib

open Nat

variable {m n : ℕ}

example (h : m ≤ n) : (n - m) ^ 2 = n ^ 2 + m ^ 2 - 2 * n * m := by
  rcases Nat.le.dest h with ⟨k, hk⟩
  simp [← hk, pow_two, add_mul, mul_add]
  ring_nf
  rw [add_comm (k * m * 2)]
  simp [add_assoc]
