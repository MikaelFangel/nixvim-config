{ pkgs, ... }:

{
  imports = [
    ./autosave.nix
    ./auto-pairs.nix
    ./options.nix
    ./bufferline.nix
    ./telescope.nix
    ./nvim-tree.nix
    ./lightline.nix
    ./git.nix
    ./cmp.nix
    ./none-ls.nix
    ./wilder.nix
    ./ionide.nix
    ./lsp.nix
    ./treesitter.nix
    ./toggleterm.nix
  ];

  colorschemes.dracula.enable = true;

  globals.mapleader = "<space>";

  keymaps = [
    # Global Mappings
    # Default mode is "" which means normal-visual-op
    {
      # Toggle NvimTree
      key = "<C-n>";
      action = "<CMD>NvimTreeToggle<CR>";
    }
    {
      # Format file
      key = "<leader>fm";
      action = "<CMD>lua vim.lsp.buf.format()<CR>";
    }

    # Terminal Mappings
    {
      # Escape terminal mode using ESC
      mode = "t";
      key = "<esc>";
      action = "<C-\\><C-n>";
    }

    # Rust
    {
      # Start standalone rust-analyzer (fixes issues when opening files from nvim tree)
      mode = "n";
      key = "<leader>rs";
      action = "<CMD>RustStartStandaloneServerForBuffer<CR>";
    }

    # {
    #   # Mode can be a string or a list of strings
    #   mode = "n";
    #   key = "<leader>p";
    #   action = "require('my-plugin').do_stuff";
    #   lua = true;
    #   # Note that all of the mapping options are now under the `options` attrs
    #   options = {
    #     silent = true;
    #     desc = "My plugin does stuff";
    #   };
    # }
  ];

}
