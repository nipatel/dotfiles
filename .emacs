;; skip welcome splash screen
(setq inhibit-splash-screen t)

;; stop making stupid ~ backups
(setq make-backup-files nil)

;; show line numbers in the left margin
(global-linum-mode t)

;; show row and column position in bottom bar
(setq column-number-mode t)

;; auto word wrapping
(setq-default fill-column 80)
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; use shell-script-mode for my dotfiles
(add-to-list 'auto-mode-alist '("\\.exports\\'" . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.bash_aliases\\'" . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.extras\\'" . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.path\\'" . shell-script-mode))

;; support using 'a' in Dired to replace Dired buffer with selected file
(put 'dired-find-alternate-file 'disabled nil)

;; ************ stuff set by Custom ****************

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tsdh-dark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
