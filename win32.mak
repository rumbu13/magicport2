
SRC=magicport2.d ast.d scanner.d tokens.d parser.d dprinter.d typenames.d visitor.d namer.d

DFLAGS=-g

LIBS=..\dmdgit\src\glue.lib ..\dmdgit\src\backend.lib ..\dmdgit\src\outbuffer.obj
# LIBS=..\dmdgit\src\gluestub.obj ..\dmdgit\src\backend.lib

COMPILER=..\dmdgit\src\dmd.exe
FLAGS=-debug -vtls -J..\dmdgit -d -version=DMDV2 -L/STACK:8388608 -g

DP=port
RP=port\root
GENSRC=$(DP)\access.d $(DP)\aggregate.d $(DP)\aliasthis.d $(DP)\apply.d \
	$(DP)\argtypes.d $(DP)\arrayop.d $(DP)\arraytypes.d \
	$(DP)\attrib.d $(DP)\builtin.d $(DP)\canthrow.d $(DP)\dcast.d \
	$(DP)\dclass.d $(DP)\clone.d $(DP)\cond.d $(DP)\constfold.d \
	$(DP)\cppmangle.d $(DP)\ctfeexpr.d $(DP)\declaration.d \
	$(DP)\delegatize.d $(DP)\doc.d $(DP)\dsymbol.d $(DP)\dump.d \
	$(DP)\entity.d $(DP)\denum.d $(DP)\expression.d $(DP)\func.d \
	$(DP)\hdrgen.d $(DP)\id.d $(DP)\identifier.d $(DP)\imphint.d \
	$(DP)\dimport.d $(DP)\dinifile.d $(DP)\inline.d $(DP)\init.d \
	$(DP)\interpret.d $(DP)\json.d $(DP)\lexer.d $(DP)\link.d \
	$(DP)\dmacro.d $(DP)\dmangle.d $(DP)\mars.d \
	$(DP)\dmodule.d $(DP)\mtype.d $(DP)\opover.d $(DP)\optimize.d \
	$(DP)\parse.d $(DP)\sapply.d $(DP)\dscope.d $(DP)\sideeffect.d \
	$(DP)\statement.d $(DP)\staticassert.d $(DP)\dstruct.d \
	$(DP)\target.d $(DP)\dtemplate.d $(DP)\traits.d $(DP)\dunittest.d \
	$(DP)\utf.d $(DP)\dversion.d $(DP)\visitor.d \
	$(RP)\file.d $(RP)\filename.d $(RP)\speller.d

DM=manual
RM=manual\root
MANUALSRC= \
	$(DM)\intrange.d $(DM)\complex.d $(DM)\longdouble.d \
	$(DM)\lib.d $(DM)\libomf.d $(DM)\scanomf.d \
	$(DM)\libmscoff.d $(DM)\scanmscoff.d \
	$(RM)\aav.d $(RM)\array.d \
	$(RM)\man.d $(RM)\rootobject.d $(RM)\outbuffer.d $(RM)\port.d \
	$(RM)\response.d $(RM)\rmem.d  $(RM)\stringtable.d

COPYSRC= \
	$(DP)\intrange.d $(DP)\complex.d $(DP)\longdouble.d \
	$(DP)\lib.d $(DP)\libomf.d $(DP)\scanomf.d \
	$(DP)\libmscoff.d $(DP)\scanmscoff.d \
	$(RP)\aav.d $(RP)\array.d \
	$(RP)\man.d $(RP)\rootobject.d $(RP)\outbuffer.d $(RP)\port.d \
	$(RP)\response.d $(RP)\rmem.d  $(RP)\stringtable.d

DSRC= $(GENSRC) $(COPYSRC)

default: build1 build2

$(GENSRC) $(COPYSRC): magicport2.exe $(MANUALSRC) settings.json
	magicport2 ..\dmdgit\src

build1: port\dmd.exe
port\dmd.exe: defs.d $(DSRC) $(LIBS)
	$(COMPILER) $(DSRC) defs.d -ofport\dmd.exe $(LIBS) $(FLAGS)

build2: port\dmdx.exe
port\dmdx.exe: defs.d $(DSRC) port\dmd.exe $(LIBS)
	port\dmd $(DSRC) defs.d -ofport\dmdx.exe $(LIBS) $(FLAGS)

magicport2.exe : $(SRC)
	$(COMPILER) $(SRC) $(DFLAGS)

clean:
	del magicport2.exe
	del *.obj
	del port\*.d
	del port\root\*.d
	del port\*.obj
	del port\*.exe
