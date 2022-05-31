# Sicp Racket Boilerplate

[![github action status](https://github.com/hexlet-boilerplates/sicp-racket/workflows/Racket%20CI/badge.svg)](https://github.com/hexlet-boilerplates/sicp-racket/actions)
[![drone ci status](https://drone.ballyda.com/api/badges/dueyfinster/sicp-racket/status.svg)](https://drone.ballyda.com/dueyfinster/sicp-racket/)

### Requirements

*  Racket
*  Rackunit (`raco pkg install rackunit`)
*  [SICP Support for DrRacket](https://docs.racket-lang.org/sicp-manual/index.html) (`raco pkg install sicp`)
*  [Racket-review](https://github.com/Bogdanp/racket-review) surface-level linter (`raco pkg install review`)
*  Make

### Using

1.  Write code (look `sicp/chapter1/02.rkt`)
2.  Run tests `make test`
3.  Run linter `make lint`

