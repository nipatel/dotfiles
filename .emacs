;; This file is part of the dotfiles project. Changes should be checked in to
;; the repository to be propagated to other computers.

;; FILE: ~/.emacs: customizations for emacs

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

;; C-cz to see the full path of the file in the current buffer and copies that
;; path to the kill ring
(defun show-file-name ()
  "Show the full path file name in the minibuffer."
  (interactive)
  (message (buffer-file-name))
  (kill-new (file-truename buffer-file-name))
)
(global-set-key "\C-cz" 'show-file-name)

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
