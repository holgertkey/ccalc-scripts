% polyregress_demo.calc — Usage examples for polyregress.calc.
%
% Run (from the directory containing polyregress.calc):
%   ccalc polyregress_demo.calc

fprintf('=== Example 1: linear fit (deg=1) ===\n')
x = [1 2 3 4 5];
y = [2.1 3.9 6.2 7.8 10.1];
c = polyregress(x, y, 1);
fprintf('  y = %.4f*x + %.4f\n', c(1), c(2))
fprintf('  At x=3: polyval = %.4f, actual = %.4f\n', polyval(c, 3), y(3))

fprintf('\n=== Example 2: quadratic fit (deg=2) ===\n')
x = [0 1 2 3 4 5];
y = [1.0 1.8 2.9 4.5 6.8 9.2];
c = polyregress(x, y, 2);
fprintf('  c = [%.4f  %.4f  %.4f]\n', c(1), c(2), c(3))
fprintf('  At x=2.5: polyval = %.4f\n', polyval(c, 2.5))
fprintf('  At x=6  : polyval = %.4f\n', polyval(c, 6))

fprintf('\n=== Example 3: cubic fit (deg=3) on sin data ===\n')
x = [0 0.5 1.0 1.5 2.0 2.5 3.0];
y = [0 0.4794 0.8415 0.9975 0.9093 0.5985 0.1411];
c = polyregress(x, y, 3);
fprintf('  Cubic coefficients:\n')
for k = 1:4
  fprintf('    c(%d) = %.6f\n', k, c(k))
end
fprintf('  At x=1.0: polyval = %.4f, sin(1.0) = %.4f\n', polyval(c, 1.0), 0.8415)
fprintf('  At x=1.5: polyval = %.4f, sin(1.5) = %.4f\n', polyval(c, 1.5), 0.9975)
