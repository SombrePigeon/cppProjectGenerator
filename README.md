# CppProjectGenerator
A simple makefile based CPP project generator

## What does it do ?

- It allow you to create in one command a simple, ready to use, C++ project.

- This project will be able to build C++ and C files (main function still must be in c++).

- You can also generate a <em>compile_commands.json</em> file for your text editor.

## How to use

- To create a project :
  <pre>make <em>projectName</em></pre>
  This will create a folder with a   simple <em>HelloWorld</em> project that you can modify at you will.

- Move into that directory :
  <pre>cd <em>projectName</em></pre>

- Add your files into the right directories (cf folder structure down below).

- Add the source files that you want to build to the right variables in the makefile (this will be externalised) :
  <pre>
  SRC= myFile1.c myFile2.c
  SRCPP= myFile1.cpp myFile2.cpp
  </pre>

- Build your project :
  <pre>make</pre>

- Run your program :
  <pre>./<em>projectName</em></pre>

- You can also generate the <em>compile_commands.json</em> with the following command :
  <pre>make compile_commands.json</pre>

## Folder structure of a project
- <pre>include/</pre>
  contains all the headers files (*.h, *.hpp, ...)

- <pre>src/</pre>
  contains all sources files (*.c, *.cpp)

- <pre>obj/</pre>
  contains all the build files (*.c.o, -.cpp.o).

- <pre>compil/</pre>
    contains all the partial files for the compile_commands.json

- <pre>makefile</pre>
    the makefile that build 

- <pre><em>projectName</em></pre>
    the executable generated (if built)

- <pre>compile_commands.json</pre>
    the compile_commands file (if built)

## To_Do

- help target

- a file dedicated for variables

- add non-system libary support

- better logging on build