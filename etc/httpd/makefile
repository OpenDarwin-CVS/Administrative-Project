# lamancha /etc/httpd makefile
# Kevin Van Vechten | kevin@opendarwin.org

HTTPD_THINGS = cvsweb.conf httpd.conf
PRODUCTS = ${ETC_THINGS} ${EXE_THINGS} ${HTTPD_THINGS}
INSTALL_DIR = /etc/httpd
HTTPD_OWNER = root
HTTPD_GROUP = wheel
HTTPD_PRIVS = 644

INSTALLER = /usr/bin/install

all:	${PRODUCTS}

install:	all
	${INSTALLER} -cp -o ${HTTPD_OWNER} -g ${HTTPD_GROUP} -m ${HTTPD_PRIVS} ${HTTPD_THINGS} ${INSTALL_DIR}
#	apachectl restart

clean:
