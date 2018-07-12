AR = ar rcs
OBJS = $(patsubst %.c,%.o,$(wildcard *.c))

all:libz.a

libz.a:
	gcc -O3 -DUSE_MMAP -I.. -c adler32.c compress.c crc32.c deflate.c gzclose.c \
	gzlib.c gzread.c gzwrite.c infback.c inflate.c inftrees.c inffast.c trees.c uncompr.c zutil.c;
	$(AR) libz.a *.o
	
clean:
	rm -f $(OBJS)
	rm -f libz.a

