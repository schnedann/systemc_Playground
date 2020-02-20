TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt

QMAKE_CXXFLAGS += -std=c++17

SOURCES += main.cpp \
    pongmaster.cpp \
    pingpong.cpp

HEADERS += \
    ../systemc/src/systemc.h \
    pongmaster.h \
    pingpong.h \
    config.h

INCLUDEPATH += "../systemc/src/"
LIBS += -L"$$PWD/../systemc/build/src/" -lsystemc
