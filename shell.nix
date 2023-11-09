{ pkgs }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    # Rust
    cargo
    rustc

    # FSharp
    dotnet-sdk
  ];
}
