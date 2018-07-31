#include <iostream>

#include "EF_SRC.h"
using namespace std;


static float RGBNormalizationTable[]=
{
	0,
	0.000303527,
	0.000607054,
	0.000910581,
	0.00121411,
	0.00151763,
	0.00182116,
	0.00212469,
	0.00242822,
	0.00273174,
	0.00303527,
	0.00334654,
	0.00367651,
	0.00402472,
	0.00439144,
	0.00477695,
	0.00518152,
	0.00560539,
	0.00604883,
	0.00651209,
	0.00699541,
	0.00749903,
	0.00802319,
	0.00856812,
	0.00913406,
	0.00972122,
	0.0103298,
	0.0109601,
	0.0116122,
	0.0122865,
	0.012983,
	0.0137021,
	0.0144438,
	0.0152085,
	0.0159963,
	0.0168074,
	0.017642,
	0.0185002,
	0.0193824,
	0.0202886,
	0.021219,
	0.0221739,
	0.0231534,
	0.0241576,
	0.0251869,
	0.0262412,
	0.0273209,
	0.028426,
	0.0295568,
	0.0307134,
	0.031896,
	0.0331048,
	0.0343398,
	0.0356013,
	0.0368894,
	0.0382044,
	0.0395462,
	0.0409152,
	0.0423114,
	0.043735,
	0.0451862,
	0.0466651,
	0.0481718,
	0.0497066,
	0.0512695,
	0.0528607,
	0.0544803,
	0.0561285,
	0.0578054,
	0.0595112,
	0.0612461,
	0.06301,
	0.0648033,
	0.066626,
	0.0684782,
	0.0703601,
	0.0722719,
	0.0742136,
	0.0761854,
	0.0781874,
	0.0802198,
	0.0822827,
	0.0843762,
	0.0865005,
	0.0886556,
	0.0908417,
	0.093059,
	0.0953075,
	0.0975874,
	0.0998987,
	0.102242,
	0.104616,
	0.107023,
	0.109462,
	0.111932,
	0.114435,
	0.116971,
	0.119538,
	0.122139,
	0.124772,
	0.127438,
	0.130136,
	0.132868,
	0.135633,
	0.138432,
	0.141263,
	0.144128,
	0.147027,
	0.14996,
	0.152926,
	0.155926,
	0.158961,
	0.162029,
	0.165132,
	0.168269,
	0.171441,
	0.174647,
	0.177888,
	0.181164,
	0.184475,
	0.187821,
	0.191202,
	0.194618,
	0.198069,
	0.201556,
	0.205079,
	0.208637,
	0.212231,
	0.215861,
	0.219526,
	0.223228,
	0.226966,
	0.23074,
	0.234551,
	0.238398,
	0.242281,
	0.246201,
	0.250158,
	0.254152,
	0.258183,
	0.262251,
	0.266356,
	0.270498,
	0.274677,
	0.278894,
	0.283149,
	0.287441,
	0.291771,
	0.296138,
	0.300544,
	0.304987,
	0.309469,
	0.313989,
	0.318547,
	0.323143,
	0.327778,
	0.332452,
	0.337164,
	0.341914,
	0.346704,
	0.351533,
	0.3564,
	0.361307,
	0.366253,
	0.371238,
	0.376262,
	0.381326,
	0.38643,
	0.391573,
	0.396755,
	0.401978,
	0.40724,
	0.412543,
	0.417885,
	0.423268,
	0.428691,
	0.434154,
	0.439657,
	0.445201,
	0.450786,
	0.456411,
	0.462077,
	0.467784,
	0.473532,
	0.47932,
	0.48515,
	0.491021,
	0.496933,
	0.502887,
	0.508881,
	0.514918,
	0.520996,
	0.527115,
	0.533276,
	0.53948,
	0.545725,
	0.552011,
	0.55834,
	0.564712,
	0.571125,
	0.577581,
	0.584078,
	0.590619,
	0.597202,
	0.603827,
	0.610496,
	0.617207,
	0.62396,
	0.630757,
	0.637597,
	0.64448,
	0.651406,
	0.658375,
	0.665387,
	0.672443,
	0.679543,
	0.686685,
	0.693872,
	0.701102,
	0.708376,
	0.715694,
	0.723055,
	0.730461,
	0.737911,
	0.745404,
	0.752942,
	0.760525,
	0.768151,
	0.775822,
	0.783538,
	0.791298,
	0.799103,
	0.806952,
	0.814847,
	0.822786,
	0.83077,
	0.838799,
	0.846873,
	0.854993,
	0.863157,
	0.871367,
	0.879622,
	0.887923,
	0.896269,
	0.904661,
	0.913099,
	0.921582,
	0.930111,
	0.938686,
	0.947307,
	0.955974,
	0.964686,
	0.973445,
	0.982251,
	0.991102,
	1
};


