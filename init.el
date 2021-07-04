(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(misterioso))
 '(haskell-stylish-on-save t)
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(pdf-tools flycheck-haskell haskell-mode use-package mu4e-alert gitignore-templates gitignore-mode flycheck)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(setq make-backup-files nil)
(setq auto-save-default nil)

(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;;; Ensures that use-package exists

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))


(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path "~/.emacs.d/local/")

(use-package mu4e-config
  :ensure nil)

(require 'flycheck-config)
(require 'gitignore-config)
(require 'indent-config)
(require 'haskell-config)
(require 'pdf-config)

 
;;; init.el ends here
