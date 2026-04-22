function [x, iter, converged] = jacobi_iter(A, b, tol, maxiter)
% [x, iter, converged] = jacobi_iter(A, b, tol, maxiter)
%
% Solve Ax = b using Jacobi iterative method.
% Splits A = D + R (D diagonal, R off-diagonal) and iterates:
%   x_new = D^{-1} * (b - R*x)
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
%   source('jacobi_iter.calc')
%   A = [5, 1, 1; 1, 5, 1; 1, 1, 5]
%   b = [7; 7; 7]
%   [x, k, ok] = jacobi_iter(A, b, 1e-10, 100)
%   % x = [1; 1; 1]
  n = size(A, 1);
  d = diag(A);
  R = A - diag(d);
  x = zeros(n, 1);
  converged = 0;

  for iter = 1:maxiter
    xnew = (b - R*x) ./ d;
    if norm(xnew - x) < tol
      x = xnew;
      converged = 1;
      return
    end
    x = xnew;
  end
end
