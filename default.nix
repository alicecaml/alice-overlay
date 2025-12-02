# Overlay which adds a namespace `alicecaml` to pkgs with the following attributes:
# - alicecaml.latest contains the Alice package and OCaml development tools.
# - alicecaml.latest.bare contains just the Alice package without the OCaml development tolos.
# - alicecaml.tools contains the OCaml development tools.
# - alicecaml.default is an alias of alicecaml.latest.
# - alicecaml.dev contains the current development version of Alice.
# - alicecaml.versioned contains fixed versions of Alice, for example alicecaml.versioned.alice_0_2_0
#   contains Alice v0.2.0 and the OCaml development tools, and alicecaml.versioned.alice_0_2_0.bare
#   contains just Alice v0.2.0 without the OCaml development tools.

final: prev: {
  alicecaml = prev.callPackage
    (import (builtins.fetchGit "https://github.com/alicecaml/alice")) { };
}
