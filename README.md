# Leapdeck tap

[Homebrew](https://brew.sh) tap for [Leapdeck](https://leapdeck.app), which jumps
your Mac straight to any Space, full screen apps included, from a hotkey, the menu
bar or your iPhone.

```sh
brew install --cask leapdeck-app/tap/leapdeck
```

Type the full name, `leapdeck-app/tap/` included. Homebrew 6 and later loads a
cask from a tap that is not its own only when it is installed by its full name or
trusted with `brew trust`, so `brew tap leapdeck-app/tap` followed by
`brew install --cask leapdeck` is refused until you trust the cask.

Leapdeck needs macOS 14 Sonoma or later. The cask installs the same signed and
notarized app as the website's download.

## Updating

Leapdeck updates itself, so `brew upgrade` skips it. `brew upgrade
--greedy-auto-updates` includes it. The cask is updated with each release, so a
fresh install gets the newest version.

## Uninstalling

```sh
brew uninstall --cask leapdeck-app/tap/leapdeck
```

This removes the app. Add `--zap` to remove its settings, its list of paired
phones and its caches as well. A Leapdeck Pro license file is left behind on
purpose: deleting it without deactivating first leaves one of the license's five
activations counted. To remove the license too, choose Deactivate on the Pro tab
before uninstalling.

## Questions

[leapdeck.app](https://leapdeck.app), or hello@leapdeck.app.
