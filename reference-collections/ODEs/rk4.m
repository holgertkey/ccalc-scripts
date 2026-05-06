function [t, y] = rk4(f, t0, tend, y0, n)
% [t, y] = rk4(f, t0, tend, y0, n)
%
% Solve the ODE  y' = f(t, y),  y(t0) = y0  on [t0, tend]
% using the classical 4th-order Runge-Kutta method with n equal steps.
%
%   k1 = h * f(t,       y)
%   k2 = h * f(t + h/2, y + k1/2)
%   k3 = h * f(t + h/2, y + k2/2)
%   k4 = h * f(t + h,   y + k3)
%   y_{k+1} = y_k + (k1 + 2*k2 + 2*k3 + k4) / 6
%
% Error is O(h^4) — far more accurate than Euler O(h) for the same n.
%
% Arguments:
%   f    — anonymous function @(t,y) ..., right-hand side of ODE
%   t0   — initial time
%   tend — final time
%   y0   — initial condition y(t0)
%   n    — number of steps
%
% Returns:
%   t — 1×(n+1) vector of time points
%   y — 1×(n+1) vector of solution values
%
% Example:
%   source('rk4.calc')
%   [t, y] = rk4(@(t,y) -y, 0, 5, 1, 20)
%   % y(end) ≈ exp(-5) ≈ 0.006738  with just 20 steps
  h = (tend - t0) / n;
  t = zeros(1, n+1);
  y = zeros(1, n+1);
  t(1) = t0;
  y(1) = y0;
  for k = 1:n
    tk = t(k);
    yk = y(k);
    k1 = h * f(tk,       yk);
    k2 = h * f(tk + h/2, yk + k1/2);
    k3 = h * f(tk + h/2, yk + k2/2);
    k4 = h * f(tk + h,   yk + k3);
    t(k+1) = tk + h;
    y(k+1) = yk + (k1 + 2*k2 + 2*k3 + k4) / 6;
  end
end
