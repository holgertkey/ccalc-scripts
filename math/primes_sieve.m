function result = primes_sieve(n)
% result = primes_sieve(n)
%
% Return all prime numbers up to n using the Sieve of Eratosthenes.
%
% Marks composite numbers by iterating over each prime p and crossing out
% its multiples starting at p^2.  Only primes p ≤ sqrt(n) need to be
% considered as starting points.
%
% Arguments:
%   n — positive integer upper bound (inclusive)
%
% Returns:
%   result — row vector of all primes p with 2 ≤ p ≤ n;
%            empty [] if n < 2
%
% Example:
%   source('primes_sieve.calc')
%   primes_sieve(30)      % [2 3 5 7 11 13 17 19 23 29]
%   length(primes_sieve(100))  % 25 primes below 100
  if n < 2
    result = [];
    return
  end
  is_prime = ones(1, n);
  is_prime(1) = 0;
  for k = 2:floor(sqrt(n))
    if is_prime(k)
      for m = k*k:k:n
        is_prime(m) = 0;
      end
    end
  end
  result = find(is_prime);
end
