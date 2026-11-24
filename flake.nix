{
  description = "ITE-439 labs: Flutter dev shell";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

  outputs =
    { nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        # flutter bundles its own Dart SDK, so `dart` comes with it
        packages = [ pkgs.flutter ];
      };
    };
}
