# /etc makefile
# Kevin Van Vechten | kevin@opendarwin.org

HOST = $(shell hostname -s)
ETC_THINGS = adduser.conf backup-common crontab hostconfig inetd.conf named.conf rsyncd.conf shells ssh_config sshd_config
EXE_THINGS = backup-${HOST}-daily backup-${HOST}-monthly backup-${HOST}-weekly
SUBDIRS = httpd mail
PRODUCTS = ${ETC_THINGS} ${EXE_THINGS} ${SUBDIRS}
INSTALL_DIR = /etc
ETC_OWNER = root 
ETC_GROUP = wheel
ETC_PRIVS = 644
EXE_PRIVS = 755

INSTALLER = /usr/bin/install

mail:
	$(MAKE) -C mail

httpd:
	$(MAKE) -C httpd

all:	${PRODUCTS}

install:	all
#	${INSTALLER} -cp -o ${ETC_OWNER} -g ${ETC_GROUP} -m ${ETC_PRIVS} ${ETC_THINGS} ${INSTALL_DIR}
	${INSTALLER} -cp -o ${ETC_OWNER} -g ${ETC_GROUP} -m ${EXE_PRIVS} ${EXE_THINGS} ${INSTALL_DIR}
	$(MAKE) -C httpd install
	$(MAKE) -C mail install

clean:
	$(MAKE) -C httpd clean
	$(MAKE) -C mail clean
