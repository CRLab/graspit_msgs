/*
 * utils.cpp
 *
 *  Created on: Oct 12, 2010
 *      Author: hao
 */
#include "grasp_common/utils.h"
#include <iostream>
#include <stdio.h>

namespace grasp_common
{
std::vector<GraspMsg> extractGrasps(std::vector<double> grasps)
{

  int num_atomic_gasps = grasps.size()/13; /* quality epsilon, quality volume, 
					      translation xyz, quaternion wxyz, dof spread,f1,f2,f3*/
	std::vector<GraspMsg> graspList;
	//size of an atomic grasp
	int grasp_size = grasps.size() / num_atomic_gasps;
	double epsilon, volume;
//	std::cout << "grasp size: " << grasp_size << std::endl;
	for(int i = 0; i < num_atomic_gasps / 2; ++i)
	{
		std::vector<double> pre_grasp, final_grasp;
		// first two numbers are the qualities
		epsilon = grasps[2 * i * grasp_size];
		volume = grasps[(2 * i + 1) * grasp_size + 1];
		// following are the grasp parameters
		for(int j = 2; j < grasp_size; ++j)
		{
			pre_grasp.push_back(grasps[2 * i * grasp_size + j]);
			final_grasp.push_back(grasps[(2 * i + 1) * grasp_size + j]);
		}
		graspList.push_back(GraspMsg(pre_grasp, final_grasp, epsilon, volume));
	}
	return graspList;
}

}//namespace grasp_common
