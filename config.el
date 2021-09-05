;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Brian Blumberg"
      user-mail-address "blum@disroot.org"

      doom-font (font-spec :family "Cousine Nerd Font" :size 14)
      doom-theme 'doom-material

      org-directory "~/org/"
      display-line-numbers-type 'relative
      lsp-zig-zls-executable "/bin/zls")
