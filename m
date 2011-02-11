Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9D9424C80104
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 08:58:35 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1BEwZgW016959
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 06:58:35 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 11 Feb 2011 06:58:34 -0800
Received: from msp-mhatle-lx2.wrs.com ([172.25.34.61]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 11 Feb 2011 06:58:34 -0800
From: Mark Hatle <mark.hatle@windriver.com>
To: poky@yoctoproject.org
Date: Fri, 11 Feb 2011 08:56:02 -0600
Message-Id: <09f1eb58e327df0dc775812907aea348b0d113fc.1297435715.git.mark.hatle@windriver.com>
X-Mailer: git-send-email 1.7.3.4
In-Reply-To: <cover.1297435715.git.mark.hatle@windriver.com>
References: <cover.1297435715.git.mark.hatle@windriver.com>
In-Reply-To: <cover.1297435715.git.mark.hatle@windriver.com>
References: <cover.1297435715.git.mark.hatle@windriver.com>
X-OriginalArrivalTime: 11 Feb 2011 14:58:34.0919 (UTC)
	FILETIME=[27F04370:01CBC9FC]
Subject: [PATCH 4/4] recipes: pre/post actions
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
X-List-Received-Date: Fri, 11 Feb 2011 14:58:35 -0000

A number of the recipes did not properly label their pre and post
actions, causing the actions to occur in all split packages.  This
was corrected by defaulting to _${PN} in most cases.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta/recipes-bsp/hostap/hostap-conf_1.0.bb         |    4 ++--
 meta/recipes-bsp/lrzsz/lrzsz_0.12.20.bb            |    4 ++--
 meta/recipes-bsp/orinoco/orinoco-conf_1.0.bb       |    4 ++--
 .../libnss-mdns/libnss-mdns_0.10.bb                |    4 ++--
 .../ppp-dialin/ppp-dialin_0.1.bb                   |    4 ++--
 .../recipes-core/base-passwd/base-passwd_3.5.22.bb |    2 +-
 meta/recipes-core/dropbear/dropbear.inc            |    4 ++--
 .../sgml-common/sgml-common_0.6.3.bb               |    4 ++--
 meta/recipes-extended/bash/bash.inc                |    2 +-
 meta/recipes-extended/bash/bash_3.2.48.bb          |    2 +-
 meta/recipes-extended/sudo/sudo.inc                |    2 +-
 .../ttf-fonts/liberation-fonts_1.04.bb             |    2 +-
 .../ttf-fonts/liberation-fonts_1.06.bb             |    2 +-
 .../ttf-fonts/ttf-bitstream-vera_1.10.bb           |    2 +-
 .../update-modules/update-modules_1.0.bb           |    2 +-
 15 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/meta/recipes-bsp/hostap/hostap-conf_1.0.bb b/meta/recipes-bsp/hostap/hostap-conf_1.0.bb
index fa29470..de72b76 100644
--- a/meta/recipes-bsp/hostap/hostap-conf_1.0.bb
+++ b/meta/recipes-bsp/hostap/hostap-conf_1.0.bb
@@ -19,13 +19,13 @@ do_install() {
 	install -m 0644 ${WORKDIR}/hostap_cs.modalias ${D}${sysconfdir}/modutils/hostap_cs.conf
 }
 
-pkg_postinst () {
+pkg_postinst_${PN} () {
 	if [ -n "$D" ]; then
 		exit 1
 	fi
 	update-modules || true
 }
 
-pkg_postrm () {
+pkg_postrm_${PN} () {
 	update-modules || true
 }
diff --git a/meta/recipes-bsp/lrzsz/lrzsz_0.12.20.bb b/meta/recipes-bsp/lrzsz/lrzsz_0.12.20.bb
index 6d08084..4cefdb7 100644
--- a/meta/recipes-bsp/lrzsz/lrzsz_0.12.20.bb
+++ b/meta/recipes-bsp/lrzsz/lrzsz_0.12.20.bb
@@ -28,13 +28,13 @@ do_install() {
 	install -m 0755 src/lrz src/lsz ${D}${bindir}/
 }
 
-pkg_postinst() {
+pkg_postinst_${PN}() {
 	for util in rz rx rb sz sx sb; do
 		update-alternatives --install ${bindir}/$util $util lrz 100
 	done
 }
 
-pkg_postrm() {
+pkg_postrm_${PN}() {
 	for util in rz rx rb sz sx sb; do
 		update-alternatives --remove $util ${bindir}/lrz
 	done
diff --git a/meta/recipes-bsp/orinoco/orinoco-conf_1.0.bb b/meta/recipes-bsp/orinoco/orinoco-conf_1.0.bb
index a24d004..1c25e02 100644
--- a/meta/recipes-bsp/orinoco/orinoco-conf_1.0.bb
+++ b/meta/recipes-bsp/orinoco/orinoco-conf_1.0.bb
@@ -15,13 +15,13 @@ do_install() {
         install -m 0644 ${WORKDIR}/orinoco_cs.conf ${D}${sysconfdir}/modutils/
 }
 
-pkg_postinst () {
+pkg_postinst_${PN} () {
 	if [ -n "$D" ]; then
 		exit 1
 	fi
 	update-modules || true
 }
 
-pkg_postrm () {
+pkg_postrm_${PN} () {
 	update-modules || true
 }
diff --git a/meta/recipes-connectivity/libnss-mdns/libnss-mdns_0.10.bb b/meta/recipes-connectivity/libnss-mdns/libnss-mdns_0.10.bb
index 4c94d2a..b04b20a 100644
--- a/meta/recipes-connectivity/libnss-mdns/libnss-mdns_0.10.bb
+++ b/meta/recipes-connectivity/libnss-mdns/libnss-mdns_0.10.bb
@@ -25,14 +25,14 @@ DEBIANNAME_${PN} = "libnss-mdns"
 EXTRA_OECONF = "--libdir=/lib --disable-lynx --enable-avahi"
 
 # TODO: pattern based configuration update
-pkg_postinst () {
+pkg_postinst_${PN} () {
 	cat /etc/nsswitch.conf | grep "hosts:\s*files dns$" > /dev/null && {
 		cat /etc/nsswitch.conf | sed 's/hosts:\s*files dns/& mdns4/' > /tmp/nsswitch.conf
 		mv /tmp/nsswitch.conf /etc/nsswitch.conf
 	}
 }
 
-pkg_prerm () {
+pkg_prerm_${PN} () {
 	cat /etc/nsswitch.conf | grep "hosts:\s*files dns mdns4$" > /dev/null && {
 		cat /etc/nsswitch.conf | sed 's/\(hosts:\s*files dns\) mdns4*/\1/' > /tmp/nsswitch.conf
 		mv /tmp/nsswitch.conf /etc/nsswitch.conf
diff --git a/meta/recipes-connectivity/ppp-dialin/ppp-dialin_0.1.bb b/meta/recipes-connectivity/ppp-dialin/ppp-dialin_0.1.bb
index aa3684a..f57597d 100644
--- a/meta/recipes-connectivity/ppp-dialin/ppp-dialin_0.1.bb
+++ b/meta/recipes-connectivity/ppp-dialin/ppp-dialin_0.1.bb
@@ -20,7 +20,7 @@ do_install() {
 
 PACKAGE_ARCH = "all"
 
-pkg_postinst() {
+pkg_postinst_${PN} () {
 if test "x$D" != "x"; then
 	exit 1
 else
@@ -28,7 +28,7 @@ else
 fi
 }
 
-pkg_postrm() {
+pkg_postrm_${PN} () {
 if test "x$D" != "x"; then
 	exit 1
 else
diff --git a/meta/recipes-core/base-passwd/base-passwd_3.5.22.bb b/meta/recipes-core/base-passwd/base-passwd_3.5.22.bb
index b826367..aed8491 100644
--- a/meta/recipes-core/base-passwd/base-passwd_3.5.22.bb
+++ b/meta/recipes-core/base-passwd/base-passwd_3.5.22.bb
@@ -40,7 +40,7 @@ do_install_append_openmn() {
 }
 
 
-pkg_postinst () {
+pkg_postinst_${PN} () {
 	set -e
 
 	if [ ! -e $D${sysconfdir}/passwd ] ; then
diff --git a/meta/recipes-core/dropbear/dropbear.inc b/meta/recipes-core/dropbear/dropbear.inc
index dd2f0c5..ab7719c 100644
--- a/meta/recipes-core/dropbear/dropbear.inc
+++ b/meta/recipes-core/dropbear/dropbear.inc
@@ -63,12 +63,12 @@ do_install() {
 	chmod 755 ${D}${sysconfdir}/init.d/dropbear
 }
 
-pkg_postinst () {
+pkg_postinst_${PN} () {
 	update-alternatives --install ${bindir}/scp scp ${sbindir}/dropbearmulti 20
 	update-alternatives --install ${bindir}/ssh ssh ${sbindir}/dropbearmulti 20
 }
 
-pkg_postrm_append () {
+pkg_postrm_append_${PN} () {
   if [ -f "${sysconfdir}/dropbear/dropbear_rsa_host_key" ]; then
         rm ${sysconfdir}/dropbear/dropbear_rsa_host_key
   fi
diff --git a/meta/recipes-devtools/sgml-common/sgml-common_0.6.3.bb b/meta/recipes-devtools/sgml-common/sgml-common_0.6.3.bb
index 92014a8..63e0acd 100644
--- a/meta/recipes-devtools/sgml-common/sgml-common_0.6.3.bb
+++ b/meta/recipes-devtools/sgml-common/sgml-common_0.6.3.bb
@@ -31,7 +31,7 @@ do_compile_append() {
 
 FILES_sgml-common_append = " ${datadir}/sgml"
 
-pkg_postinst() {
+pkg_postinst_${PN}() {
 	install-catalog \
 		--add ${sysconfdir}/sgml/sgml-ent.cat \
 		${datadir}/sgml/sgml-iso-entities-8879.1986/catalog
@@ -41,7 +41,7 @@ pkg_postinst() {
 		${sysconfdir}/sgml/sgml-ent.cat
 }
 
-pkg_postrm() {
+pkg_postrm_${PN}() {
 	install-catalog \
 		--remove ${sysconfdir}/sgml/sgml-ent.cat \
 		${datadir}/sgml/sgml-iso-entities-8879.1986/catalog
diff --git a/meta/recipes-extended/bash/bash.inc b/meta/recipes-extended/bash/bash.inc
index a87b87f..ecbd75d 100644
--- a/meta/recipes-extended/bash/bash.inc
+++ b/meta/recipes-extended/bash/bash.inc
@@ -27,7 +27,7 @@ do_configure () {
 	oe_runconf
 }
 
-pkg_postinst () {
+pkg_postinst_${PN} () {
 	touch $D${sysconfdir}/shells
 	grep -q "bin/bash" $D${sysconfdir}/shells || echo /bin/bash >> $D${sysconfdir}/shells
 	grep -q "bin/sh" $D${sysconfdir}/shells || echo /bin/sh >> $D${sysconfdir}/shells
diff --git a/meta/recipes-extended/bash/bash_3.2.48.bb b/meta/recipes-extended/bash/bash_3.2.48.bb
index e5a3e36..0912ad6 100644
--- a/meta/recipes-extended/bash/bash_3.2.48.bb
+++ b/meta/recipes-extended/bash/bash_3.2.48.bb
@@ -28,7 +28,7 @@ do_configure () {
 	oe_runconf
 }
 
-pkg_postinst () {
+pkg_postinst_${PN} () {
 	touch $D${sysconfdir}/shells
 	grep -q "bin/bash" $D${sysconfdir}/shells || echo /bin/bash >> $D${sysconfdir}/shells
 	grep -q "bin/sh" $D${sysconfdir}/shells || echo /bin/sh >> $D${sysconfdir}/shells
diff --git a/meta/recipes-extended/sudo/sudo.inc b/meta/recipes-extended/sudo/sudo.inc
index 1407bf1..6a04a9c 100644
--- a/meta/recipes-extended/sudo/sudo.inc
+++ b/meta/recipes-extended/sudo/sudo.inc
@@ -23,7 +23,7 @@ do_configure_prepend () {
 	fi
 }
 
-pkg_postinst() {
+pkg_postinst_${PN} () {
 	if [ "x$D" != "x" ]; then
 		exit 1
 	fi
diff --git a/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.04.bb b/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.04.bb
index 12d9d86..c50d6eb 100644
--- a/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.04.bb
+++ b/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.04.bb
@@ -32,7 +32,7 @@ do_install () {
 	install -m 0644 License.txt ${D}${datadir}/doc/${PN}/
 }
 
-pkg_postinst () {
+pkg_postinst_${PN} () {
 #!/bin/sh
 fc-cache
 }
diff --git a/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.06.bb b/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.06.bb
index 887536a..f6bf0ce 100644
--- a/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.06.bb
+++ b/meta/recipes-graphics/ttf-fonts/liberation-fonts_1.06.bb
@@ -33,7 +33,7 @@ do_install () {
 	install -m 0644 License.txt ${D}${datadir}/doc/${PN}/
 }
 
-pkg_postinst () {
+pkg_postinst_${PN} () {
 #!/bin/sh
 fc-cache
 }
diff --git a/meta/recipes-graphics/ttf-fonts/ttf-bitstream-vera_1.10.bb b/meta/recipes-graphics/ttf-fonts/ttf-bitstream-vera_1.10.bb
index b9a75a7..bdeb4c1 100644
--- a/meta/recipes-graphics/ttf-fonts/ttf-bitstream-vera_1.10.bb
+++ b/meta/recipes-graphics/ttf-fonts/ttf-bitstream-vera_1.10.bb
@@ -31,7 +31,7 @@ do_install () {
         done 
 } 
 
-pkg_postinst () {
+pkg_postinst_${PN} () {
 #!/bin/sh
 fc-cache
 }
diff --git a/meta/recipes-kernel/update-modules/update-modules_1.0.bb b/meta/recipes-kernel/update-modules/update-modules_1.0.bb
index a473bb5..a8ebbda 100644
--- a/meta/recipes-kernel/update-modules/update-modules_1.0.bb
+++ b/meta/recipes-kernel/update-modules/update-modules_1.0.bb
@@ -10,7 +10,7 @@ PR = "r8"
 SRC_URI = "file://update-modules \
            file://COPYING.GPL"
 
-pkg_postinst() {
+pkg_postinst_${PN} () {
 if [ "x$D" != "x" ]; then
 	exit 1
 fi
-- 
1.7.3.4


