% string_ops.m — String manipulation built-ins.
%
% Covers: strcmp, strsplit, strrep, strcat, num2str, mat2str, sprintf,
%         lower, upper, strtrim, length, ischar, isstring.
%
% Run:
%   ccalc string_ops.m

fprintf('--- Comparison ---\n')
a = 'hello';
b = 'Hello';
fprintf('strcmp(a,b)  = %d  (case-sensitive)\n', strcmp(a, b))
fprintf('strcmpi(a,b) = %d  (case-insensitive)\n', strcmpi(a, b))

fprintf('\n--- Case conversion ---\n')
s = 'Mixed Case String';
fprintf('lower: %s\n', lower(s))
fprintf('upper: %s\n', upper(s))

fprintf('\n--- Trim and replace ---\n')
padded = '  hello world  ';
fprintf('trimmed: "%s"\n', strtrim(padded))
replaced = strrep('foo bar foo', 'foo', 'baz')

fprintf('\n--- Concatenation ---\n')
first = 'Hello';
last  = 'World';
full  = sprintf('%s, %s!', first, last)
fprintf('length: %d\n', length(full))

fprintf('\n--- Number <-> string conversion ---\n')
n = 3.14159;
ns = num2str(n)
ns4 = num2str(n, 4)
v = [1, 2, 3];
ms = mat2str(v)

fprintf('\n--- sprintf formatting ---\n')
msg = sprintf('Pi ~ %.4f, answer = %d', pi, 42)

fprintf('\n--- Split ---\n')
csv = 'apple,banana,cherry';
parts = strsplit(csv, ',')
fprintf('Second item: %s\n', parts{2})

fprintf('\n--- Type checks ---\n')
fprintf('ischar("hello")  = %d\n', ischar('hello'))
fprintf('isstring("hello") = %d\n', isstring("hello"))
