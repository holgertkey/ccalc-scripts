% lagrange_interp_demo.calc — Usage examples for lagrange_interp.calc.
%
% Run:
%   ccalc lagrange_interp_demo.calc

fprintf('Example 1: interpolate x^2 through 4 nodes — exact at xi=1.5\n')
x = [0, 1, 2, 3]
y = [0, 1, 4, 9]
yi = lagrange_interp(x, y, 1.5)
fprintf('  exact = %.10g,  error = %.2e\n', 1.5^2, abs(yi - 1.5^2))

fprintf('\nExample 2: interpolate x^3 through 4 nodes — exact at xi=2.5\n')
x = [0, 1, 2, 3]
y = [0, 1, 8, 27]
yi = lagrange_interp(x, y, 2.5)
fprintf('  exact = %.10g,  error = %.2e\n', 2.5^3, abs(yi - 2.5^3))

fprintf('\nExample 3: interpolate sin(x) through 5 equally-spaced nodes\n')
x = linspace(0, pi, 5)
y = sin(x)
xi = pi/3
yi = lagrange_interp(x, y, xi)
fprintf('  at xi = pi/3:  interp = %.10g,  exact = %.10g,  error = %.2e\n', ...
        yi, sin(xi), abs(yi - sin(xi)))

fprintf('\nExample 4: interpolate e^x through 6 nodes on [0, 2]\n')
x = linspace(0, 2, 6)
y = exp(x)
xi = 1.3
yi = lagrange_interp(x, y, xi)
fprintf('  at xi = 1.3:  interp = %.10g,  exact = %.10g,  error = %.2e\n', ...
        yi, exp(xi), abs(yi - exp(xi)))
