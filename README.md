# Alice Overlay

A Nix overlay for [Alice](https://github.com/alicecaml/alice).

## Usage in `shell.nix`

Here's an example `shell.nix` file which will make `alice` and the recommended OCaml tools available within a project:
```nix
{ pkgs ? import <nixpkgs> {
  overlays = [
    (import (builtins.fetchGit "https://github.com/alicecaml/alice-overlay"))
  ];
} }:
pkgs.mkShell { packages = with pkgs; [ alicecaml.default ]; }
```
