#ifndef EF_SRC_H
#define EF_SRC_H

#include <iostream>
#include <stdint.h>
#include "StdAfx.h"
using namespace std;

#define  INTMAXCOUNT   65536
#define  INTMINCOUNT   256
const double eps = 1e-200;		// Epsilon (zero value)
const double EPS = 1e-200;

typedef struct
{
   float x;
   float y;
}cl_float2;

typedef struct
{
   float x;
   float y;
   float z;
}cl_float3;

typedef struct
{
   double x;
   double y;
}cl_double2;

typedef struct
{
   int x;
   int y;
}cl_int2;

typedef struct
{
   int x;
   int y;
   int z;
}cl_int3;

typedef vector<int> vecI;
typedef vector<double> vecD;
typedef unsigned char byte;

template<typename T> inline T sqr(T x) { return x * x; }
#define ForPoints2(pnt, xS, yS, xE, yE) for (Point pnt(0, (yS)); pnt.y != (yE); pnt.y++) for (pnt.x = (xS); pnt.x != (xE); pnt.x++)

typedef struct EFRegion{

	int pixNum ;
	int freIdxNum;
	float areaW;
	cl_float2 centroid;
	cl_float2 ad2c;
	cl_float2 freIdx[INTMINCOUNT];

}EFRegion;

bool EF_getSalMap(unsigned char * pImg,float * & salimg, int * segimg,int *vote,int segnum, int x,int y, int xTotal,int yTotal,int nRow, int nCol,double sigmadist,bool isBorder =false,float minArea = 0.4);
void EF_GetRC(float *img3f, int img3fRow, int img3fCol ,int *regIdx1i, int regIdx1iRow, int regIdx1iCol, float *dst, int regNum, double sigmaDist,bool isBorder,float minArea);
const int DefaultTable[3] = {12, 12, 12};
int  EF_Quantize(float *img3f, int img3fRow, int img3fCol ,int *idx1i, float *_color3f, int * colorNum,double ratio = 0.95, const int colorNums[3] = DefaultTable);
void EF_BuildRegions(int *regIdx1iPtr, EFRegion *regs, int *colorIdx1iPtr, int regRow, int regCol, int regNum,int colorNum,float minArea = 0.0);
void EF_RegionContrast(EFRegion *regs, float * color3fv, double *regSal1d,double sigmaDist, int col, int regNum);
void EF_SmoothByHist(float *img3f, int img3fRow, int img3fCol ,float *sal1f, float delta);
void EF_SmoothByHist0209(float *sal1f, float delta,int *idxli,float * binColor3f,int * colorNums1i,int QuatizeNum,int img3fRow, int img3fCol);
void EF_SmoothSaliency(int *colorNums1i,float  *sal1f,int sal1fCol,float delta,cl_float2 *similar);
void EF_SmoothByRegion(float *sal1f, int img3fRow, int img3fCol,int *regIdxli,int regNum);
void EF_RGB2Lab(unsigned char *   src,float * dst,int row,int col,int channels);
void EF_RGB2LabFloat(float *src,float *dst,size_t dstSize,int channels = 3);
void EF_converTo(unsigned char * src,float * dst , float p,int row,int col,int channels);
void EF_RegionInit(EFRegion *p);
void EF_setTo(float * src,unsigned char * mask,int row,int col,float Value);
void EF_Normalize(double * src, float * dst,size_t dstSize,double alpha=1, double beta=0);
void EF_getGaussianKerbel(float *kernel,int kSize,float sigma);
void EF_GaussianBlur(float *src,float *dst,int rows,int cols,int channel,int kSize,float sigma);

Mat EF_GetBorderReg(Mat &idx1i, int regNum, double ratio, double thr);
//向量排序
void Vswap(cl_int2 *a, cl_int2 *b);
void bubbleSort2(cl_int2 *arraySrc, int maxlen);
void VswapFloat(cl_float2 *a, cl_float2 *b);
void bubbleSortFloat(cl_float2 *arraySrc, int offset,int maxlen);

//中间函数

#endif
