function c = polyregress(x, y, deg)
% c = polyregress(x, y, deg)
%
% Polynomial regression of degree deg via the normal equations.
%
% Builds the Vandermonde design matrix V (n x (deg+1)), then solves
% the least-squares system V\y for the coefficient vector c.
% Coefficients are ordered highest-degree first, matching polyval().
%
% Arguments:
%   x   — row or column vector of predictor values (n points)
%   y   — row or column vector of response values (same size as x)
%   deg — degree of the fitting polynomial (integer ≥ 1)
%
% Returns:
%   c — coefficient vector of length deg+1, highest-degree first
%       c(1)*x^deg + c(2)*x^(deg-1) + ... + c(deg+1)
%
% Example:
%   source('polyregress.calc')
%   x = [0 1 2 3 4 5];
%   y = [1 1.8 2.9 4.5 6.8 9.2];
%   c = polyregress(x, y, 2)
%   polyval(c, 2.5)   % evaluate at a new point
  n = length(x);
  p = deg + 1;
  V = zeros(n, p);
  for i = 1:n
    for j = 1:p
      V(i, j) = x(i) ^ (deg - j + 1);
    end
  end
  yc = reshape(y, n, 1);
  cc = (V' * V) \ (V' * yc);
  c = cc';
end
