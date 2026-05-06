% primes_sieve_demo.calc — Usage examples for primes_sieve.calc.
%
% Run (from the directory containing primes_sieve.calc):
%   ccalc primes_sieve_demo.calc

source('primes_sieve.calc')

fprintf('=== Example 1: primes up to 30 ===\n')
p = primes_sieve(30);
fprintf('  Primes: ')
for k = 1:length(p)
  fprintf('%d ', p(k))
end
fprintf('\n  Count: %d  (expected 10)\n', length(p))

fprintf('\n=== Example 2: prime count below 100 ===\n')
p = primes_sieve(100);
fprintf('  Count: %d  (expected 25)\n', length(p))
fprintf('  Largest prime ≤ 100: %d  (expected 97)\n', p(length(p)))

fprintf('\n=== Example 3: prime count below 1000 ===\n')
p = primes_sieve(1000);
fprintf('  Count: %d  (expected 168)\n', length(p))
fprintf('  Largest prime ≤ 1000: %d  (expected 997)\n', p(length(p)))

fprintf('\n=== Example 4: edge cases ===\n')
fprintf('  n=1: count = %d  (expected 0)\n', length(primes_sieve(1)))
p2 = primes_sieve(2);
fprintf('  n=2: count = %d, prime = %d  (expected 1, 2)\n', length(p2), p2(1))
fprintf('  n=3: count = %d  (expected 2)\n', length(primes_sieve(3)))
