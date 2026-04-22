% trapz_rule_demo.calc — Usage examples for trapz_rule.calc.
%
% Run:
%   ccalc trapz_rule_demo.calc

fprintf('Example 1: integral of sin(x) from 0 to pi  (exact = 2)\n')
I = trapz_rule(@(x) sin(x), 0, pi, 1000)
fprintf('  error = %.2e\n', abs(I - 2))

fprintf('\nExample 2: integral of x^2 from 0 to 1  (exact = 1/3)\n')
I = trapz_rule(@(x) x^2, 0, 1, 1000)
fprintf('  error = %.2e\n', abs(I - 1/3))

fprintf('\nExample 3: integral of e^x from 0 to 1  (exact = e-1 ≈ 1.71828)\n')
exact = exp(1) - 1
I = trapz_rule(@(x) exp(x), 0, 1, 1000)
fprintf('  error = %.2e\n', abs(I - exact))

fprintf('\nExample 4: convergence — error vs n for integral of sin(x)\n')
fprintf('  n      approx          error\n')
for n = [10, 100, 1000, 10000]
  I = trapz_rule(@(x) sin(x), 0, pi, n);
  fprintf('  %-6d %.10g  %.2e\n', n, I, abs(I - 2))
end

fprintf('\nExample 5: integral of 1/x from 1 to e  (exact = 1)\n')
I = trapz_rule(@(x) 1/x, 1, exp(1), 1000)
fprintf('  error = %.2e\n', abs(I - 1))
