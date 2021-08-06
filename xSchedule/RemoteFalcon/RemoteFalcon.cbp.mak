#------------------------------------------------------------------------------#
# This makefile was generated by 'cbp2make' tool rev.147                       #
#------------------------------------------------------------------------------#


WORKDIR = `pwd`

CC = gcc
CXX = g++
AR = ar
LD = g++
WINDRES = windres

INC = 
CFLAGS = -fno-strict-aliasing -Wno-unused-local-typedefs -DwxUSE_UNICODE
RESINC = 
LIBDIR = 
LIB = 
LDFLAGS = 

INC_LINUX_DEBUG = $(INC) -Iinclude -I../xSchedule/RemoteFalcon -I../include
CFLAGS_LINUX_DEBUG =  -Wall -g -fPIC `wx-config --version=3.1 --cflags` `pkg-config --cflags libavformat libavcodec libavutil  libswresample libswscale` `pkg-config --cflags gstreamer-1.0 gstreamer-video-1.0` `pkg-config --cflags log4cpp` `curl-config --cflags` -Winvalid-pch -DWX_PRECOMP -DLINUX -D__WXDEBUG__ -D__cdecl=""
RESINC_LINUX_DEBUG = $(RESINC)
RCFLAGS_LINUX_DEBUG = $(RCFLAGS)
LIBDIR_LINUX_DEBUG = $(LIBDIR)
LIB_LINUX_DEBUG = $(LIB)
LDFLAGS_LINUX_DEBUG =  -lGL -lGLU -lglut -ldl -lX11 -lz -lzstd `pkg-config --libs libavformat libavcodec libavutil  libswresample libswscale` `pkg-config --libs log4cpp` `sdl2-config --libs` `wx-config --version=3.1 --libs std,media,gl,aui,propgrid` `pkg-config --libs gstreamer-1.0 gstreamer-video-1.0` `curl-config --libs` -lexpat -lporttime -lportmidi -rdynamic $(LDFLAGS)
OBJDIR_LINUX_DEBUG = .objs_debug
DEP_LINUX_DEBUG = 
OUT_LINUX_DEBUG = ../../bin/RemoteFalcon.so

INC_LINUX_RELEASE = $(INC) -Iinclude -I../xSchedule/RemoteFalcon -I../include
CFLAGS_LINUX_RELEASE = $(CFLAGS) -O2 -Wall -fPIC `wx-config --version=3.1 --cflags` `pkg-config --cflags gstreamer-1.0 gstreamer-video-1.0` `pkg-config --cflags libavformat libavcodec libavutil  libswresample libswscale` `pkg-config --cflags log4cpp` `curl-config --cflags` -Winvalid-pch -DWX_PRECOMP -DLINUX -DNDEBUG -D__cdecl='' -Wno-reorder -Wno-sign-compare -Wno-unused-variable -Wno-unused-but-set-variable -Wno-unused-function -Wno-unknown-pragmas
RESINC_LINUX_RELEASE = $(RESINC)
RCFLAGS_LINUX_RELEASE = $(RCFLAGS) -Wno-reorder -Wno-sign-compare -Wno-unused-variable -Wno-unused-but-set-variable -Wno-unused-function -Wno-unknown-pragmas
LIBDIR_LINUX_RELEASE = $(LIBDIR)
LIB_LINUX_RELEASE = $(LIB)
LDFLAGS_LINUX_RELEASE =  -lGL -lGLU -lglut -ldl -lX11 -lz -lzstd `pkg-config --libs libavformat libavcodec libavutil  libswresample libswscale` `pkg-config --libs log4cpp` `sdl2-config --libs` `wx-config --version=3.1 --libs std,media,gl,aui,propgrid` `pkg-config --libs gstreamer-1.0 gstreamer-video-1.0` `curl-config --libs` -lexpat -lporttime -lportmidi -rdynamic $(LDFLAGS)
OBJDIR_LINUX_RELEASE = .objs_lr
DEP_LINUX_RELEASE = 
OUT_LINUX_RELEASE = ../../bin/RemoteFalcon.so

