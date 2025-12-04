;;; init.el -*- lexical-binding: t; -*-

(doom! :input

       :completion
       company
       vertico

       :ui
       doom
       doom-dashboard
       hl-todo
       modeline
       ophints
       (popup +defaults)
       treemacs
       vc-gutter
       vi-tilde-fringe
       workspaces

       :editor
       (evil +everywhere)
       file-templates
       fold
       snippets

       :emacs
       dired
       electric
       undo
       vc

       :term
       vterm

       :checkers
       syntax

       :tools
       (eval +overlay)
       lookup
       magit

       :os
       (:if (featurep :system 'macos) macos)

       :lang
       emacs-lisp
       markdown
       org
       sh

       :config
       (default +bindings +smartparens))
