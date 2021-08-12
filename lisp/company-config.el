(require 'use-package)

(use-package company
  :ensure t)

(add-hook 'after-init-hook 'global-company-mode)

(setq company-minimum-prefix-length 1)
;after how long of no keys should we get the completion tips? in seconds
(setq company-idle-delay 0.4)

(setq company-global-modes '(not org-mode))

(provide 'company-config)
;;; company-config.el ends here