bool EF_getSalMap(unsigned char * pImg,float * & salimg, int * segimg,int *vote,int segnum, int x,int y, int xTotal,int yTotal,int nRow, int nCol,double sigmadist,bool isBorder,float minArea)
{
	int bRet = true;
	if (pImg == NULL)
	{
		bRet = false;
		return bRet;
	}


	unsigned char * pOldData;
	pOldData = pImg;
	float * pOldDst = new float[nRow * nCol * 3];
	EF_converTo(pOldData,pOldDst,1.0/255.0,nRow,nCol,3);
	

	float *dst = new float[nRow*nCol];
	memset(dst,0.0,nRow*nCol);
	EF_GetRC(pOldDst,nRow,nCol,segimg,nRow,nCol,dst,segnum,0.4,isBorder,minArea);



	//for(int i = 0 ; i<nRow * nCol ;i++)
	//{
	//	salimg[i] = dst[i];
	//}

	for (int i = 0; i < nRow;i++)
	{
		for (int j = 0; j < nCol;j++)
		{
			salimg[(i + y )* xTotal + j + x] += dst[i * nCol + j];
			vote[(i + y )* xTotal + j + x]++;
		}
	}
	

	pOldData = NULL;
	delete pOldData;

	delete []pOldDst;
	pOldDst = NULL;
	delete []dst;
	dst = NULL;
	return bRet;
}

void EF_GetRC(float *img3f, int img3fRow, int img3fCol ,int *regIdx1i, int regIdx1iRow, int regIdx1iCol,float *dst, int regNum, double sigmaDist,bool isBorder,float minArea)
{
	int *colorIdxliPtr  =new int[img3fRow * img3fCol ];

	float * sal1fPtr = new float [img3fRow * img3fCol];
	for(int i = 0;i < img3fRow * img3fCol ;i++)
	    {
			colorIdxliPtr[i] = 0;
			sal1fPtr[i] = 0.0f;
	    }

	float  color3fvPtr[256*3];
	int colorNum[256];
	for(int i = 0;i<256 * 3;i++)
		{
			color3fvPtr[i]=0.0f;
			if(i < 256)
				colorNum[i] = 0;
	    }

	int QuatizeNum = EF_Quantize(img3f,img3fRow,img3fCol,colorIdxliPtr,color3fvPtr,colorNum);

	if(QuatizeNum == 2)
	{
	
		for(int i = 0;i < img3fRow * img3fCol; i++)
		{
			if(colorIdxliPtr[i] == 1)
			{
				dst[i] = 1;
			}
			else
				dst[i] = 0;
		}

		return ;
	}

	if (QuatizeNum <= 2) // Color quantization
	{
		for(int i = 0;i < img3fRow * img3fCol; i++)
		{
			
		     dst[i] = 0;
		}
		return ;
	}


	EF_RGB2LabFloat(color3fvPtr,color3fvPtr,256);

	EFRegion  *efRegs = new EFRegion[regNum];
	for(int i = 0; i < regNum;i++)
		EF_RegionInit(efRegs+i);

	double *regSal1vPtr = new double[regNum];
	float * regSal1vFloat = new float[regNum];
	for(int i =0;i<regNum;i++)
	{
		regSal1vPtr[i] = 0;
		regSal1vFloat[i] = 0;
	}

	EF_BuildRegions(regIdx1i,efRegs,colorIdxliPtr,regIdx1iRow,regIdx1iCol,regNum,QuatizeNum,minArea);
	EF_RegionContrast(efRegs,color3fvPtr,regSal1vPtr,sigmaDist,QuatizeNum,regNum);

	EF_Normalize(regSal1vPtr,regSal1vFloat,regNum,0,1);
	
	
	
	for(int i = 0;i < img3fRow * img3fCol;i++)
	{
		sal1fPtr[i] = regSal1vFloat[regIdx1i[i]];
	}

	Mat regIdxliImg = Mat(regIdx1iRow,regIdx1iCol,CV_32S,regIdx1i);
	Mat bdReg1u;
	
	if(!isBorder)
	{
		bdReg1u = EF_GetBorderReg(regIdxliImg, regNum, 0.01, 0.4);
		unsigned char *maskPtr = bdReg1u.data;
		EF_setTo(sal1fPtr,maskPtr,img3fRow,img3fCol,0);
	}


	EF_SmoothByHist0209(sal1fPtr,0.1f,colorIdxliPtr,color3fvPtr,colorNum,QuatizeNum,img3fRow,img3fCol);

	EF_SmoothByRegion(sal1fPtr,img3fRow,img3fCol,regIdx1i,regNum);
   
	unsigned char *maskPtr = bdReg1u.data;
	if (!isBorder)
	EF_setTo(sal1fPtr,maskPtr,img3fRow,img3fCol,0);

	EF_GaussianBlur(sal1fPtr,sal1fPtr,img3fRow,img3fCol,1,3,0);
	
	for(int i = 0;i < img3fRow * img3fCol; i++)
	{
		dst[i] = sal1fPtr[i];
	}
	

	delete []colorIdxliPtr;
	colorIdxliPtr = NULL;
	
	delete []sal1fPtr;
	sal1fPtr = NULL;
	delete []efRegs;
	efRegs = NULL;
	delete []regSal1vPtr;
	regSal1vPtr = NULL;
	delete []regSal1vFloat;
	regSal1vFloat = NULL;


	return ;
}


