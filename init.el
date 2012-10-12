;; Directory for plugins.
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Additional ELPA repositories.
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "http://marmalade-repo.org/packages")
			 ("melpa" . "http://melpa.milkbox.net/packages/")))

;; Color theme.
(setq custom-theme-directory "~/.emacs.d/themes/")
(load-theme 'zenburn t)

;; Inhibit startup message.
(setq inhibit-startup-message t)

;; Require files to end with a newline.
(setq require-final-newline t)

;; Accept y/n instead of yes/no for interactive questions.
(fset 'yes-or-no-p 'y-or-n-p)

;; MacOSX-specific configuration
(if (string-equal system-type "darwin")
    (progn
      (setq mac-option-key-is-meta nil
            mac-command-key-is-meta t
            mac-command-modifier 'meta
            mac-option-modifier 'none)))

;; Avoid using tabs for indentation.
(setq-default indent-tabs-mode nil)

;; Highlight trailing whitespace.
;; TODO: disable for shell buffers
(setq-default show-trailing-whitespace t)

;; Avoid littering the filesystem with autosave files.
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Scrollbar on the right
(set-scroll-bar-mode 'right)  ;; default on emacs 24?

;; Show column number in mode line
(setq column-number-mode t)

;; Disable the toolbar
(tool-bar-mode -1)

;; iswitchb-mode
(iswitchb-mode 1)

;; Omit uninteresting files from dired
(require 'dired-x)
(add-to-list 'dired-omit-extensions ".hi")
(add-hook 'dired-mode-hook (lambda () (dired-omit-mode)))

;; js2-mode
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; js2-refactor
(autoload 'js2-refactor "js2-refactor" nil t)
;;(add-to-list 'auto-mode-alist '("\\.js$" . js2-refactor))

;; speedbar for Haskell
(require 'speedbar)
(speedbar-add-supported-extension ".hs")

;; Highlight the line under the cursor
(global-hl-line-mode 1)
;;(set-face-background 'hl-line "#fef8d0")  ;; use for light background

;; Highlight matching parentheses.
(show-paren-mode 1)

;; Enable autocompletion.
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/home/gintas/.emacs.d/lisp/ac-dict")
(ac-config-default)

;; Easy consecutive mark pop using C-<SPC> after C-u.
(setq-default set-mark-command-repeat-pop 1)

;; Enable autocompletion (predictive-mode)
;;(add-to-list 'load-path "/home/gintas/.emacs.d/predictive")
;;(add-to-list 'load-path "/home/gintas/.emacs.d/predictive/texinfo")
;;(add-to-list 'load-path "/home/gintas/.emacs.d/predictive/html")
;;(add-to-list 'load-path "/home/gintas/.emacs.d/predictive/latex")
;;(require 'predictive)

;; nXhtml
;; -- a bit slow to load, hence disabled by default
;;(load "~/.emacs.d/nxhtml/autostart.el")

;; expand-region
(global-set-key (kbd "C-=") 'er/expand-region)

;; Set default indentation to 2 spaces.
(setq standard-indent 2)
(setq sh-basic-offset 2)
(setq sh-indentation 2)
(setq js-indent-level 2)
(setq js2-basic-offset 2)
(setq css-indent-offset 2)

;; Set default text width to 100.
(setq-default fill-column 100)

;; --- Key customization --

(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

(global-set-key [f5] 'call-last-kbd-macro)
(global-set-key [f6] 'repeat)

(global-set-key (kbd "C-c g") 'magit-status)

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
(global-set-key [f9] 'open-emacs-config)
