% sort_algos_demo.calc — Educational comparison of three O(n²) sorting algorithms.
%
% Demonstrates bubble sort, insertion sort, and selection sort side-by-side.
% All three produce identical results; they differ only in their access patterns.
%
% Run (from the directory containing the sort algorithm files):
%   ccalc sort_algos_demo.calc

source('bubble_sort.m')
source('insertion_sort.m')
source('selection_sort.m')

v = [64, 34, 25, 12, 22, 11, 90, 14, 37, 42, 56, 8, 28, 64, 72];
fprintf('Input:  ')
for k = 1:length(v); fprintf('%d ', v(k)); end
fprintf('\n\n')

b = bubble_sort(v);
fprintf('Bubble sort:    ')
for k = 1:length(b); fprintf('%d ', b(k)); end
fprintf('\n')

ins = insertion_sort(v);
fprintf('Insertion sort: ')
for k = 1:length(ins); fprintf('%d ', ins(k)); end
fprintf('\n')

sel = selection_sort(v);
fprintf('Selection sort: ')
for k = 1:length(sel); fprintf('%d ', sel(k)); end
fprintf('\n')

ref = sort(v);
fprintf('Built-in sort:  ')
for k = 1:length(ref); fprintf('%d ', ref(k)); end
fprintf('\n\n')

ok = 1;
for k = 1:length(v)
  if b(k) ~= ref(k) || ins(k) ~= ref(k) || sel(k) ~= ref(k)
    ok = 0;
  end
end
if ok
  fprintf('All three match built-in sort. OK\n')
else
  fprintf('MISMATCH detected!\n')
end

fprintf('\n=== Edge cases ===\n')
fprintf('Single element [42]: ')
r = bubble_sort([42]); fprintf('%d\n', r(1))

fprintf('Already sorted [1 2 3 4 5]: ')
r = insertion_sort([1, 2, 3, 4, 5]);
for k = 1:5; fprintf('%d ', r(k)); end
fprintf('\n')

fprintf('Reverse sorted [5 4 3 2 1]: ')
r = selection_sort([5, 4, 3, 2, 1]);
for k = 1:5; fprintf('%d ', r(k)); end
fprintf('\n')
