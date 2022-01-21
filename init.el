(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
	 ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes nil)
 '(custom-safe-themes
	 '("e208e45345b91e391fa66ce028e2b30a6aa82a37da8aa988c3f3c011a15baa22" default))
 '(haskell-stylish-on-save t)
 '(inhibit-startup-screen t)
 '(org-support-shift-select 'always)
 '(package-selected-packages
	 '(org julia-snail vterm dyalog-mode erlang lsp-ui lsp-mode ## org-bullets org-mime emacs-everywhere xclip rebecca-theme esup company yaml-mode dante company-mode markdown-mode pdf-tools flycheck-haskell haskell-mode use-package mu4e-alert gitignore-templates gitignore-mode flycheck))
 '(warning-suppress-types '((use-package) (use-package)))
 '(xterm-mouse-mode t)
 '(xterm-mouse-utf-8 t))

(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(when (version< emacs-version "27.0") (package-initialize))

;;; Ensures that use-package exists

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(add-to-list 'load-path "~/.emacs.d/lang/")

(use-package flycheck
  :ensure t
  :config (global-flycheck-mode))

(setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
(setq-default flycheck-emacs-lisp-load-path 'inherit)

(setq make-backup-files nil)
(setq auto-save-default nil)
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

(when (version<= "26.0.50" emacs-version)
  (global-display-line-numbers-mode))

(set-face-attribute 'default nil
                    :family "IOsevkaT"
										:height 115
                    :weight 'normal
                    :width 'normal)

(setq byte-compile-warnings '(not obsolete))

(setq gc-cons-threshold 4000000) ;; 10*def
(setq read-process-output-max (* 1024 1024)) ;; 1MB
(setq-default tab-width 2)

(use-package undo-tree
	:ensure t
	:init (global-undo-tree-mode))

(use-package rebecca-theme
  :ensure t
  :config
  (load-theme 'rebecca))

(use-package yasnippet
  :ensure t)

(yas-global-mode 1)

(use-package company
  :ensure t)

(add-hook 'after-init-hook 'global-company-mode)

(setq company-minimum-prefix-length 1)

(setq company-idle-delay 0.4)

(setq select-enable-clipboard t)

(use-package xclip
  :ensure t)
(xclip-mode 1)

(load "~/.emacs.d/ergoemacs-mode/ergoemacs-mode.el")
(setq-default ergoemacs-theme nil)
(setq-default ergoemacs-keyboard-layout "us")
(ergoemacs-mode 1)

;;; LANG PACKAGES
;; (require 'erlang-config)
;; (require 'elixir-config)
;; (require 'haskell-config)
;; (require 'julia-config)
;; (require 'pdf-config)
;; (require 'markdown-config)


;;; Init.el ends here
