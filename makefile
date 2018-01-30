LIBS=`pkg-config --libs gtk+-3.0 --cflags gtk+-3.0` -lmysqlclient
all:
	gcc main.c ${LIBS} -o programmer
install:
	install programmer /usr/local/bin
	install programmer.desktop /usr/share/applications
	install programmer.svg /usr/share/icons/hicolor/scalable
	gtk-update-icon-cache
clean:
	rm programmer
