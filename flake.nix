{
  description = "A flake for developing and building personal webpages using Zola";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = nixpkgs.legacyPackages.${system};

        basic-resume = pkgs.fetchzip {
          url = "https://packages.typst.org/preview/basic-resume-0.2.9.tar.gz";
          hash = "sha256-iRPfdb+68aSFQNZ5D7YRx3O4zAFoVEo4wmgJTXJZahs=";
          stripRoot = false;
        };
        scienceicons = pkgs.fetchzip {
          url = "https://packages.typst.org/preview/scienceicons-0.1.0.tar.gz";
          hash = "sha256-xbqURYis+fBX0Wozcv8Ld0CAZv0zH05pYqylJhSmYjQ=";
          stripRoot = false;
        };
        typst-packages = pkgs.runCommand "typst-packages" {} ''
          mkdir -p $out/preview/basic-resume $out/preview/scienceicons
          ln -s ${basic-resume} $out/preview/basic-resume/0.2.9
          ln -s ${scienceicons} $out/preview/scienceicons/0.1.0
        '';
      in {
        packages.website = pkgs.stdenv.mkDerivation rec {
          pname = "static-website";
          version = "2021-11-19";
          src = ./.;
          nativeBuildInputs = [pkgs.zola pkgs.typst];
          buildPhase = ''
            export TYPST_PACKAGE_CACHE_PATH=${typst-packages}
            typst compile static/docs/Academic_CV.typ
            zola build
          '';
          installPhase = "cp -r public $out";
        };
        defaultPackage = self.packages.${system}.website;
        devShell = pkgs.mkShell {
          packages = with pkgs; [
            zola
            typst
          ];
        };
      }
    );
}
