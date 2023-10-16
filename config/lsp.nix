{
  plugins.lsp = {
    enable = true;
    servers = {
      gopls.enable = true;
      rnix-lsp.enable = true;
      clangd.enable = true;
      bashls.enable = true;
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
