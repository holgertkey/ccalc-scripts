function y = horner(c, x)
% y = horner(c, x)
%
% Evaluate a polynomial at x using Horner's method (nested multiplication).
%
% Horner's scheme rewrites c(1)*x^n + c(2)*x^(n-1) + ... + c(n+1) as
% (...((c(1)*x + c(2))*x + c(3))*x + ...)*x + c(n+1), reducing the
% number of multiplications from O(n²) to O(n).
%
% Coefficients are ordered highest-degree first (same convention as polyval).
%
% Arguments:
%   c — coefficient vector [c1, c2, ..., cn+1], highest-degree first
%   x — scalar evaluation point
%
% Returns:
%   y — polynomial value at x
%
% Example:
%   source('horner.calc')
%   horner([1, -6, 11, -6], 3)  % x^3 - 6x^2 + 11x - 6 at x=3 = 0
%   horner([1, 0, -1], 2)       % x^2 - 1 at x=2 = 3
  n = length(c);
  y = c(1);
  for k = 2:n
    y = y * x + c(k);
  end
end
