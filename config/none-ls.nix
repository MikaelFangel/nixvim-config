{
  plugins.none-ls = {
    enable = true;
    sources = {
      diagnostics = {
        shellcheck.enable = true;
        statix.enable = true;
      };
      formatting = { nixfmt.enable = true; };
    };
  };
}
