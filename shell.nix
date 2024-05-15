{ pkgs }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    # Rust
    cargo
    rustc

    # Elixir
    elixir

    # FSharp
    dotnet-sdk
    fsautocomplete
    fantomas

    # Go
    go

    # Kotlin
    kotlin-native

    # Tools
    ripgrep
  ];
}
