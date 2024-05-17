{ lib, pkgs, ... }:

{
  config.opts = {
    updatetime = 100; # Faster completion

    number = true;
    relativenumber = true;
    splitbelow = true;
    splitright = true;
    scrolloff = 4;

    autoindent = true;
    clipboard = "unnamedplus";
    expandtab = true;
    shiftwidth = 2;
    smartindent = true;
    tabstop = 2;

    ignorecase = true;
    incsearch = true;
    smartcase = true;
    wildmode = "list:longest";

    swapfile = false;
    undofile = true; # Build-in persistent undo

    termguicolors = lib.mkForce pkgs.stdenv.isLinux;
  };
}
