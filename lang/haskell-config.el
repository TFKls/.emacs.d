(require 'use-package)
(require 'flycheck)
 
(use-package haskell-mode
  :ensure t)

(use-package flycheck-haskell
  :ensure t)

(custom-set-variables
 '(haskell-stylish-on-save t))

(provide 'haskell-config)
;;; haskell-config.el ends here
