function v = insertion_sort(v)
% v = insertion_sort(v)
%
% Sort a numeric vector in ascending order using the insertion sort algorithm.
%
% Builds a sorted prefix one element at a time: takes the next unsorted
% element (the "key") and shifts sorted elements right until the correct
% insertion point is found.  O(n²) comparisons in the worst case;
% O(n) comparisons when the input is nearly sorted.
%
% Arguments:
%   v — row or column vector of numeric values
%
% Returns:
%   v — sorted copy of v in ascending order
%
% Example:
%   source('insertion_sort.calc')
%   insertion_sort([5, 3, 8, 1, 9, 2])   % [1 2 3 5 8 9]
  n = length(v);
  for i = 2:n
    key = v(i);
    j = i - 1;
    while j >= 1
      if v(j) > key
        v(j+1) = v(j);
        j = j - 1;
      else
        break;
      end
    end
    v(j+1) = key;
  end
end
