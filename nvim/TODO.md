# Neovim Configuration TODO

Here is a list of potential improvements to further enhance the architecture and maintainability of this configuration.

- [x] **1. Centralize Options and Keymaps**
  - [x] Create a `lua/core/options.lua` file for all `vim.opt` settings.
  - [x] Create a `lua/core/keymaps.lua` file for global keymaps.
  - [x] Update `init.lua` to `require` these new files.

- [ ] **2. Abstract the LSP `on_attach` Function**
  - [ ] Create a `lua/core/lsp-attach.lua` file.
  - [ ] Move the `LspAttach` autocommand and its callback function into this new file.
  - [ ] `require` the new file from within the `nvim-lspconfig` configuration in `lsp.lua`.

- [ ] **3. Fine-Tune Lazy-Loading**
  - [ ] Review plugins that load on `VimEnter` (e.g., `telescope.nvim`).
  - [ ] Change their loading mechanism to be even lazier, for example, by using the `keys` property in `lazy.nvim` to load them on first use.

- [ ] **4. Create a `utils.lua` Module**
  - [ ] Create a `lua/custom/utils.lua` file.
  - [ ] Move general-purpose helper functions (like the `map` function in the LSP config) into this module.
  - [ ] `require` the utils module where needed.

- [ ] **5. Consolidate Plugin Directories**
  - [ ] Move all plugin modules from `lua/core/plugins/` into `lua/custom/plugins/`.
  - [ ] Update the `lazy.setup` call in `init.lua` to use a single `{ import = 'custom.plugins' }` for all plugins.