int  EF_Quantize(float *img3f, int img3fRow, int img3fCol ,int *idx1i, float *_color3f, int * colorNum,double ratio, const int colorNums[3])
{
	float clrTmp[3] = {colorNums[0] - 0.0001f, colorNums[1] - 0.0001f, colorNums[2] - 0.0001f};
	int w[3] = {colorNums[1] * colorNums[2], colorNums[2], 1};

	if(img3f == NULL)
	{
		return 0;
	}

	int rows = img3fRow, cols = img3fCol;


	// Build color pallet
	int pallet[2000];

	for(int i = 0;i<2000;i++)
		{
			pallet[i] = 0;
	        }
	int palletSize = 0;

	for(int index = 0;index < rows * cols;index ++)
	{
		size_t imf3fOffset = index * 3;
		float B = (float)*(img3f + imf3fOffset);
		float G = (float)*(img3f + imf3fOffset + 1);
		float R = (float)*(img3f + imf3fOffset + 2);

		idx1i[index] = (int)(B*clrTmp[0])*w[0] + (int)(G*clrTmp[1])*w[1] + (int)(R*clrTmp[2]);

	
		
		if(pallet[idx1i[index]] == 0)
		{
			palletSize++;
		}

		pallet[idx1i[index]]++;
	}
	
   // Find significant colors
	int maxNum = 0;
	
	cl_int2 *numMap = new cl_int2[palletSize];
	for(int i = 0;i<palletSize;i++)
	    {
		numMap[i].x = 0;
		numMap[i].y = 0; 
	    }
	int idxNumMap = 0;
		
	for(int i = 0;i<2000;i++)
	   {
		if(pallet[i]!=0)
		   {

		      numMap[idxNumMap].x = pallet[i];  //num
		      numMap[idxNumMap].y = i; //color
		      idxNumMap++;
				
		   }
	    }
		
	 bubbleSort2(numMap,idxNumMap);

	 for(int i = 0;i<2000;i++)
		{
			
	           pallet[i] = 0;
		}

	maxNum = idxNumMap;
	    
	int maxDropNum = cvRound(rows * cols * (1-ratio));

	for (int crnt = numMap[maxNum-1].x; crnt < maxDropNum && maxNum > 1; maxNum--)
			crnt += numMap[maxNum - 2].x;
	maxNum = min(maxNum, 256); // To avoid very rarely case
	if (maxNum <= 10)
	    maxNum = min(10, idxNumMap);
		
	for (int i = 0; i < maxNum; i++)
		{
		    pallet[numMap[i].y] = i; 
				
		}
		
	cl_int3 *color3i = new cl_int3[idxNumMap];
	for(int i = 0;i<idxNumMap;i++)
		{
		    color3i[i].x = 0;
		    color3i[i].y = 0; 
		    color3i[i].z = 0; 
		}
        for(int i = 0; i < idxNumMap;i++)
		{
		    color3i[i].x = numMap[i].y / w[0];
		    color3i[i].y = numMap[i].y % w[0] / w[1];
		    color3i[i].z = numMap[i].y% w[1];
		}

	for (unsigned int i = maxNum; i < idxNumMap; i++)
		{
		    int simIdx = 0, simVal = INT_MAX;
		    for (int j = 0; j < maxNum; j++)
			{
				 int d_ij = 0;
		                 d_ij += sqr(color3i[i].x - color3i[j].x );
				 d_ij += sqr(color3i[i].y - color3i[j].y );
				 d_ij += sqr(color3i[i].z - color3i[j].z );
				
				 if(d_ij < simVal)
					simVal = d_ij, simIdx = j;
			}
			pallet[numMap[i].y] = pallet[numMap[simIdx].y];
			
		}

		
        delete []numMap;
	numMap = NULL;
	delete []color3i;
	color3i = NULL;


	for(int i = 0 ;i < rows * cols;i++)
	    {
		size_t imf3fOffset = i * 3;

		float B = (float)*(img3f + imf3fOffset);
		float G = (float)*(img3f + imf3fOffset + 1);
		float R = (float)*(img3f + imf3fOffset + 2);

		idx1i[i] = pallet[idx1i[i]];
		size_t idx1iOffset = idx1i[i] * 3;
		_color3f[idx1iOffset] += B;
		_color3f[idx1iOffset + 1] += G;
		_color3f[idx1iOffset + 2] += R;
		colorNum[idx1i[i]]++;
		
	    }
	   
	 for (int i = 0; i < maxNum; i++)
	    {
	        int offset = i * 3;
	        float k = (float)colorNum[i];
	        _color3f[offset] /= k;
	        _color3f[offset + 1] /= k;
	        _color3f[offset + 2] /= k;
			 
	    }
	 
	return maxNum;
}

