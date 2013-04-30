(set-keyboard-coding-system nil)
(setq mac-option-key-is-meta t)
(setq mac-right-option-modifier nil)

(require 'mouse)
(xterm-mouse-mode t)
(defun track-mouse (e))

(load-theme 'wombat t)

(setq default-frame-alist '((font . "DejaVu Sans Mono-14")))

(setq prelude-guru nil)

;; ensime
(add-to-list 'load-path "/Users/oscarvarto/ensime_2.10.0-0.9.8.9/elisp")
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(add-to-list 'load-path "/Users/oscarvarto/GitRepos/emacs-scalaz-unicode-input-method")
(require 'scalaz-unicode-input-method)

(add-hook 'scala-mode-hook
          (lambda () (set-input-method "scalaz-unicode")))
