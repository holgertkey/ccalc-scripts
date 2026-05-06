function v = bubble_sort(v)
% v = bubble_sort(v)
%
% Sort a numeric vector in ascending order using the bubble sort algorithm.
%
% Repeatedly scans the vector and swaps adjacent out-of-order elements.
% After each full pass the largest unsorted element has bubbled to its
% final position.  O(n²) comparisons and swaps in the worst case.
%
% Arguments:
%   v — row or column vector of numeric values
%
% Returns:
%   v — sorted copy of v in ascending order
%
% Example:
%   source('bubble_sort.calc')
%   bubble_sort([5, 3, 8, 1, 9, 2])   % [1 2 3 5 8 9]
  n = length(v);
  for i = 1:n-1
    for j = 1:n-i
      if v(j) > v(j+1)
        t = v(j);
        v(j) = v(j+1);
        v(j+1) = t;
      end
    end
  end
end
