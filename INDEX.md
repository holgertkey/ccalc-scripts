# ccalc-scripts — Index

| File | Category | Description |
|------|----------|-------------|
| [Root Finding/bisect.m](Root%20Finding/bisect.m) | Root finding | Bisection method — find root of f(x)=0 in [a,b] |
| [Root Finding/bisect_demo.m](Root%20Finding/bisect_demo.m) | Root finding | Usage examples for bisect.m |
| [Root Finding/newton.m](Root%20Finding/newton.m) | Root finding | Newton-Raphson method — find root of f(x)=0 given f and f' |
| [Root Finding/newton_demo.m](Root%20Finding/newton_demo.m) | Root finding | Usage examples for newton.m |
| [Root Finding/secant.m](Root%20Finding/secant.m) | Root finding | Secant method — find root of f(x)=0 given two initial points |
| [Root Finding/secant_demo.m](Root%20Finding/secant_demo.m) | Root finding | Usage examples for secant.m |
| [Root Finding/false_position.m](Root%20Finding/false_position.m) | Root finding | Regula Falsi method — find root of f(x)=0 in bracket [a,b] |
| [Root Finding/false_position_demo.m](Root%20Finding/false_position_demo.m) | Root finding | Usage examples for false_position.m |
| [Root Finding/fixed_point.m](Root%20Finding/fixed_point.m) | Root finding | Fixed-point iteration — find x* where g(x*)=x* |
| [Root Finding/fixed_point_demo.m](Root%20Finding/fixed_point_demo.m) | Root finding | Usage examples for fixed_point.m |
| [Linear Systems/gauss_elim.m](Linear%20Systems/gauss_elim.m) | Linear algebra | Gaussian elimination with partial pivoting — solve Ax=b |
| [Linear Systems/gauss_elim_demo.m](Linear%20Systems/gauss_elim_demo.m) | Linear algebra | Usage examples for gauss_elim.m |
| [Linear Systems/lu_decomp.m](Linear%20Systems/lu_decomp.m) | Linear algebra | LU factorization (Doolittle) — returns L and U such that A = L*U |
| [Linear Systems/lu_decomp_demo.m](Linear%20Systems/lu_decomp_demo.m) | Linear algebra | Usage examples for lu_decomp.m |
| [Linear Systems/jacobi_iter.m](Linear%20Systems/jacobi_iter.m) | Linear algebra | Jacobi iterative solver for Ax=b (diagonally dominant matrices) |
| [Linear Systems/jacobi_iter_demo.m](Linear%20Systems/jacobi_iter_demo.m) | Linear algebra | Usage examples for jacobi_iter.m |
| [Linear Systems/gauss_seidel.m](Linear%20Systems/gauss_seidel.m) | Linear algebra | Gauss-Seidel iterative solver for Ax=b (faster convergence than Jacobi) |
| [Linear Systems/gauss_seidel_demo.m](Linear%20Systems/gauss_seidel_demo.m) | Linear algebra | Usage examples for gauss_seidel.m |
| [Interpolation/lagrange_interp.m](Interpolation/lagrange_interp.m) | Interpolation | Lagrange polynomial interpolation at a query point |
| [Interpolation/lagrange_interp_demo.m](Interpolation/lagrange_interp_demo.m) | Interpolation | Usage examples for lagrange_interp.m |
| [Interpolation/newton_interp.m](Interpolation/newton_interp.m) | Interpolation | Newton divided-differences interpolation — Horner evaluation |
| [Interpolation/newton_interp_demo.m](Interpolation/newton_interp_demo.m) | Interpolation | Usage examples for newton_interp.m |
| [Interpolation/linear_interp.m](Interpolation/linear_interp.m) | Interpolation | Piecewise linear interpolation — find segment, lerp, clamp |
| [Interpolation/linear_interp_demo.m](Interpolation/linear_interp_demo.m) | Interpolation | Usage examples for linear_interp.m |
| [Numerical Integration/trapz_rule.m](Numerical%20Integration/trapz_rule.m) | Numerical integration | Composite trapezoidal rule — O(h²) quadrature |
| [Numerical Integration/trapz_rule_demo.m](Numerical%20Integration/trapz_rule_demo.m) | Numerical integration | Usage examples for trapz_rule.m |
| [Numerical Integration/simpsons.m](Numerical%20Integration/simpsons.m) | Numerical integration | Composite Simpson's 1/3 rule — O(h⁴) quadrature |
| [Numerical Integration/simpsons_demo.m](Numerical%20Integration/simpsons_demo.m) | Numerical integration | Usage examples for simpsons.m |
| [Numerical Integration/romberg.m](Numerical%20Integration/romberg.m) | Numerical integration | Romberg integration — Richardson extrapolation, near machine-precision |
| [Numerical Integration/romberg_demo.m](Numerical%20Integration/romberg_demo.m) | Numerical integration | Usage examples for romberg.m |
| [ODEs/euler_ode.m](ODEs/euler_ode.m) | ODEs | Euler's explicit method — solve y'=f(t,y), O(h) accuracy |
| [ODEs/euler_ode_demo.m](ODEs/euler_ode_demo.m) | ODEs | Usage examples for euler_ode.m |
| [ODEs/rk4.m](ODEs/rk4.m) | ODEs | Classical 4th-order Runge-Kutta — solve y'=f(t,y), O(h⁴) accuracy |
| [ODEs/rk4_demo.m](ODEs/rk4_demo.m) | ODEs | Usage examples for rk4.m |
| [Statistics/descriptive.m](Statistics/descriptive.m) | Statistics | Descriptive statistics — n, min, max, mean, median, mode, std, var, quartiles, skewness, kurtosis |
| [Statistics/descriptive_demo.m](Statistics/descriptive_demo.m) | Statistics | Usage examples for descriptive.m |
| [Statistics/linregress.m](Statistics/linregress.m) | Statistics | Simple linear regression — least-squares fit y = a + b*x, returns intercept, slope, R² |
| [Statistics/linregress_demo.m](Statistics/linregress_demo.m) | Statistics | Usage examples for linregress.m |
| [Statistics/polyregress.m](Statistics/polyregress.m) | Statistics | Polynomial regression via normal equations — fits degree-d polynomial to data |
| [Statistics/polyregress_demo.m](Statistics/polyregress_demo.m) | Statistics | Usage examples for polyregress.m |
| [Statistics/normalpdf.m](Statistics/normalpdf.m) | Statistics | Normal distribution PDF and CDF via erf — N(mu, sigma) evaluated at x |
| [Statistics/normalpdf_demo.m](Statistics/normalpdf_demo.m) | Statistics | Usage examples for normalpdf.m |
| [Statistics/correlation.m](Statistics/correlation.m) | Statistics | Pearson correlation coefficient and sample covariance between two vectors |
| [Statistics/correlation_demo.m](Statistics/correlation_demo.m) | Statistics | Usage examples for correlation.m |
| [Utilities/primes_sieve.m](Utilities/primes_sieve.m) | Utilities | Sieve of Eratosthenes — return all prime numbers up to n |
| [Utilities/primes_sieve_demo.m](Utilities/primes_sieve_demo.m) | Utilities | Usage examples for primes_sieve.m |
| [Utilities/gcd_lcm.m](Utilities/gcd_lcm.m) | Utilities | GCD and LCM via the Euclidean algorithm — returns both in one call |
| [Utilities/gcd_lcm_demo.m](Utilities/gcd_lcm_demo.m) | Utilities | Usage examples for gcd_lcm.m |
| [Utilities/horner.m](Utilities/horner.m) | Utilities | Horner's method — polynomial evaluation with O(n) multiplications |
| [Utilities/horner_demo.m](Utilities/horner_demo.m) | Utilities | Usage examples for horner.m |
| [Utilities/sort_algos/bubble_sort.m](Utilities/sort_algos/bubble_sort.m) | Utilities | Bubble sort — O(n²) sort by adjacent swaps |
| [Utilities/sort_algos/insertion_sort.m](Utilities/sort_algos/insertion_sort.m) | Utilities | Insertion sort — O(n²), O(n) on nearly-sorted input |
| [Utilities/sort_algos/selection_sort.m](Utilities/sort_algos/selection_sort.m) | Utilities | Selection sort — O(n²) comparisons, O(n) swaps |
| [Utilities/sort_algos/sort_algos_demo.m](Utilities/sort_algos/sort_algos_demo.m) | Utilities | Side-by-side comparison of bubble, insertion, and selection sort |
| [Finance/compound_interest.m](Finance/compound_interest.m) | Finance | Compound interest — FV = PV*(1+r)^n; also covers PV and annuity formulas |
| [Finance/compound_interest_demo.m](Finance/compound_interest_demo.m) | Finance | Usage examples for compound_interest.m |
| [Finance/npv.m](Finance/npv.m) | Finance | Net present value — discounted cash flow sum; positive NPV means add value |
| [Finance/npv_demo.m](Finance/npv_demo.m) | Finance | Usage examples for npv.m |
| [Finance/irr.m](Finance/irr.m) | Finance | Internal rate of return — Newton's method on NPV(r)=0 |
| [Finance/irr_demo.m](Finance/irr_demo.m) | Finance | Usage examples for irr.m |
| [Finance/loan_amort.m](Finance/loan_amort.m) | Finance | Loan amortization schedule — fixed payment, interest/principal split per period |
| [Finance/loan_amort_demo.m](Finance/loan_amort_demo.m) | Finance | Usage examples for loan_amort.m |
| [Examples/hello_world.m](Examples/hello_world.m) | Examples | First steps: print output and basic arithmetic |
| [Examples/variables_types.m](Examples/variables_types.m) | Examples | All value types with display — Scalar, Matrix, Complex, Str, StringObj, Cell, Struct |
| [Examples/control_flow.m](Examples/control_flow.m) | Examples | All control flow constructs — if/elseif/else, for, while, do-until, switch, break, continue |
| [Examples/functions_demo.m](Examples/functions_demo.m) | Examples | Named functions: single return, multiple returns, nargin default arguments |
| [Examples/anonymous_fn.m](Examples/anonymous_fn.m) | Examples | Anonymous functions: @(x) syntax, closures, arrayfun, passing functions as arguments |
| [Examples/string_ops.m](Examples/string_ops.m) | Examples | String manipulation — strcmp, strsplit, strrep, strcat, num2str, mat2str, sprintf |
| [Examples/cell_array_demo.m](Examples/cell_array_demo.m) | Examples | Cell arrays: create, access, iterate, cellfun, mixed types |
| [Examples/struct_demo.m](Examples/struct_demo.m) | Examples | Structs: fields, nested structs, fieldnames, isfield, rmfield, struct arrays |
| [Examples/complex_numbers.m](Examples/complex_numbers.m) | Examples | Complex arithmetic — real, imag, abs, angle, conj, 4i syntax, Euler's formula |
| [Examples/format_output.m](Examples/format_output.m) | Examples | printf-style formatting — fprintf, sprintf, %d/%f/%e/%g/%s, width, precision, flags |
| [Examples/error_handling.m](Examples/error_handling.m) | Examples | try/catch error handling — error(), lasterr(), nested catch, defensive patterns |
| [Examples/file_io.m](Examples/file_io.m) | Examples | File I/O — fopen/fclose/fgetl/fprintf, dlmread/dlmwrite, isfile |
