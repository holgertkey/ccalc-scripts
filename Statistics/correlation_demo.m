% correlation_demo.calc — Usage examples for correlation.calc.
%
% Run (from the directory containing correlation.calc):
%   ccalc correlation_demo.calc

fprintf('=== Example 1: perfect positive correlation ===\n')
x = [1 2 3 4 5];
y = [2 4 6 8 10];
[r, C] = correlation(x, y);
fprintf('  r = %.4f  (expected 1.0)\n', r)
fprintf('  C = %.4f  (covariance)\n', C)

fprintf('\n=== Example 2: perfect negative correlation ===\n')
x = [1 2 3 4 5];
y = [10 8 6 4 2];
[r, C] = correlation(x, y);
fprintf('  r = %.4f  (expected -1.0)\n', r)
fprintf('  C = %.4f\n', C)

fprintf('\n=== Example 3: partial correlation ===\n')
x = [1 2 3 4 5];
y = [2 4 5 4 5];
[r, C] = correlation(x, y);
fprintf('  r = %.4f  (expected ~0.8)\n', r)
fprintf('  C = %.4f\n', C)

fprintf('\n=== Example 4: near-zero correlation ===\n')
x = [1 2 3 4 5 6 7 8];
y = [3 1 4 1 5 9 2 6];
[r, C] = correlation(x, y);
fprintf('  r = %.4f  (expected near 0)\n', r)
fprintf('  C = %.4f\n', C)

fprintf('\n=== Example 5: verify with cov() built-in ===\n')
x = [2 4 6 8 10];
y = [1 5 3 7 9];
[r, C] = correlation(x, y);
fprintf('  correlation() cov = %.4f\n', C)
C_mat = cov([x' y']);
fprintf('  cov() built-in   = %.4f  (should match)\n', C_mat(1,2))
