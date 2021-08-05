(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   '("e208e45345b91e391fa66ce028e2b30a6aa82a37da8aa988c3f3c011a15baa22" default))
 '(haskell-stylish-on-save t)
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(emacs-everywhere xclip rebecca-theme esup company yaml-mode dante company-mode markdown-mode pdf-tools flycheck-haskell haskell-mode use-package mu4e-alert gitignore-templates gitignore-mode flycheck))
 '(xterm-mouse-mode t)
 '(xterm-mouse-utf-8 t))
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
(require 'theme-config)
(require 'flycheck-config)
(require 'indent-config)
(require 'company-config)
(require 'clipboard-config)
;; (require 'everywhere-config) doesn't work as expected :(
(require 'profiler)
(require 'utilities)

;;; LOCAL PACKAGES
(use-package mu4e-config
  :when (require 'mu4e-config nil 'noerror))
(use-package local-config
  :when (require 'local-config nil 'noerror))

;;; LANG PACKAGES
(require 'haskell-config)
(require 'pdf-config)
(require 'gitignore-config)
(require 'markdown-config)
(require 'yaml-config)

 
;;; init.el ends here
