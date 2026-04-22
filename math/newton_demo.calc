% newton_demo.calc — Usage examples for newton.calc.
%
% Run:
%   ccalc newton_demo.calc

fprintf('Example 1: x^2 - 2  (root = sqrt(2) ≈ 1.41421356)\n')
[r, k, ok] = newton(@(x) x^2 - 2, @(x) 2*x, 1.0, 1e-10, 100)

fprintf('\nExample 2: x^3 - x - 2  (root ≈ 1.52138)\n')
[r, k, ok] = newton(@(x) x^3 - x - 2, @(x) 3*x^2 - 1, 1.5, 1e-10, 100)

fprintf('\nExample 3: cos(x) - x  (Dottie number ≈ 0.73909)\n')
[r, k, ok] = newton(@(x) cos(x) - x, @(x) -sin(x) - 1, 0.5, 1e-10, 100)

fprintf('\nExample 4: x^3 + 4*x^2 - 10  (root ≈ 1.36523)\n')
[r, k, ok] = newton(@(x) x^3 + 4*x^2 - 10, @(x) 3*x^2 + 8*x, 1.5, 1e-10, 100)

fprintf('\nExample 5: maxiter exceeded (only 2 iterations allowed)\n')
[r, k, ok] = newton(@(x) x^2 - 2, @(x) 2*x, 1.0, 1e-10, 2)
if ok == 0; fprintf('Did not converge: best estimate r = %.10g after %d iters\n', r, k); end
