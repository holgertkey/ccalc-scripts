% romberg_demo.calc — Usage examples for romberg.calc.
%
% Run:
%   ccalc romberg_demo.calc

fprintf('Example 1: integral of sin(x) from 0 to pi  (exact = 2)\n')
[I, T] = romberg(@(x) sin(x), 0, pi, 6)
fprintf('  error = %.2e\n', abs(I - 2))

fprintf('\nExample 2: integral of e^x from 0 to 1  (exact = e-1)\n')
exact = exp(1) - 1
[I, T] = romberg(@(x) exp(x), 0, 1, 6)
fprintf('  error = %.2e\n', abs(I - exact))

fprintf('\nExample 3: integral of 1/x from 1 to e  (exact = 1)\n')
[I, T] = romberg(@(x) 1/x, 1, exp(1), 6)
fprintf('  error = %.2e\n', abs(I - 1))

fprintf('\nExample 4: convergence down the diagonal of the Romberg table\n')
fprintf('  (each column doubles the effective order)\n')
[I, T] = romberg(@(x) sin(x), 0, pi, 7)
fprintf('  T(k,k) diagonal:  error vs exact = 2\n')
for k = 1:7
  fprintf('  T(%d,%d) = %.12g   error = %.2e\n', k, k, T(k,k), abs(T(k,k) - 2))
end

fprintf('\nExample 5: comparison — trapz / simpsons / romberg at same cost\n')
fprintf('  (each uses ~64 function evaluations)\n')
It = trapz_rule(@(x) sin(x), 0, pi, 64)
Is = simpsons(@(x) sin(x), 0, pi, 64)
[Ir, T] = romberg(@(x) sin(x), 0, pi, 7)
fprintf('  trapz    error = %.2e\n', abs(It - 2))
fprintf('  simpsons error = %.2e\n', abs(Is - 2))
fprintf('  romberg  error = %.2e  (7 levels = 2^6=64 innermost intervals)\n', abs(Ir - 2))
