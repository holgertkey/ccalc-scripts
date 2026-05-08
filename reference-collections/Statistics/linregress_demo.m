% linregress_demo.calc — Usage examples for linregress.calc.
%
% Run (from the directory containing linregress.calc):
%   ccalc linregress_demo.calc

fprintf('=== Example 1: near-perfect line y = 2x + 1 ===\n')
x = [1 2 3 4 5];
y = [3.0 5.0 7.0 9.0 11.0];
[a, b, r2] = linregress(x, y);
fprintf('  a  = %.6g  (expected 1)\n', a)
fprintf('  b  = %.6g  (expected 2)\n', b)
fprintf('  R² = %.6g  (expected 1)\n', r2)

fprintf('\n=== Example 2: noisy data ===\n')
x = [1 2 3 4 5];
y = [2.1 3.9 6.2 7.8 10.1];
[a, b, r2] = linregress(x, y);
fprintf('  a  = %.4f\n', a)
fprintf('  b  = %.4f\n', b)
fprintf('  R² = %.4f  (close to 1 = good fit)\n', r2)
fprintf('  Predicted at x=6: %.4f\n', a + b * 6)

fprintf('\n=== Example 3: Anscombe quartet — set I ===\n')
fprintf('  Classic dataset where R²≈0.667 regardless of noise pattern\n')
x = [10 8 13 9 11 14 6 4 12 7 5];
y = [8.04 6.95 7.58 8.81 8.33 9.96 7.24 4.26 10.84 4.82 5.68];
[a, b, r2] = linregress(x, y);
fprintf('  a  = %.4f  (expected ~3.00)\n', a)
fprintf('  b  = %.4f  (expected ~0.5)\n', b)
fprintf('  R² = %.4f  (expected ~0.667)\n', r2)
