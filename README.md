# Kondo-Robot library

This repo is based on the libkondo4 C library (by Christopher Vo) to control the Kondo RCB-4 servo controller board using the ICS 3.0 protocol. The servos KRS-2552RHV feature the ICS-3 interface making them compatible with serial or PWM communication.

In this repo, we extend the previous work by including/providing:
* CMakeLists (instead of Makefiles)
* Documentations (how to assemble the Kondo KHR-3HV robot, joint IDs, joint limits,...)
* Python wrappers (using Cython)
* Sample codes to run different motions
* ROS nodes (todo)
* Code that interfaces with sensors (such as camera, IMU, microphone,...) that are connected with the Raspi 3

Here is a youtube video showing predefined motions that can be run on the Kondo KHR-3HV robot using the Python code: [video](https://www.youtube.com/watch?v=r_C1O69VVXw)

Here is another video showing the possibility to run the Python code on a Raspi3 and controlling the servo-motors of the Kondo KHR-3HV robot: [video](https://www.youtube.com/watch?v=m9CK85_m3Pk)


## Prerequisites

* An Ubuntu system (tested on Ubuntu 16.04, and on Ubuntu Mate 16.04 on a Raspi3) or MacOSX.
* The ftdi library to communicate via usb to the board

On Linux:

```bash
$ sudo apt-get install libftdi-dev
```

On MacOSX (with [Homebrew](https://brew.sh/)):

```bash
$ brew install libftdi
```


## How to use it?

* Compiling the C++ code
Compared to the original library, we created CMakeLists files to compile the code.
In a terminal, type the following lines:
```bash
$ mkdir build
$ cd build
$ cmake ..
$ make
```


* Compiling the Cython code
```bash
$ cd cython
$ python setup.py build_ext --inplace
```
You can now run one of the python code such as:
```bash
$ sudo python move.py
```


## Troubleshooting

* `ImportError: dynamic module does not define init function (init_pykondo)`
This is probably due to compiling the library with a specific version of Python, and trying to launch the code with another version. By default, in the CMakeLists, it is looking for python 2.7 (see the cmake command `find_package(PythonLibs 2.7)`). If you are using another version, please update accordingly the appropriate cmake line.

* `ERROR: kondo_ftdi_error device not found`
Make sure that the robot is turned on and its USB cable correctly connected to the computer (or Raspi).

* `permission denied`
You have to use `sudo` when running the code.


## TODO

* add URDF file for kondo KHR-3HV (probably will have to translate the proto file from webots)
* add ROS nodes to publish sensory and joint informations, and advertise topics.
* use kinematics and dynamics library
* write Python wrapper for the IMU
* (C++/Python) code to use the camera, IMU, microphone,... on the Raspi 3 or Jetson Nano
