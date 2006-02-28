#!/bin/sh

# Export all of the odSSHAccount and odProject objects to an LDIF file.
# Copy the LDIF file over to the other machines.
# They'll import the LDIF on their own time.

ldapsearch \
	-x \
	-D uid=diradmin,cn=users,dc=opendarwin,dc=org \
	-y /var/opendarwin/secrets/ldap_admin.txt \
	-b cn=users,dc=opendarwin,dc=org \
	'(objectClass=odSSHAccount)' > \
		/var/opendarwin/secrets/master.ldif

ldapsearch \
        -x \
        -D uid=diradmin,cn=users,dc=opendarwin,dc=org \
        -y /var/opendarwin/secrets/ldap_admin.txt \
        -b cn=groups,dc=opendarwin,dc=org \
        '(objectClass=posixGroup)' >> \
		/var/opendarwin/secrets/master.ldif

#for remote in lamancha dulcinea ; do
for remote in dulcinea ; do
	echo $remote
	scp \
		-i /var/root/.ssh/id_dsa.opendarwin \
		-q \
		/var/opendarwin/secrets/master.ldif \
		${remote}.opendarwin.org:/var/opendarwin/secrets/master.ldif \
		
	ssh \
		-i /var/root/.ssh/id_dsa.opendarwin \
		${remote}.opendarwin.org \
		/usr/local/bin/ldap_import.sh
done
