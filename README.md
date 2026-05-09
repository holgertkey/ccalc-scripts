# ccalc-scripts

A practical collection of scripts for [ccalc](https://github.com/holgertkey/ccalc) — a MATLAB-compatible calculator and scripting language.

## Requirements

- [ccalc](https://github.com/holgertkey/ccalc) installed and available on PATH

## Running a script

```bash
ccalc script.m
```

Or from inside the ccalc REPL:

```
run('script.m')
```

## Collection structure

```
ccalc-scripts/
  Root Finding/        # Bisection, Newton-Raphson, Secant, Regula Falsi, Fixed-point
  Linear Systems/      # Gaussian elimination, LU decomposition, Jacobi, Gauss-Seidel
  Interpolation/       # Lagrange, Newton divided differences, Piecewise linear
  Numerical Integration/ # Trapezoidal rule, Simpson's rule, Romberg
  ODEs/                # Euler's method, Runge-Kutta 4th order
  Statistics/          # Descriptive stats, linear/polynomial regression, normal dist, correlation
  Utilities/           # Primes sieve, GCD/LCM, Horner's method, sorting algorithms
  Finance/             # Compound interest, NPV, IRR, loan amortization
  Examples/            # Language feature showcase — one script per ccalc feature
  Algorithms/          # Computer science algorithms — search, sort, dynamic programming
```

See [INDEX.md](INDEX.md) for a full list of all scripts with descriptions.

## Script conventions

- Files use the `.m` extension for Octave/MATLAB-compatible scripts
- Files use the `.calc` extension for scripts that use ccalc-specific syntax
- Each script starts with a comment block describing what it does and how to use it
- Scripts are self-contained: no external dependencies beyond ccalc built-ins
- Output is human-readable by default; semicolons suppress intermediate values

Example header:

```matlab
% loan_amort.m
% Loan amortization schedule — fixed monthly payment, interest/principal split.
% Usage: set principal, annual_rate, years below, then run.

principal   = 200000;
annual_rate = 0.045;
years       = 30;
```

## Contributing

Scripts are organized by topic. To add a script:

1. Place it in the appropriate subfolder
2. Add a short comment header (purpose + usage)
3. Test it with the latest ccalc release
4. Add an entry to INDEX.md

## Related

- [ccalc](https://github.com/holgertkey/ccalc) — the language and runtime
- [MATLAB File Exchange](https://www.mathworks.com/matlabcentral/fileexchange/) — inspiration and algorithm reference
