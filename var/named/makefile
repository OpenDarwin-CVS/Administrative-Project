# lamancha /var/named makefile
# Kevin Van Vechten | kevin@opendarwin.org

NAMED_THINGS = opendarwin.org
PRODUCTS = ${NAMED_THINGS}
INSTALL_DIR = /var/named
NAMED_OWNER = root
NAMED_GROUP = wheel
NAMED_PRIVS = 644

INSTALLER = /usr/bin/install

all:	${PRODUCTS}

install:	all
	${INSTALLER} -cp -o ${NAMED_OWNER} -g ${NAMED_GROUP} -m ${NAMED_PRIVS} ${NAMED_THINGS} ${INSTALL_DIR}
#	kill -HUP `head -n 1 /var/run/named.pid`

clean:
