function [x, iter, converged] = gauss_seidel(A, b, tol, maxiter)
% [x, iter, converged] = gauss_seidel(A, b, tol, maxiter)
%
% Solve Ax = b using the Gauss-Seidel iterative method.
% Updated components of x are used immediately within each sweep,
% giving faster convergence than Jacobi for the same class of matrices.
%
% Convergence is guaranteed when A is strictly diagonally dominant
% (|A(i,i)| > sum_{j~=i} |A(i,j)| for every row i).
%
% Arguments:
%   A       — n×n coefficient matrix (should be diagonally dominant)
%   b       — n×1 right-hand side column vector
%   tol     — convergence tolerance on norm(x_new - x) (e.g. 1e-10)
%   maxiter — maximum number of iterations
%
% Returns:
%   x         — n×1 approximate solution
%   iter      — number of iterations performed
%   converged — 1 if converged within tol, 0 if maxiter reached
%
% Example:
%   source('gauss_seidel.calc')
%   A = [5, 1, 1; 1, 5, 1; 1, 1, 5]
%   b = [7; 7; 7]
%   [x, k, ok] = gauss_seidel(A, b, 1e-10, 100)
%   % x = [1; 1; 1],  k < jacobi_iter k (faster convergence)
  n = size(A, 1);
  x = zeros(n, 1);
  converged = 0;

  for iter = 1:maxiter
    xold = x;
    for i = 1:n
      s = b(i);
      for j = 1:n
        if j ~= i
          s = s - A(i, j) * x(j);
        end
      end
      x(i) = s / A(i, i);
    end
    if norm(x - xold) < tol
      converged = 1;
      return
    end
  end
end
