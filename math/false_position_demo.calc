% false_position_demo.calc — Usage examples for false_position.calc.
%
% Run:
%   ccalc false_position_demo.calc

fprintf('Example 1: x^2 - 2  in [1, 2]  (root = sqrt(2) ≈ 1.41421356)\n')
[r, k, ok] = false_position(@(x) x^2 - 2, 1.0, 2.0, 1e-10, 100)

fprintf('\nExample 2: x^3 - x - 2  in [1, 2]  (root ≈ 1.52138)\n')
[r, k, ok] = false_position(@(x) x^3 - x - 2, 1.0, 2.0, 1e-10, 100)

fprintf('\nExample 3: cos(x) - x  in [0, 1]  (Dottie number ≈ 0.73909)\n')
[r, k, ok] = false_position(@(x) cos(x) - x, 0.0, 1.0, 1e-10, 100)

fprintf('\nExample 4: x^3 + 4*x^2 - 10  in [1, 2]  (root ≈ 1.36523)\n')
[r, k, ok] = false_position(@(x) x^3 + 4*x^2 - 10, 1.0, 2.0, 1e-10, 100)

fprintf('\nExample 5: invalid bracket (same sign) — expect error message\n')
[r, k, ok] = false_position(@(x) x^2 + 1, 0.0, 2.0, 1e-10, 100)

fprintf('\nExample 6: maxiter exceeded (only 5 iterations allowed)\n')
[r, k, ok] = false_position(@(x) x^2 - 2, 1.0, 2.0, 1e-10, 5)
if ok == 0; fprintf('Did not converge: best estimate r = %.10g after %d iters\n', r, k); end
