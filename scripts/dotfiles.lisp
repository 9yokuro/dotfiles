(require :sb-posix)

(defun create-symlink (origin link)
  (handler-case (progn (sb-posix:symlink origin link)
                       (format *error-output*
                               "~c[32mCreated~c[0m symlink '~A' -> '~A'~%"
                               #\Esc #\Esc origin link))
    (sb-posix:syscall-error (err) (format *error-output* "~A~%" err))))

(defun remove-file (path)
  (handler-case (progn (delete-file path)
                       (format *error-output*
                               "~c[32mRemoved~c[0m '~A'~%"
                               #\Esc #\Esc path))
    (file-error (err) (format *error-output* "~A~%" err))))

(defun xdg-config-home-pathname ()
  (let ((xdg-config-home (posix-getenv "XDG_CONFIG_HOME")))
    (if xdg-config-home
      (make-pathname :directory xdg-config-home)
      (merge-pathnames (make-pathname :directory '(:relative ".config"))
                       (user-homedir-pathname)))))

(defun install (name parent-dir)
  (create-symlink (truename name) (merge-pathnames name parent-dir)))

(defun uninstall (name parent-dir)
  (remove-file (merge-pathnames name parent-dir)))

(defun set-default-cursor-theme (theme-name path)
  (with-open-file (output path :direction :output :if-exists :supersede)
    (write-line "[icon theme]" output)
    (write-line (concatenate 'string "Inherits=" theme-name) output))
  (format *error-output* "~c[32mCreated~c[0m file '~A'~%" #\Esc #\Esc path))

(defun string-member (elem list)
  (if (or (null list) (string= (first list) elem))
    list
    (string-member elem (rest list))))

(defun display-help ()
  (format t "Usage: sbcl --script scripts/dotfiles.lisp [ACTION]~%")
  (format t "  -i, --install          install dotfiles~%")
  (format t "  -u, --uninstall        uninstall dotfiles~%")
  (format t "  -h, --help             display this help and exit~%"))

(defun main()
  (let* ((action (second *posix-argv*))
        (xdg-config-home (xdg-config-home-pathname))
        (home-dir (user-homedir-pathname))
        (installed-on-home-dir '(".bash_profile"
                                 ".bashrc"
                                 ".gitconfig"
                                 ".inputrc"
                                 ".vim"))
        (installed-on-xdg-config-home '("foot"
                                        "mako"
                                        "sway"
                                        "waybar"))
        (icons-dir (merge-pathnames (make-pathname :directory '(:relative ".icons" "default"))
                                    home-dir))
        (default-cursor-theme-config (merge-pathnames (make-pathname :name "index" :type "theme")
                                                       icons-dir)))
    (cond ((not (directory (make-pathname :directory '(:relative ".git"))))
           (display-help)
           (format t "Note: You must run this script from the repository root~%"))
          ((or (string-member "-h" *posix-argv*) (string-member "--help" *posix-argv*))
           (display-help))
          ((or (string= action "-i") (string= action "--install"))
           (format *error-output* "~%~c[36mCreating~c[0m symbolic links~%" #\Esc #\Esc)
           (dolist (path installed-on-home-dir)
             (install path home-dir))
           (dolist (path installed-on-xdg-config-home)
             (install path xdg-config-home))
           (format *error-output* "~%~c[36mSetting~c[0m default cursor theme~%" #\Esc #\Esc)
           (ensure-directories-exist icons-dir)
           (set-default-cursor-theme "Adwaita" default-cursor-theme-config))
          ((or (string= action "-u") (string= action "--uninstall"))
           (format *error-output* "~%~c[36mRemoving~c[0m files~%" #\Esc #\Esc)
           (dolist (path installed-on-home-dir)
             (uninstall path home-dir))
           (dolist (path installed-on-xdg-config-home)
             (uninstall path xdg-config-home))
           (remove-file default-cursor-theme-config))
          (t (display-help)))))

(main)
