; Auto-generated. Do not edit!


(cl:in-package polagraphe-srv)


;//! \htmlinclude Turn-request.msg.html

(cl:defclass <Turn-request> (roslisp-msg-protocol:ros-message)
  ((Tr_L
    :reader Tr_L
    :initarg :Tr_L
    :type cl:float
    :initform 0.0)
   (Tr_R
    :reader Tr_R
    :initarg :Tr_R
    :type cl:float
    :initform 0.0))
)

(cl:defclass Turn-request (<Turn-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Turn-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Turn-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name polagraphe-srv:<Turn-request> is deprecated: use polagraphe-srv:Turn-request instead.")))

(cl:ensure-generic-function 'Tr_L-val :lambda-list '(m))
(cl:defmethod Tr_L-val ((m <Turn-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader polagraphe-srv:Tr_L-val is deprecated.  Use polagraphe-srv:Tr_L instead.")
  (Tr_L m))

(cl:ensure-generic-function 'Tr_R-val :lambda-list '(m))
(cl:defmethod Tr_R-val ((m <Turn-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader polagraphe-srv:Tr_R-val is deprecated.  Use polagraphe-srv:Tr_R instead.")
  (Tr_R m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Turn-request>) ostream)
  "Serializes a message object of type '<Turn-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Tr_L))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Tr_R))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Turn-request>) istream)
  "Deserializes a message object of type '<Turn-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Tr_L) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Tr_R) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Turn-request>)))
  "Returns string type for a service object of type '<Turn-request>"
  "polagraphe/TurnRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Turn-request)))
  "Returns string type for a service object of type 'Turn-request"
  "polagraphe/TurnRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Turn-request>)))
  "Returns md5sum for a message object of type '<Turn-request>"
  "169e3e5fa323f0942d122e1ff5c4046c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Turn-request)))
  "Returns md5sum for a message object of type 'Turn-request"
  "169e3e5fa323f0942d122e1ff5c4046c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Turn-request>)))
  "Returns full string definition for message of type '<Turn-request>"
  (cl:format cl:nil "float64 Tr_L~%float64 Tr_R~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Turn-request)))
  "Returns full string definition for message of type 'Turn-request"
  (cl:format cl:nil "float64 Tr_L~%float64 Tr_R~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Turn-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Turn-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Turn-request
    (cl:cons ':Tr_L (Tr_L msg))
    (cl:cons ':Tr_R (Tr_R msg))
))
;//! \htmlinclude Turn-response.msg.html

(cl:defclass <Turn-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Turn-response (<Turn-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Turn-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Turn-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name polagraphe-srv:<Turn-response> is deprecated: use polagraphe-srv:Turn-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Turn-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader polagraphe-srv:success-val is deprecated.  Use polagraphe-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Turn-response>) ostream)
  "Serializes a message object of type '<Turn-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Turn-response>) istream)
  "Deserializes a message object of type '<Turn-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Turn-response>)))
  "Returns string type for a service object of type '<Turn-response>"
  "polagraphe/TurnResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Turn-response)))
  "Returns string type for a service object of type 'Turn-response"
  "polagraphe/TurnResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Turn-response>)))
  "Returns md5sum for a message object of type '<Turn-response>"
  "169e3e5fa323f0942d122e1ff5c4046c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Turn-response)))
  "Returns md5sum for a message object of type 'Turn-response"
  "169e3e5fa323f0942d122e1ff5c4046c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Turn-response>)))
  "Returns full string definition for message of type '<Turn-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Turn-response)))
  "Returns full string definition for message of type 'Turn-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Turn-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Turn-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Turn-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Turn)))
  'Turn-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Turn)))
  'Turn-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Turn)))
  "Returns string type for a service object of type '<Turn>"
  "polagraphe/Turn")