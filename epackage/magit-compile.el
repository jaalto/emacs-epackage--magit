(dolist (file '("magit.el" "magit-svn.el" "magit-topgit.el"))
  (byte-compile-file file))

(provide 'magit-epkg-compile)
