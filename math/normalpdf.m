function [p, F] = normalpdf(x, mu, sigma)
% [p, F] = normalpdf(x, mu, sigma)
%
% Normal (Gaussian) probability density function and cumulative distribution.
%
% Arguments:
%   x     — scalar or vector of evaluation points
%   mu    — mean (default 0)
%   sigma — standard deviation, > 0 (default 1)
%
% Returns:
%   p — probability density at each point in x
%   F — cumulative probability P(X ≤ x) at each point in x
%
% Formulas:
%   p(x) = exp(-((x-mu)/sigma)^2 / 2) / (sigma * sqrt(2*pi))
%   F(x) = (1 + erf((x - mu) / (sigma * sqrt(2)))) / 2
%
% Example:
%   source('normalpdf.calc')
%   [p, F] = normalpdf(0)        % standard normal at x=0
%   [p, F] = normalpdf(1.96)     % 97.5th percentile
%   [p, F] = normalpdf(0, 5, 2)  % N(5,2) at x=0
  if nargin < 2
    mu = 0;
  end
  if nargin < 3
    sigma = 1;
  end
  z = (x - mu) ./ sigma;
  p = exp(-0.5 .* z .^ 2) ./ (sigma .* sqrt(2 .* pi));
  F = (1 + erf(z ./ sqrt(2))) ./ 2;
end
