// Generated by gencpp from file p4/FindPathRequest.msg
// DO NOT EDIT!


#ifndef P4_MESSAGE_FINDPATHREQUEST_H
#define P4_MESSAGE_FINDPATHREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>
#include <geometry_msgs/Point.h>

namespace p4
{
template <class ContainerAllocator>
struct FindPathRequest_
{
  typedef FindPathRequest_<ContainerAllocator> Type;

  FindPathRequest_()
    : start()
    , goal()
    , num_waypoints(0)  {
    }
  FindPathRequest_(const ContainerAllocator& _alloc)
    : start(_alloc)
    , goal(_alloc)
    , num_waypoints(0)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _start_type;
  _start_type start;

   typedef  ::geometry_msgs::Point_<ContainerAllocator>  _goal_type;
  _goal_type goal;

   typedef int32_t _num_waypoints_type;
  _num_waypoints_type num_waypoints;





  typedef boost::shared_ptr< ::p4::FindPathRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::p4::FindPathRequest_<ContainerAllocator> const> ConstPtr;

}; // struct FindPathRequest_

typedef ::p4::FindPathRequest_<std::allocator<void> > FindPathRequest;

typedef boost::shared_ptr< ::p4::FindPathRequest > FindPathRequestPtr;
typedef boost::shared_ptr< ::p4::FindPathRequest const> FindPathRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::p4::FindPathRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::p4::FindPathRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace p4

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'p4': ['/home/cs4750/catkin_ws/src/p4/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::p4::FindPathRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::p4::FindPathRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::p4::FindPathRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::p4::FindPathRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::p4::FindPathRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::p4::FindPathRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::p4::FindPathRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "06e76abf6f1be4024abbeb82ee4ed998";
  }

  static const char* value(const ::p4::FindPathRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x06e76abf6f1be402ULL;
  static const uint64_t static_value2 = 0x4abbeb82ee4ed998ULL;
};

template<class ContainerAllocator>
struct DataType< ::p4::FindPathRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "p4/FindPathRequest";
  }

  static const char* value(const ::p4::FindPathRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::p4::FindPathRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Point start\n\
geometry_msgs/Point goal\n\
int32 num_waypoints\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::p4::FindPathRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::p4::FindPathRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.start);
      stream.next(m.goal);
      stream.next(m.num_waypoints);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FindPathRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::p4::FindPathRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::p4::FindPathRequest_<ContainerAllocator>& v)
  {
    s << indent << "start: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.start);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
    s << indent << "num_waypoints: ";
    Printer<int32_t>::stream(s, indent + "  ", v.num_waypoints);
  }
};

} // namespace message_operations
} // namespace ros

#endif // P4_MESSAGE_FINDPATHREQUEST_H
