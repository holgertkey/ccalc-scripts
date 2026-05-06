function [a, b, r2] = linregress(x, y)
% [a, b, r2] = linregress(x, y)
%
% Simple linear regression: fit y = a + b*x to data (least-squares).
%
% Arguments:
%   x — row or column vector of predictor values
%   y — row or column vector of response values (same size as x)
%
% Returns:
%   a  — intercept
%   b  — slope
%   r2 — coefficient of determination (R²), 0 ≤ R² ≤ 1
%
% Example:
%   source('linregress.calc')
%   x = [1 2 3 4 5];
%   y = [2.1 3.9 6.2 7.8 10.1];
%   [a, b, r2] = linregress(x, y)
  xm = mean(x);
  ym = mean(y);
  b = sum((x - xm) .* (y - ym)) / sum((x - xm) .^ 2);
  a = ym - b * xm;
  yhat = a + b .* x;
  ss_res = sum((y - yhat) .^ 2);
  ss_tot = sum((y - ym) .^ 2);
  if ss_tot < 1e-15
    r2 = 1;
  else
    r2 = 1 - ss_res / ss_tot;
  end
end
