function [root, iter, converged] = false_position(f, a, b, tol, maxiter)
% [root, iter, converged] = false_position(f, a, b, tol, maxiter)
%
% Find a root of f in [a,b] using the Regula Falsi (False Position) method.
% Requires f(a) and f(b) to have opposite signs.
%
% Arguments:
%   f       — anonymous function, e.g. @(x) x^2 - 2
%   a, b    — bracket endpoints with f(a)*f(b) < 0
%   tol     — convergence tolerance on |f(c)| (e.g. 1e-10)
%   maxiter — maximum number of iterations
%
% Returns:
%   root      — approximate root
%   iter      — number of iterations performed
%   converged — 1 if converged within tol, 0 if maxiter reached
%
% Example:
%   source('false_position.calc')
%   [r, k, ok] = false_position(@(x) x^2 - 2, 1.0, 2.0, 1e-10, 100)
%   % r ≈ 1.4142135624, ok = 1
  fa = f(a);
  fb = f(b);
  if fa * fb > 0
    fprintf('Error: f(a) and f(b) must have opposite signs.\n');
    root = a;
    iter = 0;
    converged = 0;
    return
  end
  converged = 0;
  for iter = 1:maxiter
    c = b - fb * (b - a) / (fb - fa);
    fc = f(c);
    if abs(fc) < tol
      root = c;
      converged = 1;
      return
    end
    if fa * fc < 0
      b = c;
      fb = fc;
    else
      a = c;
      fa = fc;
    end
  end
  root = c;
end
