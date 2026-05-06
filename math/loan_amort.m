function pmt = loan_amort(principal, r, n)
% pmt = loan_amort(principal, r, n)
%
% Compute the fixed monthly payment for a fully amortizing loan and print
% the complete amortization schedule (payment, interest, principal, balance).
%
%   PMT = P * r / (1 - (1+r)^(-n))
%
% Arguments:
%   principal — loan amount (present value)
%   r         — interest rate per period (e.g. 0.005 for 0.5%/month)
%   n         — total number of payment periods
%
% Returns:
%   pmt — fixed payment per period
%       The schedule is printed to stdout.
%
% Example:
%   source('loan_amort.calc')
%   loan_amort(10000, 0.08/12, 24)  % $10k at 8%/yr for 2 years
  pmt = principal * r / (1 - (1 + r)^(-n));
  balance = principal;
  fprintf('%-5s  %10s  %10s  %10s  %12s\n', 'Period', 'Payment', 'Interest', 'Principal', 'Balance')
  fprintf('%s\n', '-------------------------------------------------------')
  for k = 1:n
    interest = balance * r;
    prin_paid = pmt - interest;
    balance = balance - prin_paid;
    if abs(balance) < 1e-6
      balance = 0;
    end
    fprintf('%-5d  %10.2f  %10.2f  %10.2f  %12.2f\n', k, pmt, interest, prin_paid, balance)
  end
  fprintf('%s\n', '-------------------------------------------------------')
  fprintf('Fixed payment: $%.2f/period\n', pmt)
end
