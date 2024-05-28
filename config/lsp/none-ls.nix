{
  plugins.none-ls = {
    enable = true;
    sources = {
      diagnostics = {
        golangci_lint.enable = true;
        ktlint.enable = true;
        statix.enable = true;
      };
      formatting = {
        fantomas.enable = true;
        gleam_format.enable = true;
        gofmt.enable = true;
        goimports.enable = true;
        ktlint.enable = true;
        nixfmt.enable = true;
        markdownlint.enable = true;
        shellharden.enable = true;
        shfmt.enable = true;
      };
    };
  };
}
