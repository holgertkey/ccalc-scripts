% error_handling.m — try/catch error handling patterns.
%
% Covers: try/catch/end, error(), lasterr(), defensive checks.
%
% The catch variable is a struct with a 'message' field (MATLAB/Octave compatible).
%
% Run:
%   ccalc error_handling.m

function y = safe_divide(a, b)
% Divide a by b; returns Inf with a warning if b is zero.
  if b == 0
    fprintf('Warning: division by zero, returning Inf\n')
    y = inf;
    return
  end
  y = a / b;
end

% -------------------------------------------------------------------

fprintf('--- Basic try/catch ---\n')
try
  x = 1 / 0;
  fprintf('1/0 = %g\n', x)
catch e
  fprintf('Caught: %s\n', e.message)
end

fprintf('\n--- Catching a user-thrown error ---\n')
try
  error('Something went wrong: %d', 42)
catch e
  fprintf('Caught error: %s\n', e.message)
end

fprintf('\n--- lasterr after a failed operation ---\n')
try
  bad = sqrt(-1);
  if imag(bad) ~= 0
    error('sqrt of negative produced complex result')
  end
catch e
  fprintf('Caught: %s\n', e.message)
end
fprintf('lasterr: %s\n', lasterr())

fprintf('\n--- Nested try/catch ---\n')
try
  try
    error('inner error')
  catch inner
    fprintf('Inner catch: %s\n', inner.message)
    error('outer error from inner handler')
  end
catch outer
  fprintf('Outer catch: %s\n', outer.message)
end

fprintf('\n--- Defensive argument checking (pattern) ---\n')
result = safe_divide(10, 2)
result = safe_divide(10, 0)
