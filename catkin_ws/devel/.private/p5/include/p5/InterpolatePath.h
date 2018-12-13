// Generated by gencpp from file p5/InterpolatePath.msg
// DO NOT EDIT!


#ifndef P5_MESSAGE_INTERPOLATEPATH_H
#define P5_MESSAGE_INTERPOLATEPATH_H

#include <ros/service_traits.h>


#include <p5/InterpolatePathRequest.h>
#include <p5/InterpolatePathResponse.h>


namespace p5
{

struct InterpolatePath
{

typedef InterpolatePathRequest Request;
typedef InterpolatePathResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct InterpolatePath
} // namespace p5


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::p5::InterpolatePath > {
  static const char* value()
  {
    return "8c3e2084abc80e147089171826a07fe3";
  }

  static const char* value(const ::p5::InterpolatePath&) { return value(); }
};

template<>
struct DataType< ::p5::InterpolatePath > {
  static const char* value()
  {
    return "p5/InterpolatePath";
  }

  static const char* value(const ::p5::InterpolatePath&) { return value(); }
};


// service_traits::MD5Sum< ::p5::InterpolatePathRequest> should match 
// service_traits::MD5Sum< ::p5::InterpolatePath > 
template<>
struct MD5Sum< ::p5::InterpolatePathRequest>
{
  static const char* value()
  {
    return MD5Sum< ::p5::InterpolatePath >::value();
  }
  static const char* value(const ::p5::InterpolatePathRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::p5::InterpolatePathRequest> should match 
// service_traits::DataType< ::p5::InterpolatePath > 
template<>
struct DataType< ::p5::InterpolatePathRequest>
{
  static const char* value()
  {
    return DataType< ::p5::InterpolatePath >::value();
  }
  static const char* value(const ::p5::InterpolatePathRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::p5::InterpolatePathResponse> should match 
// service_traits::MD5Sum< ::p5::InterpolatePath > 
template<>
struct MD5Sum< ::p5::InterpolatePathResponse>
{
  static const char* value()
  {
    return MD5Sum< ::p5::InterpolatePath >::value();
  }
  static const char* value(const ::p5::InterpolatePathResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::p5::InterpolatePathResponse> should match 
// service_traits::DataType< ::p5::InterpolatePath > 
template<>
struct DataType< ::p5::InterpolatePathResponse>
{
  static const char* value()
  {
    return DataType< ::p5::InterpolatePath >::value();
  }
  static const char* value(const ::p5::InterpolatePathResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // P5_MESSAGE_INTERPOLATEPATH_H
