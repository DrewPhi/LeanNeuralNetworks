import Mathlib
import Mathlib.Data.Matrix.Notation

open Fin
open Real
open Finset BigOperators
open Matrix

noncomputable def maximum (n k : ℝ) : ℝ :=
  if n < k then k else n

noncomputable def relu (x : ℝ) : ℝ :=
  maximum 0.0 x

def affine_function_nd {n : ℕ} (a : Fin n → ℝ) (b : ℝ) (x : Fin n → ℝ) : ℝ :=
  (∑ i, a i * x i) + b
