;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Brian Blumberg"
      user-mail-address "blum@disroot.org"

      doom-font (font-spec :family "Iosevka Nerd Font" :size 14)
      doom-theme 'doom-material

      org-directory "~/org/"
      display-line-numbers-type 'relative

      projectile-project-search-path '("~/src")

      lsp-zig-zls-executable "/bin/zls")
