ExcoverallsUmbrella [![Build Status](https://secure.travis-ci.org/parroty/excoveralls_umbrella.png?branch=master "Build Status")](http://travis-ci.org/parroty/excoveralls_umbrella) [![Coverage Status](https://coveralls.io/repos/parroty/excoveralls_umbrella/badge.png?branch=master)](https://coveralls.io/r/parroty/excoveralls_umbrella?branch=master)
============

Sample project for excoveralls on umbrella elixir projects.
  - https://github.com/parroty/excoveralls

## Configurations

## Usage
### Overall Reporting

```shell
elixir/projects/excoveralls_umbrella$ mix coveralls --umbrella
==> subapp0
..

Finished in 0.05 seconds (0.05s on load, 0.00s on tests)
2 tests, 0 failures

Randomized with seed 390885
==> subapp1
.

Finished in 0.00 seconds
1 test, 0 failures

Randomized with seed 454824
----------------
COV    FILE                                        LINES RELEVANT   MISSED
100.0% subapp0/lib/subapp0.ex                          9        2        0
 50.0% subapp1/lib/subapp1.ex                          9        2        1
[TOTAL]  75.0%
----------------
```

### Individual Reporting
```shell
elixir/projects/excoveralls_umbrella[master*]% mix coveralls
==> subapp0
..

Finished in 0.04 seconds (0.04s on load, 0.00s on tests)
2 tests, 0 failures

Randomized with seed 339490
----------------
COV    FILE                                        LINES RELEVANT   MISSED
100.0% lib/subapp0.ex                                  9        2        0
[TOTAL] 100.0%
----------------
==> subapp1
.

Finished in 0.00 seconds
1 test, 0 failures

Randomized with seed 429119
----------------
COV    FILE                                        LINES RELEVANT   MISSED
 50.0% lib/subapp1.ex                                  9        2        1
[TOTAL]  50.0%
----------------
```