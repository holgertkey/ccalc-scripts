% simpsons_demo.calc — Usage examples for simpsons.calc.
%
% Run:
%   ccalc simpsons_demo.calc

fprintf('Example 1: integral of sin(x) from 0 to pi  (exact = 2)\n')
I = simpsons(@(x) sin(x), 0, pi, 100)
fprintf('  error = %.2e\n', abs(I - 2))

fprintf('\nExample 2: integral of x^2 from 0 to 1  (exact = 1/3)\n')
I = simpsons(@(x) x^2, 0, 1, 100)
fprintf('  error = %.2e\n', abs(I - 1/3))

fprintf('\nExample 3: integral of e^x from 0 to 1  (exact = e-1)\n')
exact = exp(1) - 1
I = simpsons(@(x) exp(x), 0, 1, 100)
fprintf('  error = %.2e\n', abs(I - exact))

fprintf('\nExample 4: convergence comparison — Simpson vs Trapezoidal\n')
fprintf('  n      trapz error    simpsons error\n')
for n = [10, 100, 1000]
  It = trapz_rule(@(x) sin(x), 0, pi, n);
  Is = simpsons(@(x) sin(x), 0, pi, n);
  fprintf('  %-6d %.2e        %.2e\n', n, abs(It - 2), abs(Is - 2))
end

fprintf('\nExample 5: odd n — auto-corrected to even\n')
I = simpsons(@(x) sin(x), 0, pi, 99)
fprintf('  error = %.2e\n', abs(I - 2))
