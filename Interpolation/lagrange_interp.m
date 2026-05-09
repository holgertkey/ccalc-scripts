function yi = lagrange_interp(x, y, xi)
% yi = lagrange_interp(x, y, xi)
%
% Evaluate the Lagrange interpolating polynomial at point xi,
% given data points (x, y).
%
%   L(xi) = sum_i  y(i) * prod_{j~=i} (xi - x(j)) / (x(i) - x(j))
%
% The polynomial passes exactly through all n data points.
% For large n or unevenly spaced nodes, Runge's phenomenon may cause
% large oscillations between nodes.
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
%   source('lagrange_interp.calc')
%   x = [0, 1, 2, 3]
%   y = [0, 1, 4, 9]   % y = x^2
%   yi = lagrange_interp(x, y, 1.5)
%   % yi = 2.25  (exact, since data lies on a polynomial of degree <= n-1)
  n = length(x);
  yi = 0;
  for i = 1:n
    Li = 1;
    for j = 1:n
      if j ~= i
        Li = Li * (xi - x(j)) / (x(i) - x(j));
      end
    end
    yi = yi + y(i) * Li;
  end
end
