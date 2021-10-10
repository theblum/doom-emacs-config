;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Brian Blumberg"
      user-mail-address "blum@disroot.org"

      doom-font (font-spec :family "Iosevka Nerd Font" :size 14)
      doom-theme 'doom-material

      org-directory "~/org/"
      display-line-numbers-type 'relative

      projectile-project-search-path '("~/src")

      lsp-zig-zls-executable "/bin/zls")

(defun blum/read-lines (file-path)
  "Return a list of lines of a file at `file-path'"
  (with-temp-buffer
    (insert-file-contents file-path)
    (split-string (buffer-string) "\n" t)))

(let* ((client-info (blum/read-lines (concat doom-private-dir ".smudge-client")))
       (id (car client-info))
       (secret (cadr client-info)))
  (use-package! smudge
    :config
    (setq
     smudge-oauth2-client-id id
     smudge-oauth2-client-secret secret
     smudge-transport 'connect)
    (global-smudge-remote-mode)
    (map! :map smudge-mode-map :leader "e" 'smudge-command-map)))

;; Don't load m2-mode for `*.mod' files as it clashes with zigmod
(setq auto-mode-alist (delete '("\\.mod\\'" . m2-mode) auto-mode-alist))
