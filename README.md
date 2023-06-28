# clip.fish
A simple fish shell script for copying and pasting content from the clipboard.

### Usage

You type `clip` in terminal to get current content in clipboard.
```shell
clip
```

Or give argument to `clip` to copy it to clipboard.

```shell
clip "This text will be copied to clipboard." 
```

### Compatability

`clip.fish` uses programs to interact with the clipboard. Below, you can see the list of supported programs.

##### Linux / Wayland
- `wl-paste` - get content of clipboard.
- `wl-copy` - copy content to clipboard.

##### Linux / *BSD / X11

- `xclip` - copy and get content from clipboard.

##### Darwin / macOS / Aqua

- `pbcopy` - copy content to clipboard.
- `pbpaste` - get content of clipboard.

### Installation

##### Fisher

```shell
fisher install kostya-zero/clip.fish
```

##### Manually

```shell
curl "https://gitlab.com/kostya-zero/clip.fish/-/raw/main/functions/clip.fish" -o "$HOME/.config/fish/functions/clip.fish"
```
