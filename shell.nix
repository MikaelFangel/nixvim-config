{ pkgs }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    # Rust
    cargo
    rustc

    # Gleam
    gleam

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
