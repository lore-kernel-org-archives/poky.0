Return-Path: <Alex.deVries@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 08C434C811AA
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 14:32:10 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBFKWApB021594;
	Wed, 15 Dec 2010 12:32:10 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 15 Dec 2010 12:32:09 -0800
Received: from localhost ([128.224.146.68]) by ala-mail06.corp.ad.wrs.com with
	Microsoft SMTPSVC(6.0.3790.1830); Wed, 15 Dec 2010 12:32:09 -0800
From: Alex deVries <alex.devries@windriver.com>
To: rpurdie@linux.intel.com
Date: Wed, 15 Dec 2010 15:34:57 -0500
Message-Id: <915e67be985d23c9af1c4f2fccc712c96129f42f.1292444983.git.alex.devries@windriver.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <cover.1292444983.git.alex.devries@windriver.com>
References: <cover.1292444983.git.alex.devries@windriver.com>
In-Reply-To: <cover.1292444983.git.alex.devries@windriver.com>
References: <cover.1292444983.git.alex.devries@windriver.com>
X-OriginalArrivalTime: 15 Dec 2010 20:32:09.0843 (UTC)
	FILETIME=[25CDCC30:01CB9C97]
Cc: poky@yoctoproject.org
Subject: [PATCH 1/4] Stop using hardcoded paths, use new Ubuntu and generic filters.
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
X-List-Received-Date: Wed, 15 Dec 2010 20:32:11 -0000

---
 meta/classes/image-swab.bbclass               |    2 +-
 meta/conf/swabber/Ubuntu-10.04.1-64/blacklist |    6 ++++++
 meta/conf/swabber/Ubuntu-10.04.1-64/filters   |    7 +++++++
 meta/conf/swabber/Ubuntu-10.04.1-64/whitelist |   23 +++++++++++++++++++++++
 meta/conf/swabber/generic/blacklist           |    2 ++
 meta/conf/swabber/generic/filters             |   10 ++++++++++
 meta/conf/swabber/generic/whitelist           |   15 +++++++++++++++
 7 files changed, 64 insertions(+), 1 deletions(-)
 create mode 100644 meta/conf/swabber/Ubuntu-10.04.1-64/blacklist
 create mode 100644 meta/conf/swabber/Ubuntu-10.04.1-64/filters
 create mode 100644 meta/conf/swabber/Ubuntu-10.04.1-64/whitelist
 create mode 100644 meta/conf/swabber/generic/blacklist
 create mode 100644 meta/conf/swabber/generic/filters
 create mode 100644 meta/conf/swabber/generic/whitelist

diff --git a/meta/classes/image-swab.bbclass b/meta/classes/image-swab.bbclass
index 93918bf..c9b321c 100644
--- a/meta/classes/image-swab.bbclass
+++ b/meta/classes/image-swab.bbclass
@@ -74,7 +74,7 @@ do_generate_swabber_report () {
 
   if [ "$(ls -A ${HOST_DATA})" ]; then
     echo "Generating swabber report"
-    swabber -d ${HOST_DATA} -l ${SWABBER_LOGS} -o ${SWABBER_REPORT}/report-${REPORTSTAMP}.txt -r ${SWABBER_REPORT}/extra_report-${REPORTSTAMP}.txt -c all -p ${TOPDIR} ${OEROOT} /tmp /dev /proc /usr/lib/python2.6 /usr/local/lib/python2.6 /usr/lib/pymodules /etc/ld.so.cache
+    swabber -d ${HOST_DATA} -l ${SWABBER_LOGS} -o ${SWABBER_REPORT}/report-${REPORTSTAMP}.txt -r ${SWABBER_REPORT}/extra_report-${REPORTSTAMP}.txt -c all -p ${TOPDIR} -f ${OEROOT}/meta/conf/swabber ${TOPDIR} ${OEROOT} ${CCACHE_DIR}
   else
     echo "No host data, cannot generate swabber report."
   fi
diff --git a/meta/conf/swabber/Ubuntu-10.04.1-64/blacklist b/meta/conf/swabber/Ubuntu-10.04.1-64/blacklist
new file mode 100644
index 0000000..5fdb8f2
--- /dev/null
+++ b/meta/conf/swabber/Ubuntu-10.04.1-64/blacklist
@@ -0,0 +1,6 @@
+libneon27-gnutls
+openjdk-6-jre-headless
+openjdk-6-jre-lib
+openjdk-6-jre
+libdbus-1-3
+libneon27-gnutls
diff --git a/meta/conf/swabber/Ubuntu-10.04.1-64/filters b/meta/conf/swabber/Ubuntu-10.04.1-64/filters
new file mode 100644
index 0000000..a447f70
--- /dev/null
+++ b/meta/conf/swabber/Ubuntu-10.04.1-64/filters
@@ -0,0 +1,7 @@
+/usr/local/lib/python2.6
+/usr/lib/python2.6
+/usr/lib/pymodules/python2.6
+/usr/lib/perl/5.10
+# which is part of the debianutils packages, but we don't want to put the entire
+# debianutils package in the whitelist.
+/usr/bin/which
diff --git a/meta/conf/swabber/Ubuntu-10.04.1-64/whitelist b/meta/conf/swabber/Ubuntu-10.04.1-64/whitelist
new file mode 100644
index 0000000..f0fe963
--- /dev/null
+++ b/meta/conf/swabber/Ubuntu-10.04.1-64/whitelist
@@ -0,0 +1,23 @@
+base-files
+dash
+libacl1
+libattr1
+libbz2-1.0
+libc6
+libc-bin
+libglib2.0-0
+libncurses5
+libselinux1
+libsqlite3-0
+libssl0.9.8
+mime-support
+perl-base
+python2.6
+python2.6-minimal
+python-apport
+python-gst0.10
+python-imaging
+python-minimal
+python-support
+python-zope.interface
+zlib1g
diff --git a/meta/conf/swabber/generic/blacklist b/meta/conf/swabber/generic/blacklist
new file mode 100644
index 0000000..396bcb4
--- /dev/null
+++ b/meta/conf/swabber/generic/blacklist
@@ -0,0 +1,2 @@
+udev
+dkpg
diff --git a/meta/conf/swabber/generic/filters b/meta/conf/swabber/generic/filters
new file mode 100644
index 0000000..3b10fcb
--- /dev/null
+++ b/meta/conf/swabber/generic/filters
@@ -0,0 +1,10 @@
+/tmp
+/etc/localtime
+/etc/ld.so.cache
+/etc/ld.so.conf
+/etc/passwd
+/etc/group
+/etc/nsswitch.conf
+/proc
+/dev/null
+/dev/tty
diff --git a/meta/conf/swabber/generic/whitelist b/meta/conf/swabber/generic/whitelist
new file mode 100644
index 0000000..48ec2af
--- /dev/null
+++ b/meta/conf/swabber/generic/whitelist
@@ -0,0 +1,15 @@
+bash
+bzip2
+ccache
+coreutils
+cpp
+file
+findutils
+gawk
+grep
+hostname
+make
+sed
+tar
+util-linux
+zlib1g
-- 
1.7.0.4


