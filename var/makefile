# lamancha /var makefile
# Kevin Van Vechten | kevin@opendarwin.org

SUBDIRS = named
PRODUCTS = ${SUBDIRS}
INSTALL_DIR = /var
ETC_OWNER = root 
ETC_GROUP = wheel
ETC_PRIVS = 644

INSTALLER = /usr/bin/install

named:
	$(MAKE) -C named

all:	${PRODUCTS}

install:	all
	$(MAKE) -C named install

clean:
	$(MAKE) -C named clean
