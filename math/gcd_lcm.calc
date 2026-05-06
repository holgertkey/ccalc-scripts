function [g, l] = gcd_lcm(a, b)
% [g, l] = gcd_lcm(a, b)
%
% Compute the greatest common divisor and least common multiple of two integers.
%
% GCD is found via the Euclidean algorithm: repeatedly replace (a, b) with
% (b, mod(a, b)) until b = 0; the last non-zero value is the GCD.
% LCM uses the identity: LCM(a, b) = |a * b| / GCD(a, b).
%
% Arguments:
%   a, b — integers (absolute values used; floored if non-integer)
%
% Returns:
%   g — GCD(a, b): largest positive integer dividing both a and b
%   l — LCM(a, b): smallest positive integer divisible by both a and b
%
% Example:
%   source('gcd_lcm.calc')
%   [g, l] = gcd_lcm(48, 18)    % g=6,  l=144
%   [g, l] = gcd_lcm(12, 8)     % g=4,  l=24
  a = abs(floor(a));
  b = abs(floor(b));
  aa = a;
  bb = b;
  while bb ~= 0
    t = bb;
    bb = mod(aa, bb);
    aa = t;
  end
  g = aa;
  if g == 0
    l = 0;
  else
    l = a / g * b;
  end
end
