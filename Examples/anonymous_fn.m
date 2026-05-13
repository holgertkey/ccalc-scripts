% anonymous_fn.m — Anonymous functions (lambdas) and higher-order patterns.
%
% Covers: @(x) syntax, closures, arrayfun, passing functions as arguments.
%
% Run:
%   ccalc anonymous_fn.m

function y = apply_twice(f, x)
% Apply f to x twice: y = f(f(x)).
  y = f(f(x));
end

% -------------------------------------------------------------------

% Basic lambda
fprintf('--- Basic lambda ---\n')
sq   = @(x) x^2;
cube = @(x) x^3;
fprintf('sq(5)   = %g\n', sq(5))
fprintf('cube(3) = %g\n', cube(3))

% Composition: build f(g(x))
fprintf('\n--- Composition ---\n')
compose      = @(f, g) @(x) f(g(x));
sq_of_cube   = compose(sq, cube);
fprintf('sq(cube(2)) = %g\n', sq_of_cube(2))

% Closure over a captured variable
fprintf('\n--- Closure ---\n')
factor = 3;
scale  = @(x) factor * x;
fprintf('scale(7) with factor=3: %g\n', scale(7))

% arrayfun: apply lambda element-wise to a vector
fprintf('\n--- arrayfun ---\n')
v    = [1, 2, 3, 4, 5];
v_sq = arrayfun(@(x) x^2, v)

% Passing a function to another function
fprintf('\n--- Passing functions as arguments ---\n')
result = apply_twice(@(x) x + 10, 5)
