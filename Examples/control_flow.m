% control_flow.m — All control flow constructs in ccalc.
%
% Covers: if/elseif/else, for, while, do-until, switch, break, continue.
%
% Run:
%   ccalc control_flow.m

% --- if / elseif / else ---
fprintf('--- if/elseif/else ---\n')
x = 7;
if x > 10
  fprintf('x > 10\n')
elseif x > 5
  fprintf('5 < x <= 10\n')
else
  fprintf('x <= 5\n')
end

% --- for loop ---
fprintf('\n--- for loop ---\n')
total = 0;
for k = 1:5
  total += k;
end
fprintf('Sum 1..5 = %d\n', total)

% --- for with continue and break ---
fprintf('\n--- for with continue/break ---\n')
for k = 1:10
  if mod(k, 2) == 0
    continue
  end
  if k > 7
    break
  end
  fprintf('%d ', k)
end
fprintf('\n')

% --- while loop ---
fprintf('\n--- while loop ---\n')
n = 1;
while n < 32
  n *= 2;
end
fprintf('First power of 2 >= 32: %d\n', n)

% --- do-until loop ---
fprintf('\n--- do-until loop ---\n')
count = 0;
do
  count++;
until (count >= 5)
fprintf('count after do-until: %d\n', count)

% --- switch / case / otherwise ---
fprintf('\n--- switch ---\n')
day = 3;
switch day
  case 1
    fprintf('Monday\n')
  case 2
    fprintf('Tuesday\n')
  case 3
    fprintf('Wednesday\n')
  otherwise
    fprintf('Other day\n')
end
