% gauss_elim_demo.calc — Usage examples for gauss_elim.calc.
%
% Run:
%   ccalc gauss_elim_demo.calc

fprintf('Example 1: 3x3 classic system\n')
fprintf('  2x + y - z  =  8\n')
fprintf(' -3x - y + 2z = -11\n')
fprintf(' -2x + y + 2z = -3\n')
fprintf('  Expected: x=[2; 3; -1]\n')
A = [2, 1, -1; -3, -1, 2; -2, 1, 2]
b = [8; -11; -3]
x = gauss_elim(A, b)

fprintf('\nExample 2: 2x2 simple\n')
fprintf('  3x + 2y = 7\n')
fprintf('   x + 4y = 9\n')
fprintf('  Expected: x=[1; 2]\n')
A = [3, 2; 1, 4]
b = [7; 9]
x = gauss_elim(A, b)

fprintf('\nExample 3: pivoting needed (zero in first diagonal position)\n')
fprintf('  0x + 1y = 2\n')
fprintf('  2x + 3y = 8\n')
fprintf('  Expected: x=[1; 2]\n')
A = [0, 1; 2, 3]
b = [2; 8]
x = gauss_elim(A, b)

fprintf('\nExample 4: 4x4 system — verify against backslash operator\n')
A = [4, 3, 2, 1; 3, 4, 3, 2; 2, 3, 4, 3; 1, 2, 3, 4]
b = [10; 12; 12; 10]
x = gauss_elim(A, b)
x_ref = A \ b
err = max(abs(x - x_ref))
