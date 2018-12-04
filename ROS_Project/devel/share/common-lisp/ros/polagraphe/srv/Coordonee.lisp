; Auto-generated. Do not edit!


(cl:in-package polagraphe-srv)


;//! \htmlinclude Coordonee-request.msg.html

(cl:defclass <Coordonee-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass Coordonee-request (<Coordonee-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Coordonee-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Coordonee-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name polagraphe-srv:<Coordonee-request> is deprecated: use polagraphe-srv:Coordonee-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Coordonee-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader polagraphe-srv:x-val is deprecated.  Use polagraphe-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Coordonee-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader polagraphe-srv:y-val is deprecated.  Use polagraphe-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Coordonee-request>) ostream)
  "Serializes a message object of type '<Coordonee-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Coordonee-request>) istream)
  "Deserializes a message object of type '<Coordonee-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Coordonee-request>)))
  "Returns string type for a service object of type '<Coordonee-request>"
  "polagraphe/CoordoneeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Coordonee-request)))
  "Returns string type for a service object of type 'Coordonee-request"
  "polagraphe/CoordoneeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Coordonee-request>)))
  "Returns md5sum for a message object of type '<Coordonee-request>"
  "5e71a6351e81d13c69a7ec3796769e8e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Coordonee-request)))
  "Returns md5sum for a message object of type 'Coordonee-request"
  "5e71a6351e81d13c69a7ec3796769e8e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Coordonee-request>)))
  "Returns full string definition for message of type '<Coordonee-request>"
  (cl:format cl:nil "float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Coordonee-request)))
  "Returns full string definition for message of type 'Coordonee-request"
  (cl:format cl:nil "float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Coordonee-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Coordonee-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Coordonee-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude Coordonee-response.msg.html

(cl:defclass <Coordonee-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Coordonee-response (<Coordonee-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Coordonee-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Coordonee-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name polagraphe-srv:<Coordonee-response> is deprecated: use polagraphe-srv:Coordonee-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Coordonee-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader polagraphe-srv:success-val is deprecated.  Use polagraphe-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Coordonee-response>) ostream)
  "Serializes a message object of type '<Coordonee-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Coordonee-response>) istream)
  "Deserializes a message object of type '<Coordonee-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Coordonee-response>)))
  "Returns string type for a service object of type '<Coordonee-response>"
  "polagraphe/CoordoneeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Coordonee-response)))
  "Returns string type for a service object of type 'Coordonee-response"
  "polagraphe/CoordoneeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Coordonee-response>)))
  "Returns md5sum for a message object of type '<Coordonee-response>"
  "5e71a6351e81d13c69a7ec3796769e8e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Coordonee-response)))
  "Returns md5sum for a message object of type 'Coordonee-response"
  "5e71a6351e81d13c69a7ec3796769e8e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Coordonee-response>)))
  "Returns full string definition for message of type '<Coordonee-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Coordonee-response)))
  "Returns full string definition for message of type 'Coordonee-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Coordonee-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Coordonee-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Coordonee-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Coordonee)))
  'Coordonee-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Coordonee)))
  'Coordonee-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Coordonee)))
  "Returns string type for a service object of type '<Coordonee>"
  "polagraphe/Coordonee")