Mat EF_GetBorderReg(Mat &idx1i, int regNum, double ratio, double thr)
{
	// Variance of x and y
	vecD vX(regNum), vY(regNum);
	int w = idx1i.cols, h = idx1i.rows;{
		vecD mX(regNum), mY(regNum), n(regNum); // Mean value of x and y, pixel number of region
		for (int y = 0; y < idx1i.rows; y++){
			const int *idx = idx1i.ptr<int>(y);
			for (int x = 0; x < idx1i.cols; x++, idx++)
				mX[*idx] += x, mY[*idx] += y, n[*idx]++;
		}
		for (int i = 0; i < regNum; i++)
			mX[i] /= n[i], mY[i] /= n[i];
		for (int y = 0; y < idx1i.rows; y++){
			const int *idx = idx1i.ptr<int>(y);
			for (int x = 0; x < idx1i.cols; x++, idx++)
				vX[*idx] += abs(x - mX[*idx]), vY[*idx] += abs(y - mY[*idx]);
		}
		for (int i = 0; i < regNum; i++)
			vX[i] = vX[i]/n[i] + EPS, vY[i] = vY[i]/n[i] + EPS;
	}

	// Number of border pixels in x and y border region
	vecI xbNum(regNum), ybNum(regNum); 
	int wGap = cvRound(w * ratio), hGap = cvRound(h * ratio);
	vector<Point> bPnts; { 
		ForPoints2(pnt, 0, 0, w, hGap) // Top region
			ybNum[idx1i.at<int>(pnt)]++, bPnts.push_back(pnt);
		ForPoints2(pnt, 0, h - hGap, w, h) // Bottom region
			ybNum[idx1i.at<int>(pnt)]++, bPnts.push_back(pnt);
		ForPoints2(pnt, 0, 0, wGap, h) // Left region
			xbNum[idx1i.at<int>(pnt)]++, bPnts.push_back(pnt);
		ForPoints2(pnt, w - wGap, 0, w, h)
			xbNum[idx1i.at<int>(pnt)]++, bPnts.push_back(pnt);
	}

	Mat bReg1u(idx1i.size(), CV_8U);{  // likelihood map of border region
		double xR = 1.0/(4*hGap), yR = 1.0/(4*wGap);
		vector<byte> regL(regNum); // likelihood of each region belongs to border background
		for (int i = 0; i < regNum; i++) {
			double lk = xbNum[i] * xR / vY[i] + ybNum[i] * yR / vX[i];
			regL[i] = lk/thr > 1 ? 255 : 0; //saturate_cast<byte>(255 * lk / thr);
		}

		for (int r = 0; r < h; r++)	{
			const int *idx = idx1i.ptr<int>(r);
			byte* maskData = bReg1u.ptr<byte>(r);
			for (int c = 0; c < w; c++, idx++)
				maskData[c] = regL[*idx];
		}
	}

	for (size_t i = 0; i < bPnts.size(); i++)
		bReg1u.at<byte>(bPnts[i]) = 255;
	return bReg1u;
}

void EF_BuildRegions(int *regIdx1iPtr, EFRegion *regs, int *colorIdx1iPtr, int regRow, int regCol,int regNum,int colorNum,float minArea)
{
	int rows = regRow, cols = regCol;
	double cx = cols/2.0, cy = rows / 2.0;

	int *regColorFre1i = new int[regNum * colorNum];

	for(int i = 0;i<regNum * colorNum;i++)
	{
		regColorFre1i[i]=0;
	}
	
	for(int i = 0; i <rows * cols;i++)
	{
		int  regIdx1iOffset = regIdx1iPtr[i];
		int  colorIdx1iOffset = colorIdx1iPtr[i];
		int x = i %cols;
		int y = i /cols;
	

		regs[regIdx1iOffset].pixNum ++;
		regs[regIdx1iOffset].centroid.x += x;
		regs[regIdx1iOffset].centroid.y += y;
		regs[regIdx1iOffset].ad2c.x += abs(x - cx);
		regs[regIdx1iOffset].ad2c.y += abs(y - cy);
		regColorFre1i[regIdx1iOffset * colorNum + colorIdx1iOffset]++;
	}
	
	for(int i = 0; i < regNum; i++)
	{

		regs[i].centroid.x /= regs[i].pixNum * cols;
		regs[i].centroid.y /= regs[i].pixNum * rows;
		regs[i].ad2c.x /= regs[i].pixNum * cols;
		regs[i].ad2c.y /= regs[i].pixNum * rows;
		regs[i].areaW = regs[i].pixNum / minArea;
		regs[i].areaW = regs[i].areaW > 1.0?1.0:regs[i].areaW;
		int freIdxNum = 0;
		for(int j = 0; j < colorNum;j++)
		{
			float colorFre = (float)regColorFre1i[i*colorNum + j];
			float fre = colorFre / (float) regs[i].pixNum;
			if(colorFre>eps)
			{
				regs[i].freIdx[freIdxNum].x = fre;
				regs[i].freIdx[freIdxNum].y = j;
				freIdxNum++;
			}
						
		}

		regs[i].freIdxNum = freIdxNum;
	}
	
	delete []regColorFre1i;
	regColorFre1i = NULL;
}

