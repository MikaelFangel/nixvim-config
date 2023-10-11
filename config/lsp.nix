{
  plugins.lsp = {
    enable = true;
    servers = {
      gopls.enable = true;
      rnix-lsp.enable = true;
      clangd.enable = true;
      bashls.enable = true;
    };
  };
}
