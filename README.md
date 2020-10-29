# Swagger ui action

This action generation swagger ui. Example: [swagger-ui-action](http://pjoc-team.github.io/swagger-ui-action)

## Inputs

### `dir`

**Required** Directory to scan. Default `"./"`.

### `pattern`

**Required** Pattern to find swagger json. Default `"*.json"`.

### `debug`

Debug script's out.

## Example usage

```yaml
name: 'Swagger ui Action'
description: 'Generate swagger ui by json files'
inputs:
  dir:  # id of input
    description: 'Dir to find swagger json'
    required: true
    default: './'
  pattern:
    description: 'Pattern to find json, for example: *.swagger.json'
    required: true
    default: '*.json'
outputs:
  time: # id of output
    description: 'The time we greeted you'
runs:
  using: 'docker'
  image: 'Dockerfile'

```
