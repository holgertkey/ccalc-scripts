% compound_interest_demo.calc — Usage examples for compound_interest.calc.
%
% Covers: lump-sum FV/PV, annuities, monthly compounding, inflation adjustment.
%
% Run (from the directory containing compound_interest.calc):
%   ccalc compound_interest_demo.calc

fprintf('=== Example 1: lump-sum growth ===\n')
pv = 1000;
r  = 0.05;
n  = 10;
fv = compound_interest(pv, r, n);
fprintf('  PV = $%.2f  r = %.0f%%/yr  n = %d yr\n', pv, r*100, n)
fprintf('  FV = $%.2f  (expected $1628.89)\n', fv)

fprintf('\n=== Example 2: present value from future value ===\n')
fv_target = 10000;
r = 0.06;
n = 20;
pv = fv_target / (1 + r)^n;
fprintf('  Need $%.2f in %d years at %.0f%%/yr\n', fv_target, n, r*100)
fprintf('  Invest today: $%.2f  (expected $3118.05)\n', pv)

fprintf('\n=== Example 3: annuity — future value of regular deposits ===\n')
fprintf('  $200/month for 5 years at 6%%/yr (monthly compounding)\n')
pmt = 200;
r_annual = 0.06;
r_month = r_annual / 12;
n_months = 5 * 12;
fv_annuity = pmt * ((1 + r_month)^n_months - 1) / r_month;
fprintf('  Total deposits: $%.2f\n', pmt * n_months)
fprintf('  Future value:   $%.2f  (growth from interest)\n', fv_annuity)

fprintf('\n=== Example 4: annuity — present value (loan principal) ===\n')
fprintf('  $500/month for 3 years at 8%%/yr — how much can you borrow?\n')
pmt = 500;
r_month = 0.08 / 12;
n = 36;
pv_loan = pmt * (1 - (1 + r_month)^(-n)) / r_month;
fprintf('  Max loan: $%.2f\n', pv_loan)

fprintf('\n=== Example 5: monthly vs annual compounding ===\n')
pv = 1000;
r_annual = 0.12;
n_years = 5;
fv_annual = compound_interest(pv, r_annual, n_years);
fv_monthly = compound_interest(pv, r_annual/12, n_years*12);
fprintf('  Annual compounding:  $%.2f\n', fv_annual)
fprintf('  Monthly compounding: $%.2f  (higher due to more frequent compounding)\n', fv_monthly)

fprintf('\n=== Example 6: doubling time (Rule of 72) ===\n')
fprintf('  At what interest rate does money double in 10 years?\n')
r_double = 2^(1/10) - 1;
fprintf('  Required rate: %.4f%% per year\n', r_double*100)
fprintf('  Rule of 72 estimate: %.1f%%  (72/10)\n', 72/10)
fprintf('  Verify: compound_interest(1, r, 10) = %.6f  (expected ~2)\n', compound_interest(1, r_double, 10))
