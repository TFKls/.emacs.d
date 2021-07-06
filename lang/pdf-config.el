(require 'use-package)
(use-package pdf-tools
  :ensure t
  :pin manual
  :config
  (pdf-tools-install)
  (setq-default pdf-view-display-size 'fit-width)
  (define-key pdf-view-mode-map (kbd "C-s") 'isearch-forward)
  :custom
  (pdf-annot-activate-created-annotations t "automatically annotate highlights"))
(provide 'pdf-config)
;;; pdf-config.el ends here
