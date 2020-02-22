#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>

#include <vtkRenderWindow.h>	//VTK
#include <vtkSmartPointer.h>	//VTK
#include <QVTKWidget.h>	//VTK
#include <vtkRenderWindow.h>	//VTK
#include <vtkRenderer.h>		//VTK
#include <vtkRendererCollection.h>	//VTK
#include <vtkPolyDataMapper.h>	//VTK
#include <vtkAutoInit.h>	//VTK
#include <vtkVersion.h> 	//VTK

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private slots:
    void on_pushButton_released();
	void plotCylinder();

    void on_pushButton_2_released();

private:
    Ui::MainWindow *ui;

	vtkSmartPointer<vtkRenderWindow> renderWindow;	//VTK	
	vtkSmartPointer<vtkRenderer> rendererWindow;	//VTK

};

#endif // MAINWINDOW_H
