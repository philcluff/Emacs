;; Default load cperl-mode rather than perl-mode
(defalias 'perl-mode 'cperl-mode)

;; Set smooth scrolling on the terminal
(setq scroll-step 1) 

;; Don't show the splash screen when you feed in a file. Do so otherwise.
(when (> (length command-line-args) 1) 
  (setq inhibit-splash-screen t)) 

;; C-Perl mode defaults to indent of 2 spaces. Put a hook in to change this to 4. 
(add-hook 'cperl-mode-hook 'n-cperl-mode-hook t)
(defun n-cperl-mode-hook ()
  (setq cperl-indent-level 4)
  )

;; Never use tabs... EVER.
(setq-default indent-tabs-mode nil)

;; Show line-number in the mode line
(line-number-mode 1)

;; Show column-number in the mode line
(column-number-mode 1)

;; Turn on Transient Mark Mode by default
(setq-default transient-mark-mode t)

;; Highlight the region in yellow.
(set-face-background 'region "blue")

;; Use 4 space indents via cperl mode
(custom-set-variables
  '(cperl-close-paren-offset -4)
  '(cperl-continued-statement-offset 4)
  '(cperl-indent-level 4)
  '(cperl-indent-parens-as-block t)
  '(cperl-tab-always-indent t)
)

;; Force the mac to insert a hash correctly when I type Alt + 3
(fset 'insertPound "#")
(global-set-key (kbd "M-3") 'insertPound)

;; I want undo on C-b.
(global-set-key (kbd "C-b") 'undo)

;; Comment Region on C-c c
(global-set-key (kbd "C-c c") 'comment-region)

;; Map other-window to C-o
(global-set-key (kbd "C-o") 'other-window)
