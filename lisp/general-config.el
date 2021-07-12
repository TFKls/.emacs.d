(setq make-backup-files nil)
(setq auto-save-default nil)

(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

(provide 'general-config)
;;; general-config.el ends here
