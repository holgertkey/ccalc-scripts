function [c, k] = bisect(fun, a, b, tol)
% [c, k] = bisect(fun, a, b, tol)
%
% Find a root of fun in the interval [a, b] using the bisection method.
%
% Arguments:
%   fun  — anonymous function, e.g. @(x) x^2 - 2
%   a, b — interval endpoints; fun(a) and fun(b) must have opposite signs
%   tol  — desired absolute tolerance (e.g. 1e-6)
%
% Returns:
%   c — approximate root (|c - root| <= tol)
%   k — number of iterations performed
%
% Example:
%   source('bisect.calc')
%   [c, k] = bisect(@(x) x^2 - 2, 1, 2, 1e-8)
%   % c = 1.4142135605, k = 27
%
% Algorithm: halves the interval each step; converges in
% k = ceil(log2((b - a) / tol)) iterations.
%
% Source: adapted from free-unife/numerical-calculus-octave-scripts (WTFPL)
  steps = ceil(log2((b - a) / tol));
  [c, k] = bisect_r(fun, a, b, 0, steps);
end

function [c, k] = bisect_r(fun, a, b, k, maxSteps)
  c = (a + b) / 2;
  k = k + 1;
  if k >= maxSteps
    return
  end
  y = fun(c);
  if y > 0
    [c, k] = bisect_r(fun, a, c, k, maxSteps);
  elseif y < 0
    [c, k] = bisect_r(fun, c, b, k, maxSteps);
  end
end
