;;; python module - should be laoded from init.el

;; -----------------------------------------------------------------------------
;; python support
;; -----------------------------------------------------------------------------
    (require 'tramp)
    (require 'compile)

;    (require 'ipython)
    (require 'comint)
    (define-key comint-mode-map [(meta p)]
      'comint-previous-matching-input-from-input)
    (define-key comint-mode-map [(meta n)]
      'comint-next-matching-input-from-input)
    (define-key comint-mode-map [(control meta n)]
      'comint-next-input)
    (define-key comint-mode-map [(control meta p)]
      'comint-previous-input)

    (setq comint-completion-autolist t	;list possibilities on partial
					;completion
       comint-completion-recexact nil	;use shortest compl. if
					;characters cannot be added
       ;; how many history items are stored in comint-buffers (e.g. pyshell)
       ;; use the HISTSIZE environment variable that shells use (if avail.)
       ;; (default is 32)
       comint-input-ring-size (string-to-number (or (getenv  
    "HISTSIZE") "100")))

    (load (expand-file-name "~/.emacs.d/site-lisp/python-pylint.el"))
    (load (expand-file-name "~/.emacs.d/site-lisp/python-pep8.el"))
    (add-to-list 'interpreter-mode-alist '("ipython" . python-mode))
    (setq py-python-command-args '("-pylab" "-colors" "LightBG"))

    (require 'python-pylint)
    (require 'python-pep8)

