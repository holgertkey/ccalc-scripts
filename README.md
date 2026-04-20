# ccalc-scripts

A practical collection of scripts for [ccalc](https://github.com/holgertkey/ccalc) — a MATLAB-compatible calculator and scripting language.

## Requirements

- [ccalc](https://github.com/holgertkey/ccalc) installed and available on PATH

## Running a script

```bash
ccalc script.calc
```

Or from inside the ccalc REPL:

```
run('script.calc')
```

## Collection structure

```
ccalc-scripts/
  math/        # Numerical methods, statistics, linear algebra
  finance/     # Interest, loan payments, NPV/IRR
  utils/       # Unit converters, formatters, helpers
  examples/    # One script per language feature
```

## Script conventions

- Files use the `.calc` extension
- Each script starts with a comment block describing what it does and how to use it
- Scripts are self-contained: no external dependencies beyond ccalc built-ins
- Output is human-readable by default; semicolons suppress intermediate values

Example header:

```matlab
% loan_payment.calc
% Calculates monthly payment for a fixed-rate loan.
% Usage: set principal, rate, years below, then run.

principal = 100000;
rate      = 0.05;    % annual interest rate
years     = 20;
```

## Contributing

Scripts are organized by topic. To add a script:

1. Place it in the appropriate subfolder
2. Add a short comment header (purpose + usage)
3. Test it with the latest ccalc release

## Related

- [ccalc](https://github.com/holgertkey/ccalc) — the language and runtime
- [MATLAB File Exchange](https://www.mathworks.com/matlabcentral/fileexchange/) — inspiration and algorithm reference
