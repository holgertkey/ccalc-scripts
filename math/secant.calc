function [root, iter, converged] = secant(f, x0, x1, tol, maxiter)
% [root, iter, converged] = secant(f, x0, x1, tol, maxiter)
%
% Find a root of f using the Secant method (no derivative required).
%
% Arguments:
%   f       — anonymous function, e.g. @(x) x^2 - 2
%   x0      — first initial point
%   x1      — second initial point (x0 ~= x1)
%   tol     — convergence tolerance on |x_new - x1| (e.g. 1e-10)
%   maxiter — maximum number of iterations
%
% Returns:
%   root      — approximate root
%   iter      — number of iterations performed
%   converged — 1 if converged within tol, 0 if maxiter reached
%
% Example:
%   source('secant.calc')
%   [r, k, ok] = secant(@(x) x^2 - 2, 1.0, 2.0, 1e-10, 100)
%   % r ≈ 1.4142135624, ok = 1
  converged = 0;
  iter = 0;
  fa = f(x0);
  fb = f(x1);
  while iter < maxiter
    diff = fb - fa;
    if abs(diff) < 1e-15
      fprintf('Warning: near-zero denominator at x = %.10g\n', x1);
      root = x1;
      return
    end
    xnew = x1 - fb * (x1 - x0) / diff;
    iter++;
    if abs(xnew - x1) < tol
      root = xnew;
      converged = 1;
      return
    end
    x0 = x1;
    fa = fb;
    x1 = xnew;
    fb = f(x1);
  end
  root = x1;
end
