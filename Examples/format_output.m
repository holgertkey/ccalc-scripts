% format_output.m — printf-style output formatting.
%
% Covers: fprintf, sprintf, %d/%f/%e/%g/%s, width, precision, flags.
%
% Run:
%   ccalc format_output.m

fprintf('--- Integer formats ---\n')
fprintf('%d\n',  42)
fprintf('%5d\n',  42)
fprintf('%-5d|\n', 42)
fprintf('%05d\n', 42)

fprintf('\n--- Floating-point formats ---\n')
x = 3.14159265358979;
fprintf('%f\n',    x)
fprintf('%.2f\n',  x)
fprintf('%10.4f\n', x)
fprintf('%e\n',    x)
fprintf('%.3e\n',  x)
fprintf('%g\n',    x)
fprintf('%g\n',    0.000123)

fprintf('\n--- String format ---\n')
name = 'ccalc';
fprintf('%s\n',    name)
fprintf('%10s\n',  name)
fprintf('%-10s|\n', name)

fprintf('\n--- sprintf: build a string ---\n')
msg = sprintf('Value: %+.4f, answer: %05d', pi, 255)

fprintf('\n--- Multiple values per format string ---\n')
v = [1, 2, 3, 4];
for k = 1:numel(v)
  fprintf('%d ', v(k))
end
fprintf('\n')

fprintf('\n--- Table with aligned columns ---\n')
fprintf('%-12s %8s %10s\n', 'Item', 'Qty', 'Price')
fprintf('%-12s %8d %10.2f\n', 'Apple',  50, 0.25)
fprintf('%-12s %8d %10.2f\n', 'Banana', 12, 0.40)
fprintf('%-12s %8d %10.2f\n', 'Cherry', 200, 0.05)
