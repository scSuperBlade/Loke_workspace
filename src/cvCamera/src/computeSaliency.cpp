#include "StdAfx.h"
#include "computeSaliency.h"
#include "EF_SRC.h"


void compute(unsigned char * src,unsigned char * dst,int * pSeg,int regnum,int nRow,int nCol)
{

	float *sail = new float[nRow * nCol];
	memset(sail,0,nRow * nCol);

	float *pblk_salimg = NULL;
        bool isBorderImg = false;

	getSalMapALL(src,sail,pSeg,regnum,nRow,nCol,0.4);
	
	for (int i = 0; i < nRow;i++)
	{
		
		for (int j = 0; j < nCol;j++)
		{
			
	
	        if((unsigned char)(sail[i * nCol + j] * 255) > 160)
			dst[(i * nCol + j)] = 255;
		else
		        dst[(i * nCol + j)] = 0.0;
		}
	}

	
	saferelease(sail);
}




bool getSalMapALL(unsigned char * pImg,float * & salimg, int * segimg,int segnum,int nRow, int nCol,double sigmadist,bool isBorder,float minArea)
{
	int bRet = true;
	Mat result;
	if (pImg == NULL)
	{
		bRet = false;
		return bRet;
	}

	if (salimg == NULL)
	{
		salimg = new float[nRow * nCol];
	}

        unsigned char * pOldData;
	pOldData = pImg;
	float * pOldDst = new float[nRow * nCol * 3];
	EF_converTo(pOldData,pOldDst,1.0/255.0,nRow,nCol,3);
	

	float *dst = new float[nRow*nCol];
	memset(dst,0.0,nRow*nCol);
	EF_GetRC(pOldDst,nRow,nCol,segimg,nRow,nCol,dst,segnum,0.4,isBorder,minArea);


	for (int i = 0; i < nRow;i++)
	{

		for (int j = 0; j < nCol;j++)
		{
	          salimg[i  * nCol + j ] = dst[i  * nCol + j ];
		}
	}
	return bRet;
}
