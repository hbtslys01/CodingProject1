// Generated by gencpp from file p5/ChooseActionResponse.msg
// DO NOT EDIT!


#ifndef P5_MESSAGE_CHOOSEACTIONRESPONSE_H
#define P5_MESSAGE_CHOOSEACTIONRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <p5/Action.h>

namespace p5
{
template <class ContainerAllocator>
struct ChooseActionResponse_
{
  typedef ChooseActionResponse_<ContainerAllocator> Type;

  ChooseActionResponse_()
    : next_action()  {
    }
  ChooseActionResponse_(const ContainerAllocator& _alloc)
    : next_action(_alloc)  {
  (void)_alloc;
    }



   typedef  ::p5::Action_<ContainerAllocator>  _next_action_type;
  _next_action_type next_action;





  typedef boost::shared_ptr< ::p5::ChooseActionResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::p5::ChooseActionResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ChooseActionResponse_

typedef ::p5::ChooseActionResponse_<std::allocator<void> > ChooseActionResponse;

typedef boost::shared_ptr< ::p5::ChooseActionResponse > ChooseActionResponsePtr;
typedef boost::shared_ptr< ::p5::ChooseActionResponse const> ChooseActionResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::p5::ChooseActionResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::p5::ChooseActionResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::p5::ChooseActionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::p5::ChooseActionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::p5::ChooseActionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::p5::ChooseActionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::p5::ChooseActionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::p5::ChooseActionResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::p5::ChooseActionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b83a3eea961ed406600286364eb49563";
  }

  static const char* value(const ::p5::ChooseActionResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb83a3eea961ed406ULL;
  static const uint64_t static_value2 = 0x600286364eb49563ULL;
};

template<class ContainerAllocator>
struct DataType< ::p5::ChooseActionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "p5/ChooseActionResponse";
  }

  static const char* value(const ::p5::ChooseActionResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::p5::ChooseActionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Action next_action\n\
\n\
\n\
================================================================================\n\
MSG: p5/Action\n\
int8 STOP = -1\n\
int8 SENSE = 0\n\
int8 MOVE1 = 1\n\
int8 MOVE2 = 2\n\
int8 MOVE3 = 3\n\
int8 MOVE4 = 4\n\
int8 MOVE5 = 5\n\
\n\
int8 name\n\
";
  }

  static const char* value(const ::p5::ChooseActionResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::p5::ChooseActionResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.next_action);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ChooseActionResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::p5::ChooseActionResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::p5::ChooseActionResponse_<ContainerAllocator>& v)
  {
    s << indent << "next_action: ";
    s << std::endl;
    Printer< ::p5::Action_<ContainerAllocator> >::stream(s, indent + "  ", v.next_action);
  }
};

} // namespace message_operations
} // namespace ros

#endif // P5_MESSAGE_CHOOSEACTIONRESPONSE_H
