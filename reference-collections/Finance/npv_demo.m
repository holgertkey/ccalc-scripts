% npv_demo.calc — Usage examples for npv.calc.
%
% Run (from the directory containing npv.calc):
%   ccalc npv_demo.calc

source('npv.calc')

fprintf('=== Example 1: basic project evaluation ===\n')
fprintf('  Invest $1000 now; receive 300, 400, 500, 200 over 4 years\n')
cf = [-1000, 300, 400, 500, 200];
r = 0.10;
v = npv(r, cf);
fprintf('  Discount rate: %.0f%%\n', r*100)
fprintf('  NPV = $%.2f  (positive => accept the project)\n', v)

fprintf('\n=== Example 2: break-even rate (positive vs negative NPV) ===\n')
cf = [-5000, 1200, 1400, 1600, 1800];
fprintf('  Cash flows: [-5000, 1200, 1400, 1600, 1800]\n')
for ri = [0.05, 0.10, 0.15, 0.20]
  v = npv(ri, cf);
  fprintf('  r = %2.0f%%  NPV = %7.2f\n', ri*100, v)
end

fprintf('\n=== Example 3: perpetuity check ===\n')
fprintf('  At low enough rate, receiving $100/yr for 10 yr ≈ PV of $100/r\n')
r = 0.05;
cf_perp = [-0, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100];
v = npv(r, cf_perp);
fprintf('  NPV of 10-period $100 annuity at 5%%: $%.2f\n', v)
fprintf('  Gordon formula approximation $100/r: $%.2f\n', 100/r)

fprintf('\n=== Example 4: compare two mutually exclusive projects ===\n')
cf_A = [-3000, 1000, 1200, 1400];
cf_B = [-3000,  800, 1000, 2000];
r = 0.08;
v_A = npv(r, cf_A);
v_B = npv(r, cf_B);
fprintf('  r = %.0f%%\n', r*100)
fprintf('  Project A NPV = $%.2f\n', v_A)
fprintf('  Project B NPV = $%.2f\n', v_B)
if v_A > v_B
  fprintf('  Choose Project A\n')
else
  fprintf('  Choose Project B\n')
end
