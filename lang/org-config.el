(require 'use-package)

(use-package org
  :ensure t
  :init
  )

(defun paste-html-to-org ()
  (interactive)
  (let* (text (shell-command-to-string "xclip -o -selection c -t text/html | pandoc -f html -t org"))
    (kill-new text)
    (yank)))

(provide 'org-config)
;;; org-config.el ends here
