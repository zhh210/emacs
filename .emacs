
(setq Tex-PDF-mode t)
(load "auctex.el" nil t t)
(require 'tex-mik)
(load "preview-latex.el" nil t t)

(setq Tex-save-query nil)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(setq Tex-electric-sub-and-superscript 1)
(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(add-hook 'LaTeX-mode-hook
          (lambda ()
            (LaTeX-add-environments
              '("theorem" LaTeX-env-label)
              '("lemma" LaTeX-env-label)
              '("proof" LaTeX-env-label))))
(setq reftex-plug-into-AUCTeX t)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(preview-gs-options (quote ("-q" "-dNOPAUSE" "-DNOPLATFONTS" "-dPrinted" "-dTextAlphaBits=4" "-dGraphicsAlphaBits=4"))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

 (autoload 'matlab-mode "matlab" "Matlab Editing Mode" t)
 (add-to-list
  'auto-mode-alist
  '("\\.m$" . matlab-mode))
 (setq matlab-indent-function t)
 (setq matlab-shell-command "matlab")

(add-hook ’latex-mode-hook ’turn-on-reftex)
(add-hook ’LaTeX-mode-hook ’turn-on-reftex)
(setq reftex-plug-into-auctex t)
(setq reftex-bibpath-environment-variables
      '("~/Documents/refbib/"))