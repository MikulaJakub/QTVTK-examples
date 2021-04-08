#include <iostream>


#include <vtkSmartPointer.h>
#include <vtkActor.h>
#include <vtkArrowSource.h>
#include <vtkAssignAttribute.h>
#include <vtkCamera.h>
#include <vtkExtractEdges.h>
#include <vtkGlyph3D.h>
#include <vtkGradientFilter.h>
#include <vtkPolyDataMapper.h>
#include <vtkRenderer.h>
#include <vtkRenderWindow.h>
#include <vtkRenderWindowInteractor.h>
#include <vtkUnstructuredGridReader.h>
#include <vtkHexahedron.h>
#include <vtkUnstructuredGrid.h>
#include <vtkDoubleArray.h>
#include <vtkPointData.h>
#include <vtkDataSetMapper.h>
#include <vtkProperty.h>

vtkSmartPointer<vtkUnstructuredGrid> allocate_vtk_grid(int N);

using namespace std;
int main()
{

	cout << "Program has started ..." << endl;

	// Generate the grid:
	int N = 10;
	vtkSmartPointer<vtkUnstructuredGrid> grid = allocate_vtk_grid(N);

	int numberOfPoints = grid->GetNumberOfPoints();
	int numberOfCells = grid->GetNumberOfCells();

	// Generate the vector array:
	/*
	 * This has to be defined in this sequence:
	 * (1) number of components
	 * (2) name
	 * (3) name of components
	 * (4) number of tuples
	 */
	vtkSmartPointer<vtkDoubleArray> thisarray = vtkSmartPointer<vtkDoubleArray>::New();
	thisarray->SetNumberOfComponents(3);
	thisarray->SetName("thisdata");
	thisarray->SetComponentName(0,"x");
	thisarray->SetComponentName(1,"y");
	thisarray->SetComponentName(2,"z");
	thisarray->SetNumberOfTuples(numberOfPoints);

	for (vtkIdType i=0; i<numberOfPoints; i++)
	{
		thisarray->SetTuple3(i,double(i),double(i),double(i));
	}


	grid->GetPointData()->AddArray(thisarray);

	vtkSmartPointer<vtkAssignAttribute> vectors = vtkSmartPointer<vtkAssignAttribute>::New();
	vectors->SetInputData(grid);
	vectors->Assign("thisdata", vtkDataSetAttributes::VECTORS,
								vtkAssignAttribute::POINT_DATA);

	vtkSmartPointer<vtkArrowSource> arrow = vtkSmartPointer<vtkArrowSource>::New();	
	arrow->Update();

	vtkSmartPointer<vtkGlyph3D> glyphs = vtkSmartPointer<vtkGlyph3D>::New();
	glyphs->SetInputConnection(0, vectors->GetOutputPort());
	glyphs->SetInputConnection(1, arrow->GetOutputPort());
	glyphs->ScalingOn();
	glyphs->SetScaleModeToScaleByVector();
	glyphs->SetScaleFactor(0.0001);
	glyphs->OrientOn();
	glyphs->ClampingOff();
	glyphs->SetVectorModeToUseVector();
	glyphs->SetIndexModeToOff();

	vtkSmartPointer<vtkPolyDataMapper> glyphMapper = vtkSmartPointer<vtkPolyDataMapper>::New();
	glyphMapper->SetInputConnection(glyphs->GetOutputPort());
	glyphMapper->ScalarVisibilityOff();

	vtkSmartPointer<vtkActor> glyphActor = vtkSmartPointer<vtkActor>::New();
	glyphActor->SetMapper(glyphMapper);

	vtkSmartPointer<vtkDataSetMapper> gridMapper = vtkSmartPointer<vtkDataSetMapper>::New();
	gridMapper->SetInputData(grid);

	vtkSmartPointer<vtkActor> gridActor = vtkSmartPointer<vtkActor>::New();
	gridActor->SetMapper(gridMapper);
	gridActor->GetProperty()->EdgeVisibilityOn();
	gridActor->GetProperty()->SetOpacity(0.2);

	// Renderer:
	vtkSmartPointer<vtkRenderer> renderer = vtkSmartPointer<vtkRenderer>::New();
	renderer->AddActor(glyphActor);
	renderer->AddActor(gridActor);
	renderer->GradientBackgroundOn();
	renderer->SetBackground(1,1,1);
	renderer->SetBackground2(0,0,1);

	vtkSmartPointer<vtkRenderWindow> renwin = vtkSmartPointer<vtkRenderWindow>::New();
	renwin->AddRenderer(renderer);
	renwin->SetSize(500, 500);

	renderer->ResetCamera();
	vtkCamera *camera = renderer->GetActiveCamera();
	camera->Elevation(-80.0);
	camera->OrthogonalizeViewUp();
	camera->Azimuth(135.0);

	vtkSmartPointer<vtkRenderWindowInteractor> iren = vtkSmartPointer<vtkRenderWindowInteractor>::New();
	iren->SetRenderWindow(renwin);
	iren->Initialize();
	iren->Start();

	cout << "Main program has finished!" << endl;	

	return 0;
}

/**
 * Define undstructured grid.
 */
vtkSmartPointer<vtkUnstructuredGrid> allocate_vtk_grid(int N)
{
	int NX = N;
	int NY = N;
	int NZ = N;

	vtkSmartPointer<vtkUnstructuredGrid> vtkGrid = vtkSmartPointer<vtkUnstructuredGrid>::New();
	vtkGrid->Allocate(NX*NY*NZ);

	vtkSmartPointer<vtkPoints> points = vtkSmartPointer<vtkPoints>::New();
	for (int k=0;k<NZ+1;k++){
	for (int j=0;j<NY+1;j++){
	for (int i=0;i<NX+1;i++){
			double point_x = double(i)/double(NX);
			double point_y = double(j)/double(NY);
			double point_z = double(k)/double(NZ);

			points->InsertNextPoint(point_x,point_y,point_z);


	}
	}
	}
    vtkGrid->SetPoints(points);

	vtkSmartPointer<vtkHexahedron> hex = vtkSmartPointer<vtkHexahedron>::New();
	for (int k=0;k<NZ;k++){
	for (int j=0;j<NY;j++){
	for (int i=0;i<NX;i++){
	
		hex->GetPointIds()->SetId(0,i+(NX+1)*j+(NX+1)*(NY+1)*k);
		hex->GetPointIds()->SetId(1,i+(NX+1)*j+(NX+1)*(NY+1)*k + 1);
		hex->GetPointIds()->SetId(2,i+(NX+1)*j+(NX+1)*(NY+1)*k + (NX+1)+1);
		hex->GetPointIds()->SetId(3,i+(NX+1)*j+(NX+1)*(NY+1)*k + (NX+1));
		hex->GetPointIds()->SetId(4,i+(NX+1)*j+(NX+1)*(NY+1)*k + (NX+1)*(NY+1));
		hex->GetPointIds()->SetId(5,i+(NX+1)*j+(NX+1)*(NY+1)*k + (NX+1)*(NY+1)+1);
		hex->GetPointIds()->SetId(6,i+(NX+1)*j+(NX+1)*(NY+1)*k + (NX+1)*(NY+1) + (NX+1)+1);
		hex->GetPointIds()->SetId(7,i+(NX+1)*j+(NX+1)*(NY+1)*k + (NX+1)*(NY+1) + (NX+1));

		// Copy the cell's properties into the grid
		vtkGrid->InsertNextCell(hex->GetCellType(),hex->GetPointIds());
	}
	}
	}

return vtkGrid;
}

