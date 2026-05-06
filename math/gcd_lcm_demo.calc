% gcd_lcm_demo.calc — Usage examples for gcd_lcm.calc.
%
% Run (from the directory containing gcd_lcm.calc):
%   ccalc gcd_lcm_demo.calc

source('gcd_lcm.calc')

fprintf('=== Example 1: basic GCD and LCM ===\n')
[g, l] = gcd_lcm(48, 18);
fprintf('  GCD(48, 18) = %d  (expected 6)\n', g)
fprintf('  LCM(48, 18) = %d  (expected 144)\n', l)

[g, l] = gcd_lcm(12, 8);
fprintf('  GCD(12, 8) = %d  (expected 4)\n', g)
fprintf('  LCM(12, 8) = %d  (expected 24)\n', l)

fprintf('\n=== Example 2: coprime numbers (GCD=1, LCM=product) ===\n')
[g, l] = gcd_lcm(17, 5);
fprintf('  GCD(17, 5) = %d  (expected 1)\n', g)
fprintf('  LCM(17, 5) = %d  (expected 85)\n', l)

fprintf('\n=== Example 3: equal numbers ===\n')
[g, l] = gcd_lcm(12, 12);
fprintf('  GCD(12, 12) = %d  (expected 12)\n', g)
fprintf('  LCM(12, 12) = %d  (expected 12)\n', l)

fprintf('\n=== Example 4: verify identity GCD * LCM = a * b ===\n')
a = 60;  b = 48;
[g, l] = gcd_lcm(a, b);
fprintf('  a=%d  b=%d  GCD=%d  LCM=%d\n', a, b, g, l)
fprintf('  GCD * LCM = %d   a * b = %d   (should match)\n', g * l, a * b)

fprintf('\n=== Example 5: divisors of 360 in 1..20 ===\n')
fprintf('  (values k where GCD(360, k) = k, i.e., k divides 360)\n  ')
for k = 1:20
  [gk, ~] = gcd_lcm(360, k);
  if gk == k
    fprintf('%d ', k)
  end
end
fprintf('\n')
