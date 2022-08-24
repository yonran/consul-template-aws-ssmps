# This file was generated by https://github.com/kamilchm/go2nix v1.3.0
{ stdenv, buildGoPackage, fetchgit, fetchhg, fetchbzr, fetchsvn }:

buildGoPackage rec {
  name = "consul-template-aws-ssmps-unstable-${version}";
  version = "v0.1.1";
  rev = version;

  # the binary should be named ssmps
  goPackagePath = "github.com/stanimoto/ssmps";

  src = builtins.path {
    name = "consul-template-aws-ssmps";
    path = ./.;
  };
  # src = fetchgit {
  #   inherit rev;
  #   url = "https://github.com/stanimoto/consul-template-aws-ssmps";
  #   sha256 = "1jkwrrmbg9w178d0qxff4mbqbjins492gslb47k26sy28wjykv1x";
  # };

  goDeps = ./deps.nix;

  # TODO: add metadata https://nixos.org/nixpkgs/manual/#sec-standard-meta-attributes
  meta = {
  };
}