OBJ_LINUX_DEBUG = $(OBJDIR_LINUX_DEBUG)/RemoteFalconApp.o $(OBJDIR_LINUX_DEBUG)/RemoteFalconSettingsDialog.o $(OBJDIR_LINUX_DEBUG)/RemoteFalconOptions.o $(OBJDIR_LINUX_DEBUG)/RemoteFalconMain.o $(OBJDIR_LINUX_DEBUG)/__/__/xLights/UtilFunctions.o $(OBJDIR_LINUX_DEBUG)/__/wxJSON/jsonval.o $(OBJDIR_LINUX_DEBUG)/__/wxJSON/jsonreader.o $(OBJDIR_LINUX_DEBUG)/__/__/xLights/xLightsVersion.o $(OBJDIR_LINUX_DEBUG)/__/__/xLights/xLightsTimer.o

OBJ_LINUX_RELEASE = $(OBJDIR_LINUX_RELEASE)/RemoteFalconApp.o $(OBJDIR_LINUX_RELEASE)/RemoteFalconSettingsDialog.o $(OBJDIR_LINUX_RELEASE)/RemoteFalconOptions.o $(OBJDIR_LINUX_RELEASE)/RemoteFalconMain.o $(OBJDIR_LINUX_RELEASE)/__/__/xLights/UtilFunctions.o $(OBJDIR_LINUX_RELEASE)/__/wxJSON/jsonval.o $(OBJDIR_LINUX_RELEASE)/__/wxJSON/jsonreader.o $(OBJDIR_LINUX_RELEASE)/__/__/xLights/xLightsVersion.o $(OBJDIR_LINUX_RELEASE)/__/__/xLights/xLightsTimer.o

all: linux_debug linux_release

clean: clean_linux_debug clean_linux_release

before_linux_debug: 
	@test -d ../../bin || mkdir -p ../../bin
	@test -d $(OBJDIR_LINUX_DEBUG) || mkdir -p $(OBJDIR_LINUX_DEBUG)
	@test -d $(OBJDIR_LINUX_DEBUG)/__/__/xLights || mkdir -p $(OBJDIR_LINUX_DEBUG)/__/__/xLights
	@test -d $(OBJDIR_LINUX_DEBUG)/__/wxJSON || mkdir -p $(OBJDIR_LINUX_DEBUG)/__/wxJSON

after_linux_debug: 

linux_debug: before_linux_debug out_linux_debug after_linux_debug

out_linux_debug: before_linux_debug $(OBJ_LINUX_DEBUG) $(DEP_LINUX_DEBUG)
	$(LD) -shared $(LIBDIR_LINUX_DEBUG) $(OBJ_LINUX_DEBUG)  -o $(OUT_LINUX_DEBUG) $(LDFLAGS_LINUX_DEBUG) $(LIB_LINUX_DEBUG)

$(OBJDIR_LINUX_DEBUG)/RemoteFalconApp.o: RemoteFalconApp.cpp
	$(CXX) $(CFLAGS_LINUX_DEBUG) $(INC_LINUX_DEBUG) -c RemoteFalconApp.cpp -o $(OBJDIR_LINUX_DEBUG)/RemoteFalconApp.o

$(OBJDIR_LINUX_DEBUG)/RemoteFalconSettingsDialog.o: RemoteFalconSettingsDialog.cpp
	$(CXX) $(CFLAGS_LINUX_DEBUG) $(INC_LINUX_DEBUG) -c RemoteFalconSettingsDialog.cpp -o $(OBJDIR_LINUX_DEBUG)/RemoteFalconSettingsDialog.o

$(OBJDIR_LINUX_DEBUG)/RemoteFalconOptions.o: RemoteFalconOptions.cpp
	$(CXX) $(CFLAGS_LINUX_DEBUG) $(INC_LINUX_DEBUG) -c RemoteFalconOptions.cpp -o $(OBJDIR_LINUX_DEBUG)/RemoteFalconOptions.o

