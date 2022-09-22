(defpackage hello-project
  (:use :cl)
  (:export :echo-hello-world)  ; 関数をエクスポートする
)
(in-package :hello-project)

(defun echo-hello-world ()
  (write-line "hello-project/src/main.lisp !")
)
