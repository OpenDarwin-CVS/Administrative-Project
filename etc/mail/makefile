# lamancha /etc/mail makefile
# Kevin Van Vechten | kevin@opendarwin.org

MAIL_THINGS = sendmail.cf
PRODUCTS = ${MAIL_THINGS}
INSTALL_DIR = /etc/mail
MAIL_OWNER = root
MAIL_GROUP = wheel
MAIL_PRIVS = 644

M4 = /usr/bin/m4
SENDMAIL_CFDIR = /usr/share/sendmail/conf

INSTALLER = /usr/bin/install

sendmail.cf: opendarwin.mc
	${M4} -D_CF_DIR_=${SENDMAIL_CFDIR}/ ${SENDMAIL_CFDIR}/m4/cf.m4 opendarwin.mc > sendmail.cf

all:	${PRODUCTS}

install:	all
	${INSTALLER} -cp -o ${MAIL_OWNER} -g ${MAIL_GROUP} -m ${MAIL_PRIVS} ${MAIL_THINGS} ${INSTALL_DIR}
#	kill -HUP `head -n 1 /var/run/sendmail.pid`

clean:
	rm -f sendmail.cf