$(OBJDIR_LINUX_DEBUG)/RemoteFalconMain.o: RemoteFalconMain.cpp
	$(CXX) $(CFLAGS_LINUX_DEBUG) $(INC_LINUX_DEBUG) -c RemoteFalconMain.cpp -o $(OBJDIR_LINUX_DEBUG)/RemoteFalconMain.o

$(OBJDIR_LINUX_DEBUG)/__/__/xLights/UtilFunctions.o: ../../xLights/UtilFunctions.cpp
	$(CXX) $(CFLAGS_LINUX_DEBUG) $(INC_LINUX_DEBUG) -c ../../xLights/UtilFunctions.cpp -o $(OBJDIR_LINUX_DEBUG)/__/__/xLights/UtilFunctions.o

$(OBJDIR_LINUX_DEBUG)/__/wxJSON/jsonval.o: ../wxJSON/jsonval.cpp
	$(CXX) $(CFLAGS_LINUX_DEBUG) $(INC_LINUX_DEBUG) -c ../wxJSON/jsonval.cpp -o $(OBJDIR_LINUX_DEBUG)/__/wxJSON/jsonval.o

$(OBJDIR_LINUX_DEBUG)/__/wxJSON/jsonreader.o: ../wxJSON/jsonreader.cpp
	$(CXX) $(CFLAGS_LINUX_DEBUG) $(INC_LINUX_DEBUG) -c ../wxJSON/jsonreader.cpp -o $(OBJDIR_LINUX_DEBUG)/__/wxJSON/jsonreader.o

$(OBJDIR_LINUX_DEBUG)/__/__/xLights/xLightsVersion.o: ../../xLights/xLightsVersion.cpp
	$(CXX) $(CFLAGS_LINUX_DEBUG) $(INC_LINUX_DEBUG) -c ../../xLights/xLightsVersion.cpp -o $(OBJDIR_LINUX_DEBUG)/__/__/xLights/xLightsVersion.o

$(OBJDIR_LINUX_DEBUG)/__/__/xLights/xLightsTimer.o: ../../xLights/xLightsTimer.cpp
	$(CXX) $(CFLAGS_LINUX_DEBUG) $(INC_LINUX_DEBUG) -c ../../xLights/xLightsTimer.cpp -o $(OBJDIR_LINUX_DEBUG)/__/__/xLights/xLightsTimer.o

clean_linux_debug: 
	rm -f $(OBJ_LINUX_DEBUG) $(OUT_LINUX_DEBUG)

before_linux_release: 
	@test -d ../../bin || mkdir -p ../../bin
	@test -d $(OBJDIR_LINUX_RELEASE) || mkdir -p $(OBJDIR_LINUX_RELEASE)
	@test -d $(OBJDIR_LINUX_RELEASE)/__/__/xLights || mkdir -p $(OBJDIR_LINUX_RELEASE)/__/__/xLights
	@test -d $(OBJDIR_LINUX_RELEASE)/__/wxJSON || mkdir -p $(OBJDIR_LINUX_RELEASE)/__/wxJSON

after_linux_release: 

linux_release: before_linux_release out_linux_release after_linux_release

out_linux_release: before_linux_release $(OBJ_LINUX_RELEASE) $(DEP_LINUX_RELEASE)
	$(LD) -shared $(LIBDIR_LINUX_RELEASE) $(OBJ_LINUX_RELEASE)  -o $(OUT_LINUX_RELEASE) $(LDFLAGS_LINUX_RELEASE) $(LIB_LINUX_RELEASE)

$(OBJDIR_LINUX_RELEASE)/RemoteFalconApp.o: RemoteFalconApp.cpp
	$(CXX) $(CFLAGS_LINUX_RELEASE) $(INC_LINUX_RELEASE) -c RemoteFalconApp.cpp -o $(OBJDIR_LINUX_RELEASE)/RemoteFalconApp.o

