function descriptive(v)
% descriptive(v) — Print descriptive statistics for a numeric vector v.
%
% Reports: n, min, max, range, mean, median, mode, std, var,
%          Q1 (25th percentile), Q3 (75th percentile), IQR,
%          skewness (population), kurtosis (population).
%
% Arguments:
%   v — row or column vector of numeric values
%
% Example:
%   source('descriptive.calc')
%   descriptive([2 4 4 4 5 5 7 9])
%
% Skewness uses the population (moment) formula: m3 / m2^(3/2).
%   > 0  right-skewed (long right tail)
%   = 0  symmetric
%   < 0  left-skewed  (long left tail)
%
% Kurtosis is the population moment ratio: m4 / m2^2.
%   Normal distribution gives kurtosis ≈ 3.
%   < 3  platykurtic (flat), > 3  leptokurtic (peaked).
  n = numel(v);
  fprintf('n         = %d\n', n)
  fprintf('min       = %g\n', min(v))
  fprintf('max       = %g\n', max(v))
  fprintf('range     = %g\n', max(v) - min(v))
  fprintf('mean      = %g\n', mean(v))
  fprintf('median    = %g\n', median(v))
  fprintf('mode      = %g\n', mode(v))
  fprintf('std       = %g\n', std(v))
  fprintf('var       = %g\n', var(v))
  q1 = prctile(v, 25);
  q3 = prctile(v, 75);
  fprintf('Q1        = %g\n', q1)
  fprintf('Q3        = %g\n', q3)
  fprintf('IQR       = %g\n', q3 - q1)
  fprintf('skewness  = %g\n', skewness(v))
  fprintf('kurtosis  = %g\n', kurtosis(v))
end
