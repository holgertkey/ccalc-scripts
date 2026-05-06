% rk4_demo.calc — Usage examples for rk4.calc.
%
% Run:
%   ccalc rk4_demo.calc

fprintf('Example 1: y'' = -y,  y(0)=1  (exact: y = e^{-t})\n')
[t, y] = rk4(@(t,y) -y, 0, 5, 1, 20);
exact = exp(-5)
fprintf('  y(5) approx = %.10g\n', y(length(y)))
fprintf('  error = %.2e\n', abs(y(length(y)) - exact))

fprintf('\nExample 2: y'' = t,  y(0)=0  (exact: y = t²/2)\n')
[t, y] = rk4(@(t,y) t, 0, 3, 0, 100);
exact = 3^2 / 2
fprintf('  y(3) approx = %.10g\n', y(length(y)))
fprintf('  error = %.2e\n', abs(y(length(y)) - exact))

fprintf('\nExample 3: y'' = y*cos(t),  y(0)=1  (exact: y = e^{sin(t)})\n')
[t, y] = rk4(@(t,y) y*cos(t), 0, 2*pi, 1, 50);
exact = exp(sin(2*pi))
fprintf('  y(2π) approx = %.10g\n', y(length(y)))
fprintf('  error = %.2e\n', abs(y(length(y)) - exact))

fprintf('\nExample 4: convergence — O(h^4) error for y''=-y on [0,1]\n')
fprintf('  n       y(1) approx      error vs e^{-1}\n')
exact = exp(-1)
for n = [5, 10, 50, 100]
  [t, y] = rk4(@(t,y) -y, 0, 1, 1, n);
  fprintf('  %-7d %.12g  %.2e\n', n, y(length(y)), abs(y(length(y)) - exact))
end

fprintf('\nExample 5: RK4 vs Euler — same n=50 on y''=-y, [0,5]\n')
exact = exp(-5)
[t, ye] = euler_ode(@(t,y) -y, 0, 5, 1, 50);
[t, yr] = rk4(@(t,y) -y, 0, 5, 1, 50);
fprintf('  Euler  error = %.2e\n', abs(ye(length(ye)) - exact))
fprintf('  RK4    error = %.2e\n', abs(yr(length(yr)) - exact))
