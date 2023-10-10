{ pkgs, ... }:

{
  imports = [
    ./options.nix
    ./bufferline.nix
    ./telescope.nix
    ./nvim-tree.nix
    ./lightline.nix
    ./git.nix
    ./ionide.nix
  ];
  
  colorschemes.dracula.enable = true;
}
