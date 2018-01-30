LIBS=`pkg-config --libs gtk+-3.0 --cflags gtk+-3.0` -lmysqlclient
SRC=src/
all:
	gcc ${SRC}main.c ${LIBS} -o programmer
install:
	install programmer /usr/local/bin
	install desktop/programmer.desktop /usr/share/applications
	install desktop/programmer.svg /usr/share/icons/hicolor/scalable/apps
	gtk-update-icon-cache
clean:
	rm programmer
