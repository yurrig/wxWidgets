#*****************************************************************************
#                                                                            *
# Make file for VMS                                                          *
# Author : J.Jansen (joukj@hrem.stm.tudelft.nl)                              *
# Date : 2 March 2000                                                        *
#                                                                            *
#*****************************************************************************
.first
	define wx [--.include.wx]

CXX_DEFINE = /define=(__WXGTK__=1)/float=ieee/name=(as_is,short)/iee=denorm\
	   /assume=(nostdnew,noglobal_array_new)
CC_DEFINE = /define=(__WXGTK__=1)/float=ieee/name=(as_is,short)/iee=denorm

.suffixes : .cpp

.cpp.obj :
	cxx $(CXXFLAGS)$(CXX_DEFINE) $(MMS$TARGET_NAME).cpp
.c.obj :
	cc $(CFLAGS)$(CC_DEFINE) $(MMS$TARGET_NAME).c

OBJECTS = \
	app.obj,\
	bitmap.obj,\
        bmpbuttn.obj,\
	brush.obj,\
	button.obj,\
	checkbox.obj,\
	checklst.obj,\
	choice.obj,\
	clipbrd.obj,\
	colour.obj,\
        combobox.obj,\
	control.obj,\
	cursor.obj,\
	data.obj,\
	dataobj.obj,\
	dc.obj,\
	dcclient.obj,\
	dcmemory.obj,\
	dcscreen.obj,\
	dialog.obj,\
        dnd.obj,\
	font.obj,\
	fontdlg.obj,\
	frame.obj,\
	gauge.obj,\
	gdiobj.obj,\
        glcanvas.obj,\
	gsockgtk.obj,\
        icon.obj,\
	listbox.obj,\
	main.obj,\
	mdi.obj,\
	menu.obj,\
	minifram.obj,\
	notebook.obj,\
	pen.obj,\
	popupwin.obj,\
	radiobox.obj,\
	radiobut.obj,\
	region.obj,\
	scrolbar.obj,\
	scrolwin.obj,\
	settings.obj,\
	slider.obj,\
        spinbutt.obj,\
	spinctrl.obj,\
	statbmp.obj,\
	statbox.obj,\
	statline.obj,\
	stattext.obj,\
	tbargtk.obj,\
	textctrl.obj,\
	tglbtn.obj,\
	timer.obj,\
	tooltip.obj,\
	toplevel.obj,\
	utilsgtk.obj,\
	utilsres.obj,\
        win_gtk.obj,\
	window.obj

SOURCES =\
	app.cpp,\
	bitmap.cpp,\
        bmpbuttn.cpp,\
	brush.cpp,\
	button.cpp,\
	checkbox.cpp,\
	checklst.cpp,\
	choice.cpp,\
	clipbrd.cpp,\
	colour.cpp,\
        combobox.cpp,\
	control.cpp,\
	cursor.cpp,\
	data.cpp,\
	dataobj.cpp,\
	dc.cpp,\
	dcclient.cpp,\
	dcmemory.cpp,\
	dcscreen.cpp,\
	dialog.cpp,\
        dnd.cpp,\
	font.cpp,\
	fontdlg.cpp,\
	frame.cpp,\
	gauge.cpp,\
	gdiobj.cpp,\
        glcanvas.cpp,\
	gsockgtk.c,\
        icon.cpp,\
	listbox.cpp,\
	main.cpp,\
	mdi.cpp,\
	menu.cpp,\
	minifram.cpp,\
	notebook.cpp,\
	pen.cpp,\
	popupwin.cpp,\
	radiobox.cpp,\
	radiobut.cpp,\
	region.cpp,\
	scrolbar.cpp,\
	scrolwin.cpp,\
	settings.cpp,\
	slider.cpp,\
        spinbutt.cpp,\
	spinctrl.cpp,\
	statbmp.cpp,\
	statbox.cpp,\
	statline.cpp,\
	stattext.cpp,\
	tbargtk.cpp,\
	textctrl.cpp,\
	tglbtn.cpp,\
	timer.cpp,\
	tooltip.cpp,\
	toplevel.cpp,\
	utilsgtk.cpp,\
	utilsres.cpp,\
        win_gtk.c,\
	window.cpp
   
all : $(SOURCES)
	$(MMS)$(MMSQUALIFIERS) $(OBJECTS)
	library [--.lib]libwx_gtk.olb $(OBJECTS)

app.obj : app.cpp
bitmap.obj : bitmap.cpp
bmpbuttn.obj : bmpbuttn.cpp
brush.obj : brush.cpp
button.obj : button.cpp
checkbox.obj : checkbox.cpp
checklst.obj : checklst.cpp
choice.obj : choice.cpp
clipbrd.obj :clipbrd.cpp
colour.obj : colour.cpp
combobox.obj : combobox.cpp
control.obj : control.cpp
cursor.obj : cursor.cpp
data.obj : data.cpp
dataobj.obj : dataobj.cpp
dc.obj : dc.cpp
dcclient.obj : dcclient.cpp
dcmemory.obj : dcmemory.cpp
dcscreen.obj : dcscreen.cpp
dialog.obj : dialog.cpp
dnd.obj : dnd.cpp
font.obj : font.cpp
fontdlg.obj : fontdlg.cpp
frame.obj : frame.cpp
gauge.obj : gauge.cpp
gdiobj.obj : gdiobj.cpp
glcanvas.obj : glcanvas.cpp
gsockgtk.obj : gsockgtk.c
icon.obj : icon.cpp
listbox.obj : listbox.cpp
main.obj : main.cpp
mdi.obj : mdi.cpp
menu.obj : menu.cpp
minifram.obj : minifram.cpp
notebook.obj : notebook.cpp
pen.obj : pen.cpp
popupwin.obj : popupwin.cpp
radiobox.obj : radiobox.cpp
radiobut.obj : radiobut.cpp
region.obj : region.cpp
scrolbar.obj : scrolbar.cpp
scrolwin.obj : scrolwin.cpp
settings.obj : settings.cpp
slider.obj : slider.cpp
spinbutt.obj : spinbutt.cpp
spinctrl.obj : spinctrl.cpp
statbmp.obj : statbmp.cpp
statbox.obj : statbox.cpp
statline.obj : statline.cpp
stattext.obj : stattext.cpp
tbargtk.obj : tbargtk.cpp
textctrl.obj : textctrl.cpp
tglbtn.obj : tglbtn.cpp
timer.obj : timer.cpp
tooltip.obj : tooltip.cpp
toplevel.obj : toplevel.cpp
utilsgtk.obj : utilsgtk.cpp
utilsres.obj : utilsres.cpp
win_gtk.obj : win_gtk.c
window.obj : window.cpp
