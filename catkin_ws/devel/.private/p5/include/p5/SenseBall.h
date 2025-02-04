// Generated by gencpp from file p5/SenseBall.msg
// DO NOT EDIT!


#ifndef P5_MESSAGE_SENSEBALL_H
#define P5_MESSAGE_SENSEBALL_H

#include <ros/service_traits.h>


#include <p5/SenseBallRequest.h>
#include <p5/SenseBallResponse.h>


namespace p5
{

struct SenseBall
{

typedef SenseBallRequest Request;
typedef SenseBallResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SenseBall
} // namespace p5


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::p5::SenseBall > {
  static const char* value()
  {
    return "8ce6ebce87f7bc56c55f1869e06cebba";
  }

  static const char* value(const ::p5::SenseBall&) { return value(); }
};

template<>
struct DataType< ::p5::SenseBall > {
  static const char* value()
  {
    return "p5/SenseBall";
  }

  static const char* value(const ::p5::SenseBall&) { return value(); }
};


// service_traits::MD5Sum< ::p5::SenseBallRequest> should match 
// service_traits::MD5Sum< ::p5::SenseBall > 
template<>
struct MD5Sum< ::p5::SenseBallRequest>
{
  static const char* value()
  {
    return MD5Sum< ::p5::SenseBall >::value();
  }
  static const char* value(const ::p5::SenseBallRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::p5::SenseBallRequest> should match 
// service_traits::DataType< ::p5::SenseBall > 
template<>
struct DataType< ::p5::SenseBallRequest>
{
  static const char* value()
  {
    return DataType< ::p5::SenseBall >::value();
  }
  static const char* value(const ::p5::SenseBallRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::p5::SenseBallResponse> should match 
// service_traits::MD5Sum< ::p5::SenseBall > 
template<>
struct MD5Sum< ::p5::SenseBallResponse>
{
  static const char* value()
  {
    return MD5Sum< ::p5::SenseBall >::value();
  }
  static const char* value(const ::p5::SenseBallResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::p5::SenseBallResponse> should match 
// service_traits::DataType< ::p5::SenseBall > 
template<>
struct DataType< ::p5::SenseBallResponse>
{
  static const char* value()
  {
    return DataType< ::p5::SenseBall >::value();
  }
  static const char* value(const ::p5::SenseBallResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // P5_MESSAGE_SENSEBALL_H
