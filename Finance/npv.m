function v = npv(r, cf)
% v = npv(r, cf)
%
% Net present value of a series of cash flows discounted at rate r.
%
% Discounts each cash flow cf(k) by (1+r)^(k-1), so the first element
% cf(1) is the initial investment (typically negative) at time 0,
% cf(2) is the cash flow at time 1, and so on.
%
%   NPV = sum_{k=1}^{n}  cf(k) / (1+r)^(k-1)
%
% Arguments:
%   r  — discount rate per period (e.g. 0.10 for 10%)
%   cf — vector of cash flows; cf(1) is time-0 (usually the initial cost)
%
% Returns:
%   v — net present value; positive means the project adds value at rate r
%
% Example:
%   source('npv.calc')
%   npv(0.10, [-1000, 300, 400, 500, 200])  % expect ~109.45
  n = length(cf);
  v = 0;
  for k = 1:n
    v = v + cf(k) / (1 + r)^(k-1);
  end
end
