;; Put your personal user configuration in this file.

;; To require addional packages add them to 'package-selected-packages, e.g.
;; (add-to-list 'package-selected-packages 'ess)
;; will ensure that the ess package is installed the next time Emacs starts.

;; Don't remove this:
(unless (cl-every 'package-installed-p package-selected-packages)
  (package-refresh-contents)
  (package-install-selected-packages))

(set-face-attribute 'default nil :family "Monaco" :height 180)

;; Map Ctrl + Up and Ctrl + Down to scroll without moving cursor
(global-set-key (kbd "C-<up>") 'scroll-down-line)
(global-set-key (kbd "C-<down>") 'scroll-up-line)

;; from Len for copilot
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(require 'quelpa)
(require 'use-package)
(require 'quelpa-use-package)
(use-package copilot
 :quelpa (copilot :fetcher github
          :repo "zerolfx/copilot.el"
          :branch "main"
          :files ("dist" "*.el")))
(define-key copilot-mode-map (kbd "M-C-<return>") #'copilot-accept-completion)
(define-key copilot-mode-map (kbd "C-<right>") #'copilot-accept-completion-by-word)



  
