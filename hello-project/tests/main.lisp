(defpackage hello-project/tests/main
  (:use :cl
        :hello-project
        :rove))
(in-package :hello-project/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :hello-project)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
