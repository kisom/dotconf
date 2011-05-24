;;----------------------------------------------------------------------------;;
;; basic .emacs file                                                          ;;
;;----------------------------------------------------------------------------;;
;; i only use emacs for OCaml, scheme and clisp, so there isn't much here.    ;;
;;                                                              - kyle        ;;
;;----------------------------------------------------------------------------;;

;; -----------------------------------------------------------------------------
;; tuareg-mode for OCaml support
;; -----------------------------------------------------------------------------
    (add-to-list 'auto-mode-alist '("\\.ml[iylp]?" . tuareg-mode))
    (autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code" t)
    (autoload 'camldebug "camldebug" "Run the Caml debugger" t)

;; -----------------------------------------------------------------------------
;; Git support
;; -----------------------------------------------------------------------------
    (add-to-list 'load-path "/usr/share/doc/git/contrib/emacs")
    (require 'git)
    (require 'git-blame)

;; -----------------------------------------------------------------------------
;; colour scheme 
;; -----------------------------------------------------------------------------
    (add-to-list 'load-path 
                 "/usr/share/emacs/site-lisp/emacs-goodies-el/color-theme.el")
    (add-to-list 'load-path 
                 "/home/kyle/code/altercation-solarized/emacs-colors-solarized")
    (require 'color-theme)
    (require 'color-theme-solarized)
    (eval-after-load "color-theme"
              '(progn
                   (color-theme-initialize)
                   (color-theme-solarized-dark)))

