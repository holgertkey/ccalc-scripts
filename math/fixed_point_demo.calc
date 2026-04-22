% fixed_point_demo.calc — Usage examples for fixed_point.calc.
%
% Run:
%   ccalc fixed_point_demo.calc

fprintf('Example 1: sqrt(2) via Heron g(x) = (x + 2/x)/2  (root ≈ 1.41421356)\n')
[r, k, ok] = fixed_point(@(x) (x + 2/x) / 2, 1.5, 1e-10, 100)

fprintf('\nExample 2: Dottie number — g(x) = cos(x)  (fixed point ≈ 0.73909)\n')
[r, k, ok] = fixed_point(@(x) cos(x), 0.5, 1e-10, 100)

fprintf('\nExample 3: cube root of 2 via g(x) = (2*x + 2/x^2) / 3  (root ≈ 1.25992)\n')
[r, k, ok] = fixed_point(@(x) (2*x + 2/x^2) / 3, 1.5, 1e-10, 100)

fprintf('\nExample 4: x^3 - x - 2 = 0 via g(x) = (x + 2)^(1/3)  (root ≈ 1.52138)\n')
[r, k, ok] = fixed_point(@(x) (x + 2)^(1/3), 1.5, 1e-10, 100)

fprintf('\nExample 5: maxiter exceeded (only 4 iterations allowed)\n')
[r, k, ok] = fixed_point(@(x) cos(x), 0.5, 1e-10, 4)
if ok == 0; fprintf('Did not converge: best estimate r = %.10g after %d iters\n', r, k); end
