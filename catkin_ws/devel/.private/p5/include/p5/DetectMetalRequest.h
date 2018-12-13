// Generated by gencpp from file p5/DetectMetalRequest.msg
// DO NOT EDIT!


#ifndef P5_MESSAGE_DETECTMETALREQUEST_H
#define P5_MESSAGE_DETECTMETALREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace p5
{
template <class ContainerAllocator>
struct DetectMetalRequest_
{
  typedef DetectMetalRequest_<ContainerAllocator> Type;

  DetectMetalRequest_()
    : block_id(0)  {
    }
  DetectMetalRequest_(const ContainerAllocator& _alloc)
    : block_id(0)  {
  (void)_alloc;
    }



   typedef int8_t _block_id_type;
  _block_id_type block_id;





  typedef boost::shared_ptr< ::p5::DetectMetalRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::p5::DetectMetalRequest_<ContainerAllocator> const> ConstPtr;

}; // struct DetectMetalRequest_

typedef ::p5::DetectMetalRequest_<std::allocator<void> > DetectMetalRequest;

typedef boost::shared_ptr< ::p5::DetectMetalRequest > DetectMetalRequestPtr;
typedef boost::shared_ptr< ::p5::DetectMetalRequest const> DetectMetalRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::p5::DetectMetalRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::p5::DetectMetalRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::p5::DetectMetalRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::p5::DetectMetalRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::p5::DetectMetalRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::p5::DetectMetalRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::p5::DetectMetalRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::p5::DetectMetalRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::p5::DetectMetalRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d350dc340e1075c9504d73bb4f66e267";
  }

  static const char* value(const ::p5::DetectMetalRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd350dc340e1075c9ULL;
  static const uint64_t static_value2 = 0x504d73bb4f66e267ULL;
};

template<class ContainerAllocator>
struct DataType< ::p5::DetectMetalRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "p5/DetectMetalRequest";
  }

  static const char* value(const ::p5::DetectMetalRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::p5::DetectMetalRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 block_id\n\
";
  }

  static const char* value(const ::p5::DetectMetalRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::p5::DetectMetalRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.block_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DetectMetalRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::p5::DetectMetalRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::p5::DetectMetalRequest_<ContainerAllocator>& v)
  {
    s << indent << "block_id: ";
    Printer<int8_t>::stream(s, indent + "  ", v.block_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // P5_MESSAGE_DETECTMETALREQUEST_H
