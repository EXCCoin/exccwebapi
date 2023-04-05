# API

API calls are requested by providing the name of the call as a form parameter.

For example, to request the `vsp` call:

```no-highlight
https://api.excc.co/?c=vsp
```

## Get VSP Info

Collects data from a hard-coded list of Voting Service Providers running
[EXCCoin/vspd](https://github.com/EXCCoin/vspd).

Example: <https://api.excc.co/?c=vsp>

```json
{
  "testnet-vspd.excc.co": {
    "network": "testnet",
    "launched": 1680825600,
    "lastupdated": 1680693159,
    "apiversions": [
      3
    ],
    "feepercentage": 3,
    "closed": false,
    "voting": 0,
    "voted": 5,
    "revoked": 0,
    "vspdversion": "1.2.0-pre+98d3d3a55",
    "blockheight": 41399,
    "estimatednetworkproportion": 0
  }
}
```

## Get VSP Info (legacy)

Collects data from a hard-coded list of Voting Service Providers running
[decred/dcrstakepool](https://github.com/decred/dcrstakepool).

Example: <https://api.decred.org/?c=gsd>

```json
{
    "Alpha":{
        "APIEnabled":true,
        "APIVersionsSupported":[1, 2],
        "Network":"mainnet",
        "URL":"https://stakepool.excc.co",
        "Launched":1516579200,
        "LastUpdated":1598266266,
        "Immature":0,
        "Live":1,
        "Voted":616,
        "Missed":10,
        "PoolFees":1,
        "ProportionLive":0.00015578750584203146,
        "ProportionMissed":0.01597444089456869,
        "UserCount":7,
        "UserCountActive":5,
        "Version":"1.5.0-pre"
    },
}
```
