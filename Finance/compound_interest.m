function fv = compound_interest(pv, r, n)
% fv = compound_interest(pv, r, n)
%
% Future value of a lump sum under compound interest.
%
%   FV = PV * (1 + r)^n
%
% Arguments:
%   pv — present value (principal), must be > 0
%   r  — interest rate per period (e.g. 0.05 for 5%), must be > -1
%   n  — number of compounding periods (years, months, etc.)
%
% Returns:
%   fv — future value after n periods
%
% Related formulas (use directly in scripts):
%   Present value:  PV = FV / (1 + r)^n
%   Annuity FV:     FV = PMT * ((1 + r)^n - 1) / r
%   Annuity PV:     PV = PMT * (1 - (1 + r)^(-n)) / r
%
% Example:
%   source('compound_interest.calc')
%   compound_interest(1000, 0.05, 10)  % $1000 at 5% for 10 years
  fv = pv .* (1 + r) .^ n;
end
