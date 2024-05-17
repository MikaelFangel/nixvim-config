{
  plugins = {
    treesitter = {
      enable = true;
      nixGrammars = true;
      indent = true;
    };
    treesitter-context = {
      enable = true;
      settings = { max_lines = 2; };
    };
    rainbow-delimiters.enable = true;
  };
}
