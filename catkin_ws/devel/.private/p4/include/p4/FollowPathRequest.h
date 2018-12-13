// Generated by gencpp from file p4/FollowPathRequest.msg
// DO NOT EDIT!


#ifndef P4_MESSAGE_FOLLOWPATHREQUEST_H
#define P4_MESSAGE_FOLLOWPATHREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>

namespace p4
{
template <class ContainerAllocator>
struct FollowPathRequest_
{
  typedef FollowPathRequest_<ContainerAllocator> Type;

  FollowPathRequest_()
    : path()  {
    }
  FollowPathRequest_(const ContainerAllocator& _alloc)
    : path(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::geometry_msgs::Point_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Point_<ContainerAllocator> >::other >  _path_type;
  _path_type path;





  typedef boost::shared_ptr< ::p4::FollowPathRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::p4::FollowPathRequest_<ContainerAllocator> const> ConstPtr;

}; // struct FollowPathRequest_

typedef ::p4::FollowPathRequest_<std::allocator<void> > FollowPathRequest;

typedef boost::shared_ptr< ::p4::FollowPathRequest > FollowPathRequestPtr;
typedef boost::shared_ptr< ::p4::FollowPathRequest const> FollowPathRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::p4::FollowPathRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::p4::FollowPathRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace p4

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'p4': ['/home/cs4750/catkin_ws/src/p4/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::p4::FollowPathRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::p4::FollowPathRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::p4::FollowPathRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::p4::FollowPathRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::p4::FollowPathRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::p4::FollowPathRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::p4::FollowPathRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b58b29f4d3d5430fc9d5efc2f5262786";
  }

  static const char* value(const ::p4::FollowPathRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb58b29f4d3d5430fULL;
  static const uint64_t static_value2 = 0xc9d5efc2f5262786ULL;
};

template<class ContainerAllocator>
struct DataType< ::p4::FollowPathRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "p4/FollowPathRequest";
  }

  static const char* value(const ::p4::FollowPathRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::p4::FollowPathRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Point[] path\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::p4::FollowPathRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::p4::FollowPathRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.path);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FollowPathRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::p4::FollowPathRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::p4::FollowPathRequest_<ContainerAllocator>& v)
  {
    s << indent << "path[]" << std::endl;
    for (size_t i = 0; i < v.path.size(); ++i)
    {
      s << indent << "  path[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "    ", v.path[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // P4_MESSAGE_FOLLOWPATHREQUEST_H
