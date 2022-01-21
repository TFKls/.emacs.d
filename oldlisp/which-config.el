(require 'use-package)

(use-package which-key
  :ensure t)

(define-globalized-minor-mode global-which-key-mode
  which-key-mode (lambda () (which-key-mode 1)))

(global-which-key-mode 1)			  
			  
(provide 'which-config)
;;; which-config.el ends here
