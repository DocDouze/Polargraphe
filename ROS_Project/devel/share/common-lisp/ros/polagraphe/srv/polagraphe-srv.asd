
(cl:in-package :asdf)

(defsystem "polagraphe-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Coordonee" :depends-on ("_package_Coordonee"))
    (:file "_package_Coordonee" :depends-on ("_package"))
    (:file "Turn" :depends-on ("_package_Turn"))
    (:file "_package_Turn" :depends-on ("_package"))
  ))