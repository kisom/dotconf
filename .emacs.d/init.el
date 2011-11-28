;;----------------------------------------------------------------------------;;
;; basic .emacs file                                                          ;;
;;----------------------------------------------------------------------------;;
;; i only use emacs for OCaml, scheme and clisp, so there isn't much here.    ;;
;;                                                              - kisom       ;;
;; as time goes on, i find myself using emacs more and more... may cthulu     ;;
;; have mercy on my soul.                                       - kyle        ;;
;;----------------------------------------------------------------------------;;

;; -----------------------------------------------------------------------------
;; basic setup
;; -----------------------------------------------------------------------------
    (add-to-list 'load-path 
                 "/Users/kyle/emacs.d/site-lisp")

    (setq display-time-day-and-date 1)
    (setq display-time-24hr-format 1)
    (display-time-mode 1)

    (setq user-mail-address "coder@kyleisom.net")
    (setq explicit-shell-file-name "/bin/zsh")
    (setq column-number-mode 1)

;; This was installed by package-install.el.
;; This provides support for the package system and
;; interfacing with ELPA, the package archive.
;; Move this code earlier if you want to reference
;; packages in your .emacs.
    (when
        (load
            (expand-file-name "~/.emacs.d/elpa/package.el"))
        (package-initialize))

;; marmalade
    (require 'package)
    (setq package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))


;; -----------------------------------------------------------------------------
;; git support
;; -----------------------------------------------------------------------------
    (require 'magit)
    (require 'mediawiki)

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


    (add-to-list 'interpreter-mode-alist '("ipython" . python-mode))
    (setq py-python-command-args '("-pylab" "-colors" "LightBG"))

    (autoload 'python-pylint "python-pylint")
    (autoload 'pylint "python-pylint")

    (autoload 'python-pep8 "python-pep8")
    (autoload 'pep8 "python-pep8")


;; -----------------------------------------------------------------------------
;; colour scheme 
;; -----------------------------------------------------------------------------
    (add-to-list 'load-path "/Users/kyle/.emacs.d/site-lisp/color-theme")
    (add-to-list 'load-path 
        "/Users/kyle/src/solarized/emacs-colors-solarized")
    (require 'color-theme)
    (require 'color-theme-solarized)
    (eval-after-load "color-theme"
              '(progn
                   (color-theme-initialize)
                   (color-theme-solarized-dark)))


;; -----------------------------------------------------------------------------
;; packages to load on start
;; -----------------------------------------------------------------------------
    (load-library "mediawiki")