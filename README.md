[![Test](https://github.com/cucumber/action-publish-hex/actions/workflows/test.yaml/badge.svg)](https://github.com/cucumber/action-publish-hex/actions/workflows/test.yaml)

# action-publish-hex

Publishes an Elixir/Erlang hex module to https://hex.pm

Needs [Erlang to be installed](https://github.com/erlef/setup-beam/) first.

## Inputs

* `hex-api-token`
* `working-directory` (optional, default `.`)

## Example

```yaml
name: Publish to hex

on:
  push:
    branches:
      - "release/*"

jobs:
  publish-ui:
    name: Publish to hex
    runs-on: ubuntu-latest
    environment: Release
    steps:
      - uses: actions/checkout@v2
      - uses: erlef/setup-beam@v1
      - uses: cucumber/action-publish-hex@v1.0.0
        with:
          hex-api-token: ${{ secrets.HEX_API_TOKEN }}
          working-directory: "elixir"
```
