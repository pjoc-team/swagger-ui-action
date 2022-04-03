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
name: Swagger

on:
  push:
    branches:
      - master

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: Swagger ui action
        id: swagger-ui-action
        uses: pjoc-team/swagger-ui-action@v0.0.2
        with:
          dir: './'
          pattern: '*.json'
          debug: 'true'
      - name: Deploy to GitHub Pages
        uses: peaceiris/actions-gh-pages@v3
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          publish_dir: swagger-ui
```

## Contributors

<!-- readme: contributors -start --> 
<table>
<tr>
    <td align="center">
        <a href="https://github.com/blademainer">
            <img src="https://avatars.githubusercontent.com/u/3396459?v=4" width="100;" alt="blademainer"/>
            <br />
            <sub><b>Blademainer</b></sub>
        </a>
    </td>
    <td align="center">
        <a href="https://github.com/BigTows">
            <img src="https://avatars.githubusercontent.com/u/9078504?v=4" width="100;" alt="BigTows"/>
            <br />
            <sub><b>Alexander Chapchuk</b></sub>
        </a>
    </td></tr>
</table>
<!-- readme: contributors -end -->