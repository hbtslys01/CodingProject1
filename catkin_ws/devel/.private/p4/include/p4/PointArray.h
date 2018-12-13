// Generated by gencpp from file p4/PointArray.msg
// DO NOT EDIT!


#ifndef P4_MESSAGE_POINTARRAY_H
#define P4_MESSAGE_POINTARRAY_H


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
struct PointArray_
{
  typedef PointArray_<ContainerAllocator> Type;

  PointArray_()
    : points()  {
    }
  PointArray_(const ContainerAllocator& _alloc)
    : points(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::geometry_msgs::Point_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Point_<ContainerAllocator> >::other >  _points_type;
  _points_type points;





  typedef boost::shared_ptr< ::p4::PointArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::p4::PointArray_<ContainerAllocator> const> ConstPtr;

}; // struct PointArray_

typedef ::p4::PointArray_<std::allocator<void> > PointArray;

typedef boost::shared_ptr< ::p4::PointArray > PointArrayPtr;
typedef boost::shared_ptr< ::p4::PointArray const> PointArrayConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::p4::PointArray_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::p4::PointArray_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::p4::PointArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::p4::PointArray_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::p4::PointArray_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::p4::PointArray_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::p4::PointArray_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::p4::PointArray_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::p4::PointArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3fb3f9dacc279b964c4c8341122c34df";
  }

  static const char* value(const ::p4::PointArray_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3fb3f9dacc279b96ULL;
  static const uint64_t static_value2 = 0x4c4c8341122c34dfULL;
};

template<class ContainerAllocator>
struct DataType< ::p4::PointArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "p4/PointArray";
  }

  static const char* value(const ::p4::PointArray_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::p4::PointArray_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Point[] points\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::p4::PointArray_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::p4::PointArray_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.points);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PointArray_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::p4::PointArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::p4::PointArray_<ContainerAllocator>& v)
  {
    s << indent << "points[]" << std::endl;
    for (size_t i = 0; i < v.points.size(); ++i)
    {
      s << indent << "  points[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "    ", v.points[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // P4_MESSAGE_POINTARRAY_H
