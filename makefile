LIBS=`pkg-config --libs gtk+-3.0 --cflags gtk+-3.0` -lmysqlclient
SRC=src/
BIN=bin/
all:
	gcc ${SRC}main.c ${LIBS} -o ${BIN}programmer
install:
	install ${BIN}programmer /usr/local/bin
	install desktop/programmer.desktop /usr/share/applications
	install desktop/programmer.svg /usr/share/icons/hicolor/scalable
	gtk-update-icon-cache
clean:
	rm programmer
