{
  plugins.lsp = {
    enable = true;
    servers = {
      bashls.enable = true;
      clangd.enable = true;
      fsautocomplete.enable = true;
      gopls.enable = true;
      rnix-lsp.enable = true;
    };
    keymaps.lspBuf = {
      "gd" = "definition";
      "gD" = "references";
      "gt" = "type_definition";
      "gi" = "implementation";
      "K" = "hover";
    };
  };
}
