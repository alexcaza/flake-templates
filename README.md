# Personal flake templates

A collection of flake templates to be used for new projects.

## Typescript + Node

Uses typescript, pnpm and nodejs.

`nix flake init -t github:alexcaza/flake-templates#node-ts`

## Bun

Barebones broject that uses bun and playwright.

`nix flake init -t github:alexcaza/flake-templates#bun`

## Rust

Basic rust project using [oxalica/rust-overlay](https://github.com/oxalica/rust-overlay) that uses `toolchain.toml` to set channel and components.

`nix flake init -t github:alexcaza/flake-templates#rust`

## Go

Basic Go 1.22 project.

`nix flake init -t github:alexcaza/flake-templates#go`

# Inpiration

Pulled the ideas from [akirak](https://github.com/akirak/flake-templates), [NixOS templates](https://github.com/NixOS/templates/tree/master) and [Leixb](https://github.com/Leixb/flake-templates).
