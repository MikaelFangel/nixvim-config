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

    # Go
    go

    # Kotlin
    kotlin-native
  ];
}
