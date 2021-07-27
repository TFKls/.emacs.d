(require 'use-package)

(use-package s
  :ensure t)

(defun box-region ($from $to)
  (interactive (if (use-region-p)
				   (list (region-beginning) (region-end))
				 (let ((bds (bounds-of-thing-at-point 'sentence)) )
				   (list nil (car bds) (cdr bds)) ) ) )
  
  (defvar strings (split-string (buffer-substring-no-properties $from $to) ("\n")))
  (defvar strings-max-len (max (mapcar 'length strings)))
  (defvar pad-max-len (apply-partially 's-center strings-max-len))

  (defun surround-pipe ($string)
	(concat "| " (pad-max-len $string) " |\n"))

  
  (save-excursion
	(delete-region $from $to)
	(goto-char $from)
	(insert (concat "+-" (s-repeat strings-max-len "-") "-+\n"))
	(insert (concat (mapcar 'surround-pipe strings))) 
	(insert (concat "+-" (s-repeat strings-max-len "-") "-+\n"))))

(provide 'utilities)
;;; utilities.el ends here
