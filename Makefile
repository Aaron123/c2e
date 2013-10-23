CC = gcc
CFLAGS = 
CPPFLAGS =

TARGETS = c2e
MANPAGE = c2e.1.gz

OBJS = c2e.o
LDFLAGS = -g -lcurl #-D_DEBUG
CPPFLAGS =

all: ${TARGETS} rmo

c2e: ${OBJS}
	${CC} ${LDFLAGS} $^ -o $@

rmo: ${OBJS}
	@rm -rf ${OBJS}

clean:
	@rm -f *.o
	@rm -f ${TARGETS}

install:
	cp -f ${TARGETS} /usr/bin/
	cp -f ${MANPAGE} /usr/share/man/man1/

uninstall:
	rm -rf /usr/bin/${TARGETS}
	rm -rf /usr/share/man/man1/${MANPAGE}
