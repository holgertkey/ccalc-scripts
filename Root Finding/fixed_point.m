function [root, iter, converged] = fixed_point(g, x0, tol, maxiter)
% [root, iter, converged] = fixed_point(g, x0, tol, maxiter)
%
% Find a fixed point of g (i.e. a root of f(x) = g(x) - x = 0)
% using fixed-point iteration: x_new = g(x).
%
% Arguments:
%   g       — anonymous function such that g(x*) = x* at the root
%   x0      — initial guess
%   tol     — convergence tolerance on |x_new - x| (e.g. 1e-10)
%   maxiter — maximum number of iterations
%
% Returns:
%   root      — approximate fixed point
%   iter      — number of iterations performed
%   converged — 1 if converged within tol, 0 if maxiter reached
%
% Note: convergence requires |g'(x*)| < 1 near the fixed point.
%
% Example:
%   source('fixed_point.calc')
%   % Solve x^2 - 2 = 0 via g(x) = (x + 2/x) / 2  (Heron's method)
%   [r, k, ok] = fixed_point(@(x) (x + 2/x) / 2, 1.5, 1e-10, 100)
%   % r ≈ 1.4142135624, ok = 1
  x = x0;
  converged = 0;
  for iter = 1:maxiter
    xnew = g(x);
    if abs(xnew - x) < tol
      root = xnew;
      converged = 1;
      return
    end
    x = xnew;
  end
  root = x;
end
