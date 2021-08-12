(require 'use-package)

(use-package flycheck
  :ensure t
  :config (global-flycheck-mode))

(setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
(setq-default flycheck-emacs-lisp-load-path 'inherit)

(provide 'flycheck-config)
;;; flycheck-config.el ends here
