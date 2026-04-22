function [L, U] = lu_decomp(A)
% [L, U] = lu_decomp(A)
%
% Compute the LU factorization of a square matrix A using Doolittle's method,
% such that A = L * U.  L is lower triangular with ones on the diagonal;
% U is upper triangular.  No row pivoting is applied — the factorization
% may be inaccurate if a diagonal pivot is near zero.
%
% Arguments:
%   A — n×n square matrix
%
% Returns:
%   L — n×n lower triangular matrix (unit diagonal)
%   U — n×n upper triangular matrix
%
% Example:
%   source('lu_decomp.calc')
%   A = [2, 1, 1; 4, 3, 3; 8, 7, 9]
%   [L, U] = lu_decomp(A)
%   norm(A - L*U)   % should be near zero
  n = size(A, 1);
  L = eye(n);
  U = zeros(n, n);

  for k = 1:n
    % Fill row k of U
    for j = k:n
      s = A(k, j);
      for m = 1:k-1
        s = s - L(k, m) * U(m, j);
      end
      U(k, j) = s;
    end

    % Check pivot
    if abs(U(k, k)) < 1e-15
      fprintf('Warning: near-zero pivot at step %d — result may be inaccurate\n', k);
    else
      % Fill column k of L (rows below k)
      for i = k+1:n
        s = A(i, k);
        for m = 1:k-1
          s = s - L(i, m) * U(m, k);
        end
        L(i, k) = s / U(k, k);
      end
    end
  end
end
