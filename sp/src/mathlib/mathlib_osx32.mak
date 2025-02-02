NAME=mathlib
SRCROOT=..
TARGET_PLATFORM=osx32
TARGET_PLATFORM_EXT=
USE_VALVE_BINDIR=0
PWD := $(shell pwd)
# If no configuration is specified, "release" will be used.
ifeq "$(CFG)" ""
	CFG = release
endif

GCC_ExtraCompilerFlags=
GCC_ExtraLinkerFlags = 
SymbolVisibility = hidden
OptimizerLevel = -gdwarf-2 -g $(OptimizerLevel_CompilerSpecific)
SystemLibraries = 
DLL_EXT = .dylib
SYM_EXT = .dSYM
FORCEINCLUDES= 
ifeq "$(CFG)" "debug"
DEFINES += -DDEBUG -D_DEBUG -DGNUC -DPOSIX -D_OSX -DOSX -D_DARWIN_UNLIMITED_SELECT -DFD_SETSIZE=10240 -DQUICKTIME_VIDEO -DFORCE_QUICKTIME -DGL_GLEXT_PROTOTYPES -DDX_TO_GL_ABSTRACTION -DMATHLIB_LIB -DVPCGAMECAPS=VALVE -DPROJECTDIR=/Users/joe/p4/ValveGames/rel/singleplayer/src/mathlib -D_DLL_EXT=.dylib -DVPCGAME=valve -D_POSIX=1 
else
DEFINES += -DNDEBUG -DGNUC -DPOSIX -D_OSX -DOSX -D_DARWIN_UNLIMITED_SELECT -DFD_SETSIZE=10240 -DQUICKTIME_VIDEO -DFORCE_QUICKTIME -DGL_GLEXT_PROTOTYPES -DDX_TO_GL_ABSTRACTION -DMATHLIB_LIB -DVPCGAMECAPS=VALVE -DPROJECTDIR=/Users/joe/p4/ValveGames/rel/singleplayer/src/mathlib -D_DLL_EXT=.dylib -DVPCGAME=valve -D_POSIX=1 
endif
INCLUDEDIRS += ../common ../public ../public/tier0 ../public/tier1 ../public/mathlib 
CONFTYPE = lib
OUTPUTFILE=../lib/osx32/mathlib.a
THIS_MAKEFILE = $(PWD)/mathlib_osx32.mak
MAKEFILE_BASE = $(SRCROOT)/devtools/makefile_base_posix.mak


POSTBUILDCOMMAND = true



CPPFILES= \
    almostequal.cpp \
    anorms.cpp \
    bumpvects.cpp \
    color_conversion.cpp \
    halton.cpp \
    IceKey.cpp \
    imagequant.cpp \
    lightdesc.cpp \
    mathlib_base.cpp \
    polyhedron.cpp \
    powsse.cpp \
    quantize.cpp \
    randsse.cpp \
    simdvectormatrix.cpp \
    sparse_convolution_noise.cpp \
    spherical.cpp \
    sse.cpp \
    sseconst.cpp \
    ssenoise.cpp \
    vector.cpp \
    vmatrix.cpp \


LIBFILES = \
    ../lib/osx32/libvstdlib.dylib \
    ../lib/osx32/tier1.a \


LIBFILENAMES = \
    ../lib/osx32/libvstdlib.dylib \
    ../lib/osx32/tier1.a \


# Include the base makefile now.
include $(SRCROOT)/devtools/makefile_base_posix.mak



OTHER_DEPENDENCIES = \


$(OBJ_DIR)/_other_deps.P : $(OTHER_DEPENDENCIES)
	$(GEN_OTHER_DEPS)

-include $(OBJ_DIR)/_other_deps.P



ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/almostequal.P
endif

$(OBJ_DIR)/almostequal.o : $(PWD)/almostequal.cpp $(THIS_MAKEFILE) $(MAKEFILE_BASE)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/anorms.P
endif

$(OBJ_DIR)/anorms.o : $(PWD)/anorms.cpp $(THIS_MAKEFILE) $(MAKEFILE_BASE)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/bumpvects.P
endif

