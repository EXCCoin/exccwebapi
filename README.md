# exccwebapi

[![Build Status](https://github.com/EXCCoin/exccwebapi/workflows/Build%20and%20Test/badge.svg)](https://github.com/EXCCoin/exccwebapi/actions)
[![ISC License](https://img.shields.io/badge/license-ISC-blue.svg)](http://copyfree.org)

exccwebapi implements a simple HTTP API which provides summary data about the
ExchangeCoin blockchain and ecosystem.
Some data such as a list of Voting Service Providers is hard-coded, and some is
collected from external sources such as GitHub and
[exccdata](https://github.com/EXCCoin/exccdata).

## Voting Service Providers

Data from exccwebapi is used to populate the VSP list of both
[decred.org](https://github.com/EXCCoin/vspd/) and
[Exilibrium](https://github.com/EXCCoin/exilibrium).

To add a new VSP to the API, VSP operators must open a pull request on this
repository after following the [operator guidelines](https://docs.excc.co/advanced/operating-a-vsp/)
and coordinating with the [ExchangeCoin community](https://excc.co/community/).

## API

API calls are documented in [api.md](./docs/api.md).

## Docker

To build the image:

```sh
docker build -t exccco/exccwebapi .
```

By default, the container exposes port 8080.
To run the image:

```sh
docker run --rm -d -p [local port]:8080 exccco/exccwebapi
```

## License

exccwebapi is licensed under the [copyfree](http://copyfree.org) ISC License.
