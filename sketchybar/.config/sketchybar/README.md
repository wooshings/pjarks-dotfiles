### SketchyBar

This sketchybar setup is insipred by Praveen Gongada's
[setup](https://github.com/PraveenGongada/dotfiles/tree/main/sketchybar)

##### Installation

```bash
brew install felixkratz/formulae/sketchybar
brew install jq
brew install font-sf-pro
brew install --cask sf-symbols
curl -L https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v2.0.40/sketchybar-app-font.ttf -o $HOME/Library/Fonts/sketchybar-app-font.ttf
curl -L https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v2.0.40/icon_map.sh -o $HOME/.config/sketchybar/icon_map.sh
```

##### Mitigation of some common problems that I faced

1) Praveen using version 1 of the config (needs to be declared coreclty in the sketchybarrc).
2) All the script must be user executable.
3) For `after-start-up` command in the `aerospace.toml` to start `borders` and `sketchybar`, prefer keeping all the three bin files in the same bin folder. For me this was
in `/opt/homebrew/bin` (on one machine that have). On the other even though
files were on different paths, `sketchybar` worked with `brew services star`
after I loaded `aerospace`.
4) Also in the aerospace.toml, wherever `sketchybar` or `borders` are
referenced, the full path must be used. The newer version of the config
supports `[exec.env-vars]` to set the path. Here I am just using the dirty way
of supplying the full path wherever needed.
