(require 'use-package)
(require 's)
;; (use-package s
;;  :ensure t)

(defun box-region ($from $to)
  (interactive "r")
  (let* ((strings (s-split "\n" (buffer-substring-no-properties $from $to)))
  (strings-max-len (seq-reduce #'max (mapcar 'length strings) 0)))

	(defun surround-pipe ($string)
	  (concat "| " (s-center strings-max-len $string) " |"))

  	(save-excursion
	  (delete-region $from $to)
	  (goto-char $from)
	  (insert (concat "+-" (s-repeat strings-max-len "-") "-+\n"
					  (mapconcat 'surround-pipe strings "\n")
					  "\n+-" (s-repeat strings-max-len "-") "-+")))))

(provide 'utilities)
;;; utilities.el ends here
