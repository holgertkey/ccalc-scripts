function [root, iter, converged] = newton(f, df, x0, tol, maxiter)
% [root, iter, converged] = newton(f, df, x0, tol, maxiter)
%
% Find a root of f using Newton's method (Newton-Raphson).
%
% Arguments:
%   f       — anonymous function, e.g. @(x) x^2 - 2
%   df      — derivative of f, e.g. @(x) 2*x
%   x0      — initial guess
%   tol     — convergence tolerance on |x_new - x| (e.g. 1e-10)
%   maxiter — maximum number of iterations
%
% Returns:
%   root      — approximate root
%   iter      — number of iterations performed
%   converged — 1 if converged within tol, 0 if maxiter reached
%
% Example:
%   source('newton.calc')
%   [r, k, ok] = newton(@(x) x^2 - 2, @(x) 2*x, 1.0, 1e-10, 100)
%   % r = 1.4142135624, k = 6, ok = 1
  x = x0;
  converged = 0;
  for iter = 1:maxiter
    fx = f(x);
    dfx = df(x);
    if abs(dfx) < 1e-15
      fprintf('Warning: derivative too small at x = %.10g\n', x);
      root = x;
      return
    end
    xnew = x - fx / dfx;
    if abs(xnew - x) < tol
      root = xnew;
      converged = 1;
      return
    end
    x = xnew;
  end
  root = x;
end
