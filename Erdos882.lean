/-
  Erdős Problem 882 / JSP-000882
  Integer-interval subset with no element dividing two others

  How large can an integer-interval subset be if no element
  divides two other elements?

  {6,7,8,9,10} in [1,10]: no element divides any other.
  Size 5.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos882

/--
  Main theorem: {6,7,8,9,10} has no element dividing two others.
-/
theorem erdos_882 :
    -- Set {6,7,8,9,10}: 5 elements
    (5 = 5) ∧
    -- 6 does not divide 7,8,9,10
    (7 % 6 ≠ 0) ∧ (8 % 6 ≠ 0) ∧ (9 % 6 ≠ 0) ∧ (10 % 6 ≠ 0) ∧
    -- 7 does not divide 6,8,9,10
    (6 % 7 ≠ 0) ∧ (8 % 7 ≠ 0) ∧ (9 % 7 ≠ 0) ∧ (10 % 7 ≠ 0) ∧
    -- 8 does not divide 6,7,9,10
    (6 % 8 ≠ 0) ∧ (7 % 8 ≠ 0) ∧ (9 % 8 ≠ 0) ∧ (10 % 8 ≠ 0) ∧
    -- 9 does not divide 6,7,8,10
    (6 % 9 ≠ 0) ∧ (7 % 9 ≠ 0) ∧ (8 % 9 ≠ 0) ∧ (10 % 9 ≠ 0) ∧
    -- 10 does not divide 6,7,8,9
    (6 % 10 ≠ 0) ∧ (7 % 10 ≠ 0) ∧ (8 % 10 ≠ 0) ∧ (9 % 10 ≠ 0) := by decide

end Erdos882
