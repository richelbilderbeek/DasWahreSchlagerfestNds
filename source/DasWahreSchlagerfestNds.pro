message("Compiling this may fail")
message("Compiling this will fail, use the Makefile instead")

INCLUDEPATH += \
    ../../DasWahreSchlagerfest

SOURCES += \
    ../../DasWahreSchlagerfest/daswahreschlagerfestwidget.cpp \
    ../../DasWahreSchlagerfest/daswahreschlagerfestdisplay.cpp

HEADERS  += \
    ../../DasWahreSchlagerfest/daswahreschlagerfestwidget.h \
    ../../DasWahreSchlagerfest/daswahreschlagerfestdisplay.h \
    ndsgamedialog.h \
    picbeer.h \
    picbratwurst.h \
    picempty.h

OTHER_FILES += \
    ../../DasWahreSchlagerfest/Licence.txt

INCLUDEPATH += /home/maakplek/devkitPro/libnds/include
INCLUDEPATH += /home/maakplek/devkitPro/devkitARM/arm-none-eabi/include
INCLUDEPATH += ../build
LIBS += -L/home/maakplek/devkitPro/devkitARM/arm-none-eabi/lib -lstdc++ -lm
LIBS += -L/home/maakplek/devkitPro/libnds/lib -lnds9 -lmm9 -ldswifi9
DEFINES += ARM9 NDEBUG
CONFIG   += console
CONFIG -= qt
CONFIG   -= app_bundle
TEMPLATE = app
SOURCES += main.cpp \
    ndsgamedialog.cpp
QMAKE_CC  = /home/maakplek/devkitPr o/devkitARM/bin/arm-none-eabi-gcc
QMAKE_CXX = /home/maakplek/devkitPro/devkitARM/bin/arm-none-eabi-g++
QMAKE_CXXFLAGS = -MMD -MP -MF -mm -g -mthumb -mthumb-interwork -std=c++14
QMAKE_LINK = /home/maakplek/devkitPro/devkitARM/bin/arm-none-eabi-g++
QMAKE_LFLAGS = -T/home/maakplek/devkitPro/devkitARM/arm-none-eabi/lib/ds_arm9.ld

QMAKE_LINK = /home/maakplek/devkitPro/devkitARM/bin/arm-none-eabi-gcc

