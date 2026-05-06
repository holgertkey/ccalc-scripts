function v = selection_sort(v)
% v = selection_sort(v)
%
% Sort a numeric vector in ascending order using the selection sort algorithm.
%
% On each pass, finds the minimum element in the unsorted suffix and swaps
% it into the next sorted position.  O(n²) comparisons; O(n) swaps —
% useful when write operations are expensive.
%
% Arguments:
%   v — row or column vector of numeric values
%
% Returns:
%   v — sorted copy of v in ascending order
%
% Example:
%   source('selection_sort.calc')
%   selection_sort([5, 3, 8, 1, 9, 2])   % [1 2 3 5 8 9]
  n = length(v);
  for i = 1:n-1
    min_idx = i;
    for j = i+1:n
      if v(j) < v(min_idx)
        min_idx = j;
      end
    end
    if min_idx ~= i
      t = v(i);
      v(i) = v(min_idx);
      v(min_idx) = t;
    end
  end
end
