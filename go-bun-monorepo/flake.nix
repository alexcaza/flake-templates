{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem
    (
      system: let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            # API
            go_1_22
            gopls
            gotools

            # Client
            bun
            playwright-driver.browsers

            # CLIs
            jq
            nushell

            # Language servers
            svelte-language-server

            # Build tooling
            just

            # Database choices
            # sqlite
            # postgresql
            #
          ];

          shellHook = ''
            export PLAYWRIGHT_BROWSERS_PATH=${pkgs.playwright-driver.browsers}
          '';
        };
      }
    );
}
