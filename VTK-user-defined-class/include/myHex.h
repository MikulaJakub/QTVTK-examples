//(c)2020 Jakub Mikula
//mikula_jakub@centrum.sk
//
// PURPOSE: A minimalistic example to define a customized cell based on a vtk class
//			thus inheriting all useful properties of the class and adding more.
//			All the variables and the functions below are only for testing the 
//			functionality of the class to experiment with the class.

#ifndef MYHEX_H
#define MYHEX_H

#include <vtkHexahedron.h>	//hexahedron
#include <QDebug>			//only for debuggin purpose
#include <math.h>

using namespace std;

class myHex: public vtkHexahedron
{
	
	public:
// I NEED TO INCLUDE THIS:
//--------------------------------------------------
//		vtkTypeRevisionMacro(myHex,vtkHexahedron);
//		this one complains with the following error:
//		ISO C++ forbids declaration of ‘vtkTypeRevisionMacro’ with no type [-fpermissive]

// 		so I use this one instead:
		vtkTypeMacro(myHex,vtkHexahedron);		
		static myHex *New()
		{
			return new	myHex;
		}
//--------------------------------------------------



// ADD ANY EXTRA VARIABLES OR FUNCTIONS IN THIS BLOCK:
// THESE ARE ONLY SOME EXAMPLES
//***********************************************************************
//	VARIABLES:
		int meno;		// an integer 
		double gp_N;	// a double precision number

// 	FUNCTIONS:
		void setMeno(int meno)	//set the integer value
		{
			this->meno = meno;
		}
		int getMeno()			//get the integer value
		{
			return meno;
		}

		//Example
		//PRINT A USER DEFINED FUNCTION OF (NUMBER OF POINTS OF THE CELL)
		double GetPocetUzlov()
		{
			return 4.0*sqrt((double)GetNumberOfPoints());
		}

		//Example:
		//PRINT THE BOUNDAING BOX OF THE CELL USING qDebug()
		void GetSuradnice()
		{
			qDebug() << "---------------------------------";
			qDebug() << "The side of the bounding box is: ";
			qDebug() << *GetBounds();		//vector 1st element
			qDebug() << *(GetBounds()+1); 	//vector 2st element
			qDebug() << *(GetBounds()+2); 	//vector 3nd element
			qDebug() << *(GetBounds()+3); 	//vector 4th element
			qDebug() << *(GetBounds()+4); 	//vector 5th element
			qDebug() << *(GetBounds()+5); 	//vector 6th element
			qDebug() << "---------------------------------";

		}	
//***********************************************************************

	protected:
//		myHex();
//		~myHex();

	private:

};


#endif
