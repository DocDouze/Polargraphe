;; Auto-generated. Do not edit!


(when (boundp 'polagraphe::Coordonee)
  (if (not (find-package "POLAGRAPHE"))
    (make-package "POLAGRAPHE"))
  (shadow 'Coordonee (find-package "POLAGRAPHE")))
(unless (find-package "POLAGRAPHE::COORDONEE")
  (make-package "POLAGRAPHE::COORDONEE"))
(unless (find-package "POLAGRAPHE::COORDONEEREQUEST")
  (make-package "POLAGRAPHE::COORDONEEREQUEST"))
(unless (find-package "POLAGRAPHE::COORDONEERESPONSE")
  (make-package "POLAGRAPHE::COORDONEERESPONSE"))

(in-package "ROS")





(defclass polagraphe::CoordoneeRequest
  :super ros::object
  :slots (_x _y ))

(defmethod polagraphe::CoordoneeRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass polagraphe::CoordoneeResponse
  :super ros::object
  :slots (_success ))

(defmethod polagraphe::CoordoneeResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass polagraphe::Coordonee
  :super ros::object
  :slots ())

(setf (get polagraphe::Coordonee :md5sum-) "5e71a6351e81d13c69a7ec3796769e8e")
(setf (get polagraphe::Coordonee :datatype-) "polagraphe/Coordonee")
(setf (get polagraphe::Coordonee :request) polagraphe::CoordoneeRequest)
(setf (get polagraphe::Coordonee :response) polagraphe::CoordoneeResponse)

(defmethod polagraphe::CoordoneeRequest
  (:response () (instance polagraphe::CoordoneeResponse :init)))

(setf (get polagraphe::CoordoneeRequest :md5sum-) "5e71a6351e81d13c69a7ec3796769e8e")
(setf (get polagraphe::CoordoneeRequest :datatype-) "polagraphe/CoordoneeRequest")
(setf (get polagraphe::CoordoneeRequest :definition-)
      "float64 x
float64 y
---
bool success
")

(setf (get polagraphe::CoordoneeResponse :md5sum-) "5e71a6351e81d13c69a7ec3796769e8e")
(setf (get polagraphe::CoordoneeResponse :datatype-) "polagraphe/CoordoneeResponse")
(setf (get polagraphe::CoordoneeResponse :definition-)
      "float64 x
float64 y
---
bool success
")



(provide :polagraphe/Coordonee "5e71a6351e81d13c69a7ec3796769e8e")


