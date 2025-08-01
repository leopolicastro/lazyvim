# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a Neovim configuration based on LazyVim, a starter template that provides a modern Neovim setup with sensible defaults. The configuration is specifically customized for Ruby development.

## Commands

### Linting and Formatting
- `stylua .` - Format Lua files using stylua (configured in stylua.toml)
- Ruby formatting is handled automatically via `standardrb` through conform.nvim
- ERB files are formatted using `htmlbeautifier`

### Testing
- Ruby tests use `neotest-rspec` adapter with `bundle exec rspec` command
- Run tests through Neovim's neotest interface

## Architecture

### Core Structure
- `init.lua` - Entry point that bootstraps lazy.nvim and loads configuration
- `lua/config/` - Core configuration files (lazy.lua, options.lua, keymaps.lua, autocmds.lua)
- `lua/plugins/` - Custom plugin configurations that extend LazyVim

### Key Configuration Files
- `lua/config/lazy.lua` - Lazy.nvim setup with LazyVim integration, performance optimizations, and plugin management
- `lua/config/options.lua` - Ruby LSP configuration (ruby_lsp with standard formatter)
- `lua/config/keymaps.lua` - Custom keymaps including jk->Esc, Enter->Save, and buffer management
- `lua/plugins/ruby.lua` - Complete Ruby development setup with LSP, formatting, testing, and endwise support
- `lua/plugins/snacks.lua` - Snacks.nvim configuration with picker and notifier settings

### Ruby Development Features
- LSP: ruby_lsp (not installed via Mason, expects gem installation)
- Formatter: standardrb via conform.nvim
- Testing: neotest with rspec adapter using `bundle exec rspec`
- Auto-completion: vim-endwise and nvim-treesitter-endwise for automatic end insertion
- ERB support: htmlbeautifier for formatting

### Plugin Management
Uses lazy.nvim with LazyVim framework:
- Plugins are lazy-loaded by default for LazyVim plugins
- Custom plugins load during startup unless explicitly configured otherwise
- Automatic plugin update checking enabled (notifications disabled)
- Performance optimizations disable unnecessary RTP plugins

### Styling Configuration
- Stylua formatting: 2-space indentation, 120 character column width
- Colorscheme: tokyonight with habamax fallback