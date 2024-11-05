# Neovim Configuration

This Neovim configuration provides an organized setup with support for:

- LSP (Language Server Protocol) for Python, PHP, JavaScript, TypeScript, Node.js, HTML, CSS, and SQL
- Alpha as the welcome dashboard
- Telescope for fuzzy file search and grep search          

## Locations

### ~/.local/share/nvim

This directory contains the content installed and setup thanks to the configuration from .config.

### ~/.config/nvim

This directory contains the configuration of Neovim. This is where the content of this project should go.

## Features

### Language Support
- Uses **Mason** to manage LSP servers, installed with `:Mason`.    
- Configured LSPs: Python, PHP, JavaScript, TypeScript, Node.js, HTML, CSS, and SQL.

### Welcome Screen
- **Alpha** displays a custom dashboard with quick access to commands.

### Fuzzy Search
- **Telescope** provides file search and grep functionality.

## Installation
 
1. If you cloned this project elsewhere than ~/.config/nvim, run the script install.sh to copy the content to the config folder.
2. Run `:Lazy install` to download plugins.                                                                         
 
### Key Mappings
- <Leader> = <Space>     
- `<Leader>h`: Open Alpha dashboard    
- `<Leader>ff`: Find file          
- `<Leader>fg`: Live grep search     
 
Happy coding!  

