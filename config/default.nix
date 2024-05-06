{ pkgs, ... }:

{
  imports = [
    ./auto-pairs.nix
    ./autosave.nix
    ./bufferline.nix
    ./cmp.nix
    ./git.nix
    ./ionide.nix
    ./lightline.nix
    ./lsp.nix
    ./none-ls.nix
    ./nvim-tree.nix
    ./options.nix
    ./telescope.nix
    ./toggleterm.nix
    ./treesitter.nix
    ./which_key.nix
    ./wilder.nix
  ];

  # The theme doesn't work properly on MacOS using the default terminal
  colorschemes.dracula.enable = pkgs.stdenv.isLinux;

  globals.mapleader = " ";

  keymaps = [
    # Global
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

    # Git
    {
      key = "<leader>gtb";
      action = "<CMD>Gitsigns toggle_current_line_blame<CR>";
    }
    {
      key = "<leader>gtd";
      action = "<CMD>Gitsigns toggle_deleted";
    }
    {
      key = "<leader>gd";
      action = "<CMD>Gitsigns diffthis<CR>";
    }

    # Tabs
    {
      mode = "n";
      key = "<leader>tn";
      action = "<CMD>tabnew<CR>";
    }
    {
      mode = "n";
      key = "<leader>td";
      action = "<CMD>tabclose<CR>";
    }
    {
      mode = "n";
      key = "<leader>ts";
      action = "<CMD>tabnext<CR>";
    }
    {
      mode = "n";
      key = "<leader>tp";
      action = "<CMD>tabprevious<CR>";
    }

    # Terminal
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
