SELIB = libselinux
ZLLIB = zlib/src
SPLIB = core/libsparse
COLIB = core
MALIB = extras/ext4_utils

all:
	$(MAKE) -C $(SELIB)/src all
	$(MAKE) -C $(ZLLIB) all
	$(MAKE) -C $(SPLIB) libsparse.a
	$(MAKE) -C $(MALIB) all
	mv $(MALIB)/make_ext4fs make_ext4fs

clean:
	$(MAKE) -C $(SELIB)/src clean
	$(MAKE) -C $(ZLLIB) clean
	$(MAKE) -C $(SPLIB) clean
	$(MAKE) -C $(MALIB) clean
