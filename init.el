(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
(global-linum-mode 1)
(load-theme 'solarized-light t)
(package-initialize)

(dolist
    (hooksym '(clojure-mode-hook
               emacs-lisp-mode-hook
               js-mode-hook
               ruby-mode-hook
               ))
  (add-hook hooksym
            (lambda ()
              (local-set-key (kbd "C-m") 'newline-and-indent)
              )))

(add-hook 'js-mode-hook
          (lambda ()
            (setq js-indent-level 4)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("9d0abcc1835bfb11ba0700f4a40378bab559523ad17cfa0765fde7b810a762bb" "723d8e038750a51aa9d6f1000a6f5047f343a10291a07dfb30c8f35fa9bfe8ec" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
