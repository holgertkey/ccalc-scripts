function r = irr(cf)
% r = irr(cf)
%
% Internal rate of return — find r such that NPV(r, cf) = 0.
%
% Uses Newton's method on the NPV function.  The derivative of NPV with
% respect to r is:  dNPV/dr = -sum_{k=2}^{n} cf(k)*(k-1)/(1+r)^k
%
% A good initial guess is important: the method starts at r=0.1 (10%).
% Converges to the IRR where NPV changes sign; may diverge if no real
% positive IRR exists or if NPV is flat near the solution.
%
% Arguments:
%   cf — vector of cash flows; cf(1) is time-0 (usually negative),
%        cf(2)..cf(n) are inflows; must contain both signs for IRR to exist
%
% Returns:
%   r — internal rate of return; multiply by 100 for percent
%
% Example:
%   source('irr.calc')
%   irr([-1000, 300, 400, 500, 200])   % expect ~0.1532 (15.32%)
%   irr([-5000, 1200, 1400, 1600, 1800])  % expect ~0.0623 (6.23%)
  n = length(cf);
  r = 0.10;
  tol = 1e-10;
  max_iter = 100;
  for iter = 1:max_iter
    npv_val = 0;
    dnpv = 0;
    for k = 1:n
      npv_val = npv_val + cf(k) / (1 + r)^(k-1);
      if k > 1
        dnpv = dnpv - cf(k) * (k-1) / (1 + r)^k;
      end
    end
    if abs(dnpv) < 1e-15
      break;
    end
    step = npv_val / dnpv;
    r = r - step;
    if abs(step) < tol
      break;
    end
  end
end
