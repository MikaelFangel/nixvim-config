{ pkgs, ... }:

{
  extraPlugins = with pkgs.vimPlugins; [
    Ionide-vim
  ];
}
