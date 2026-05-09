% irr_demo.calc — Usage examples for irr.calc.
%
% Run (from the directory containing irr.calc and npv.calc):
%   ccalc irr_demo.calc

fprintf('=== Example 1: basic IRR ===\n')
cf = [-1000, 300, 400, 500, 200];
r = irr(cf);
fprintf('  Cash flows: [-1000, 300, 400, 500, 200]\n')
fprintf('  IRR = %.4f%%  (expected ~15.32%%)\n', r*100)
fprintf('  Verify NPV at IRR: %.2e  (should be ~0)\n', npv(r, cf))

fprintf('\n=== Example 2: project with low IRR ===\n')
cf = [-5000, 1200, 1400, 1600, 1800];
r = irr(cf);
fprintf('  Cash flows: [-5000, 1200, 1400, 1600, 1800]\n')
fprintf('  IRR = %.4f%%\n', r*100)
fprintf('  Verify NPV at IRR: %.2e  (should be ~0)\n', npv(r, cf))

fprintf('\n=== Example 3: accept/reject decision ===\n')
fprintf('  Compare IRR to hurdle rate (WACC = 8%%)\n')
cf_A = [-3000, 1000, 1200, 1400];
cf_B = [-3000,  800, 1000, 2000];
r_A = irr(cf_A);
r_B = irr(cf_B);
wacc = 0.08;
fprintf('  Project A: IRR = %.2f%%  =>  ', r_A*100)
if r_A > wacc
  fprintf('Accept (IRR > %.0f%% hurdle)\n', wacc*100)
else
  fprintf('Reject\n')
end
fprintf('  Project B: IRR = %.2f%%  =>  ', r_B*100)
if r_B > wacc
  fprintf('Accept (IRR > %.0f%% hurdle)\n', wacc*100)
else
  fprintf('Reject\n')
end

fprintf('\n=== Example 4: simple 2-period verification ===\n')
fprintf('  Invest $100, receive $110 next year => IRR = 10%%\n')
cf = [-100, 110];
r = irr(cf);
fprintf('  IRR = %.6f%%  (expected 10%%)\n', r*100)
