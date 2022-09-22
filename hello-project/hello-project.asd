(defsystem "hello-project"
  :version "0.1.0"
  :author "Neos21"
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "hello-project/tests"))))

(defsystem "hello-project/tests"
  :author "Neos21"
  :license ""
  :depends-on ("hello-project"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for hello-project"
  :perform (test-op (op c) (symbol-call :rove :run c)))
