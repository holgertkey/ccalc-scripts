% descriptive_demo.calc — Usage examples for descriptive.calc.
%
% Run (from the directory containing descriptive.calc):
%   ccalc descriptive_demo.calc

fprintf('=== Example 1: symmetric data  1..10 ===\n')
fprintf('  Expected: skewness = 0, kurtosis < 3\n')
descriptive(1:10)

fprintf('\n=== Example 2: right-skewed data ===\n')
fprintf('  [1 1 2 2 3 4 7 12 20]  (long right tail)\n')
fprintf('  Expected: skewness > 0\n')
descriptive([1 1 2 2 3 4 7 12 20])

fprintf('\n=== Example 3: classic dataset [2 4 4 4 5 5 7 9] ===\n')
fprintf('  mean = 5, std = 2, slightly left-skewed\n')
descriptive([2 4 4 4 5 5 7 9])

fprintf('\n=== Example 4: constant vector [5 5 5 5 5] ===\n')
fprintf('  Expected: std = 0, skewness = 0, kurtosis = NaN\n')
descriptive([5 5 5 5 5])
