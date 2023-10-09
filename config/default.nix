{ pkgs, ... }:

{
  imports = [
    ./options.nix
    ./bufferline.nix
    ./telescope.nix
    ./nvim-tree.nix
    ./lightline.nix
    ./ionide.nix
  ];
  
  colorschemes.dracula.enable = true;
}
