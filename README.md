# ArrowKeys.spoon

Simply maps vim-like arrow key bindings when holding `fn`, and nothing else.

## Installation & Usage

```bash
cd ~/.hammerspoon/Spoons/
git clone git@github.com:greenerino/ArrowKeys.spoon.git
```

Then, in `init.lua`:
```lua
ArrowKeys = hs.loadSpoon('ArrowKeys')
ArrowKeys:start()
```
