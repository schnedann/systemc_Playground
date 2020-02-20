TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

QMAKE_CXXFLAGS += -std=c++17

SOURCES += main.cpp

HEADERS += \
    ../systemc/src/systemc.h \
    counter4.h \
    counter8.h

INCLUDEPATH += "../systemc/src/"
LIBS += -L"/home/danny/ramdisk/systemc/systemc/build/src/" -lsystemc
#LIBS += -L"$$_PRO_FILE_PWD_/../lsystemc-2.3.0/objdir/src/sysc/.libs/" -lsystemc
