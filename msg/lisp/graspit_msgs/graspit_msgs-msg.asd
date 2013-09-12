
(in-package :asdf)

(defsystem "graspit_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Grasp" :depends-on ("_package"))
    (:file "_package_Grasp" :depends-on ("_package"))
    (:file "GraspStatus" :depends-on ("_package"))
    (:file "_package_GraspStatus" :depends-on ("_package"))
    ))
