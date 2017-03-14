#############################################################################
# Makefile for building: drawing_assistant.app/Contents/MacOS/drawing_assistant
# Generated by qmake (2.01a) (Qt 4.8.5) on: Mon Sep 21 12:02:58 2015
# Project:  drawing_assistant.pro
# Template: app
# Command: /usr/bin/qmake -o drawing_assistant.xcodeproj/project.pbxproj drawing_assistant.pro
#############################################################################

MOC       = /Developer/Tools/Qt/moc
UIC       = /Developer/Tools/Qt/uic
LEX       = flex
LEXFLAGS  = 
YACC      = yacc
YACCFLAGS = -d
DEFINES       = -DQT_MULTIMEDIA_LIB -DQT_XML_LIB -DQT_OPENGL_LIB -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
INCPATH       = -I/usr/local/Qt4.8/mkspecs/macx-xcode -I. -I/Library/Frameworks/QtCore.framework/Versions/4/Headers -I/usr/include/QtCore -I/Library/Frameworks/QtGui.framework/Versions/4/Headers -I/usr/include/QtGui -I/Library/Frameworks/QtOpenGL.framework/Versions/4/Headers -I/usr/include/QtOpenGL -I/Library/Frameworks/QtXml.framework/Versions/4/Headers -I/usr/include/QtXml -I/Library/Frameworks/QtMultimedia.framework/Versions/4/Headers -I/usr/include/QtMultimedia -I/usr/include -IEigen -I/System/Library/Frameworks/OpenGL.framework/Versions/A/Headers -I/System/Library/Frameworks/AGL.framework/Headers -I. -I/usr/local/include -I/System/Library/Frameworks/CarbonCore.framework/Headers -F/Library/Frameworks
DEL_FILE  = rm -f
MOVE      = mv -f

IMAGES = 
PARSERS =
preprocess: $(PARSERS) compilers
clean preprocess_clean: parser_clean compiler_clean

parser_clean:
check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compilers: ./moc_mainwindow.cpp ./moc_viewerwidget.cpp ./moc_mesh.cpp ./qrc_shaders.cpp
compiler_objective_c_make_all:
compiler_objective_c_clean:
compiler_moc_header_make_all: moc_mainwindow.cpp moc_viewerwidget.cpp moc_mesh.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_mainwindow.cpp moc_viewerwidget.cpp moc_mesh.cpp
moc_mainwindow.cpp: widgets/viewerwidget.h \
		mesh/mesh.h \
		Eigen/Dense \
		Eigen/Sparse \
		mesh/meshdata.h \
		trimesh/vec.h \
		trimesh/TriMesh.h \
		trimesh/Box.h \
		trimesh/strutil.h \
		trimesh/Color.h \
		opengl/trackball.h \
		widgets/mainwindow.h
	/Developer/Tools/Qt/moc $(DEFINES) $(INCPATH) -D__APPLE__ -D__GNUC__ widgets/mainwindow.h -o moc_mainwindow.cpp

moc_viewerwidget.cpp: mesh/mesh.h \
		Eigen/Dense \
		Eigen/Sparse \
		mesh/meshdata.h \
		trimesh/vec.h \
		trimesh/TriMesh.h \
		trimesh/Box.h \
		trimesh/strutil.h \
		trimesh/Color.h \
		opengl/trackball.h \
		widgets/viewerwidget.h
	/Developer/Tools/Qt/moc $(DEFINES) $(INCPATH) -D__APPLE__ -D__GNUC__ widgets/viewerwidget.h -o moc_viewerwidget.cpp

moc_mesh.cpp: Eigen/Dense \
		Eigen/Sparse \
		mesh/meshdata.h \
		trimesh/vec.h \
		trimesh/TriMesh.h \
		trimesh/Box.h \
		trimesh/strutil.h \
		trimesh/Color.h \
		mesh/mesh.h
	/Developer/Tools/Qt/moc $(DEFINES) $(INCPATH) -D__APPLE__ -D__GNUC__ mesh/mesh.h -o moc_mesh.cpp

compiler_rcc_make_all: qrc_shaders.cpp
compiler_rcc_clean:
	-$(DEL_FILE) qrc_shaders.cpp
qrc_shaders.cpp: shaders.qrc
	/Developer/Tools/Qt/rcc -name shaders shaders.qrc -o qrc_shaders.cpp

compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_rez_source_make_all:
compiler_rez_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_rcc_clean 
