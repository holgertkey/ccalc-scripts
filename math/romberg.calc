function [I, T] = romberg(f, a, b, levels)
% [I, T] = romberg(f, a, b, levels)
%
% Approximate the definite integral of f from a to b using Romberg
% integration: Richardson extrapolation applied to the trapezoidal rule.
%
% Builds a levels×levels triangular table T where:
%   T(i,1) = trapezoidal rule with 2^(i-1) subintervals
%   T(i,j) = (4^(j-1)*T(i,j-1) - T(i-1,j-1)) / (4^(j-1) - 1)
%
% The result T(levels,levels) has error O(h^(2*levels)), far higher order
% than trapezoidal O(h²) or Simpson O(h⁴) for the same function evaluations.
%
% Arguments:
%   f      — anonymous function, e.g. @(x) sin(x)
%   a      — lower limit of integration
%   b      — upper limit of integration
%   levels — number of refinement levels (5–8 is typical)
%
% Returns:
%   I — best estimate: T(levels, levels)
%   T — full levels×levels extrapolation table (upper triangle unused)
%
% Example:
%   source('romberg.calc')
%   [I, T] = romberg(@(x) sin(x), 0, pi, 6)
%   % I ≈ 2.0  to near machine precision
  T = zeros(levels, levels);

  % First column: trapezoidal rule with 2^(i-1) subintervals
  for i = 1:levels
    n = 2^(i-1);
    h = (b - a) / n;
    s = f(a) + f(b);
    for k = 1:n-1
      s = s + 2 * f(a + k*h);
    end
    T(i, 1) = s * h / 2;
  end

  % Richardson extrapolation to fill remaining columns
  for j = 2:levels
    fac = 4^(j-1);
    for i = j:levels
      T(i, j) = (fac * T(i, j-1) - T(i-1, j-1)) / (fac - 1);
    end
  end

  I = T(levels, levels);
end
