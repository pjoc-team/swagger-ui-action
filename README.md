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
- name: swagger ui
  uses: pjoc-team/swagger-ui-action@v0.0.2
  with:
    dir: './'
    pattern: '*.json'
    debug: 'true'

```
