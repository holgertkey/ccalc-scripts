% loan_amort_demo.calc — Usage examples for loan_amort.calc.
%
% Run (from the directory containing loan_amort.calc):
%   ccalc loan_amort_demo.calc

fprintf('=== Example 1: short loan — $1000 at 12%%/yr for 6 months ===\n')
pmt = loan_amort(1000, 0.12/12, 6);
fprintf('\n')

fprintf('=== Example 2: auto loan — $15000 at 6%%/yr for 3 years ===\n')
fprintf('  (36 monthly payments — first 5 shown)\n\n')
fprintf('  Monthly payment for $15000 at 6%%/yr over 36 months:\n')
r_month = 0.06 / 12;
pmt_val = 15000 * r_month / (1 - (1 + r_month)^(-36));
fprintf('  PMT = $%.2f/month  (expected $456.33)\n\n', pmt_val)

fprintf('=== Example 3: verify total interest paid ===\n')
fprintf('  $10000 at 8%%/yr for 24 months\n')
p = 10000;
r = 0.08 / 12;
n = 24;
pmt_check = p * r / (1 - (1 + r)^(-n));
total_paid = pmt_check * n;
total_interest = total_paid - p;
fprintf('  Payment:        $%.2f/month\n', pmt_check)
fprintf('  Total paid:     $%.2f\n', total_paid)
fprintf('  Total interest: $%.2f  (cost of borrowing)\n', total_interest)
fprintf('  Interest/Principal ratio: %.1f%%\n', 100 * total_interest / p)
