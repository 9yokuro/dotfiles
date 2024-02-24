{ pkgs ? import <nixpkgs> {} }:
[
    pkgs.go
    pkgs.git
    pkgs.nodejs_21
    pkgs.rustup
    pkgs.stylua
]
