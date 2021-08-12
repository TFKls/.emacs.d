(require 'use-package)
(setq make-backup-files nil)
(setq auto-save-default nil)
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

(set-face-attribute 'default nil
                    :family "IOsevkaT"
					:height 110
                    :weight 'normal
                    :width 'normal)

(provide 'general-config)
;;; general-config.el ends here
