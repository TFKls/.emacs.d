(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(misterioso))
 '(haskell-stylish-on-save t)
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(markdown-mode pdf-tools flycheck-haskell haskell-mode use-package mu4e-alert gitignore-templates gitignore-mode flycheck)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(when (version< emacs-version "27.0") (package-initialize))

;;; Ensures that use-package exists

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))


(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path "~/.emacs.d/local/")
(add-to-list 'load-path "~/.emacs.d/lang/")

;;; GENERAL PACKAGES
(require 'general-config)
(require 'flycheck-config)
(require 'indent-config)
(require 'profiler)

;;; LOCAL PACKAGES
(use-package mu4e-config
  :ensure nil)

;;; LANG PACKAGES
(require 'haskell-config)
(require 'pdf-config)
(require 'gitignore-config)
(require 'markdown-config)

 
;;; init.el ends here