$(OBJDIR_LINUX_RELEASE)/RemoteFalconSettingsDialog.o: RemoteFalconSettingsDialog.cpp
	$(CXX) $(CFLAGS_LINUX_RELEASE) $(INC_LINUX_RELEASE) -c RemoteFalconSettingsDialog.cpp -o $(OBJDIR_LINUX_RELEASE)/RemoteFalconSettingsDialog.o

$(OBJDIR_LINUX_RELEASE)/RemoteFalconOptions.o: RemoteFalconOptions.cpp
	$(CXX) $(CFLAGS_LINUX_RELEASE) $(INC_LINUX_RELEASE) -c RemoteFalconOptions.cpp -o $(OBJDIR_LINUX_RELEASE)/RemoteFalconOptions.o

$(OBJDIR_LINUX_RELEASE)/RemoteFalconMain.o: RemoteFalconMain.cpp
	$(CXX) $(CFLAGS_LINUX_RELEASE) $(INC_LINUX_RELEASE) -c RemoteFalconMain.cpp -o $(OBJDIR_LINUX_RELEASE)/RemoteFalconMain.o

$(OBJDIR_LINUX_RELEASE)/__/__/xLights/UtilFunctions.o: ../../xLights/UtilFunctions.cpp
	$(CXX) $(CFLAGS_LINUX_RELEASE) $(INC_LINUX_RELEASE) -c ../../xLights/UtilFunctions.cpp -o $(OBJDIR_LINUX_RELEASE)/__/__/xLights/UtilFunctions.o

$(OBJDIR_LINUX_RELEASE)/__/wxJSON/jsonval.o: ../wxJSON/jsonval.cpp
	$(CXX) $(CFLAGS_LINUX_RELEASE) $(INC_LINUX_RELEASE) -c ../wxJSON/jsonval.cpp -o $(OBJDIR_LINUX_RELEASE)/__/wxJSON/jsonval.o

$(OBJDIR_LINUX_RELEASE)/__/wxJSON/jsonreader.o: ../wxJSON/jsonreader.cpp
	$(CXX) $(CFLAGS_LINUX_RELEASE) $(INC_LINUX_RELEASE) -c ../wxJSON/jsonreader.cpp -o $(OBJDIR_LINUX_RELEASE)/__/wxJSON/jsonreader.o

$(OBJDIR_LINUX_RELEASE)/__/__/xLights/xLightsVersion.o: ../../xLights/xLightsVersion.cpp
	$(CXX) $(CFLAGS_LINUX_RELEASE) $(INC_LINUX_RELEASE) -c ../../xLights/xLightsVersion.cpp -o $(OBJDIR_LINUX_RELEASE)/__/__/xLights/xLightsVersion.o

$(OBJDIR_LINUX_RELEASE)/__/__/xLights/xLightsTimer.o: ../../xLights/xLightsTimer.cpp
	$(CXX) $(CFLAGS_LINUX_RELEASE) $(INC_LINUX_RELEASE) -c ../../xLights/xLightsTimer.cpp -o $(OBJDIR_LINUX_RELEASE)/__/__/xLights/xLightsTimer.o

clean_linux_release: 
	rm -f $(OBJ_LINUX_RELEASE) $(OUT_LINUX_RELEASE)

RemoteFalconApp.cpp: RemoteFalconMain.h RemoteFalconApp.h

RemoteFalconMain.h: RemoteFalconOptions.h RemoteFalconApp.h

RemoteFalconSettingsDialog.cpp: RemoteFalconSettingsDialog.h RemoteFalconOptions.h xSchedule.h

xSchedule.h: RemoteFalconApp.h

RemoteFalconOptions.cpp: RemoteFalconOptions.h

RemoteFalconMain.cpp: RemoteFalconMain.h RemoteFalconSettingsDialog.h RemoteFalconOptions.h xSchedule.h RemoteFalcon.h

RemoteFalcon.h: RemoteFalconOptions.h

.PHONY: before_linux_debug after_linux_debug clean_linux_debug before_linux_release after_linux_release clean_linux_release

