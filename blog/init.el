(add-to-list 'load-path "/ox-hugo")
(require 'ox-hugo)

(defun my/do-hugo ()
  (org-hugo-export-wim-to-md :all-subtrees))
