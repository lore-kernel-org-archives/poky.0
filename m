Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id ABDE24C80A7C
	for <poky@yoctoproject.org>; Wed, 11 May 2011 03:09:42 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4B89g4J019666
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 11 May 2011 01:09:42 -0700 (PDT)
Received: from localhost (128.224.162.28) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 11 May 2011 01:09:41 -0700
Message-ID: <91b7181ddd21837b12fa1d1f644806599e3b3558.1305016641.git.xiaofeng.yan@windriver.com>
In-Reply-To: <cover.1305016641.git.xiaofeng.yan@windriver.com>
References: <cover.1305016641.git.xiaofeng.yan@windriver.com>
Old-Date: Tue, 10 May 2011 16:30:16 +0800
Date: Wed, 11 May 2011 16:09:03 +0800
To: <poky@yoctoproject.org>
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.28]
Subject: [PATCH 2/3] init-functions: Conforming applications may install one or more initialization scripts
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 11 May 2011 08:09:42 -0000
Content-Type: text/plain

From: Xiaofeng Yan <xiaofeng.yan@windriver.com>

LSB Test Suite need init scripts for lsb-image.

During the installer's post-install processing phase the program /usr/lib/lsb/install_initd \
must be called to activate the init script. \
When a software package is removed, /usr/lib/lsb/remove_initd \
must be called to deactivate the init script.

Signed-off-by: Xiaofeng Yan <xiaofeng.yan@windriver.com>
---
 meta/recipes-extended/lsb/lsb/init-functions   |   32 +++++++++++++++++
 meta/recipes-extended/lsb/lsb/lsb_killproc     |    6 +++
 meta/recipes-extended/lsb/lsb/lsb_log_message  |   27 ++++++++++++++
 meta/recipes-extended/lsb/lsb/lsb_pidofproc    |    6 +++
 meta/recipes-extended/lsb/lsb/lsb_start_daemon |   45 ++++++++++++++++++++++++
 5 files changed, 116 insertions(+), 0 deletions(-)
 create mode 100755 meta/recipes-extended/lsb/lsb/init-functions
 create mode 100755 meta/recipes-extended/lsb/lsb/lsb_killproc
 create mode 100755 meta/recipes-extended/lsb/lsb/lsb_log_message
 create mode 100755 meta/recipes-extended/lsb/lsb/lsb_pidofproc
 create mode 100755 meta/recipes-extended/lsb/lsb/lsb_start_daemon

diff --git a/meta/recipes-extended/lsb/lsb/init-functions b/meta/recipes-extended/lsb/lsb/init-functions
new file mode 100755
index 0000000..bf424dd
--- /dev/null
+++ b/meta/recipes-extended/lsb/lsb/init-functions
@@ -0,0 +1,32 @@
+#!/bin/sh
+
+# LSB initscript functions, as defined in the LSB Spec 1.1.0
+#
+# Lawrence Lim <llim@core.com> - Tue, 26 June 2007
+# Updated to the latest LSB 3.1 spec
+# http://refspecs.freestandards.org/LSB_3.1.0/LSB-Core-generic/LSB-Core-generic_lines.txt
+
+start_daemon () {
+	/etc/core-lsb/lsb_start_daemon "$@"
+}
+
+killproc () {
+	/etc/core-lsb/lsb_killproc "$@"
+}
+
+pidofproc () {
+	/etc/core-lsb/lsb_pidofproc "$@"
+}
+
+log_success_msg () {
+	/etc/core-lsb/lsb_log_message success "$@"
+}
+
+log_failure_msg () {
+	/etc/core-lsb/lsb_log_message failure "$@"
+}
+
+log_warning_msg () {
+	/etc/core-lsb/lsb_log_message warning "$@"
+}
+
diff --git a/meta/recipes-extended/lsb/lsb/lsb_killproc b/meta/recipes-extended/lsb/lsb/lsb_killproc
new file mode 100755
index 0000000..e1121e4
--- /dev/null
+++ b/meta/recipes-extended/lsb/lsb/lsb_killproc
@@ -0,0 +1,6 @@
+#!/bin/bash
+
+. /etc/init.d/functions
+
+LSB=LSB-1.1 killproc $*
+exit $?
diff --git a/meta/recipes-extended/lsb/lsb/lsb_log_message b/meta/recipes-extended/lsb/lsb/lsb_log_message
new file mode 100755
index 0000000..2995f78
--- /dev/null
+++ b/meta/recipes-extended/lsb/lsb/lsb_log_message
@@ -0,0 +1,27 @@
+#!/bin/bash
+
+. /etc/init.d/functions
+
+ACTION=$1
+shift
+
+case "$ACTION" in
+  success)
+  	echo -n $*
+	success "$*"
+	echo
+	;;
+  failure)
+  	echo -n $*
+	failure "$*"
+	echo
+	;;
+  warning)
+  	echo -n $*
+	warning "$*"
+	echo
+	;;
+  *)
+  	;;
+esac
+exit 0
diff --git a/meta/recipes-extended/lsb/lsb/lsb_pidofproc b/meta/recipes-extended/lsb/lsb/lsb_pidofproc
new file mode 100755
index 0000000..ffc17bb
--- /dev/null
+++ b/meta/recipes-extended/lsb/lsb/lsb_pidofproc
@@ -0,0 +1,6 @@
+#!/bin/bash
+
+. /etc/init.d/functions
+
+pidofproc $*
+exit $?
diff --git a/meta/recipes-extended/lsb/lsb/lsb_start_daemon b/meta/recipes-extended/lsb/lsb/lsb_start_daemon
new file mode 100755
index 0000000..05b6371
--- /dev/null
+++ b/meta/recipes-extended/lsb/lsb/lsb_start_daemon
@@ -0,0 +1,45 @@
+#!/bin/bash
+
+. /etc/init.d/functions
+
+nice=
+force=
+pidfile=
+user=
+check=
+RETVAL=
+while [ "$1" != "${1##[-+]}" ]; do
+	case $1 in
+	     -f)
+	     	force="--force"
+		shift
+		;;
+	     -n)
+	     	nice=$2
+		shift 2
+		;;
+	     -p)
+		pidfile="--pidfile $2"
+		shift 2
+		;;
+	     -u)
+	        user="--user $2"
+		shift 2
+		;;
+	     -c)
+	        check="--check $2"
+		shift 2
+		;;
+	      *)     
+ 		echo "Unknown Option $1"
+ 		echo "Options are:"
+ 		echo "-f" 
+		echo "-p {pidfile}"
+		echo "-n [+/-nicelevel]"
+		echo "-u {user}"
+		echo "-c {base}"
+	        exit 1;;	
+	esac
+done
+LSB=LSB-1.1 daemon ${force:-} ${nice:-} ${pidfile:-} ${user:-} ${check:-} $*
+exit $?
-- 
1.7.0.4


