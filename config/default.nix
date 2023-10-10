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
    ./ionide.nix
  ];
  
  colorschemes.dracula.enable = true;
}
