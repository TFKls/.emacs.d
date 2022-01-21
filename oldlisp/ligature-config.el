(require 'use-package)

(use-package ligature
  :load-path "extern/ligature"
  :config
  (ligature-set-ligatures 't '("[|" "{|" "\\/" "/\\"
							   "*>" "(*" "*)" "/="
							   ("<" (rx "<" (? "<"))) ;; << <<<
							   (">" (rx ">" (? ">"))) ;; >> >>>
							   ("<" (rx (+ ".") (? ">"))) ;; <.> <. ...
							   ("." (rx (or
										 ".." ;; ...
										 (and (* ".") ">")))) ;; .> ...
							   ("<" (rx (+ "|") (? ">"))) ;; <|> <| ...
							   ("|" (rx (or
										 "}" ;; |}
										 "]" ;; |]
										 "-" ;; |-
										 (and (* "|") ">")))) ;; |> ...
							   ("<" (rx (* "<") "=" (* (or "<" ">" "="))))
							   (">" (rx (* ">") "=" (* (or ">" "<" "="))))
							   ("=" (rx (or
										 "/=" ;; =/=
										 ":" ;; =:
										 (+ (or "=" ">" "<"))))) ;; = arrows
							   ("!" (rx (+ "="))) ;; != !== !===
							   ("<" (rx (+ "~") (? ">"))) ;; <~ <~> ...
							   ("~" (rx (* "~") (? ">"))) ;; ~> ...
							   ("<" (rx (* "<") "-" (* (or "-" "<" ">"))))
							   (">" (rx (* ">") "-" (* (or "-" ">" "<"))))
							   ("-" (rx (or
										 "|" ;; -|
										 ":" ;; -:
										 (+ (or "-" ">" "<"))))) ;; - arrows
							   ("#" (rx (+ "#"))) ;; ## ### ...
							   ("_" (rx (+ "_"))) ;; __ ___ ...
							   (":" (rx (or
										 "=" ;; :=
										 "-" ;; :-
										 "+" ;; :+
										 (+ ":")))) ;; :: ::: ...
							   ("<" (rx (or
										 ">" ;; <>
										 (and (+ "*") (? ">")) ;; <* <*>
										 (and "!-" (+ "-"))))) ;; <!-- <!---
							   ("+" (rx (or
										 ":" ;; +:
										 (+ "+")))) ;; ++ +++ ...
							   ))
  (global-ligature-mode t))

(provide 'ligature-config)

;; Annoying not defined at runtime warning. ;9
;; Local Variables:
;; flycheck-disabled-checkers: (emacs-lisp-checkdoc emacs-lisp)
;; End:
;;; ligature-config.el ends here
