% secant_demo.calc — Usage examples for secant.calc.
%
% Run:
%   ccalc secant_demo.calc

fprintf('Example 1: x^2 - 2  (root = sqrt(2) ≈ 1.41421356)\n')
[r, k, ok] = secant(@(x) x^2 - 2, 1.0, 2.0, 1e-10, 100)

fprintf('\nExample 2: x^3 - x - 2  (root ≈ 1.52138)\n')
[r, k, ok] = secant(@(x) x^3 - x - 2, 1.0, 2.0, 1e-10, 100)

fprintf('\nExample 3: cos(x) - x  (Dottie number ≈ 0.73909)\n')
[r, k, ok] = secant(@(x) cos(x) - x, 0.0, 1.0, 1e-10, 100)

fprintf('\nExample 4: x^3 + 4*x^2 - 10  (root ≈ 1.36523)\n')
[r, k, ok] = secant(@(x) x^3 + 4*x^2 - 10, 1.0, 2.0, 1e-10, 100)

fprintf('\nExample 5: maxiter exceeded (only 3 iterations allowed)\n')
[r, k, ok] = secant(@(x) x^2 - 2, 1.0, 2.0, 1e-10, 3)
if ok == 0; fprintf('Did not converge: best estimate r = %.10g after %d iters\n', r, k); end
