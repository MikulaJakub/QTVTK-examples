This is a minimalistic example of QT + VTK rendering a cylinder upon clicking a button. Another button is added to change the color of the cylinder.

# Compilation
- create a folder build `mkdir build`
- go into build
- type `cmake ..`
- type `make`
- the executable `test.out` will be created in bin

# Running the code

For some reason (different versions of QT?) I need to run on my laptop:
```LD_LIBRARY_PATH="/opt/Qt5.9.0/5.9/gcc_64/lib" ./test.out```


# Result
![Cylinder - solid (press S)](figures/screenshot.png)*Cylinder - solid (press S)*

