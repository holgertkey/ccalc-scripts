function I = simpsons(f, a, b, n)
% I = simpsons(f, a, b, n)
%
% Approximate the definite integral of f from a to b using the
% composite Simpson's 1/3 rule with n equal-width subintervals.
% n must be even.
%
%   I ≈ (h/3) * (f0 + 4f1 + 2f2 + 4f3 + ... + 4f_{n-1} + fn)
%
% Error is O(h^4) — significantly more accurate than the trapezoidal
% rule for the same n.
%
% Arguments:
%   f — anonymous function, e.g. @(x) sin(x)
%   a — lower limit of integration
%   b — upper limit of integration
%   n — number of subintervals (must be even; larger n → higher accuracy)
%
% Returns:
%   I — approximate value of the integral
%
% Example:
%   source('simpsons.calc')
%   I = simpsons(@(x) sin(x), 0, pi, 100)
%   % I ≈ 2.0  (exact = 2)
  if mod(n, 2) ~= 0
    fprintf('Warning: n must be even for Simpson''s rule; using n+1 = %d\n', n+1)
    n = n + 1;
  end

  h = (b - a) / n;
  x = linspace(a, b, n+1);
  y = zeros(1, n+1);
  for k = 1:n+1
    y(k) = f(x(k));
  end

  % Apply coefficients: 1, 4, 2, 4, 2, ..., 4, 1
  S = y(1) + y(n+1);
  for k = 2:n
    if mod(k, 2) == 0
      S = S + 4 * y(k);
    else
      S = S + 2 * y(k);
    end
  end
  I = S * h / 3;
end
