# Copyright (c)  2002, Apple Computer, Inc. All rights reserved.
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
# 
# 1.  Redistributions of source code must retain the above copyright
# notice, this list of conditions and the following disclaimer.
# 
# 2.  Redistributions in binary form must reproduce the above copyright
# notice, this list of conditions and the following disclaimer in the
# documentation and/or other materials provided with the distribution.
# 
# 3.  Neither the name of Apple Computer, Inc. ("Apple") nor the names of
# its contributors may be used to endorse or promote products derived from
# this software without specific prior written permission.
# 
# THIS SOFTWARE IS PROVIDED BY APPLE AND ITS CONTRIBUTORS "AS IS" AND ANY
# EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
# PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL APPLE OR ITS CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
# THE POSSIBILITY OF SUCH DAMAGE.
#

ADMIN_THINGS = od_activate_lists od_adduser od_approve od_joingroup od_newproj od_wrapper odpasswd odvissh
MAIL_LIST_THINGS = od_create_lists
WEB_THINGS = od_set_sshkey od_web_wrapper od_set_forward od_set_passwd
TEXT_THINGS = od_approve_user.txt od_approve_join.txt od_approve_project.txt
PRODUCTS = ${ADMIN_THINGS} ${MAIL_LIST_THINGS} ${WEB_THINGS} ${TEXT_THINGS}
WRAPPER_THINGS = od_wrapper od_create_lists od_web_wrapper
INSTALL_DIR = /usr/local/bin
ADMIN_OWNER = root
ADMIN_GROUP = daemon
MAIL_LIST_OWNER = mailman
MAIL_LIST_GROUP = daemon
WEB_OWNER = root
WEB_GROUP = www
INSTALL_PRIVS = 750
WRAPPER_PRIVS = 4750
TEXT_PRIVS = 440
INSTALLER = /usr/bin/install

all:	${PRODUCTS}

od_wrapper:	od_wrapper.c

od_web_wrapper: od_web_wrapper.c

install:	all
	${INSTALLER} -c -o ${ADMIN_OWNER} -g ${ADMIN_GROUP} -m ${INSTALL_PRIVS} ${ADMIN_THINGS} ${INSTALL_DIR}
	${INSTALLER} -c -o ${MAIL_LIST_OWNER} -g ${MAIL_LIST_GROUP} -m ${WRAPPER_PRIVS} ${MAIL_LIST_THINGS} ${INSTALL_DIR}
	${INSTALLER} -c -o ${ADMIN_OWNER} -g ${ADMIN_GROUP} -m ${WRAPPER_PRIVS} od_wrapper ${INSTALL_DIR}
	${INSTALLER} -c -o ${ADMIN_OWNER} -g ${ADMIN_GROUP} -m ${TEXT_PRIVS} ${TEXT_THINGS} ${INSTALL_DIR}
	${INSTALLER} -c -o ${WEB_OWNER} -g ${WEB_GROUP} -m ${INSTALL_PRIVS} ${WEB_THINGS} ${INSTALL_DIR}
	${INSTALLER} -c -o ${WEB_OWNER} -g ${WEB_GROUP} -m ${WRAPPER_PRIVS} od_web_wrapper ${INSTALL_DIR}
