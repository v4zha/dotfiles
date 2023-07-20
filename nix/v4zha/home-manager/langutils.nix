{ config, pkgs, lib, ... }: {
  home.packages = with pkgs;[

    #language utils and lsp : )
    # neovim mason work aakilla , list lsp servers here : )
    cargo
    rust-analyzer
    tree-sitter
    lua
    lau-language-server
    nodejs
    python3
    haskell
    glibc
    llvmPackages_15.clang-unwrapped
  ];
}
