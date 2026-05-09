% normalpdf_demo.calc — Usage examples for normalpdf.calc.
%
% Run (from the directory containing normalpdf.calc):
%   ccalc normalpdf_demo.calc

fprintf('=== Example 1: standard normal N(0,1) ===\n')
fprintf('  Known values: p(0)=0.3989, F(0)=0.5000\n')
[p, F] = normalpdf(0);
fprintf('  x=0  : p = %.4f  F = %.4f\n', p, F)
[p, F] = normalpdf(1);
fprintf('  x=1  : p = %.4f  F = %.4f  (expected F≈0.8413)\n', p, F)
[p, F] = normalpdf(-1);
fprintf('  x=-1 : p = %.4f  F = %.4f  (expected F≈0.1587)\n', p, F)
[p, F] = normalpdf(1.96);
fprintf('  x=1.96: p = %.4f  F = %.4f  (expected F≈0.9750, 97.5th pct)\n', p, F)

fprintf('\n=== Example 2: N(5, 2) — shifted and scaled ===\n')
fprintf('  mu=5, sigma=2\n')
[p, F] = normalpdf(5, 5, 2);
fprintf('  At mean x=5 : p = %.4f (expected %.4f)\n', p, 1/(2*sqrt(2*pi)))
[p, F] = normalpdf(7, 5, 2);
fprintf('  x=7 (1σ above mean): F = %.4f  (expected ≈0.8413)\n', F)
[p, F] = normalpdf(3, 5, 2);
fprintf('  x=3 (1σ below mean): F = %.4f  (expected ≈0.1587)\n', F)

fprintf('\n=== Example 3: 68-95-99.7 rule (sigma intervals) ===\n')
[~, Fhi] = normalpdf(1);
[~, Flo] = normalpdf(-1);
fprintf('  P(-1σ ≤ X ≤ +1σ) = %.4f  (expected ≈0.6827)\n', Fhi - Flo)
[~, Fhi] = normalpdf(2);
[~, Flo] = normalpdf(-2);
fprintf('  P(-2σ ≤ X ≤ +2σ) = %.4f  (expected ≈0.9545)\n', Fhi - Flo)
[~, Fhi] = normalpdf(3);
[~, Flo] = normalpdf(-3);
fprintf('  P(-3σ ≤ X ≤ +3σ) = %.4f  (expected ≈0.9973)\n', Fhi - Flo)
