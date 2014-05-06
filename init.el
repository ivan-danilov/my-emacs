(setq w32-pass-apps-to-system nil
      w32-apps-modifier 'hyper)

(tool-bar-mode -1)
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq tab-width 4)
(setq indent-tabs-mode nil)
(setq inhibit-splash-screen 1)
(set-face-attribute 'default nil :height 120)
(set-fill-column 80)

(show-paren-mode t)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(require 'package)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/custom-code")

(require 'powershell-mode)

(require 'highlight-parentheses)
(add-hook 'emacs-lisp-mode-hook
          '(lambda ()
             (highlight-parentheses-mode)
             (setq autopair-handle-action-fns
                   (list 'autopair-default-handle-action
                         '(lambda (action pair pos-before)
                            (hl-paren-color-update))))))

(require 'init-auto-complete)

(require 'color-theme)
(color-theme-initialize)
(setq color-theme-is-global t)
(require 'color-theme-github)

(require 'smartparens)
(smartparens-global-mode 1)

(linum-mode 1)

(setq org-startup-folded 'nofold)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(global-set-key (kbd "C-c c") (lambda () (interactive)(find-file "~/.emacs.d/init.el")))
(global-set-key (kbd "C-c q") 'auto-fill-mode)
(global-set-key (kbd "M-`") 'other-window)

(global-set-key (kbd "H-t") 'text-mode)
(global-set-key (kbd "H-o") 'org-mode)
(global-set-key (kbd "H-l") 'lisp-mode)

