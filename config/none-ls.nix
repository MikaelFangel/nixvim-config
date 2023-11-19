{
  plugins.none-ls = {
    enable = true;
    sources = {
      diagnostics = {
        shellcheck.enable = true;
        statix.enable = true;
      };
      formatting = {
        fantomas.enable = true;
        gofmt.enable = true;
        nixfmt.enable = true;
        markdownlint.enable = true;
        rustfmt.enable = true;
      };
    };
  };
}
