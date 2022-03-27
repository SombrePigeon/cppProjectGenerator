#Makefile


#répertoires
INCLUDE_DIR=include
SRC_DIR=src
OBJ_DIR=obj
COMPIL_DIR=compil
VPATH = $(OBJ_DIR):$(INCLUDE_DIR)
#VPATH = $(SRC_DIR):$(OBJ_DIR):$(INCLUDE_DIR)





%:
	mkdir $@
	mkdir $@/$(INCLUDE_DIR)
	mkdir $@/$(SRC_DIR)
	mkdir $@/$(OBJ_DIR)
	mkdir $@/$(COMPIL_DIR)
	echo "-I./$(INCLUDE_DIR)" > $@/.clang-complete
	cp makefilecpp	$@/makefile
	cp main.cpp $@/$(SRC_DIR)/main.cpp