void EF_RegionContrast(EFRegion *regs, float * color3fv, double *regSal1d,double sigmaDist, int col, int regNum)
{
	float  *cDistCache1f = new float[col*col];

	for(int i = 0; i < col * col;i++)
		cDistCache1f[i] = 0.0f;

	for(int i = 0; i < col;i++)
	{
		cl_float3 pColorI ;
		int iOffset = i * 3;
		pColorI.x = color3fv[iOffset];
		pColorI.y = color3fv[iOffset + 1];
		pColorI.z = color3fv[iOffset + 2];

		for(int j = i + 1; j < col;j++)
		{
			
            cl_float3 pColorJ;
			int jOffset = j * 3;
			pColorJ.x = color3fv[jOffset];
			pColorJ.y = color3fv[jOffset + 1];
			pColorJ.z = color3fv[jOffset + 2];

			float sum = 0.0;
			sum += sqr(pColorI.x - pColorJ.x);
			sum += sqr(pColorI.y - pColorJ.y);
			sum += sqr(pColorI.z - pColorJ.z);
            sum = sqrt(sum);

			cDistCache1f[i * col + j] = cDistCache1f[j * col + i] = sum;

		}
	}
	
	double * rDistCache1d = new double[regNum * regNum];

	for(int i = 0; i < regNum * regNum;i++)
		rDistCache1d[i] = 0;

	for(int i = 0;i < regNum; i++)
	{
		cl_double2 rc;
		rc.x = regs[i].centroid.x;
		rc.y = regs[i].centroid.y;

 
		for(int j = 0; j < regNum ; j++)
		{
			
			if(i < j)
			{

				double dd = 0;
				for (size_t m = 0; m < regs[i].freIdxNum; m++)
				{
					for(size_t n = 0; n < regs[j].freIdxNum; n++)
					{

						int iOffset = (int)regs[i].freIdx[m].y;
						int yOffset = (int)regs[j].freIdx[n].y;

						dd += cDistCache1f[iOffset * col + yOffset] * regs[i].freIdx[m].x * regs[j].freIdx[n].x;

					}
				}
					
				double sum = 0;
				sum = sqr(rc.x - regs[j].centroid.x) + sqr(rc.y - regs[j].centroid.y);
				sum /= sigmaDist;
				sum = -sum;

				rDistCache1d[j * regNum + i] = rDistCache1d[i * regNum + j] =dd * exp(sum);


			}

			
			//regSal1d[i] +=  regs[i].areaW * rDistCache1d[i * regNum + j];

			regSal1d[i] += regs[i].pixNum * rDistCache1d[i * regNum + j];
		}

		regSal1d[i] *= exp(-9.0 * (sqr(regs[i].ad2c.x) + sqr(regs[i].ad2c.y)));
	}
	delete []cDistCache1f;
	cDistCache1f = NULL;
	delete []rDistCache1d;
	rDistCache1d = NULL;
	
}

void EF_SmoothByHist(float *img3f, int img3fRow, int img3fCol ,float *sal1f, float delta)
{
	int *idxli  =new int[img3fRow * img3fCol ];

	for(int i = 0;i < img3fRow * img3fCol ;i++)
	{
		idxli[i] = 0;
	}

	float  binColor3f[256*3];
	int colorNums1i[256];
	double _colorSal[256] ;
	float  _colorSalFloat[256];

	for(int i = 0;i<256 * 3;i++)
	{
		binColor3f[i] = 0.0f;

		if(i < 256)
			{
				colorNums1i[i] = 0;
				_colorSal[i] = 0.0;
				_colorSalFloat[i] = 0.0f;
		    }
	}

	int binN = EF_Quantize(img3f,img3fRow,img3fCol,idxli,binColor3f,colorNums1i);
	
	cl_float2 *similar = new cl_float2[binN * binN];

	for(int i = 0 ; i < binN;i++)
	{
		
		for(int j = 0 ; j < binN;j++)
		{
			similar[i*binN  + j].x = 0.0;
			similar[i*binN  + j].y = 0.0;
		}
	}
	int n = max(cvRound(binN * delta), 2);
	/**/
	int rows = img3fRow, cols = img3fCol;
	{
		for(int i = 0;i < rows * cols;i++)
		{
			_colorSal[idxli[i]] += sal1f[i];
		   
		}

		for(int i = 0;i < binN;i++)
			_colorSal[i] /= colorNums1i[i];

		EF_Normalize(_colorSal,_colorSalFloat,binN,0,1);
		
	}

        EF_RGB2LabFloat(binColor3f,binColor3f,256,3);
	
	
	for(int i = 0; i < binN;i++)
	{
		int iOffset = i * binN;
		similar[iOffset].x = 0.0;
		similar[iOffset].y = i;
		int ith = iOffset;
		int iColorOffset = i * 3;
		
		for(int j = 0; j < binN;j++)
		{
			if(i != j)
			{
				
				int jColorOffset = j * 3;
				ith++;
				int similarOffset = ith;
				float sum = 0.0f;

				sum += sqr(binColor3f[iColorOffset] - binColor3f[jColorOffset]);
				sum += sqr(binColor3f[iColorOffset + 1] - binColor3f[jColorOffset + 1]);
				sum += sqr(binColor3f[iColorOffset + 2] - binColor3f[jColorOffset + 2]);
                                sum = sqrt(sum);

				similar[similarOffset].x = sum;
				similar[similarOffset].y = j;
              
				
			}
		}
		bubbleSortFloat(similar,iOffset,binN);
	}
	



	EF_SmoothSaliency(colorNums1i,_colorSalFloat,binN,delta,similar);

	for(int i = 0; i < rows * cols;i++)
	{
		sal1f[i] = _colorSalFloat[idxli[i]];
	}
	
	delete []idxli;
	idxli = NULL;
	delete []similar;
	similar = NULL;
	
}

