% hoisting_demo.m — Functions inside a script: Octave-compatible layout.
%
% Octave does NOT hoist function definitions, so helpers must appear
% BEFORE the code that calls them.  The leading "1;" prevents Octave from
% treating the file as a function-file (which would happen if the first
% non-comment line were "function ...").
%
% ccalc and MATLAB R2016b+ hoist automatically, so this file works in all three.
% Compare with hoisting_demo.calc, which puts helpers AFTER the main code.
%
% Run:
%   ccalc hoisting_demo.m
%   octave hoisting_demo.m

1; % force script mode in Octave: first executable line must not be "function"

% ============================================================
% Helper functions — defined BEFORE the main code below.
% This is required for Octave; ccalc and MATLAB accept any order.
% ============================================================

function a = circle_area(r)
  a = pi * r^2;
end

function p = circle_perimeter(r)
  p = 2 * pi * r;
end

function a = rect_area(w, h)
  a = w * h;
end

function y = sq(x)
  y = x^2;
end

function h = hypotenuse(a, b)
% Calls sq() — another helper defined above.
  h = sqrt(sq(a) + sq(b));
end

function result = is_even(n)
% Mutual recursion with is_odd.
  if n == 0
    result = 1;
  else
    result = is_odd(n - 1);
  end
end

function result = is_odd(n)
  if n == 0
    result = 0;
  else
    result = is_even(n - 1);
  end
end

function f = fact(n)
  if n <= 1
    f = 1;
  else
    f = n * fact(n - 1);
  end
end

% ============================================================
% Main script — below all helper definitions
% ============================================================

fprintf('=== Function hoisting demo ===\n\n')

fprintf('--- Geometry helpers ---\n')
fprintf('circle_area(5)      = %.4f\n', circle_area(5))
fprintf('circle_perimeter(5) = %.4f\n', circle_perimeter(5))
fprintf('rect_area(4, 6)     = %g\n',   rect_area(4, 6))

fprintf('\n--- Helper calling a sibling helper ---\n')
fprintf('hypotenuse(3, 4)  = %g\n', hypotenuse(3, 4))
fprintf('hypotenuse(5, 12) = %g\n', hypotenuse(5, 12))

fprintf('\n--- Mutual recursion: is_even / is_odd ---\n')
for n = 0:5
  fprintf('  %d : even=%d  odd=%d\n', n, is_even(n), is_odd(n))
end

fprintf('\n--- Recursive helper: factorial ---\n')
for k = 0:7
  fprintf('  %d! = %g\n', k, fact(k))
end
