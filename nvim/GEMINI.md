# Neovim Configuration Analysis

## Project Overview

This directory contains a Neovim configuration based on the `kickstart.nvim` template. It's a highly customized setup that uses `lazy.nvim` for plugin management. The configuration is primarily written in Lua and is structured to be modular, with custom plugins and settings in the `lua/custom` directory.

The configuration is geared towards web and Flutter development, with extensive support for various languages through LSP. It also integrates GitHub Copilot for AI-assisted code completion.

## Key Technologies

*   **Editor:** Neovim
*   **Plugin Manager:** `lazy.nvim`
*   **Primary Language:** Lua
*   **Key Plugins:**
    *   `telescope.nvim`: Fuzzy finding
    *   `nvim-lspconfig`: Language Server Protocol (LSP) integration
    *   `mason.nvim`: LSP and tool management
    *   `conform.nvim`: Code formatting
    *   `nvim-cmp`: Autocompletion
    *   `nvim-treesitter`: Syntax highlighting and parsing
    *   `copilot.lua`: GitHub Copilot integration
    *   `flutter-tools.nvim`: Flutter development tools

## Building and Running

This is a Neovim configuration, so there is no traditional "build" process. To use it, you need to:

1.  **Install Neovim:** Ensure you have a recent version of Neovim installed.
2.  **Clone the repository:** Clone this repository to your Neovim configuration directory (e.g., `~/.config/nvim`).
3.  **Start Neovim:** Launch Neovim. The `lazy.nvim` plugin manager will automatically install the configured plugins.

### Key Commands

*   `:Lazy`: Open the `lazy.nvim` interface to manage plugins.
*   `<leader>sf`: Search for files using Telescope.
*   `<leader>sg`: Search by grep using Telescope.
*   `<leader>ca`: Trigger a code action (LSP).
*   `<leader>f`: Format the current buffer.

## Development Conventions

*   **Plugin Management:** Plugins are managed using `lazy.nvim`. New plugins can be added to the `lua/custom/plugins/` directory.
*   **Configuration:** The main configuration is in `init.lua`, which loads plugins and settings from various files in the `lua/` directory.
*   **Formatting:** Code formatting is handled by `conform.nvim`, with formatters like `prettier`, `black`, and `stylua`.
*   **LSP:** The configuration uses `nvim-lspconfig` and `mason.nvim` to manage and configure Language Servers for various languages.
