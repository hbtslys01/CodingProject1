// Generated by gencpp from file p4/GetPosition.msg
// DO NOT EDIT!


#ifndef P4_MESSAGE_GETPOSITION_H
#define P4_MESSAGE_GETPOSITION_H

#include <ros/service_traits.h>


#include <p4/GetPositionRequest.h>
#include <p4/GetPositionResponse.h>


namespace p4
{

struct GetPosition
{

typedef GetPositionRequest Request;
typedef GetPositionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GetPosition
} // namespace p4


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::p4::GetPosition > {
  static const char* value()
  {
    return "3860763bcb57a7205cf0008cf4d52a71";
  }

  static const char* value(const ::p4::GetPosition&) { return value(); }
};

template<>
struct DataType< ::p4::GetPosition > {
  static const char* value()
  {
    return "p4/GetPosition";
  }

  static const char* value(const ::p4::GetPosition&) { return value(); }
};


// service_traits::MD5Sum< ::p4::GetPositionRequest> should match 
// service_traits::MD5Sum< ::p4::GetPosition > 
template<>
struct MD5Sum< ::p4::GetPositionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::p4::GetPosition >::value();
  }
  static const char* value(const ::p4::GetPositionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::p4::GetPositionRequest> should match 
// service_traits::DataType< ::p4::GetPosition > 
template<>
struct DataType< ::p4::GetPositionRequest>
{
  static const char* value()
  {
    return DataType< ::p4::GetPosition >::value();
  }
  static const char* value(const ::p4::GetPositionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::p4::GetPositionResponse> should match 
// service_traits::MD5Sum< ::p4::GetPosition > 
template<>
struct MD5Sum< ::p4::GetPositionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::p4::GetPosition >::value();
  }
  static const char* value(const ::p4::GetPositionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::p4::GetPositionResponse> should match 
// service_traits::DataType< ::p4::GetPosition > 
template<>
struct DataType< ::p4::GetPositionResponse>
{
  static const char* value()
  {
    return DataType< ::p4::GetPosition >::value();
  }
  static const char* value(const ::p4::GetPositionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // P4_MESSAGE_GETPOSITION_H
