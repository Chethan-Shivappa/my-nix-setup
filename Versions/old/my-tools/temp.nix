{ pkgs ? import <nixpkgs> {} }:

with pkgs;

mkShell {
  nativeBuildInputs = [
    netcat
    arp-scan
    toybox
  ];
}
