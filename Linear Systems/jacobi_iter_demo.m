% jacobi_iter_demo.calc — Usage examples for jacobi_iter.calc.
%
% Run:
%   ccalc jacobi_iter_demo.calc

fprintf('Example 1: 2x2 diagonally dominant\n')
fprintf('  4x + y = 1\n')
fprintf('  2x + 3y = 2\n')
fprintf('  Expected: x = [0.1; 0.6]\n')
A = [4, 1; 2, 3]
b = [1; 2]
[x, k, ok] = jacobi_iter(A, b, 1e-10, 200)

fprintf('\nExample 2: 3x3 symmetric\n')
fprintf('  5x + y + z = 7  (expected: x = [1; 1; 1])\n')
A = [5, 1, 1; 1, 5, 1; 1, 1, 5]
b = [7; 7; 7]
[x, k, ok] = jacobi_iter(A, b, 1e-10, 100)

fprintf('\nExample 3: 3x3 classic benchmark\n')
A = [10, -1, 2; -1, 11, -1; 2, -1, 10]
b = [6; 25; -11]
[x, k, ok] = jacobi_iter(A, b, 1e-10, 100)
err = norm(A*x - b)

fprintf('\nExample 4: maxiter exceeded\n')
[x, k, ok] = jacobi_iter([5,1;1,5], [6;6], 1e-10, 3)
if ok == 0; fprintf('Did not converge after %d iters\n', k); end
