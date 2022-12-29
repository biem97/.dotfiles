#!/bin/zsh

OS_DISTRO=$(lsb_release -cs)

case $OS_DISTRO in

  "focal")
    ROS_DISTRO="noetic"
    ;;

  "bionic")
    ROS_DISTRO="melodic"
    ;;

  "xenial")
    ROS_DISTRO="kinetic"
    ;;

  *)
    exit
    ;;
esac

if [ -n "$ROS_DISTRO"  ]
then
  source /opt/ros/$ROS_DISTRO/setup.zsh
fi
