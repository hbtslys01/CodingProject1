// Generated by gencpp from file p5/SetPositionRequest.msg
// DO NOT EDIT!


#ifndef P5_MESSAGE_SETPOSITIONREQUEST_H
#define P5_MESSAGE_SETPOSITIONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>

namespace p5
{
template <class ContainerAllocator>
struct SetPositionRequest_
{
  typedef SetPositionRequest_<ContainerAllocator> Type;

  SetPositionRequest_()
    : pos()  {
    }
  SetPositionRequest_(const ContainerAllocator& _alloc)
    : pos(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _pos_type;
  _pos_type pos;





  typedef boost::shared_ptr< ::p5::SetPositionRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::p5::SetPositionRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetPositionRequest_

typedef ::p5::SetPositionRequest_<std::allocator<void> > SetPositionRequest;

typedef boost::shared_ptr< ::p5::SetPositionRequest > SetPositionRequestPtr;
typedef boost::shared_ptr< ::p5::SetPositionRequest const> SetPositionRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::p5::SetPositionRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::p5::SetPositionRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace p5

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'p5': ['/home/cs4750/catkin_ws/src/p5/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::p5::SetPositionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::p5::SetPositionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::p5::SetPositionRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::p5::SetPositionRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::p5::SetPositionRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::p5::SetPositionRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::p5::SetPositionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "adc15b7ec843fd0b7cee4d793a701b71";
  }

  static const char* value(const ::p5::SetPositionRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xadc15b7ec843fd0bULL;
  static const uint64_t static_value2 = 0x7cee4d793a701b71ULL;
};

template<class ContainerAllocator>
struct DataType< ::p5::SetPositionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "p5/SetPositionRequest";
  }

  static const char* value(const ::p5::SetPositionRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::p5::SetPositionRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Point pos\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::p5::SetPositionRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::p5::SetPositionRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pos);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetPositionRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::p5::SetPositionRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::p5::SetPositionRequest_<ContainerAllocator>& v)
  {
    s << indent << "pos: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.pos);
  }
};

} // namespace message_operations
} // namespace ros

#endif // P5_MESSAGE_SETPOSITIONREQUEST_H
