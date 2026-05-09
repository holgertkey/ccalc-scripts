function yi = newton_interp(x, y, xi)
% yi = newton_interp(x, y, xi)
%
% Evaluate the Newton divided-differences interpolating polynomial at xi,
% given data points (x, y).
%
% Builds the divided-difference table column by column:
%   dd(i,1) = y(i)
%   dd(i,j) = (dd(i+1,j-1) - dd(i,j-1)) / (x(i+j-1) - x(i))
%
% The coefficients c(k) = dd(1,k) are then evaluated via Horner's scheme:
%   p(xi) = c(1) + (xi-x(1))*(c(2) + (xi-x(2))*(c(3) + ...))
%
% Arguments:
%   x  — 1×n (or n×1) vector of distinct node x-coordinates
%   y  — 1×n (or n×1) vector of corresponding y-values
%   xi — scalar query point
%
% Returns:
%   yi — interpolated value at xi
%
% Example:
%   source('newton_interp.calc')
%   x = [0, 1, 2, 3]
%   y = [0, 1, 8, 27]   % y = x^3
%   yi = newton_interp(x, y, 1.5)
%   % yi = 3.375  (exact)
  n = length(x);

  % Build divided-difference table (n×n, upper triangular used)
  dd = zeros(n, n);
  dd(:, 1) = y(:);

  for j = 2:n
    for i = 1:n-j+1
      dd(i, j) = (dd(i+1, j-1) - dd(i, j-1)) / (x(i+j-1) - x(i));
    end
  end

  % Evaluate with Horner's scheme using first-row coefficients
  yi = dd(1, n);
  for i = n-1:-1:1
    yi = dd(1, i) + (xi - x(i)) * yi;
  end
end
