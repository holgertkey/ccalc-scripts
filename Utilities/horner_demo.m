% horner_demo.calc — Usage examples for horner.calc.
%
% Run (from the directory containing horner.calc):
%   ccalc horner_demo.calc

fprintf('=== Example 1: roots of x^3 - 6x^2 + 11x - 6 = (x-1)(x-2)(x-3) ===\n')
c = [1, -6, 11, -6];
fprintf('  p(1) = %g  (expected 0)\n', horner(c, 1))
fprintf('  p(2) = %g  (expected 0)\n', horner(c, 2))
fprintf('  p(3) = %g  (expected 0)\n', horner(c, 3))
fprintf('  p(0) = %g  (expected -6)\n', horner(c, 0))

fprintf('\n=== Example 2: compare with polyval ===\n')
c = [2, -3, 1, 5];
for x = 0:4
  h = horner(c, x);
  p = polyval(c, x);
  fprintf('  x=%d: horner=%g  polyval=%g  match=%d\n', x, h, p, abs(h-p) < 1e-12)
end

fprintf('\n=== Example 3: constant and linear polynomials ===\n')
fprintf('  horner([7], 99)          = %g  (expected 7)\n', horner([7], 99))
fprintf('  horner([3, -2], 5)       = %g  (expected 13)\n', horner([3, -2], 5))
fprintf('  horner([1, 0, 0, 0], 4) = %g  (expected 64)\n', horner([1, 0, 0, 0], 4))

fprintf('\n=== Example 4: x^4 - 2x^2 + 1 = (x^2-1)^2, roots at x=+-1 ===\n')
c = [1, 0, -2, 0, 1];
fprintf('  p(-1) = %g  (expected 0)\n', horner(c, -1))
fprintf('  p( 0) = %g  (expected 1)\n', horner(c, 0))
fprintf('  p( 1) = %g  (expected 0)\n', horner(c, 1))
fprintf('  p(0.5) = %g  (expected 0.5625)\n', horner(c, 0.5))
