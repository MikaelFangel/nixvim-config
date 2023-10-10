{ pkgs, ... }:

{
  imports = [
    ./options.nix
    ./bufferline.nix
    ./telescope.nix
    ./nvim-tree.nix
    ./lightline.nix
    ./git.nix
    ./cmp.nix
    ./indent.nix
    ./null-ls.nix
    ./wilder.nix
    ./ionide.nix
  ];
  
  colorschemes.dracula.enable = true;
}
