# jlkdevelop/homebrew-tap

The official [Homebrew](https://brew.sh) tap for [MX Script](https://github.com/jlkdevelop/mxscript) and other tools by [Jassim Alkharafi](https://github.com/jlkdevelop).

## Install MX Script

```sh
brew install jlkdevelop/tap/mx
mx version
```

That's it. The tap and the formula are both auto-discovered from the short slug.

## Upgrade

```sh
brew update
brew upgrade mx
```

## Uninstall

```sh
brew uninstall mx
brew untap jlkdevelop/tap
```

## Formulae

| Name | Description                                   | Source                                            |
| ---- | --------------------------------------------- | ------------------------------------------------- |
| `mx` | The MX Script CLI (interpreter, REPL, build). | [jlkdevelop/mxscript](https://github.com/jlkdevelop/mxscript) |

## Releases

Formulae are bumped automatically by [GoReleaser](https://goreleaser.com) on every new tag of [jlkdevelop/mxscript](https://github.com/jlkdevelop/mxscript). If a release ever lags, open an issue and a manual bump PR will land within the day.

## License

Tap config: [MIT](./LICENSE). Each formula links to its own upstream license.
