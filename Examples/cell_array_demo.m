% cell_array_demo.m — Cell arrays: create, access, iterate, cellfun.
%
% Covers: {} literals, cell indexing, iscell, numel, cellfun, mixed types.
%
% Run:
%   ccalc cell_array_demo.m

fprintf('--- Creating a cell array ---\n')
c = {42, 'hello', [1, 2, 3], 3.14}

fprintf('\n--- Accessing elements ---\n')
first  = c{1}
second = c{2}
third  = c{3}

fprintf('\n--- iscell and numel ---\n')
fprintf('iscell(c) = %d\n', iscell(c))
fprintf('numel(c)  = %d\n', numel(c))

fprintf('\n--- Iterating with for ---\n')
for k = 1:numel(c)
  fprintf('  c{%d} = ', k)
  val = c{k};
  if ischar(val)
    fprintf('%s\n', val)
  else
    disp(val)
  end
end

fprintf('\n--- cellfun: apply function to each element ---\n')
names = {'Alice', 'Bob', 'Charlie'};
lens  = cellfun(@(s) length(s), names)

fprintf('\n--- Cell array of structs pattern ---\n')
items = {};
for k = 1:3
  s.id    = k;
  s.value = k * k;
  items{k} = s;
end
fprintf('items{2}.value = %d\n', items{2}.value)
