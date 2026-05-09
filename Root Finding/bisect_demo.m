% bisect_demo.calc — Usage examples for bisect.calc.
%
% Run:
%   ccalc bisect_demo.calc

fprintf('Example 1: x^2 - 2  (root = sqrt(2))\n')
[c, k] = bisect(@(x) x^2 - 2, 1, 2, 1e-8)

fprintf('\nExample 2: x^2 - 78.8  (root ≈ 8.877)\n')
[c, k] = bisect(@(x) x^2 - 78.8, 6, 12, 0.03)

fprintf('\nExample 3: x^3 + 4*x^2 - 10  (root ≈ 1.3653)\n')
[c, k] = bisect(@(x) x^3 + 4*x^2 - 10, 1, 2, 1e-5)
