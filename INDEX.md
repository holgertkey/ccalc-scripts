# ccalc-scripts — Index

| File | Category | Description |
|------|----------|-------------|
| [math/bisect.calc](math/bisect.calc) | Numerical methods | Bisection method — find root of f(x)=0 in [a,b] |
| [math/bisect_demo.calc](math/bisect_demo.calc) | Numerical methods | Usage examples for bisect.calc |
| [math/newton.calc](math/newton.calc) | Numerical methods | Newton-Raphson method — find root of f(x)=0 given f and f' |
| [math/newton_demo.calc](math/newton_demo.calc) | Numerical methods | Usage examples for newton.calc |
| [math/secant.calc](math/secant.calc) | Numerical methods | Secant method — find root of f(x)=0 given two initial points |
| [math/secant_demo.calc](math/secant_demo.calc) | Numerical methods | Usage examples for secant.calc |
| [math/false_position.calc](math/false_position.calc) | Numerical methods | Regula Falsi method — find root of f(x)=0 in bracket [a,b] |
| [math/false_position_demo.calc](math/false_position_demo.calc) | Numerical methods | Usage examples for false_position.calc |
| [math/fixed_point.calc](math/fixed_point.calc) | Numerical methods | Fixed-point iteration — find x* where g(x*)=x* |
| [math/fixed_point_demo.calc](math/fixed_point_demo.calc) | Numerical methods | Usage examples for fixed_point.calc |
| [math/gauss_elim.calc](math/gauss_elim.calc) | Linear algebra | Gaussian elimination with partial pivoting — solve Ax=b |
| [math/gauss_elim_demo.calc](math/gauss_elim_demo.calc) | Linear algebra | Usage examples for gauss_elim.calc |
| [math/lu_decomp.calc](math/lu_decomp.calc) | Linear algebra | LU factorization (Doolittle) — returns L and U such that A = L*U |
| [math/lu_decomp_demo.calc](math/lu_decomp_demo.calc) | Linear algebra | Usage examples for lu_decomp.calc |
| [math/jacobi_iter.calc](math/jacobi_iter.calc) | Linear algebra | Jacobi iterative solver for Ax=b (diagonally dominant matrices) |
| [math/jacobi_iter_demo.calc](math/jacobi_iter_demo.calc) | Linear algebra | Usage examples for jacobi_iter.calc |
| [math/gauss_seidel.calc](math/gauss_seidel.calc) | Linear algebra | Gauss-Seidel iterative solver for Ax=b (faster convergence than Jacobi) |
| [math/gauss_seidel_demo.calc](math/gauss_seidel_demo.calc) | Linear algebra | Usage examples for gauss_seidel.calc |
| [math/lagrange_interp.calc](math/lagrange_interp.calc) | Interpolation | Lagrange polynomial interpolation at a query point |
| [math/lagrange_interp_demo.calc](math/lagrange_interp_demo.calc) | Interpolation | Usage examples for lagrange_interp.calc |
| [math/newton_interp.calc](math/newton_interp.calc) | Interpolation | Newton divided-differences interpolation — Horner evaluation |
| [math/newton_interp_demo.calc](math/newton_interp_demo.calc) | Interpolation | Usage examples for newton_interp.calc |
| [math/linear_interp.calc](math/linear_interp.calc) | Interpolation | Piecewise linear interpolation — find segment, lerp, clamp |
| [math/linear_interp_demo.calc](math/linear_interp_demo.calc) | Interpolation | Usage examples for linear_interp.calc |
| [math/trapz_rule.calc](math/trapz_rule.calc) | Numerical integration | Composite trapezoidal rule — O(h²) quadrature |
| [math/trapz_rule_demo.calc](math/trapz_rule_demo.calc) | Numerical integration | Usage examples for trapz_rule.calc |
| [math/simpsons.calc](math/simpsons.calc) | Numerical integration | Composite Simpson's 1/3 rule — O(h⁴) quadrature |
| [math/simpsons_demo.calc](math/simpsons_demo.calc) | Numerical integration | Usage examples for simpsons.calc |
| [math/romberg.calc](math/romberg.calc) | Numerical integration | Romberg integration — Richardson extrapolation, near machine-precision |
| [math/romberg_demo.calc](math/romberg_demo.calc) | Numerical integration | Usage examples for romberg.calc |
| [math/euler_ode.calc](math/euler_ode.calc) | ODEs | Euler's explicit method — solve y'=f(t,y), O(h) accuracy |
| [math/euler_ode_demo.calc](math/euler_ode_demo.calc) | ODEs | Usage examples for euler_ode.calc |
| [math/rk4.calc](math/rk4.calc) | ODEs | Classical 4th-order Runge-Kutta — solve y'=f(t,y), O(h⁴) accuracy |
| [math/rk4_demo.calc](math/rk4_demo.calc) | ODEs | Usage examples for rk4.calc |
| [math/descriptive.calc](math/descriptive.calc) | Statistics | Descriptive statistics — n, min, max, mean, median, mode, std, var, quartiles, skewness, kurtosis |
| [math/descriptive_demo.calc](math/descriptive_demo.calc) | Statistics | Usage examples for descriptive.calc |
| [math/linregress.calc](math/linregress.calc) | Statistics | Simple linear regression — least-squares fit y = a + b*x, returns intercept, slope, R² |
| [math/linregress_demo.calc](math/linregress_demo.calc) | Statistics | Usage examples for linregress.calc |
| [math/polyregress.calc](math/polyregress.calc) | Statistics | Polynomial regression via normal equations — fits degree-d polynomial to data |
| [math/polyregress_demo.calc](math/polyregress_demo.calc) | Statistics | Usage examples for polyregress.calc |
| [math/normalpdf.calc](math/normalpdf.calc) | Statistics | Normal distribution PDF and CDF via erf — N(mu, sigma) evaluated at x |
| [math/normalpdf_demo.calc](math/normalpdf_demo.calc) | Statistics | Usage examples for normalpdf.calc |
| [math/correlation.calc](math/correlation.calc) | Statistics | Pearson correlation coefficient and sample covariance between two vectors |
| [math/correlation_demo.calc](math/correlation_demo.calc) | Statistics | Usage examples for correlation.calc |
| [math/primes_sieve.calc](math/primes_sieve.calc) | Utilities | Sieve of Eratosthenes — return all prime numbers up to n |
| [math/primes_sieve_demo.calc](math/primes_sieve_demo.calc) | Utilities | Usage examples for primes_sieve.calc |
| [math/gcd_lcm.calc](math/gcd_lcm.calc) | Utilities | GCD and LCM via the Euclidean algorithm — returns both in one call |
| [math/gcd_lcm_demo.calc](math/gcd_lcm_demo.calc) | Utilities | Usage examples for gcd_lcm.calc |
| [math/horner.calc](math/horner.calc) | Utilities | Horner's method — polynomial evaluation with O(n) multiplications |
| [math/horner_demo.calc](math/horner_demo.calc) | Utilities | Usage examples for horner.calc |
| [math/bubble_sort.calc](math/bubble_sort.calc) | Utilities | Bubble sort — O(n²) sort by adjacent swaps |
| [math/insertion_sort.calc](math/insertion_sort.calc) | Utilities | Insertion sort — O(n²), O(n) on nearly-sorted input |
| [math/selection_sort.calc](math/selection_sort.calc) | Utilities | Selection sort — O(n²) comparisons, O(n) swaps |
| [math/sort_algos_demo.calc](math/sort_algos_demo.calc) | Utilities | Side-by-side comparison of bubble, insertion, and selection sort |
| [math/compound_interest.calc](math/compound_interest.calc) | Finance | Compound interest — FV = PV*(1+r)^n; also covers PV and annuity formulas |
| [math/compound_interest_demo.calc](math/compound_interest_demo.calc) | Finance | Usage examples for compound_interest.calc |
| [math/npv.calc](math/npv.calc) | Finance | Net present value — discounted cash flow sum; positive NPV means add value |
| [math/npv_demo.calc](math/npv_demo.calc) | Finance | Usage examples for npv.calc |
| [math/irr.calc](math/irr.calc) | Finance | Internal rate of return — Newton's method on NPV(r)=0 |
| [math/irr_demo.calc](math/irr_demo.calc) | Finance | Usage examples for irr.calc |
| [math/loan_amort.calc](math/loan_amort.calc) | Finance | Loan amortization schedule — fixed payment, interest/principal split per period |
| [math/loan_amort_demo.calc](math/loan_amort_demo.calc) | Finance | Usage examples for loan_amort.calc |
