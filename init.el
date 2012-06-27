;; Directory for plugins.
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Inhibit startup message.
(setq inhibit-startup-message t)

;; Require files to end with a newline.
(setq require-final-newline t)

;; Accept y/n instead of yes/no for interactive questions.
(fset 'yes-or-no-p 'y-or-n-p)

;; Avoid using tabs for indentation.
(setq-default indent-tabs-mode nil)

;; Scrollbar on the right
(set-scroll-bar-mode 'right)

;; Disable the toolbar
(tool-bar-mode -1)

;; js2-mode
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; Highlight the line under the cursor
(global-hl-line-mode 1)
(set-face-background 'hl-line "#fef8d0")

;; Highlight matching parentheses.
(show-paren-mode 1)

;; Enable autocompletion.
;;(require 'auto-complete-config)
;;(ac-config-default)

;; Enable autocompletion (predictive-mode)
;;(add-to-list 'load-path "/home/gintas/.emacs.d/predictive")
;;(add-to-list 'load-path "/home/gintas/.emacs.d/predictive/texinfo")
;;(add-to-list 'load-path "/home/gintas/.emacs.d/predictive/html")
;;(add-to-list 'load-path "/home/gintas/.emacs.d/predictive/latex")
;;(require 'predictive)

;; nXhtml
(load "~/.emacs.d/nxhtml/autostart.el")

;; Disable cursor keys
(global-unset-key (kbd "<left>"))
(global-unset-key (kbd "<right>"))
(global-unset-key (kbd "<up>"))
(global-unset-key (kbd "<down>"))
(global-unset-key (kbd "C-<left>"))
(global-unset-key (kbd "C-<right>"))
(global-unset-key (kbd "C-<up>"))
(global-unset-key (kbd "C-<down>"))
(global-unset-key (kbd "M-<left>"))
(global-unset-key (kbd "M-<right>"))
(global-unset-key (kbd "M-<up>"))
(global-unset-key (kbd "M-<down>"))

;; Helper to open this file quickly.
(defun open-emacs-config ()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "C-c c") 'open-emacs-config)
