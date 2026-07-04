{
  description = "Tossconf26 Web Project";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
      
      perSystem = { pkgs, ... }: {
        apps.default = {
          type = "app";
          program = pkgs.lib.getExe (pkgs.writeShellScriptBin "start-server" ''
            echo "Starting local web server on http://localhost:8000..."
            exec ${pkgs.lib.getExe pkgs.python3} -m http.server 8000
          '');
        };

        devShells.default = pkgs.mkShell {
          packages = [
            pkgs.python3
          ];
        };
      };
    };
}
