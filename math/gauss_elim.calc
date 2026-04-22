function x = gauss_elim(A, b)
% x = gauss_elim(A, b)
%
% Solve the linear system Ax = b using Gaussian elimination
% with partial pivoting.
%
% Arguments:
%   A — n×n coefficient matrix
%   b — n×1 right-hand side column vector
%
% Returns:
%   x — n×1 solution vector
%
% Example:
%   source('gauss_elim.calc')
%   A = [2, 1, -1; -3, -1, 2; -2, 1, 2]
%   b = [8; -11; -3]
%   x = gauss_elim(A, b)
%   % x = [2; 3; -1]
  n = size(A, 1);
  Ab = [A, b];

  % Forward elimination with partial pivoting
  for k = 1:n-1
    % Find row with largest absolute value in column k (from row k downward)
    pivot = k;
    for i = k+1:n
      if abs(Ab(i, k)) > abs(Ab(pivot, k))
        pivot = i;
      end
    end

    % Swap rows k and pivot
    if pivot ~= k
      tmp = Ab(k, :);
      Ab(k, :) = Ab(pivot, :);
      Ab(pivot, :) = tmp;
    end

    % Check for singular matrix
    if abs(Ab(k, k)) < 1e-15
      fprintf('Warning: matrix may be singular at column %d\n', k);
    else
      % Eliminate below diagonal
      for i = k+1:n
        factor = Ab(i, k) / Ab(k, k);
        Ab(i, :) = Ab(i, :) - factor * Ab(k, :);
      end
    end
  end

  % Back substitution
  x = zeros(n, 1);
  for i = n:-1:1
    s = Ab(i, n+1);
    for j = i+1:n
      s = s - Ab(i, j) * x(j);
    end
    x(i) = s / Ab(i, i);
  end
end
