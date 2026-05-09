function I = trapz_rule(f, a, b, n)
% I = trapz_rule(f, a, b, n)
%
% Approximate the definite integral of f from a to b using the
% composite trapezoidal rule with n equal-width subintervals.
%
%   I ≈ h * (f(x0)/2 + f(x1) + f(x2) + ... + f(x_{n-1}) + f(xn)/2)
%
% Error is O(h^2) where h = (b-a)/n.
%
% Arguments:
%   f — anonymous function, e.g. @(x) sin(x)
%   a — lower limit of integration
%   b — upper limit of integration
%   n — number of subintervals (larger n → higher accuracy)
%
% Returns:
%   I — approximate value of the integral
%
% Example:
%   source('trapz_rule.calc')
%   I = trapz_rule(@(x) sin(x), 0, pi, 1000)
%   % I ≈ 2.0  (exact = 2)
  h = (b - a) / n;
  x = linspace(a, b, n+1);
  y = zeros(1, n+1);
  for k = 1:n+1
    y(k) = f(x(k));
  end
  I = h * (sum(y) - y(1)/2 - y(n+1)/2);
end
