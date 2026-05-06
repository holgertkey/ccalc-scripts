% newton_interp_demo.calc — Usage examples for newton_interp.calc.
%
% Run:
%   ccalc newton_interp_demo.calc

fprintf('Example 1: interpolate x^2 — exact with 4 nodes at xi=1.5\n')
x = [0, 1, 2, 3]
y = [0, 1, 4, 9]
yi = newton_interp(x, y, 1.5)
fprintf('  exact = %.10g,  error = %.2e\n', 1.5^2, abs(yi - 1.5^2))

fprintf('\nExample 2: interpolate x^3 — exact with 4 nodes at xi=1.5\n')
x = [0, 1, 2, 3]
y = [0, 1, 8, 27]
yi = newton_interp(x, y, 1.5)
fprintf('  exact = %.10g,  error = %.2e\n', 1.5^3, abs(yi - 1.5^3))

fprintf('\nExample 3: compare Newton vs Lagrange on sin(x)\n')
x = linspace(0, pi, 5)
y = sin(x)
xi = pi/3
yi_n = newton_interp(x, y, xi)
yi_l = lagrange_interp(x, y, xi)
fprintf('  Newton:   %.10g\n', yi_n)
fprintf('  Lagrange: %.10g\n', yi_l)
fprintf('  exact:    %.10g\n', sin(xi))
fprintf('  differ by: %.2e\n', abs(yi_n - yi_l))

fprintf('\nExample 4: interpolate e^x through 6 nodes on [0, 2] at xi=1.3\n')
x = linspace(0, 2, 6)
y = exp(x)
yi = newton_interp(x, y, 1.3)
fprintf('  interp = %.10g,  exact = %.10g,  error = %.2e\n', ...
        yi, exp(1.3), abs(yi - exp(1.3)))
