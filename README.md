# Neovim Configuration

This Neovim configuration provides an organized setup with support for:

- LSP (Language Server Protocol) for Python, PHP, JavaScript, TypeScript, Node.js, HTML, CSS, and SQL
- Alpha as the welcome dashboard
- Telescope for fuzzy file search and grep search

## Features

### Language Support
- Uses **Mason** to manage LSP servers, installed with `:Mason`.
- Configured LSPs: Python, PHP, JavaScript, TypeScript, Node.js, HTML, CSS, and SQL.

### Welcome Screen
- **Alpha** displays a custom dashboard with quick access to commands.

### Fuzzy Search
- **Telescope** provides file search and grep functionality.

## Installation

Clone or add the configuration files to your Neovim setup, and ensure to run `:Lazy install` to download plugins.

### Key Mappings

- `<leader>h`: Open Alpha dashboard
- `<leader>ff`: Find file
- `<leader>fg`: Live grep search

Happy coding!
