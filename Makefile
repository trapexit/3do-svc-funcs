OUTPUT = svc_funcs

DEBUG	= 1

STACKSIZE 	= 8192

CC		= armcc
AS 		= armasm
LD		= armlink
LIB             = armlib
RM		= rm
MODBIN          = modbin
MAKEBANNER	= MakeBanner

CFLAGS	 = -bigend -za1 -zps0 -zi4 -fa -fh -fx -fpu none -arch 3 -apcs '3/32/fp/swst/wide/softfp'
ASFLAGS	 = -bigend -fpu none -arch 3 -apcs '3/32/fp/swst'
LDFLAGS	 = -aif -reloc -ro-base 0x00 -dupok -remove -nodebug -verbose
INCFLAGS = -I${TDO_DEVKIT_PATH}/include/3do
LIBPATH	= ${TDO_DEVKIT_PATH}/lib/3do
COM_LIBPATH = ${TDO_DEVKIT_PATH}/lib/community

LIBS = $(LIBPATH)/clib.lib

SRC_S = $(wildcard src/*.s)
SRC_C = $(wildcard src/*.c)

OBJ += $(SRC_S:src/%.s=build/%.s.o)
OBJ += $(SRC_C:src/%.c=build/%.c.o)

all: builddir svc_funcs.lib

builddir:
	mkdir -p build

clean:
	$(RM) -rfv build/

build/%.s.o: src/%.s
	$(AS) $(INCFLAGS) $(ASFLAGS) $< -o $@

build/%.c.o: src/%.c
	$(CC) $(INCFLAGS) $(CFLAGS) -c $< -o $@

build/%.cpp.o: src/%.cpp
	$(CXX) $(INCFLAGS) $(CXXFLAGS) -c $< -o $@

build/svc_funcs.lib: build/svc_funcs.s.o
	$(LIB) -c $@ $<

svc_funcs.lib: builddir build/svc_funcs.lib

install: svc_funcs.lib
	cp -fv build/svc_funcs.lib ${TDO_DEVKIT_PATH}/lib/community/
	cp -fv src/svc_funcs.h ${TDO_DEVKIT_PATH}/include/community/

.PHONY: builddir install svc_funcs.lib
