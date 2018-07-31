project(decision)


add_executable(test_decision_node
        test_decision/decision_node.cpp
        )
target_link_libraries(test_decision_node
        PRIVATE
        common::log
        perception::map::costmap
        ${catkin_LIBRARIES}
        )

add_executable(mode_control sc1_decision/mode_control.cpp)
target_link_libraries(mode_control ${catkin_LIBRARIES})

add_executable(buff_navi
  sc1_decision/buff_navi.cpp
  )

target_link_libraries(buff_navi
  ${catkin_LIBRARIES}
  )

add_executable(stage1
  sc1_decision/stage1.cpp
  )

target_link_libraries(stage1
  ${catkin_LIBRARIES}
  )


