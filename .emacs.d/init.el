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
                 "/Users/kyle/emacs.d/site-lisp/")

    (setq display-time-day-and-date 1)
    (setq display-time-24hr-format 1)
    (display-time-mode 1)

    (setq user-mail-address "coder@kyleisom.net")
    (setq explicit-shell-file-name "/bin/zsh")
    (setq column-number-mode 1)
    (setq inhibit-startup-message t)

; ------------------------------------------------------------------------------
; from https://sites.google.com/site/steveyegge2/effective-emacs
; ------------------------------------------------------------------------------
; don't rely on meta key, and keep it to one hand
    (global-set-key "\C-c\C-e" 'execute-extended-command)

; remove scroll
    (if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
    (if (fboundp 'menu-bar-mode) (menu-bar-mode -1))


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
;; org-mode setup
;; -----------------------------------------------------------------------------
    (add-hook 'org-mode-hook 'turn-on-font-lock)

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

;; -----------------------------------------------------------------------------
;; markdown setup
;; -----------------------------------------------------------------------------
    (load (expand-file-name "~/.emacs.d/site-lisp/markdown-mode.el"))
    (require 'markdown-mode)
    (setq auto-mode-alist (cons '("^.*.md$" . markdown-mode) auto-mode-alist))
    (add-hook 'markdown-mode-hook '(auto-fill-mode))
    (add-hook 'markdown-mode-hook '(setq fill-column 76))

;; -------------------------------------------------------=----------------------
;; import other local files
;; -----------------------------------------------------------------------------
    (load (expand-file-name "~/.emacs.d/init-python.el"))

;; -----------------------------------------------------------------------------
;; slime setup
;; -----------------------------------------------------------------------------
    (add-to-list 'load-path 
		 (expand-file-name "~/src/slime/"))
    (require 'slime)
    (add-hook 'lisp-mode-hook (lambda () (slime-mode t)))
    (add-hook 'inferior-lisp-mode-hook (lambda () (inferior-slime-mode t)))
    
    ;; Optionally, specify the lisp program you are using. Default is "lisp"
    (setq inferior-lisp-program "/usr/local/bin/sbcl") 