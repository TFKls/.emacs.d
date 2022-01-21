(require 'use-package)

(use-package julia-mode
	:ensure t)

(use-package julia-snail
  :ensure t
	:requires vterm
	:hook (julia-mode . julia-snail-mode)
	)

(provide 'julia-config)
;;; julia-config.el ends here
