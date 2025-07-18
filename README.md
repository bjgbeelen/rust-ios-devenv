# Devenv Rust iOS target build failure

When building this lib on a Macbook Pro M3:

```rust
cargo build --target=aarch64-apple-ios --release
```

this fails with:

```
...
  cargo:warning=Warning: supplying the --target arm64-apple-ios != arm64-apple-darwin argument to a nix-wrapped compiler may not work correctly - cc-wrapper is currently not designed with multi-target compilers in mind. You may want to use an un-wrapped compiler instead.
  cargo:warning=clang: error: invalid argument '-mmacos-version-min=11.3' not allowed with '-miphoneos-version-min=18.0'
  cargo:warning=clang: warning: overriding '-mmacos-version-min=11.3' option with '--target=arm64-apple-ios' [-Woverriding-option]
```
