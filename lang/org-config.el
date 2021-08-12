(require 'use-package)

;; Partially adapted from https://zzamboni.org/post/beautifying-org-mode-in-emacs/
;; Could not find licensing information so i'm going to assume it's to include

(use-package org
  :ensure t
  :if window-system
  :config
  (setq org-hide-emphasis-markers t)
  (add-hook 'org-mode-hook 'visual-line-mode)
  (let* ((variable
          (cond
		   ((x-list-fonts "IOsevka") '(:font "IOSevka"))
		   ((x-list-fonts "Latin Modern Sans") '(:font "Latin Modern Sans"))
           ((x-list-fonts "Source Sans Pro")   '(:font "Source Sans Pro"))
           ((x-family-fonts "Sans Serif")      '(:family "Sans Serif"))
           (nil (warn "Cannot find a Sans Serif Font."))))
         (headline  `(:inherit default :weight bold :foreground ,(face-foreground 'default nil 'default))))
		 
		 (custom-theme-set-faces
		  'user
		  `(org-level-8 ((t (,@headline ,@variable))))
		  `(org-level-7 ((t (,@headline ,@variable))))
		  `(org-level-6 ((t (,@headline ,@variable))))
		  `(org-level-5 ((t (,@headline ,@variable))))
		  `(org-level-4 ((t (,@headline ,@variable :height 1.2))))
		  `(org-level-3 ((t (,@headline ,@variable :height 1.4))))
		  `(org-level-2 ((t (,@headline ,@variable :height 1.6))))
		  `(org-level-1 ((t (,@headline ,@variable :height 1.8))))
		  `(org-document-title ((t (,@headline ,@variable :height 2.0 :underline nil))))
		  '(variable-pitch ((t (:family "IOsevka" :height 123))))
		  '(fixed-pitch ((t (:family "IOsevkaT" :height 110))))
		  '(org-block ((t (:inherit fixed-pitch))))
		  '(org-code ((t (:inherit (shadow fixed-pitch)))))
		  '(org-document-info ((t (:foreground "dark orange"))))
		  '(org-document-info-keyword ((t (:inherit (shadow fixed-pitch)))))
		  '(org-indent ((t (:inherit (org-hide fixed-pitch)))))
		  '(org-link ((t (:foreground "royal blue" :underline t))))
		  '(org-meta-line ((t (:inherit (font-lock-comment-face fixed-pitch)))))
		  '(org-property-value ((t (:inherit fixed-pitch))) t)
		  '(org-special-keyword ((t (:inherit (font-lock-comment-face fixed-pitch)))))
		  '(org-table ((t (:inherit fixed-pitch :foreground "#83a598"))))
		  '(org-tag ((t (:inherit (shadow fixed-pitch) :weight bold :height 0.8))))
		  '(org-verbatim ((t (:inherit (shadow fixed-pitch)))))
		  ))
  (add-hook 'org-mode-hook 'variable-pitch-mode)
  )


(setq org-hide-emphasis-markers t)

(use-package org-bullets
  :ensure t
  :after org
  :init
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

(defun paste-html-to-org ()
  (interactive)
  (let* (text (shell-command-to-string "xclip -o -selection c -t text/html | pandoc -f html -t org"))
    (kill-new text)
    (yank)))

(provide 'org-config)
;;; org-config.el ends here
