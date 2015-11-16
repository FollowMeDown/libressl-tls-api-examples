CC=	clang
CFLAGS=	-Wall -g -O0 -I/opt/libressl/include
LDFLAGS=	-L/opt/libressl/lib -ltls -lssl -lcrypto
all:
	${CC} ${CFLAGS} ${LDFLAGS} server.c -o server
	${CC} ${CFLAGS} ${LDFLAGS} client.c -o client
