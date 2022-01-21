(require 'use-package)

(use-package lsp-mode
  :ensure t
  :config
  (setq lsp-keymap-prefix "C-l")
  (with-eval-after-load 'lsp-mode
	(add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration))
  )

(use-package lsp-ui
  :ensure t
  :after lsp-mode
  :config
  (setq lsp-ui-sideline-enable t)
  (setq lsp-ui-doc-enable t)
  (setq lsp-ui-doc-position 'bottom)
  )

(setq yas-inhibit-overlay-modification-protection t)

(provide 'lsp-config)
;;; lsp-config.el ends here
