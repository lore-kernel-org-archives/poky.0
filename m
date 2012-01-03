Return-Path: <walters@verbum.org>
Received: from out5.smtp.messagingengine.com (out5.smtp.messagingengine.com
	[66.111.4.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 931E6E0070D
	for <poky@yoctoproject.org>; Tue,  3 Jan 2012 15:50:46 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@messagingengine.com;
	x-dkim-adsp=none (insecure policy)
Received: from compute3.internal (compute3.nyi.mail.srv.osa [10.202.2.43])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id E2CF020C6C
	for <poky@yoctoproject.org>; Tue,  3 Jan 2012 18:50:44 -0500 (EST)
Received: from frontend1.nyi.mail.srv.osa ([10.202.2.160])
	by compute3.internal (MEProxy); Tue, 03 Jan 2012 18:50:44 -0500
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=subject:from:to:date:content-type
	:message-id:mime-version; s=smtpout; bh=KHP47jRMu7y3sK+rsR9BvgA7
	VFI=; b=ilDvXbx4CboQOeOH6/YaRvqyuDCoqdwPZS0P8FLjGIpvQHOtQ4O7vKVo
	C8b3GLaFpG1y/eAuPCLvMZSpESz7n+m2wJlHIGyFV8BVqWUvTQpNrciF0m01gZP3
	lopuIB7av/PMJFQ56elBTMHemaSSTWIr1HKHmzxtp+5RZ6fQDrI=
X-Sasl-enc: EBs+P+Hid/Cq2uhJ8i2owaS3KUVsP5qBGz8ovOXKDqf6 1325634644
Received: from [192.168.1.6] (c-65-96-60-117.hsd1.ct.comcast.net
	[65.96.60.117])
	by mail.messagingengine.com (Postfix) with ESMTPA id A63758E008D
	for <poky@yoctoproject.org>; Tue,  3 Jan 2012 18:50:44 -0500 (EST)
From: Colin Walters <walters@verbum.org>
To: poky <poky@yoctoproject.org>
Date: Tue, 03 Jan 2012 18:50:27 -0500
X-Mailer: Evolution 3.0.3 (3.0.3-1.fc15) 
Message-ID: <1325634627.24646.0.camel@lenny>
Mime-Version: 1.0
Subject: [PATCH] flex/bison: Don't hardcode M4 path
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
X-List-Received-Date: Tue, 03 Jan 2012 23:50:48 -0000
X-Groupsio-MsgNum: 7309
Content-Type: multipart/mixed; boundary="=-sD1piQWUopOj38V/SJbb"

--=-sD1piQWUopOj38V/SJbb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

The flex and bison configure scripts use AC_PATH_PROG to get a
full path to m4 and embed this in config.h (and then to the
generated binary), but this blows up when the m4 binary is in a
temporary staging directory.
    
Since we are always shipping GNU m4, just set M4=m4 at configure
time so we don't use a hardcoded path.
    
This is an equivalent to what already exists in autoconf.bb.


--=-sD1piQWUopOj38V/SJbb
Content-Disposition: attachment; filename="0001-flex-bison-Don-t-hardcode-M4-path.patch"
Content-Type: text/x-patch; name="0001-flex-bison-Don-t-hardcode-M4-path.patch";
	charset="UTF-8"
Content-Transfer-Encoding: 7bit

From d33924d0de58e25bce73e5b4d61983fe0c1d0119 Mon Sep 17 00:00:00 2001
From: Colin Walters <walters@verbum.org>
Date: Tue, 3 Jan 2012 18:47:32 -0500
Subject: [PATCH] flex/bison: Don't hardcode M4 path

The flex and bison configure scripts use AC_PATH_PROG to get a full
path to m4 and embed this in config.h (and then to the generated
binary), but this blows up when the m4 binary is in a temporary
staging directory.

Since we are always shipping GNU m4, just set M4=m4 at configure time
so we don't use a hardcoded path.

This is an equivalent to what already exists in autoconf.bb.
---
 meta/recipes-devtools/bison/bison_2.5.bb |   10 ++++------
 meta/recipes-devtools/flex/flex.inc      |    7 ++++---
 2 files changed, 8 insertions(+), 9 deletions(-)

diff --git a/meta/recipes-devtools/bison/bison_2.5.bb b/meta/recipes-devtools/bison/bison_2.5.bb
index c5113cd..0536dd4 100644
--- a/meta/recipes-devtools/bison/bison_2.5.bb
+++ b/meta/recipes-devtools/bison/bison_2.5.bb
@@ -21,16 +21,14 @@ SRC_URI = "${BASE_SRC_URI} \
 SRC_URI[md5sum] = "687e1dcd29452789d34eaeea4c25abe4"
 SRC_URI[sha256sum] = "722def46e4a19a5b7a579ef30db1965f86c37c1a20a5f0113743a2e4399f7c99"
 
+# We don't want to hardcode the m4 path since it will be found
+# in the staging directory.
+EXTRA_OECONF = " M4=m4"
+
 DEPENDS_virtclass-native = "gettext-minimal-native"
 SRC_URI_virtclass-native = "${BASE_SRC_URI}"
 
 inherit autotools gettext
 acpaths = "-I ${S}/m4"
 
-do_install_append_virtclass-native() {
-	create_wrapper ${D}/${bindir}/bison \
-		M4=${STAGING_BINDIR_NATIVE}/m4 \
-		BISON_PKGDATADIR=${STAGING_DATADIR_NATIVE}/bison
-}
-#bison-native encodes the staging M4 path
 BBCLASSEXTEND = "native"
diff --git a/meta/recipes-devtools/flex/flex.inc b/meta/recipes-devtools/flex/flex.inc
index 01f7571..a913d21 100644
--- a/meta/recipes-devtools/flex/flex.inc
+++ b/meta/recipes-devtools/flex/flex.inc
@@ -10,6 +10,7 @@ SRC_URI = "${SOURCEFORGE_MIRROR}/flex/flex-${PV}.tar.bz2 "
 
 inherit autotools gettext
 
-do_install_append_virtclass-native() {
-	create_wrapper ${D}/${bindir}/flex M4=${STAGING_BINDIR_NATIVE}/m4
-}
+# We don't want to hardcode the m4 path since it will be found
+# in the staging directory.
+EXTRA_OECONF = " M4=m4"
+
-- 
1.7.6.4


--=-sD1piQWUopOj38V/SJbb--
