% linear_interp_demo.calc — Usage examples for linear_interp.calc.
%
% Run:
%   ccalc linear_interp_demo.calc

fprintf('Example 1: piecewise linear through x^2 data at xi=1.5\n')
fprintf('  segment [1,2]: y=1..4, lerp gives 2.5  (exact x^2=2.25)\n')
x = [0, 1, 2, 3]
y = [0, 1, 4, 9]
yi = linear_interp(x, y, 1.5)

fprintf('\nExample 2: exact on node\n')
yi = linear_interp(x, y, 2.0)
fprintf('  at node x=2: yi = %.10g  (expected 4)\n', yi)

fprintf('\nExample 3: clamping outside range\n')
yi_lo = linear_interp(x, y, -1.0)
yi_hi = linear_interp(x, y, 5.0)
fprintf('  xi=-1 → yi = %.10g  (clamped to y(1)=0)\n', yi_lo)
fprintf('  xi=5  → yi = %.10g  (clamped to y(n)=9)\n', yi_hi)

fprintf('\nExample 4: interpolate sin(x) on coarse grid, compare errors\n')
x = linspace(0, pi, 6)
y = sin(x)
xi = pi/3
yi_lin  = linear_interp(x, y, xi)
yi_newt = newton_interp(x, y, xi)
fprintf('  linear_interp:  %.10g  (error %.2e)\n', yi_lin,  abs(yi_lin  - sin(xi)))
fprintf('  newton_interp:  %.10g  (error %.2e)\n', yi_newt, abs(yi_newt - sin(xi)))
fprintf('  exact:          %.10g\n', sin(xi))

fprintf('\nExample 5: unevenly spaced nodes\n')
x = [0, 0.1, 0.5, 1.0, 2.0]
y = [1, 1.1, 1.6, 2.7, 7.4]
yi = linear_interp(x, y, 0.3)
fprintf('  between x=0.1 and x=0.5: yi = %.10g\n', yi)
