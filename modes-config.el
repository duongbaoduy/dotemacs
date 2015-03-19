;;-*- coding: utf-8 -*-
;;; modes.el -- map major mode for file extentsion

;; for html, web, javascript, server
;; setup files ending in “.js” to open in js2-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . dbd-js-mode)) ;http://ergoemacs.org/emacs/emacs_auto-activate_a_major-mode.html

;; for editor: markdown, orgmode, notes, docs, present, spreadsheet, plantuml
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode)) ;http://ergoemacs.org/emacs/emacs_auto-activate_a_major-mode.html
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode)) ;http://ergoemacs.org/emacs/emacs_auto-activate_a_major-mode.html
(add-to-list 'auto-mode-alist '("\\.org\\'" . dbd-org-mode)) ;http://ergoemacs.org/emacs/emacs_auto-activate_a_major-mode.html
(add-to-list 'auto-mode-alist '("\\.org.txt\\'" . dbd-org-mode)) ;http://ergoemacs.org/emacs/emacs_auto-activate_a_major-mode.html
(add-to-list 'auto-mode-alist '("\\.notes\\'" . dbd-org-notes-mode)) ;http://ergoemacs.org/emacs/emacs_auto-activate_a_major-mode.html
(add-to-list 'auto-mode-alist '("\\.puml\\'" . planuml-mode)) ;http://ergoemacs.org/emacs/emacs_auto-activate_a_major-mode.html
(add-to-list 'auto-mode-alist '("\\.graphviz\\'" . graphviz-mode)) ;http://ergoemacs.org/emacs/emacs_auto-activate_a_major-mode.html
(add-to-list 'auto-mode-alist '("\\.xml\\'" . xml-mode)) ;http://ergoemacs.org/emacs/emacs_auto-activate_a_major-mode.html
(add-to-list 'auto-mode-alist '("\\.\\'" . markdown-mode)) ;http://ergoemacs.org/emacs/emacs_auto-activate_a_major-mode.html

;; for c\cc programming
(add-to-list 'auto-mode-alist '("\\.cc\\'" . dbd-cc-mode)) ;http://ergoemacs.org/emacs/emacs_auto-activate_a_major-mode.html
(add-to-list 'auto-mode-alist '("\\.cpp\\'" . dbd-cc-mode)) ;http://ergoemacs.org/emacs/emacs_auto-activate_a_major-mode.html
(add-to-list 'auto-mode-alist '("\\.c\\'" . dbd-cc-mode)) ;http://ergoemacs.org/emacs/emacs_auto-activate_a_major-mode.html
(add-to-list 'auto-mode-alist '("\\.h\\'" . dbd-cc-mode)) ;http://ergoemacs.org/emacs/emacs_auto-activate_a_major-mode.html
(add-to-list 'auto-mode-alist '("\\.hpp\\'" . dbd-cc-mode)) ;http://ergoemacs.org/emacs/emacs_auto-activate_a_major-mode.html

;; for make file
(add-to-list 'auto-mode-alist '("\\.mk\\'" . dbd-make-mode)) ;http://ergoemacs.org/emacs/emacs_auto-activate_a_major-mode.html
(add-to-list 'auto-mode-alist '("\\.mak\\'" . dbd-make-mode)) ;http://ergoemacs.org/emacs/emacs_auto-activate_a_major-mode.html
(add-to-list 'auto-mode-alist '("\\.cmake\\'" . dbd-cmake-mode)) ;http://ergoemacs.org/emacs/emacs_auto-activate_a_major-mode.html
(add-to-list 'auto-mode-alist '("CMakeLists\\.txt\\'" . dbd-cmake-mode))

;; for python programming
(add-to-list 'auto-mode-alist '("\\.py\\'" . dbd-python-mode)) ;http://ergoemacs.org/emacs/emacs_auto-activate_a_major-mode.html
(add-to-list 'auto-mode-alist '("\\.gyp\\'" . dbd-python-mode)) ;http://ergoemacs.org/emacs/emacs_auto-activate_a_major-mode.html

;; for ruby programming
(add-to-list 'auto-mode-alist '("\\.rb\\'" . dbd-ruby-mode)) ;http://ergoemacs.org/emacs/emacs_auto-activate_a_major-mode.html

;; for batch script programming
(add-to-list 'auto-mode-alist '("\\.cmd\\'" . dbd-batch-mode)) ;http://ergoemacs.org/emacs/emacs_auto-activate_a_major-mode.html
(add-to-list 'auto-mode-alist '("\\.bat\\'" . dbd-batch-mode)) ;http://ergoemacs.org/emacs/emacs_auto-activate_a_major-mode.html

;; for shell script programming
(add-to-list 'auto-mode-alist '("\\.sh\\'" . shell-mode)) ;http://ergoemacs.org/emacs/emacs_auto-activate_a_major-mode.html
(add-to-list 'auto-mode-alist '("\\.bash\\'" . shell-mode)) ;http://ergoemacs.org/emacs/emacs_auto-activate_a_major-mode.html
(add-to-list 'auto-mode-alist '("\\.zsh\\'" . shell-mode)) ;http://ergoemacs.org/emacs/emacs_auto-activate_a_major-mode.html

;; for webrtc-log
(add-to-list 'auto-mode-alist '("\\.log\\'" . dbd-log-mode))

;;============================================================
;; autoload example
;; http://stackoverflow.com/questions/4189159/emacs23-elisp-how-to-properly-autoload-this-library/4189794#4189794
;;============================================================
;;;###autoload
(progn
  (message "autoload modes.el")
  (setq dbd-modes-dir (concat (file-name-directory (or load-file-name buffer-file-name)) "modes/"))
  (add-to-list 'load-path dbd-modes-dir)

  (setq generated-autoload-file (concat dbd-modes-dir "loaddefs.el"))
  (if (file-exists-p generated-autoload-file)
      (delete-file generated-autoload-file))
  (update-directory-autoloads dbd-modes-dir)
  (load generated-autoload-file)
  (message "end autoload modes.el")
  )

;;
;;
;;
;;
;; end modes.el
;; https://www.gnu.org/software/emacs/manual/html_node/elisp/Modes.html#Modes