void EF_SmoothByHist0209(float *sal1f, float delta,int *idxli,float * binColor3f,int * colorNums1i,int QuatizeNum,int img3fRow, int img3fCol)
{
	
	double _colorSal[256] ;
	float  _colorSalFloat[256];

	for(int i = 0;i<256;i++)
	{
		_colorSal[i] = 0.0;
	    _colorSalFloat[i] = 0.0f;
	}

	int binN = QuatizeNum;

	cl_float2 *similar = new cl_float2[binN * binN];

	for(int i = 0 ; i < binN;i++)
	{

		for(int j = 0 ; j < binN;j++)
		{
			similar[i*binN  + j].x = 0.0;
			similar[i*binN  + j].y = 0.0;
		}
	}
	//int n = max(cvRound(binN * delta), 2);

	int rows = img3fRow, cols = img3fCol;
	{
		for(int i = 0;i < rows * cols;i++)
		{
			_colorSal[idxli[i]] += sal1f[i];
		}

		for(int i = 0;i < binN;i++)
			_colorSal[i] /= colorNums1i[i];

		EF_Normalize(_colorSal,_colorSalFloat,binN,0,1);

	}

	

	for(int i = 0; i < binN;i++)
	{
		int iOffset = i * binN;
		similar[iOffset].x = 0.0;
		similar[iOffset].y = i;
		int ith = iOffset;
		int iColorOffset = i * 3;

		for(int j = 0; j < binN;j++)
		{
			if(i != j)
			{

				int jColorOffset = j * 3;
				ith++;
				int similarOffset = ith;
				float sum = 0.0f;

				sum += sqr(binColor3f[iColorOffset] - binColor3f[jColorOffset]);
				sum += sqr(binColor3f[iColorOffset + 1] - binColor3f[jColorOffset + 1]);
				sum += sqr(binColor3f[iColorOffset + 2] - binColor3f[jColorOffset + 2]);
				sum = sqrt(sum);

				similar[similarOffset].x = sum;
				similar[similarOffset].y = j;


			}
		}
		bubbleSortFloat(similar,iOffset,binN);
	}


	EF_SmoothSaliency(colorNums1i,_colorSalFloat,binN,delta,similar);

	for(int i = 0; i < rows * cols;i++)
	{
		sal1f[i] = _colorSalFloat[idxli[i]];
	}
	
	delete []similar;
	similar = NULL;
}

void EF_SmoothSaliency(int *colorNums1i,float  *sal1f,int sal1fCol,float delta,cl_float2 *similar)
{
	if(sal1fCol < 2)
		return;
	
	int binN = sal1fCol;
	int n = max(cvRound(binN * delta), 2);

    double *newSal = new double[binN];
	double *dist = new double[n];
	double *val = new double[n];
	double *w = new double[n];
	
	for(int i = 0;i < binN;i++)
		{
			newSal[i] = 0;
	    }

	for(int i = 0;i < n;i++)
	{
		dist[i] = 0;
		val[i] = 0;
		w[i] = 0;
	}

	
	for(int i = 0; i < binN; i++)
	{
		double totalDist = 0, totoalWeight = 0;
		int iOffset = i * binN;
		
		for(int j = 0; j < n;j++)
		{
			int ithIdx = (int)similar[iOffset + j].y;
			dist[j] = (double)similar[iOffset + j].x;
			val[j] = sal1f[ithIdx];
			w[j] = colorNums1i[ithIdx];
			totalDist += dist[j];
			totoalWeight += w[j];
		
		}

		double valCrnt = 0;
		for(int j = 0; j < n;j++)
			valCrnt += val[j] * (totalDist - dist[j]) * w[j];
		newSal[i] = valCrnt / (totalDist * totoalWeight);
     }

	 EF_Normalize(newSal,sal1f,binN,0,1);

	 delete []newSal;
	 newSal = NULL;
	 delete []dist;
	 dist = NULL;
	 delete []val;
	 val = NULL;
	 delete []w;
	 w = NULL;
}

void EF_SmoothByRegion(float *sal1f, int img3fRow, int img3fCol,int *regIdxli,int regNum)
{
	cl_double2 *saliecy = new cl_double2[regNum];
	float *saliecyFloat = new float[regNum];
	int *counter = new int[regNum];
	for(int i =0;i < regNum;i++)
	  {
		   saliecy[i].x = 0;
		   saliecy[i].y = 0;
		   saliecyFloat[i] = 0;
		   counter[i] = 0;
	   }


	for(int i = 0;i < img3fRow * img3fCol;i++)
		{
			int offset = regIdxli[i];
			saliecy[offset].x += sal1f[i];
			counter[offset]++;
		}

	

	for(int i = 0;i < regNum;i++)
	{
			saliecy[i].x /= counter[i];
			saliecy[i].y = 1;
	}

	/*\B1\EA׼\BB\AF*/
	double saliecyMax = 0.0;
	double saliecyMin = 65535;

	for(int i = 0;i < regNum;i++)
	{
		if(saliecy[i].y == 1)
		{
			if(saliecy[i].x >= saliecyMax)
				saliecyMax = saliecy[i].x;
			if(saliecy[i].x < saliecyMin)
				saliecyMin = saliecy[i].x;
		}
		
	}

	double srcDiff = saliecyMax - saliecyMin;
	for(int i = 0;i < regNum ;i++)
	{
		if(saliecy[i].y == 1)
		   saliecyFloat[i] = ((float)(saliecy[i].x - saliecyMin) / (float)srcDiff );
	}

	for(int i = 0;i < img3fRow * img3fCol;i++)
	{
		int offset = regIdxli[i];
		sal1f[i] = saliecyFloat[offset];
	}

	delete []saliecy;
	saliecy = NULL;
	delete []saliecyFloat;
	saliecyFloat = NULL;
	delete []counter;
	counter = NULL;
}

