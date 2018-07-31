/****************************************************************************
 *  Copyright (C) 2018 RoboMaster.
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of 
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program. If not, see <http://www.gnu.org/licenses/>.
 ***************************************************************************/

#ifndef MODULES_PERCEPTION_DETECTION_COLORDETECTION_NODE_H
#define MODULES_PERCEPTION_DETECTION_COLORDETECTION_NODE_H

#include <opencv2/opencv.hpp>
#include <opencv2/ml.hpp>
#include <thread>
#include <vector>
#include <mutex>
#include <condition_variable>
#include <actionlib/server/simple_action_server.h>
#include <messages/caissonDetectionAction.h>
#include <tf/transform_listener.h>

#include "common/io.h"
#include "common/log.h"
#include "common/rrts.h"
#include "common/node_state.h"
#include "common/error_code.h"
#include "common/main_interface.h"

#include "modules/perception/detection/util/cv_toolbox.h"
#include "modules/perception/detection/caisson_detection/proto/caisson_detection.pb.h"

namespace rrts{
namespace perception {
namespace detection {

using rrts::common::NodeState;
using rrts::common::ErrorInfo;

class CaissonDetectionNode : public rrts::common::RRTS {
 public:
  explicit CaissonDetectionNode(std::string name);
  ErrorInfo Init();
  void ActionCB(const messages::caissonDetectionGoal::ConstPtr &data);
  void StartThread();
  void PauseThread();
  void StopThread();
  void ExecuteLoop();

  void Pretreat(cv::Mat &src);
  void Identify(cv::Mat src,cv::Mat &tmp,cv::Point *tagPoint);

  ~CaissonDetectionNode() final;
 protected:
 private:
  cv::Mat src_;
  CVToolbox cv_toolbox_;
  std::thread caisson_detection_thread_;

  //state and error
  NodeState node_state_;
  ErrorInfo error_info_;

  bool initialized_;
  bool running_;
  std::mutex mutex_;
  std::condition_variable condition_var_;
  int camera_id_;

  int m_canny;
  int m_SML;
  int m_nGaussianBlurValue; //高斯滤波值
  float m_disThr; // 帧与帧目标距离阈值
  int m_fps;
  int m_minArea;
  int m_maxArea;

  int m_fpsCount;
  bool detected_caisson_;
  int m_caissonDistance;


  //ROS
  ros::NodeHandle nh_;
  actionlib::SimpleActionServer<messages::caissonDetectionAction> as_;
};
} //namespace detection
} //namespace perception
} //namespace rrts

#endif //MODULES_PERCEPTION_DETECTION_COLORDETECTION_NODE_H
