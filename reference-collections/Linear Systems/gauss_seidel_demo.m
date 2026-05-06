% gauss_seidel_demo.calc — Usage examples for gauss_seidel.calc.
%
% Run:
%   ccalc gauss_seidel_demo.calc

fprintf('Example 1: 2x2 diagonally dominant\n')
fprintf('  4x + y = 1,  2x + 3y = 2  (expected: x = [0.1; 0.6])\n')
A = [4, 1; 2, 3]
b = [1; 2]
[x, k, ok] = gauss_seidel(A, b, 1e-10, 200)

fprintf('\nExample 2: 3x3 symmetric — compare iterations with Jacobi\n')
A = [5, 1, 1; 1, 5, 1; 1, 1, 5]
b = [7; 7; 7]
[x_gs, k_gs, ok] = gauss_seidel(A, b, 1e-10, 100)
[x_j,  k_j,  ok] = jacobi_iter(A, b, 1e-10, 100)
fprintf('Gauss-Seidel: %d iters,  Jacobi: %d iters\n', k_gs, k_j)

fprintf('\nExample 3: 3x3 classic benchmark\n')
A = [10, -1, 2; -1, 11, -1; 2, -1, 10]
b = [6; 25; -11]
[x, k, ok] = gauss_seidel(A, b, 1e-10, 100)
err = norm(A*x - b)

fprintf('\nExample 4: maxiter exceeded\n')
[x, k, ok] = gauss_seidel([5,1;1,5], [6;6], 1e-10, 3)
if ok == 0; fprintf('Did not converge after %d iters\n', k); end
