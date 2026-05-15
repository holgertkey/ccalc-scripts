% functions_demo.m — Named functions: single return, multiple returns, nargin.
%
% Run:
%   ccalc functions_demo.m
1;

function y = square(x)
% Return the square of x.
  y = x * x;
end

function [lo, hi] = minmax(v)
% Return minimum and maximum of vector v.
  lo = min(v);
  hi = max(v);
end

function msg = greet(name)
% Return a greeting string.
  if nargin < 1
    name = 'World';
  end
  msg = sprintf('Hello, %s!', name);
end

% -------------------------------------------------------------------

fprintf('--- Single return value ---\n')
y = square(5)

fprintf('\n--- Multiple return values ---\n')
[mn, mx] = minmax([3, 1, 4, 1, 5, 9, 2, 6])

fprintf('\n--- nargin: default argument ---\n')
r1 = greet('World')
r2 = greet('Alice')