void EF_Normalize(double * src, float * dst,size_t dstSize,double alpha, double beta)
{
	double srcMax = 0.0;
	double srcMin = 65535;

	double b = max(alpha,beta);
	double a = min(alpha,beta);

	for(int i = 0;i < dstSize; i++)
	{
		if(src[i] >= srcMax)
			srcMax = src[i];
		if(src[i] < srcMin)
			srcMin = src[i];
	}


	double abDiff = b - a;
	double srcDiff = srcMax - srcMin;
	for(int i = 0;i < dstSize ;i++)
	{
		dst[i] = ((float)(src[i] - srcMin) * (float)abDiff / (float)srcDiff + a);
		
	}


}


void EF_RGB2Lab(unsigned char *   src,float * dst,int row,int col,int channels)
{
	float BGR[] ={0.0,0.0,0.0};
	for(int i=0;i<row * col;i++)
	{
		for(int j = 0;j<channels;j++)
		{
			BGR[j] = RGBNormalizationTable[src[i*channels+j]];
		}

		float X=0.412453*BGR[2]+0.357580*BGR[1]+0.180423*BGR[0];
		float Y=0.212671*BGR[2]+0.715160*BGR[1]+0.072169*BGR[0];
		float Z=0.019334*BGR[2]+0.119193*BGR[1]+0.950227*BGR[0];

		X/=0.95047;
		Y/=1.0;
		Z/=1.08883;

		float FX = X > 0.008856f ? pow(X,1.0f/3.0f) : (7.787f * X +0.137931f);
		float FY = Y > 0.008856f ? pow(Y,1.0f/3.0f) : (7.787f * Y +0.137931f);
		float FZ = Z > 0.008856f ? pow(Z,1.0f/3.0f) : (7.787f * Z +0.137931f);
		dst[i*channels] = Y > 0.008856f ? (116.0f * FY - 16.0f) : (903.3f * Y);
		dst[i*channels+1] = 500.f * (FX - FY);
		dst[i*channels+2] = 200.f * (FY - FZ);
	}
}
void EF_converTo(unsigned char * src,float * dst , float p,int row,int col,int channels)
{
	

	for(int i = 0;i<row * col * channels;i++)
	{
		if(p == 1.0/255.0)
			dst[i] = RGBNormalizationTable[src[i]];
		else
		{
			dst[i] = (float)src[i] * p;
			if(dst[i]>255.0)
				dst[i]=255.0;
		}
	    
	}
}

void EF_RegionInit(EFRegion *p)
{
	p->pixNum = 0;
	p->centroid.x = 0.0;
	p->centroid.y = 0.0;
	p->ad2c.x = 0.0;
	p->ad2c.y = 0.0;
	p->areaW = 0.0f;

	for(int i = 0; i < INTMINCOUNT;i++)
	{
		p->freIdx[i].x = 0.0;
		p->freIdx[i].y = 0.0;
	}

	p->freIdxNum = 0;
}

void EF_setTo(float * src,unsigned char * mask,int row,int col,float Value)
{
	for(int i = 0; i < row * col; i++)
	{
		if(mask[i] > 0)
			src[i] = Value;
	}
}
void EF_getGaussianKerbel(float *kernel,int kSize,float sigma)
{
	if(sigma <=0)
	   sigma = 0.3*((kSize-1)*0.5 - 1) + 0.8;

	float sum = 0;
	int center = (kSize - 1)/2;
	//sigma = 2*sigma*sigma;
	 double scale2X = -0.5/(sigma*sigma);
	for(int i = 0;i < kSize;i++)
	{
		float x=(i-center);
		float fx= exp(scale2X*x*x);
		sum +=fx;
		kernel[i] = fx;

	}
	/*kernel[0] = 0.25f;
	kernel[1] = 0.5f;
	kernel[2] = 0.25f;*/
	for(int i = 0;i < kSize;i++)
	{
		kernel[i] /= sum;

	}
}

