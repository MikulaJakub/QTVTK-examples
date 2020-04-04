#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QDebug>

//cylinder
#include "vtkCylinderSource.h"
#include "vtkProperty.h"
#include "vtkCamera.h"

#include "vtkAutoInit.h"


//grid:
#include "vtkUnstructuredGrid.h"
#include "vtkDataSetMapper.h"
#include "vtkHexahedron.h"
//#include "myHex.h"

VTK_MODULE_INIT(vtkRenderingOpenGL2)
// otherwise I received error: no override found for ... 

VTK_MODULE_INIT(vtkInteractionStyle)

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

	//set VTK render window
//	renderWindow = vtkSmartPointer<vtkRenderWindow>::New();
	renderWindow = vtkSmartPointer<vtkGenericOpenGLRenderWindow>::New();

	//assign the render window to QVTKWidgets
	ui->vtkWidget->SetRenderWindow(renderWindow);

	// assign a renderer
	rendererWindow = vtkSmartPointer<vtkRenderer>::New();
	rendererWindow->SetBackground(0.1, 0.3, 0.7);
	rendererWindow->ResetCamera();

	//rendererWindow->SetUseDepthPeeling(1);
	//rendererWindow->SetOcclusionRatio(0.1);	

	ui->vtkWidget->GetRenderWindow()->AddRenderer(rendererWindow);

}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_pushButton_released()
{

	// PLOT A HEXAHEDRON WHEN CLICKED ON THE BUTTON
	plotGrid();
	qDebug() << "Hexahedron is rendered. Please click on the window to show it.";
}


void MainWindow::plotGrid()
{
	vtkSmartPointer<vtkUnstructuredGrid> grid = vtkSmartPointer<vtkUnstructuredGrid>::New();
	//grid->SetDimensions(2,2,2);
	

	//Create the points
	vtkSmartPointer<vtkPoints> points = vtkSmartPointer<vtkPoints>::New();

	points->InsertNextPoint(0.0,0.0,0.0);
	points->InsertNextPoint(1.0,0.0,0.0);
	points->InsertNextPoint(1.0,1.0,0.0);
	points->InsertNextPoint(0.0,1.0,0.0);
	points->InsertNextPoint(0.0,0.0,0.2);
	points->InsertNextPoint(1.0,0.0,0.2);
	points->InsertNextPoint(1.0,1.0,0.2);
	points->InsertNextPoint(0.0,1.0,0.2);
	
  	// Create a hexahedron from the points
  	vtkSmartPointer<vtkHexahedron> hex = vtkSmartPointer<vtkHexahedron>::New();
	int numberOfVertices = 8;
  	for (int i = 0; i < numberOfVertices; ++i)
    	{
    		hex->GetPointIds()->SetId(i, i);
    	}	

	grid->SetPoints(points);
	grid->InsertNextCell(hex->GetCellType(),hex->GetPointIds());

	vtkSmartPointer<vtkDataSetMapper> gridMapper = vtkSmartPointer<vtkDataSetMapper>::New();
	gridMapper->SetInputData(grid);

	vtkSmartPointer<vtkActor> gridActor = vtkSmartPointer<vtkActor>::New();
	gridActor->SetMapper(gridMapper);

//	representation from solid to wireframe can be changed using the keys S and W
//	gridActor->GetProperty()->SetRepresentationToWireframe();
	gridActor->GetProperty()->EdgeVisibilityOn();

	rendererWindow->AddActor(gridActor);
	rendererWindow->ResetCamera();
	rendererWindow->GetActiveCamera()->Zoom(1.5);


return;
}


