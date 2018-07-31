#ifndef COMPUTESALIENCY_H
#define COMPUTESALIENCY_H


#define SALIENCYRH 64


template<typename T>
void saferelease(T * data){
	if(data) 
	{
		delete []data;
		data = NULL;
	}
}

void compute(unsigned char * src,unsigned char * dst,int * pSeg,int regnum,int nRow,int nCol);
bool getSalMap(unsigned char * pImg,float * & salimg, int * segimg,int *vote,int segnum, int x,int y,int xTotal,int yTotal,int nRow, int nCol,double sigmadist,bool isBorder =false,float minArea = 0.4);

bool getSalMapALL(unsigned char * pImg,float * & salimg, int * segimg,int segnum,int nRow, int nCol,double sigmadist,bool isBorder =false,float minArea = 0.4);

#endif
