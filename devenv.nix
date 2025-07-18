{ pkgs, lib, config, inputs, ... }:

{
  apple.sdk = null;

  packages = [ pkgs.git pkgs.rust-cbindgen ];

  languages = {
    rust = {
      enable = true;
      channel = "stable";
      targets = ["aarch64-apple-ios"];
      components = [ "rustc" "cargo" "clippy" "rustfmt" "rust-src" "rust-analyzer" ];
    };
  };
}
