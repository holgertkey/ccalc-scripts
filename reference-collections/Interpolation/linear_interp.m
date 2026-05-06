function yi = linear_interp(x, y, xi)
% yi = linear_interp(x, y, xi)
%
% Piecewise linear interpolation at scalar xi, given data points (x, y).
% Finds the segment [x(k), x(k+1)] containing xi and linearly interpolates.
% Clamps to the boundary value when xi is outside [x(1), x(n)].
%
% Arguments:
%   x  — 1×n (or n×1) sorted vector of distinct node x-coordinates
%   y  — 1×n (or n×1) vector of corresponding y-values
%   xi — scalar query point
%
% Returns:
%   yi — interpolated value at xi
%
% Example:
%   source('linear_interp.calc')
%   x = [0, 1, 2, 3]
%   y = [0, 1, 4, 9]
%   yi = linear_interp(x, y, 1.5)
%   % yi = 2.5  (midpoint between (1,1) and (2,4))
  n = length(x);

  % Clamp out-of-range queries
  if xi <= x(1)
    yi = y(1);
    return
  end
  if xi >= x(n)
    yi = y(n);
    return
  end

  % Find the segment containing xi
  k = 1;
  for j = 1:n-1
    if xi >= x(j) && xi <= x(j+1)
      k = j;
      break
    end
  end

  yi = y(k) + (xi - x(k)) * (y(k+1) - y(k)) / (x(k+1) - x(k));
end
