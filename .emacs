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
    (require 'magit)

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

;; -----------------------------------------------------------------------------
;; org-mode
;; -----------------------------------------------------------------------------
     (add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
     (add-hook 'org-mode-hook 'turn-on-font-lock) 
     (global-set-key "\C-cl" 'org-store-link)
     (global-set-key "\C-ca" 'org-agenda)
     (global-set-key "\C-cb" 'org-iswitchb)
     (setq org-log-done 'time)
     (setq org-log-done 'note)

;; -----------------------------------------------------------------------------
;; set column mode
;; -----------------------------------------------------------------------------
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)

 '(transient-mark-mode (quote (only . t))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#002b36" 
                :foreground "#839496" :inverse-video nil :box nil 
                :strike-through nil :overline nil :underline nil :slant normal 
                :weight normal :height 120 :width normal :foundry "unknown" 
                :family "LMMono9")))))
    (setq user-mail-address "coder@kyleisom.net")
    (setq explicit-shell-file-name "/bin/zsh")
    (setq column-number-mode 1)
    (setq display-time 1)

;; -----------------------------------------------------------------------------
;; do vm setup
;; -----------------------------------------------------------------------------
     (setq vm-primary-inbox 
        "imap-ssl:imap.gmail.com:993:inbox:login:coder@kyleisom.net:*")
    (add-to-list 'auto-mode-alist '("\\.mbox$" . vm-mode))
    (setq mail-user-agent 'vm-user-agent)
    (setq vm-auto-get-new-mail 15)
