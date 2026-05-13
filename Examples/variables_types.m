% variables_types.m — All value types in ccalc with display examples.
%
% Covers: Scalar, Matrix, Complex, char array (Str), string object (StringObj),
%         Cell array, Struct.
%
% Run:
%   ccalc variables_types.m

fprintf('--- Scalar ---\n')
n = 42
pi_approx = 3.14159

fprintf('\n--- Matrix (row vector, column vector, 2-D) ---\n')
row = [1, 2, 3, 4, 5]
col = [10; 20; 30]
A = [1, 2; 3, 4]

fprintf('\n--- Complex number ---\n')
z = 3 + 4i
mag = abs(z)
ph  = angle(z) * 180 / pi

fprintf('\n--- Char array (single-quoted string) ---\n')
s1 = 'Hello, ccalc!'
len1 = length(s1)

fprintf('\n--- String object (double-quoted string) ---\n')
s2 = "Hello again"
len2 = length(s2)

fprintf('\n--- Cell array ---\n')
c = {1, 'two', [3, 4, 5]}
first  = c{1}
second = c{2}
third  = c{3}

fprintf('\n--- Struct ---\n')
p.name = 'Alice'
p.age  = 30
p.score = 9.5

fprintf('Name: %s, Age: %d, Score: %.1f\n', p.name, p.age, p.score)
