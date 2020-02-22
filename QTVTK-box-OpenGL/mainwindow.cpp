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
    //print message in terminal
    qDebug() << "Plotting cylinder";

	//plotCylinder();
	plotGrid();
	qDebug() << "Cylinder is rendered. Please click on the window.";
}


void MainWindow::plotCylinder()
{
	vtkSmartPointer<vtkCylinderSource> cylinder = vtkSmartPointer<vtkCylinderSource>::New();
	cylinder->SetResolution(8);

	vtkSmartPointer<vtkPolyDataMapper> cylinderMapper = vtkSmartPointer<vtkPolyDataMapper>::New();
	cylinderMapper->SetInputConnection(cylinder->GetOutputPort());

	vtkSmartPointer<vtkActor> cylinderActor = vtkSmartPointer<vtkActor>::New();
	cylinderActor->SetMapper(cylinderMapper);
	cylinderActor->GetProperty()->SetColor(1.0000, 0.3883, 0.2784);
	cylinderActor->RotateX(30.0);
	cylinderActor->RotateY(-45.0);

	rendererWindow->AddActor(cylinderActor);
	rendererWindow->ResetCamera();
	rendererWindow->GetActiveCamera()->Zoom(1.5);

	

return;
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
	points->InsertNextPoint(0.0,0.0,1.0);
	points->InsertNextPoint(1.0,0.0,1.0);
	points->InsertNextPoint(1.0,1.0,1.0);
	points->InsertNextPoint(0.0,1.0,1.0);

	points->InsertNextPoint(2.0+0.0,0.0,0.0);
	points->InsertNextPoint(2.0+1.0,0.0,0.0);
	points->InsertNextPoint(2.0+1.0,1.0,0.0);
	points->InsertNextPoint(2.0+0.0,1.0,0.0);
	points->InsertNextPoint(2.0+0.0,0.0,1.0);
	points->InsertNextPoint(2.0+1.0,0.0,1.0);
	points->InsertNextPoint(2.0+1.0,1.0,1.0);
	points->InsertNextPoint(2.0+0.0,1.0,1.0);


	
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

//	gridActor->GetProperty()->SetRepresentationToWireframe();
	gridActor->GetProperty()->EdgeVisibilityOn();

	rendererWindow->AddActor(gridActor);
	rendererWindow->ResetCamera();
	rendererWindow->GetActiveCamera()->Zoom(1.5);

return;
}


