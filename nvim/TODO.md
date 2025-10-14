# Neovim Configuration TODO

- [ ] **Abstract the LSP `on_attach` Function**
  - [ ] Create a `lua/core/lsp-attach.lua` file.
  - [ ] Move the `LspAttach` autocommand and its callback function into this new file.
  - [ ] `require` the new file from within the `nvim-lspconfig` configuration in `lsp.lua`.

- [ ] **Fine-Tune Lazy-Loading**
  - [ ] Review plugins that load on `VimEnter` (e.g., `telescope.nvim`).
  - [ ] Change their loading mechanism to be even lazier, for example, by using the `keys` property in `lazy.nvim` to load them on first use.

- [ ] **Create a `utils.lua` Module**
  - [ ] Create a `lua/custom/utils.lua` file.
  - [ ] Move general-purpose helper functions (like the `map` function in the LSP config) into this module.
  - [ ] `require` the utils module where needed.

- [ ] **Consolidate Plugin Directories**
  - [ ] Move all plugin modules from `lua/core/plugins/` into `lua/custom/plugins/`.
  - [ ] Update the `lazy.setup` call in `init.lua` to use a single `{ import = 'custom.plugins' }` for all plugins.

- [ ] **Additional Plugin Configurations**
  - [ ] Configure `snacks.nvim` for image support in Neovim.
    - [ ] Follow the setup instructions from the [snacks.nvim documentation](https://github.com/folke/snacks.nvim/blob/main/docs/image.md)
