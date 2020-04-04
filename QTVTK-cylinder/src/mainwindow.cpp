#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QDebug>

//cylinder
#include "vtkCylinderSource.h"
#include "vtkProperty.h"
#include "vtkCamera.h"

#include "vtkAutoInit.h"

VTK_MODULE_INIT(vtkRenderingOpenGL2)
// otherwise I received error: no override found for ... 

VTK_MODULE_INIT(vtkInteractionStyle)

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

	//set VTK render window
	renderWindow = vtkSmartPointer<vtkRenderWindow>::New();

	//assign the render window to QVTKWidgets
	ui->vtkWidget->SetRenderWindow(renderWindow);

	// assign a renderer
	rendererWindow = vtkSmartPointer<vtkRenderer>::New();
	rendererWindow->SetBackground(0.1, 0.3, 0.7);
	rendererWindow->ResetCamera();
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

	plotCylinder();
	qDebug() << "Cylinder is rendered. Please click on the window.";
}

void MainWindow::on_pushButton_2_released()
{
    qDebug() << "Changing the color of the cylinder ... ";
    vtkSmartPointer<vtkCylinderSource> cylinder = vtkSmartPointer<vtkCylinderSource>::New();
    cylinder->SetResolution(8);

    vtkSmartPointer<vtkPolyDataMapper> cylinderMapper = vtkSmartPointer<vtkPolyDataMapper>::New();
    cylinderMapper->SetInputConnection(cylinder->GetOutputPort());

    vtkSmartPointer<vtkActor> cylinderActor = vtkSmartPointer<vtkActor>::New();
    cylinderActor->SetMapper(cylinderMapper);
    cylinderActor->GetProperty()->SetColor(0.0000, 0.3883, 0.2784);
    cylinderActor->RotateX(30.0);
    cylinderActor->RotateY(-45.0);

    rendererWindow->AddActor(cylinderActor);
    rendererWindow->ResetCamera();
    rendererWindow->GetActiveCamera()->Zoom(1.5);
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

