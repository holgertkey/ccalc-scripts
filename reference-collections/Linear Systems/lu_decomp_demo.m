% lu_decomp_demo.calc — Usage examples for lu_decomp.calc.
%
% Run:
%   ccalc lu_decomp_demo.calc

fprintf('Example 1: 2x2 matrix\n')
A = [4, 3; 6, 3]
[L, U] = lu_decomp(A)
err = norm(A - L*U)

fprintf('\nExample 2: 3x3 matrix\n')
A = [2, 1, 1; 4, 3, 3; 8, 7, 9]
[L, U] = lu_decomp(A)
err = norm(A - L*U)

fprintf('\nExample 3: 4x4 matrix — verify L is unit lower triangular\n')
A = [4, 3, 2, 1; 3, 4, 3, 2; 2, 3, 4, 3; 1, 2, 3, 4]
[L, U] = lu_decomp(A)
err = norm(A - L*U)

fprintf('\nExample 4: use LU to solve Ax=b via forward/back substitution\n')
fprintf('  A*x = b where b = [10; 12; 12; 10], expected x = [1;1;1;1]\n')
b = [10; 12; 12; 10]
n = size(A, 1);
% Forward substitution: solve L*y = b
y = zeros(n, 1);
for i = 1:n
  s = b(i);
  for j = 1:i-1
    s = s - L(i, j) * y(j);
  end
  y(i) = s;
end
% Back substitution: solve U*x = y
x = zeros(n, 1);
for i = n:-1:1
  s = y(i);
  for j = i+1:n
    s = s - U(i, j) * x(j);
  end
  x(i) = s / U(i, i);
end
x
