(require 'use-package)
(require 'flycheck)

;; (defvar-local local-hoogle-instance "https://hoogle.haskell.org/")
(defvar-local local-hoogle-instance "http://localhost:9331/")

;; Partially adapted from https://github.com/soupi/minimal-haskell-emacs
;; Luckly also UNLICENSED :D

(use-package haskell-mode
  :ensure t)

(use-package dante
  :ensure t)

(custom-set-variables
 '(haskell-stylish-on-save t))

(add-hook 'haskell-mode-hook 'dante-mode)

(define-key haskell-mode-map (kbd "C-c C-`") 'haskell-interactive-bring)
(define-key haskell-mode-map (kbd "C-l C-l") 'haskell-process-load-or-reload)
(define-key haskell-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)

;;(if (boundp 'hoogle-instance)
;;	(progn
;;	  (setq local-hoogle-instance hoogle-instance)
;;	  (setq-default haskell-hoogle-url hoogle-instance)))

(define-key haskell-mode-map (kbd "C-;") 'haskell-hoogle)
(define-key haskell-mode-map (kbd "C-:") 'haskell-hoogle-web)
(setq-default haskell-hoogle-command "hoogle")

(defun haskell-hoogle-web (query)
  "Search hoogle for word provided in minibuffer or under the cursor"
   (interactive "sHoogle query:")
   (if (string= "" query) (setq query (thing-at-point 'word)))
   (browse-url-generic (concat local-hoogle-instance "?hoogle=" query)))
(defalias 'hoogle-web 'haskell-hoogle-web)

(provide 'haskell-config)
;;; haskell-config.el ends here
