// Generated by gencpp from file polagraphe/Coordonee.msg
// DO NOT EDIT!


#ifndef POLAGRAPHE_MESSAGE_COORDONEE_H
#define POLAGRAPHE_MESSAGE_COORDONEE_H

#include <ros/service_traits.h>


#include <polagraphe/CoordoneeRequest.h>
#include <polagraphe/CoordoneeResponse.h>


namespace polagraphe
{

struct Coordonee
{

typedef CoordoneeRequest Request;
typedef CoordoneeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Coordonee
} // namespace polagraphe


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::polagraphe::Coordonee > {
  static const char* value()
  {
    return "5e71a6351e81d13c69a7ec3796769e8e";
  }

  static const char* value(const ::polagraphe::Coordonee&) { return value(); }
};

template<>
struct DataType< ::polagraphe::Coordonee > {
  static const char* value()
  {
    return "polagraphe/Coordonee";
  }

  static const char* value(const ::polagraphe::Coordonee&) { return value(); }
};


// service_traits::MD5Sum< ::polagraphe::CoordoneeRequest> should match 
// service_traits::MD5Sum< ::polagraphe::Coordonee > 
template<>
struct MD5Sum< ::polagraphe::CoordoneeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::polagraphe::Coordonee >::value();
  }
  static const char* value(const ::polagraphe::CoordoneeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::polagraphe::CoordoneeRequest> should match 
// service_traits::DataType< ::polagraphe::Coordonee > 
template<>
struct DataType< ::polagraphe::CoordoneeRequest>
{
  static const char* value()
  {
    return DataType< ::polagraphe::Coordonee >::value();
  }
  static const char* value(const ::polagraphe::CoordoneeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::polagraphe::CoordoneeResponse> should match 
// service_traits::MD5Sum< ::polagraphe::Coordonee > 
template<>
struct MD5Sum< ::polagraphe::CoordoneeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::polagraphe::Coordonee >::value();
  }
  static const char* value(const ::polagraphe::CoordoneeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::polagraphe::CoordoneeResponse> should match 
// service_traits::DataType< ::polagraphe::Coordonee > 
template<>
struct DataType< ::polagraphe::CoordoneeResponse>
{
  static const char* value()
  {
    return DataType< ::polagraphe::Coordonee >::value();
  }
  static const char* value(const ::polagraphe::CoordoneeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // POLAGRAPHE_MESSAGE_COORDONEE_H