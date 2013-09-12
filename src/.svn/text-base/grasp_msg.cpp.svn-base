/*
 * grasp_msg.cpp
 *
 *  Created on: Oct 12, 2010
 *      Author: hao
 */

#include "grasp_common/grasp_msg.h"
#include <sstream>


namespace grasp_common
{
GraspMsg::GraspMsg(const std::vector<double> &pre_grasp, const std::vector<double> &final_grasp, double epsilon, double volume)
{
	epsilon_ = epsilon;
	volume_ = volume;
	pre_pos_.push_back(pre_grasp[0]/1000.0);
	pre_pos_.push_back(pre_grasp[1]/1000.0);
	pre_pos_.push_back(pre_grasp[2]/1000.0);
	pre_quaternion_.push_back(pre_grasp[3]);
	pre_quaternion_.push_back(pre_grasp[4]);
	pre_quaternion_.push_back(pre_grasp[5]);
	pre_quaternion_.push_back(pre_grasp[6]);
	for(size_t i = 7; i < pre_grasp.size(); ++i)
	{
		pre_dofs_.push_back(pre_grasp[i]);
	}

	final_pos_.push_back(final_grasp[0]/1000.0);
	final_pos_.push_back(final_grasp[1]/1000.0);
	final_pos_.push_back(final_grasp[2]/1000.0);
	final_quaternion_.push_back(final_grasp[3]);
	final_quaternion_.push_back(final_grasp[4]);
        final_quaternion_.push_back(final_grasp[5]);   // added by soonhac @11/10/10
	final_quaternion_.push_back(final_grasp[6]);
	for(size_t i = 7; i < final_grasp.size(); ++i)
	{
		final_dofs_.push_back(final_grasp[i]);
	}
}

GraspMsg::GraspMsg(const std::vector<double> & pre_dofs, const std::vector<double> & pre_pos,
		const std::vector<double> & pre_quaternion, const std::vector<double> & final_dofs,
		const std::vector<double> & final_pos, const std::vector<double> & final_quaternion,
		double epsilon, double volume)
{
	epsilon_ = epsilon;
	volume_ = volume;
	pre_dofs_ = pre_dofs;
	pre_pos_ = pre_pos;
	pre_quaternion_ = pre_quaternion;
	final_dofs_ = final_dofs;
	final_pos_ = final_pos;
	final_quaternion_ = final_quaternion;
}

std::string GraspMsg::toMsg()
{
	std::ostringstream msg;
	msg << "[";

	msg << epsilon_ << " ";
	msg << volume_ << " ";

	for(size_t i = 0; i < pre_pos_.size(); ++i)
	{
	  msg << pre_pos_[i] << " ";
	}

	for(size_t i = 0; i < pre_quaternion_.size(); ++i)
	{
	  msg << pre_quaternion_[i] << " ";
	}

	for(size_t i = 0; i < pre_dofs_.size(); ++i)
	{
	  msg << pre_dofs_[i] << " ";
	}

	for(size_t i = 0; i < final_pos_.size(); ++i)
	{
	  msg << final_pos_[i] << " ";
	}

	for(size_t i = 0; i < final_quaternion_.size(); ++i)
	{
	  msg << final_quaternion_[i] << " ";
	}

	for(size_t i = 0; i < final_dofs_.size(); ++i)
	{
	  msg << final_dofs_[i] << " ";
	}
	msg << "]";
	return msg.str();
}
}//namespace grasp_common
