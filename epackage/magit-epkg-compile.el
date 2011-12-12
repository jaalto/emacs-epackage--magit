(dolist (file
         '("50magit.el"
	   "magit-key-mode.el"
	   "magit-loaddefs.el"
	   "magit-pkg.el"
	   "magit-svn.el"
	   "magit-topgit.el"
	   "magit.el"
	   "rebase-mode.el"))
  (if (and (boundp 'verbose)
	   verbose)
      (message "Byte Compile %s" file)
    (if (file-exists-p file)
	(byte-compile-file file)
      (message "** Byte compile error. Not found: %s" file))))
