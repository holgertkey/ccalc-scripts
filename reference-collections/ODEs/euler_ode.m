function [t, y] = euler_ode(f, t0, tend, y0, n)
% [t, y] = euler_ode(f, t0, tend, y0, n)
%
% Solve the ODE  y' = f(t, y),  y(t0) = y0  on [t0, tend]
% using Euler's explicit method with n equal steps.
%
%   y_{k+1} = y_k + h * f(t_k, y_k),   h = (tend - t0) / n
%
% Error is O(h) — first-order method.
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
%   source('euler_ode.calc')
%   [t, y] = euler_ode(@(t,y) -y, 0, 5, 1, 100)
%   % y ≈ exp(-t), so y(end) ≈ exp(-5) ≈ 0.0067
  h = (tend - t0) / n;
  t = zeros(1, n+1);
  y = zeros(1, n+1);
  t(1) = t0;
  y(1) = y0;
  for k = 1:n
    t(k+1) = t(k) + h;
    y(k+1) = y(k) + h * f(t(k), y(k));
  end
end
