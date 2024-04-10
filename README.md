# sfm-focus

The `sfm-focus` extension is a plugin for the [sfm](https://github.com/dinhhuy258/sfm.nvim) plugin that add the command `SFMFocus`. This command change current focus to explorer and open it if closed.

## Installation

To install the `sfm-focus` extension, you will need to have the [sfm](https://github.com/dinhhuy258/sfm.nvim) plugin installed. You can then install the extension using your preferred plugin manager. For example, using [packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
{
  "dinhhuy258/sfm.nvim",
  requires = {
    { "julihermes/sfm-focus.nvim" },
  },
  config = function()
    local sfm_explorer = require("sfm").setup {}
    sfm_explorer:load_extension "sfm-focus"
  end
}
```