$(OBJ_DIR)/bumpvects.o : $(PWD)/bumpvects.cpp $(THIS_MAKEFILE) $(MAKEFILE_BASE)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/color_conversion.P
endif

$(OBJ_DIR)/color_conversion.o : $(PWD)/color_conversion.cpp $(THIS_MAKEFILE) $(MAKEFILE_BASE)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/halton.P
endif

$(OBJ_DIR)/halton.o : $(PWD)/halton.cpp $(THIS_MAKEFILE) $(MAKEFILE_BASE)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/IceKey.P
endif

$(OBJ_DIR)/IceKey.o : $(PWD)/IceKey.cpp $(THIS_MAKEFILE) $(MAKEFILE_BASE)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/imagequant.P
endif

$(OBJ_DIR)/imagequant.o : $(PWD)/imagequant.cpp $(THIS_MAKEFILE) $(MAKEFILE_BASE)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/lightdesc.P
endif

$(OBJ_DIR)/lightdesc.o : $(PWD)/lightdesc.cpp $(THIS_MAKEFILE) $(MAKEFILE_BASE)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/mathlib_base.P
endif

$(OBJ_DIR)/mathlib_base.o : $(PWD)/mathlib_base.cpp $(THIS_MAKEFILE) $(MAKEFILE_BASE)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/polyhedron.P
endif

$(OBJ_DIR)/polyhedron.o : $(PWD)/polyhedron.cpp $(THIS_MAKEFILE) $(MAKEFILE_BASE)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/powsse.P
endif

$(OBJ_DIR)/powsse.o : $(PWD)/powsse.cpp $(THIS_MAKEFILE) $(MAKEFILE_BASE)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/quantize.P
endif

$(OBJ_DIR)/quantize.o : $(PWD)/quantize.cpp $(THIS_MAKEFILE) $(MAKEFILE_BASE)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/randsse.P
endif

$(OBJ_DIR)/randsse.o : $(PWD)/randsse.cpp $(THIS_MAKEFILE) $(MAKEFILE_BASE)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/simdvectormatrix.P
endif

$(OBJ_DIR)/simdvectormatrix.o : $(PWD)/simdvectormatrix.cpp $(THIS_MAKEFILE) $(MAKEFILE_BASE)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/sparse_convolution_noise.P
endif

$(OBJ_DIR)/sparse_convolution_noise.o : $(PWD)/sparse_convolution_noise.cpp $(THIS_MAKEFILE) $(MAKEFILE_BASE)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/spherical.P
endif

$(OBJ_DIR)/spherical.o : $(PWD)/spherical.cpp $(THIS_MAKEFILE) $(MAKEFILE_BASE)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/sse.P
endif

$(OBJ_DIR)/sse.o : $(PWD)/sse.cpp $(THIS_MAKEFILE) $(MAKEFILE_BASE)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/sseconst.P
endif

$(OBJ_DIR)/sseconst.o : $(PWD)/sseconst.cpp $(THIS_MAKEFILE) $(MAKEFILE_BASE)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/ssenoise.P
endif

$(OBJ_DIR)/ssenoise.o : $(PWD)/ssenoise.cpp $(THIS_MAKEFILE) $(MAKEFILE_BASE)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/vector.P
endif

$(OBJ_DIR)/vector.o : $(PWD)/vector.cpp $(THIS_MAKEFILE) $(MAKEFILE_BASE)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

ifneq (clean, $(findstring clean, $(MAKECMDGOALS)))
-include $(OBJ_DIR)/vmatrix.P
endif

$(OBJ_DIR)/vmatrix.o : $(PWD)/vmatrix.cpp $(THIS_MAKEFILE) $(MAKEFILE_BASE)
	$(PRE_COMPILE_FILE)
	$(COMPILE_FILE) $(POST_COMPILE_FILE)

# Uncomment this, and set FILENAME to file you want built without optimizations enabled.
# $(OBJ_DIR)/FILENAME.o : CFLAGS := $(subst -O2,-O0,$(CFLAGS))

# Uncomment this to disable optimizations for the entire project.
# $(OBJ_DIR)/%.o : CFLAGS := $(subst -O2,-O0,$(CFLAGS))


