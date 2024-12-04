FROM ros_desktop_full:noetic
ENV TZ=ET

RUN apt-get update && apt-get -y upgrade

RUN mkdir -p /catkin_ws/src

COPY ./ros-pkg /catkin_ws/src/ros-pkg

WORKDIR /catkin_ws/

RUN source /opt/ros/noetic/setup.bash \
 && catkin build


SHELL ["/bin/bash", "-c"]
