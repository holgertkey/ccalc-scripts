function [r, C] = correlation(x, y)
% [r, C] = correlation(x, y)
%
% Compute the Pearson correlation coefficient and sample covariance
% between two equal-length numeric vectors x and y.
%
% Arguments:
%   x — row or column vector of values
%   y — row or column vector of values (same size as x)
%
% Returns:
%   r — Pearson correlation coefficient, -1 ≤ r ≤ 1
%   C — sample covariance Cov(x, y) = sum((xi-xm)*(yi-ym)) / (n-1)
%
% Interpretation of r:
%    1  — perfect positive linear relationship
%    0  — no linear relationship
%   -1  — perfect negative linear relationship
%
% Example:
%   source('correlation.calc')
%   x = [1 2 3 4 5];
%   y = [2 4 5 4 5];
%   [r, C] = correlation(x, y)
  n = length(x);
  xm = mean(x);
  ym = mean(y);
  dx = x - xm;
  dy = y - ym;
  C = sum(dx .* dy) / (n - 1);
  r = C / (std(x) * std(y));
end
