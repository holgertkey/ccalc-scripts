% euler_ode_demo.calc — Usage examples for euler_ode.calc.
%
% Run:
%   ccalc euler_ode_demo.calc

fprintf('Example 1: y'' = -y,  y(0)=1  (exact: y = e^{-t})\n')
[t, y] = euler_ode(@(t,y) -y, 0, 5, 1, 100);
exact = exp(-5)
fprintf('  y(5) approx = %.10g\n', y(length(y)))
fprintf('  error = %.2e\n', abs(y(length(y)) - exact))

fprintf('\nExample 2: y'' = t,  y(0)=0  (exact: y = t²/2)\n')
[t, y] = euler_ode(@(t,y) t, 0, 3, 0, 1000);
exact = 3^2 / 2
fprintf('  y(3) approx = %.10g\n', y(length(y)))
fprintf('  error = %.2e\n', abs(y(length(y)) - exact))

fprintf('\nExample 3: y'' = y,  y(0)=1  (exact: y = e^t)\n')
[t, y] = euler_ode(@(t,y) y, 0, 2, 1, 1000);
exact = exp(2)
fprintf('  y(2) approx = %.10g\n', y(length(y)))
fprintf('  error = %.2e\n', abs(y(length(y)) - exact))

fprintf('\nExample 4: convergence — O(h) error for y''=-y on [0,1]\n')
fprintf('  n       y(1) approx     error vs e^{-1}\n')
exact = exp(-1)
for n = [10, 100, 1000, 10000]
  [t, y] = euler_ode(@(t,y) -y, 0, 1, 1, n);
  fprintf('  %-7d %.10g  %.2e\n', n, y(length(y)), abs(y(length(y)) - exact))
end
