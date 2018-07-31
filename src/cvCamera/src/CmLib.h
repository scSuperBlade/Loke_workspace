#pragma once
#pragma warning(disable: 4996)
#pragma warning(disable: 4995)
#pragma warning(disable: 4805)
#pragma warning(disable: 4267)


#include <assert.h>
#include <string>
//#include <xstring>
#include <map>
#include <vector>
#include <functional>
#include <algorithm>
#include <iostream>
#include <exception>
#include <cmath>
#include <time.h>
#include <set>
#include <queue>
#include <list>
#include <limits>
#include <fstream>
#include <sstream>
#include <random>
//#include <atlstr.h>
//#include <atltypes.h>
#include <omp.h>
#include <strstream>
using namespace std;

#include <opencv2/opencv.hpp>
#include <opencv2/core/core.hpp>
#include <cv.h>
#include <cxcore.h>
#include <highgui.h>
using namespace cv;

//#include <Eigen/Dense> //Eigen 3

//#ifdef _DEBUG
//#define lnkLIB(name) name "d"
//#else
//#define lnkLIB(name) name
//#endif
//
//
//#include <opencv2/opencv.hpp> 
//#define CV_VERSION_ID CVAUX_STR(CV_MAJOR_VERSION) CVAUX_STR(CV_MINOR_VERSION) CVAUX_STR(CV_SUBMINOR_VERSION)
//#define cvLIB(name) lnkLIB("opencv_" name CV_VERSION_ID)
//
//#pragma comment( lib, cvLIB("core"))
//#pragma comment( lib, cvLIB("imgproc"))
//#pragma comment( lib, cvLIB("highgui"))
//#pragma comment(lib, cvLIB("contrib"))
//using namespace cv;


// CmLib Basic coding help


// For illustration

//#include "./Illustration/CmIllustr.h"

//
//// Shape matching algorithms
//#include "./ShapMatch/CmAffine.h"
//#include "./ShapMatch/CmShapeContext.h"
//#include "./ShapMatch/CmShapePnts.h"
//#include "./ShapMatch/CmShape.h"


// Other algorithms

//#include "./OtherAlg/CmNNF.h"
//#include "./OtherAlg/CmWebImg.h"
//#include "./OtherAlg/CmMatch.h"
//#include "./OtherAlg/CmPatchMatch.h"
//#include "./OtherAlg/CmImgQuilt.h"
//
//
//////Segmentation algorithms



// Clustering algorithms

//#include "./Cluster/CmUFSet.h"


//#include "../Cholmod/CholmodInclude.h"
//#include "./Mating/AlphaMatting.h"
//#include "./Mating/CmMatingCF.h"
//
////Geometry
//#include "./Geometry/CmGeometry.h"
//#include "./Geometry/CmPolyFit.h"

// Saliency detection algorithms

//#include "./Saliency/CmGrabCutUI.h"
//
//
//// Interface and speech recognition
//#include "./Basic/CmQt.h"
//#include "./Illustration/CmMatShowGL.h"
//
//#ifdef _USE_MATLAB
//#include "./Matlab/CmMatlab.h"
//#endif // _USE_MATLAB

// CRFs
//#include "./CRF/fastmath.h"
//#include "./CRF/permutohedral.h"


#define ToDo printf("To be implemented, %d:%s\n", __LINE__, __FILE__)

extern bool dbgStop;
#define DBG_POINT if (dbgStop) printf("%d:%s\n", __LINE__, __FILE__);

//#pragma comment(lib, lnkLIB("CmLib"))
//#define CM_CODE


//_CrtSetDbgFlag(_CRTDBG_ALLOC_MEM_DF | _CRTDBG_LEAK_CHECK_DF);
//_CrtDumpMemoryLeaks();
