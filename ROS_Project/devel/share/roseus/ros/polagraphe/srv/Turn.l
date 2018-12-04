;; Auto-generated. Do not edit!


(when (boundp 'polagraphe::Turn)
  (if (not (find-package "POLAGRAPHE"))
    (make-package "POLAGRAPHE"))
  (shadow 'Turn (find-package "POLAGRAPHE")))
(unless (find-package "POLAGRAPHE::TURN")
  (make-package "POLAGRAPHE::TURN"))
(unless (find-package "POLAGRAPHE::TURNREQUEST")
  (make-package "POLAGRAPHE::TURNREQUEST"))
(unless (find-package "POLAGRAPHE::TURNRESPONSE")
  (make-package "POLAGRAPHE::TURNRESPONSE"))

(in-package "ROS")





(defclass polagraphe::TurnRequest
  :super ros::object
  :slots (_Tr_L _Tr_R ))

(defmethod polagraphe::TurnRequest
  (:init
   (&key
    ((:Tr_L __Tr_L) 0.0)
    ((:Tr_R __Tr_R) 0.0)
    )
   (send-super :init)
   (setq _Tr_L (float __Tr_L))
   (setq _Tr_R (float __Tr_R))
   self)
  (:Tr_L
   (&optional __Tr_L)
   (if __Tr_L (setq _Tr_L __Tr_L)) _Tr_L)
  (:Tr_R
   (&optional __Tr_R)
   (if __Tr_R (setq _Tr_R __Tr_R)) _Tr_R)
  (:serialization-length
   ()
   (+
    ;; float64 _Tr_L
    8
    ;; float64 _Tr_R
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _Tr_L
       (sys::poke _Tr_L (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Tr_R
       (sys::poke _Tr_R (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _Tr_L
     (setq _Tr_L (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Tr_R
     (setq _Tr_R (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass polagraphe::TurnResponse
  :super ros::object
  :slots (_success ))

(defmethod polagraphe::TurnResponse
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

(defclass polagraphe::Turn
  :super ros::object
  :slots ())

(setf (get polagraphe::Turn :md5sum-) "169e3e5fa323f0942d122e1ff5c4046c")
(setf (get polagraphe::Turn :datatype-) "polagraphe/Turn")
(setf (get polagraphe::Turn :request) polagraphe::TurnRequest)
(setf (get polagraphe::Turn :response) polagraphe::TurnResponse)

(defmethod polagraphe::TurnRequest
  (:response () (instance polagraphe::TurnResponse :init)))

(setf (get polagraphe::TurnRequest :md5sum-) "169e3e5fa323f0942d122e1ff5c4046c")
(setf (get polagraphe::TurnRequest :datatype-) "polagraphe/TurnRequest")
(setf (get polagraphe::TurnRequest :definition-)
      "float64 Tr_L
float64 Tr_R
---
bool success
")

(setf (get polagraphe::TurnResponse :md5sum-) "169e3e5fa323f0942d122e1ff5c4046c")
(setf (get polagraphe::TurnResponse :datatype-) "polagraphe/TurnResponse")
(setf (get polagraphe::TurnResponse :definition-)
      "float64 Tr_L
float64 Tr_R
---
bool success
")



(provide :polagraphe/Turn "169e3e5fa323f0942d122e1ff5c4046c")


