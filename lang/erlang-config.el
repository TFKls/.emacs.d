(require 'use-package)
(require 'lsp-config)

(use-package erlang
  :ensure t)

(add-hook 'erlang-mode-hook #'lsp)

(provide 'erlang-config)
;;; erlang-config.el ends here