void EF_GaussianBlur(float *src,float *dst,int rows,int cols,int channel,int kSize,float sigma)
{
	float *kernel = new float[kSize];

	//EF_getGaussianKerbel(kernel,kSize,sigma);
	kernel[0] = 0.25f;
	kernel[1] = 0.5f;
	kernel[2] = 0.25f;

	float *temp = new float[rows*cols*channel];
	int center = kSize /2;
	int r,c,cc,rr;
	float sum;
	float dot[3];

	for(r=0;r<rows;r++)
	{
		for( c=0;c<cols;c++)
		{
			
			dot[0]=0.0;
			dot[1]=0.0;
			dot[2]=0.0;
			sum = 0.0;
			for( cc=(-center);cc<=center;cc++)
			{
				if((((c+cc)*channel) >= 0) && (((c+cc)*channel) < cols * channel))
				{
					if(channel == 1)
					{
						dot[0] += src[r*cols*channel+(c+cc)*channel] * kernel[center+cc];
						sum += kernel[center+cc];
					}
					else if(channel == 3)
					{
						dot[0] += src[r*cols*channel+(c+cc)*channel] * kernel[center+cc];
						dot[1] += src[r*cols*channel+(c+cc)*channel+1] * kernel[center+cc];
						dot[2] += src[r*cols*channel+(c+cc)*channel+2] * kernel[center+cc];
						sum += kernel[center+cc];
					}
					
					
				}
			}

			if(channel == 1)
			{
			   temp[r*cols*channel+c*channel] = dot[0]/sum;
			}
			else if(channel == 3)
			{
				temp[r*cols*channel+c*channel] = dot[0]/sum;
				temp[r*cols*channel+c*channel+1] = dot[1]/sum;
				temp[r*cols*channel+c*channel+2] = dot[2]/sum;
			}
			

		}
	}


	for(c=0;c<cols;c++)
	{
		for(r=0;r<rows;r++)
		{

			dot[0]=0.0;
			dot[1]=0.0;
			dot[2]=0.0;
			sum = 0.0;

			for(rr=(-center);rr<=center;rr++)
			{
				if(((r+rr)*channel >= 0) && ((r+rr)*channel < rows*channel))
				{
					if(channel == 1)
					{
						dot[0] += temp[(r+rr)*cols*channel+c*channel] * kernel[center+rr];
						sum += kernel[center+rr];
					}
					else if(channel ==3)
					{
						dot[0] += temp[(r+rr)*cols*channel+c*channel] * kernel[center+rr];
						dot[1] += temp[(r+rr)*cols*channel+c*channel+1] * kernel[center+rr];
						dot[2] += temp[(r+rr)*cols*channel+c*channel+2] * kernel[center+rr];
						sum += kernel[center+rr];
					}
					
					
				}
			}
	        
			if(channel == 1)
			{
				dst[r*cols*channel+c*channel] = dot[0]/sum;
			}
			else if(channel == 3)
			{
				dst[r*cols*channel+c*channel] = dot[0]/sum;
				dst[r*cols*channel+c*channel+1] = dot[1]/sum;
				dst[r*cols*channel+c*channel+2] = dot[2]/sum;
			}
			

		}
	}
	delete	[]temp;
	temp = NULL;
	delete	[]kernel;
	kernel = NULL;
}



inline float gamma(float x)
{return x>0.04045?pow((x+0.055f)/1.055f,2.4f):x/12.92;}
const float param_13 = 1.0f / 3.0f;  
const float param_16116 = 16.0f / 116.0f; 
void EF_RGB2LabFloat(float *src,float *dst,size_t dstSize,int channels)
{
	float BGR[] ={0.0,0.0,0.0};
	for(int i=0;i<dstSize;i++)
	{

		size_t offset = i *channels;
		for(int j = 0;j<channels;j++)
		{
			BGR[j] = gamma(src[offset + j]);
			//BGR[j] = src[offset + j];
		}

		float X=0.412453f*BGR[2]+0.357580f*BGR[1]+0.180423f*BGR[0];
		float Y=0.212671f*BGR[2]+0.715160f*BGR[1]+0.072169f*BGR[0];
		float Z=0.019334f*BGR[2]+0.119193f*BGR[1]+0.950227f*BGR[0];

		X/=0.950456f;
		Y/=1.0f;
		Z/=1.088754f;

		float FX = X > 0.008856f ? pow(X,param_13) : (7.787f * X +param_16116);
		float FY = Y > 0.008856f ? pow(Y,param_13) : (7.787f * Y +param_16116);
		float FZ = Z > 0.008856f ? pow(Z,param_13) : (7.787f * Z +param_16116);
		dst[offset] = Y > 0.008856f ? (116.0f * FY - 16.0f) : (903.3f * Y);
		dst[offset+1] = 500.f * (FX - FY);
		dst[offset+2] = 200.f * (FY - FZ);
	}
}

void Vswap(cl_int2 *a, cl_int2 *b)
{
	cl_int2 temp;  

	temp.x = a->x;
	temp.y = a->y;
	a->x = b->x;
	a->y = b->y;
	b->x = temp.x;  
	b->y = temp.y;
   
}

void bubbleSort2(cl_int2 *arraySrc, int maxlen)
{
	int i,j;
	int flag = 1;
	for(i=0;i<maxlen && flag;i++)
	{
		flag = 0;
		for(j=maxlen-2;j>=i;j--)
		{
			if(arraySrc[j].x < arraySrc[j+1].x || ((arraySrc[j].x == arraySrc[j+1].x) && (arraySrc[j].y < arraySrc[j+1].y)))
			{
				Vswap(&arraySrc[j], &arraySrc[j+1]);  // \BD\BB\BB\BB\C1\BD\B8\F6\CA\FD  
				flag = 1;
			}
		}
	}
}

void VswapFloat(cl_float2 *a, cl_float2 *b)
{
	cl_float2 temp;  

	temp.x = a->x;
	temp.y = a->y;
	a->x = b->x;
	a->y = b->y;
	b->x = temp.x;  
	b->y = temp.y;

}
void bubbleSortFloat(cl_float2 *arraySrc, int offset,int maxlen)
{
	int i,j;
	int flag = 1;
	for(i=0;i<maxlen && flag;i++)
	{
		flag = 0;
		for(j=maxlen-2;j>=i;j--)
		{
			if(arraySrc[j + offset].x > arraySrc[j+1+ offset].x || ((arraySrc[j+ offset].x == arraySrc[j+1+ offset].x) && (arraySrc[j+ offset].y > arraySrc[j+1+ offset].y)))
			{
				VswapFloat(&arraySrc[j+ offset], &arraySrc[j+ offset+1]);  // \BD\BB\BB\BB\C1\BD\B8\F6\CA\FD  
				flag = 1;
			}
		}
	}
}
