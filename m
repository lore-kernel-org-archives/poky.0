Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57295E00320
	for <poky@yoctoproject.org>; Fri,  2 Sep 2011 09:46:32 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id DD4D51660270; Fri,  2 Sep 2011 10:46:31 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id CE05A166025A;
	Fri,  2 Sep 2011 10:46:29 -0600 (MDT)
Message-ID: <4E610865.1000305@mlbassoc.com>
Date: Fri, 02 Sep 2011 10:46:29 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:6.0) Gecko/20110816 Thunderbird/6.0
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: [PATCH] Update poky-feed-config-opkg to generate a useful package setup
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
X-List-Received-Date: Fri, 02 Sep 2011 16:46:32 -0000
X-Groupsio-MsgNum: 6897
Content-Type: multipart/mixed; boundary="------------000609030304090209070803"

--------------000609030304090209070803
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

The current poky-feed-config-opkg package only generates a skeleton for the
opkg setups.  In particular, the base configuration file /etc/opkg/base-files.conf
is not filled in at all.

The attached patch fills this file in, using variables set by the
user (local.conf, site.conf, etc).  If left unset, the behaviour will
be the same as current.

One thing I found is that opkg is very noisy if there are databases
mentioned in base-files.conf that don't exist.  For example, on ARM
platforms, there are a large number of possibilities (arm, armv5, armv6, ...)
that are never populated in .../tmp/deploy/ipk.  The changes to this
recipe will prune the file to only include those ipk databases which
have actual files present.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------000609030304090209070803
Content-Type: text/plain;
 name="0001-Generate-useful-opkg-setup.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="0001-Generate-useful-opkg-setup.patch"

From 5f2702b306f5595e6d66b756776a8c8bcc905149 Mon Sep 17 00:00:00 2001
From: Gary Thomas <gary@mlbassoc.com>
Date: Fri, 2 Sep 2011 10:40:43 -0600
Subject: [PATCH] Generate useful opkg setup

Signed-off-by: Gary Thomas <gary@mlbassoc.com>
---
 .../feed-config/poky-feed-config-opkg_1.0.bb       |   20 ++++++++++++++------
 1 files changed, 14 insertions(+), 6 deletions(-)

diff --git a/meta/recipes-core/feed-config/poky-feed-config-opkg_1.0.bb b/meta/recipes-core/feed-config/poky-feed-config-opkg_1.0.bb
index fc223c9..30b5e2e 100644
--- a/meta/recipes-core/feed-config/poky-feed-config-opkg_1.0.bb
+++ b/meta/recipes-core/feed-config/poky-feed-config-opkg_1.0.bb
@@ -1,12 +1,12 @@
 DESCRIPTION = "Poky example feed configuration"
 LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
-PR = "r1"
+PR = "r2"
 PACKAGE_ARCH = "${MACHINE_ARCH}"
 INHIBIT_DEFAULT_DEPS = "1"
 
-#FEEDNAMEPREFIX ?= "INVALID"
-#FEEDURIPREFIX ?= "INVALID"
+FEEDNAMEPREFIX ?= "INVALID"
+FEEDURIPREFIX ?= "INVALID"
 
 do_compile() {
 	mkdir -p ${S}/${sysconfdir}/opkg/
@@ -26,11 +26,19 @@ do_compile() {
 	rm -f $basefeedconf
 	touch $basefeedconf
 
-	#for arch in $ipkgarchs; do
-	#        echo "src/gz ${FEEDNAMEPREFIX}-$arch http://pokylinux.org/${FEEDURIPREFIX}$arch" >> $basefeedconf
-	#done
+	if [ "${FEEDNAMEPREFIX}" != "INVALID" ]; then
+	   for arch in $ipkgarchs; do
+	       # Only export real directories
+	       if [ -d "${DEPLOY_DIR}/ipk/${arch}" ]; then
+	       	       echo "src/gz ${FEEDNAMEPREFIX}-$arch ${FEEDURIPREFIX}/$arch" >> $basefeedconf
+               fi
+	   done
+	fi
 }
 
+# This should ensure that all active architectures are represented above
+do_compile[depends] += "base-files:do_package"
+do_compile[depends] += "virtual/kernel:do_package"
 
 do_install () {
 	install -d ${D}${sysconfdir}/opkg
-- 
1.7.6


--------------000609030304090209070803--
