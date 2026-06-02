---
name: Autonomous Competition Robot (QKRT)
date: 2026-03-01
tools: [ROS 2, SLAM, Navigation, Sensor Fusion, Gazebo]
image: /pics/qkrt_bot_2.png
description: >
  Autonomous sentry robot for the ARC competition with a ROS 2 navigation stack fusing camera, LiDAR, IMU, and wheel encoder data, validated in Gazebo with SLAM, planning, and obstacle avoidance.
external_url: https://github.com/qkrt-rm/qkrt-nav
---

As technical lead for the Queen's Knights Robotics Team, I guided a 14-person group developing an autonomous sentry for the ARC robotics competition. I coordinated perception, planning, and control integration while building a ROS 2 navigation system that fuses camera and LiDAR with IMU and wheel encoders for localization (EKF-based), plus SLAM, path planning, and obstacle avoidance. We validated the full autonomy stack in Gazebo before deploying on hardware, and systematically debugged sensor drift, localization errors, and control failures through repeatable tests.
