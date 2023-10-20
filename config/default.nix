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
    ./null-ls.nix
    ./wilder.nix
    ./ionide.nix
    ./lsp.nix
    ./treesitter.nix
    ./toggleterm.nix
  ];

  colorschemes.dracula.enable = true;

  keymaps = [
    {
      # Default mode is "" which means normal-visual-op
      key = "<C-n>";
      action = "<CMD>NvimTreeToggle<CR>";
    }
    {
      key = "<space>fm";
      action = "<CMD>lua vim.lsp.buf.format()<CR>";
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
