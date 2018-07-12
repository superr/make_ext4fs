COLIB = ../../core

AR = ar rcs
OBJS = $(patsubst %.c,%.o,$(wildcard *.c))

all:libselinux.a

libselinux.a:
	gcc -DHOST -I../include -I$(COLIB)/include -c callbacks.c check_context.c \
	freecon.c init.c label.c label_file.c label_android_property.c;
	$(AR) libselinux.a *.o
	
clean:
	rm -f $(OBJS)
	rm -f libselinux.a

