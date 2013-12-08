Return-Path: <stefan.seyfried@googlemail.com>
Received: from mail-bk0-f53.google.com (mail-bk0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02B7BE00782
	for <poky@yoctoproject.org>; Sun,  8 Dec 2013 04:55:52 -0800 (PST)
Received: by mail-bk0-f53.google.com with SMTP id na10so957457bkb.26
	for <poky@yoctoproject.org>; Sun, 08 Dec 2013 04:55:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type; bh=Sw30GXSCJUkFmUeax8ym2DBlJPZ3Zb3QYRZkYhpJtmg=;
	b=S7pazSsfpGAGZ0UyZTuvMogmA0SgDWJF6UeRd8tFlTffpIOcTvjrfBLfa1v7zWd7bh
	igegPrbJawOTAqmU2kweiNyx6dyXWKzSz3yY2A/k7u7HvfscwOYmO7vUFysQUiIHJQst
	6DTrF4nnSRmlxWLFKx0GfBrEyx7nA/FoJC2e/HyOQL0hrMhLN+lOnsfLZgphnGJa9/rQ
	OnI0MCCpbcT8ekOtecfx2O4wZlaj76q8LanSR5YueMWRVJTiHxKyubft5JZp2QztcSbK
	1nwnR9S0YC0QP0+qQlLqhiz0TC1c6U08NYlHOHPQr7JuT428JPTEd7vr2NS4ZRGilS2q
	dcyg==
X-Received: by 10.204.165.206 with SMTP id j14mr4476077bky.45.1386507350820;
	Sun, 08 Dec 2013 04:55:50 -0800 (PST)
Received: from susi.home.s3e.de (p54B53326.dip0.t-ipconnect.de. [84.181.51.38])
	by mx.google.com with ESMTPSA id z6sm5220826bkn.8.2013.12.08.04.55.48
	for <poky@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 08 Dec 2013 04:55:49 -0800 (PST)
Message-ID: <52A46C53.1040906@message-id.googlemail.com>
Date: Sun, 08 Dec 2013 13:55:47 +0100
From: Stefan Seyfried <stefan.seyfried@googlemail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: poky@yoctoproject.org
X-Enigmail-Version: 1.6
Subject: mklibs patches: fix mklibs on powerpc, use correct ld.so
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 08 Dec 2013 12:55:55 -0000
X-Groupsio-MsgNum: 9338
Content-Type: multipart/mixed; boundary="------------040606050402030104000800"

--------------040606050402030104000800
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi all,

image-mklibs.bbclass was only looking for LSB binaries, which does not
bode well with powerpc

mklibs script is searching for ld.so in /lib instead of sysroot, which
also did not work well for me (powerpc has /lib/ld.so.1 and my x86_64
host has something completely different, and even if it was there it
would be the wrong one).

Patches attached to avoid mangling in thunderbird.

Best regards,

	Stefan
-- 
Stefan Seyfried
Linux Consultant & Developer -- GPG Key: 0x731B665B

B1 Systems GmbH
Osterfeldstraße 7 / 85088 Vohburg / http://www.b1-systems.de
GF: Ralph Dehner / Unternehmenssitz: Vohburg / AG: Ingolstadt,HRB 3537

--------------040606050402030104000800
Content-Type: text/x-patch;
 name="0001-mklibs-add-patch-to-use-the-ld.so-from-sysroot.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-mklibs-add-patch-to-use-the-ld.so-from-sysroot.patch"

From b5acb1ead4a6e90dee6d3140dc302f143101893c Mon Sep 17 00:00:00 2001
From: Stefan Seyfried <seife+dev@b1-systems.com>
Date: Thu, 5 Dec 2013 10:48:08 +0100
Subject: [PATCH 1/2] mklibs: add patch to use the ld.so from sysroot

mklibs was looking for ld.so in the system, which is wrong. Look in
sysroot instead.

Signed-off-by: Stefan Seyfried <seife+dev@b1-systems.com>
---
 .../mklibs/files/fix_linker_location.patch              | 17 +++++++++++++++++
 meta/recipes-devtools/mklibs/mklibs-native_0.1.38.bb    |  1 +
 2 files changed, 18 insertions(+)
 create mode 100644 meta/recipes-devtools/mklibs/files/fix_linker_location.patch

diff --git a/meta/recipes-devtools/mklibs/files/fix_linker_location.patch b/meta/recipes-devtools/mklibs/files/fix_linker_location.patch
new file mode 100644
index 0000000..ca137ff
--- /dev/null
+++ b/meta/recipes-devtools/mklibs/files/fix_linker_location.patch
@@ -0,0 +1,17 @@
+Index: b/src/mklibs
+===================================================================
+--- a/src/mklibs
++++ b/src/mklibs
+@@ -493,11 +493,11 @@ while 1:
+ 
+     # calculate what symbols are present in small_libs and available_libs
+     present_symbols = {}
+     checked_libs = small_libs
+     checked_libs.extend(available_libs)
+-    checked_libs.append(ldlib)
++    checked_libs.append(sysroot + ldlib)
+     for lib in checked_libs:
+         for symbol in provided_symbols(lib):
+             debug(DEBUG_SPAM, "present_symbols adding %s" % symbol)
+             names = symbol.base_names()
+             for name in names:
diff --git a/meta/recipes-devtools/mklibs/mklibs-native_0.1.38.bb b/meta/recipes-devtools/mklibs/mklibs-native_0.1.38.bb
index e424052..fc4109f 100644
--- a/meta/recipes-devtools/mklibs/mklibs-native_0.1.38.bb
+++ b/meta/recipes-devtools/mklibs/mklibs-native_0.1.38.bb
@@ -8,6 +8,7 @@ DEPENDS = "python-native"
 SRC_URI = "http://ftp.de.debian.org/debian/pool/main/m/mklibs/${BPN}_${PV}.tar.gz \
 	file://ac_init_fix.patch\
 	file://fix_STT_GNU_IFUNC.patch\
+	file://fix_linker_location.patch \
 "
 
 SRC_URI[md5sum] = "e597b01548204874feef396403615d9f"
-- 
1.8.4.4


--------------040606050402030104000800
Content-Type: text/x-patch;
 name="0002-image-mklibs-also-allow-LSB-binaries-powerpc.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="0002-image-mklibs-also-allow-LSB-binaries-powerpc.patch"

From 9cb07c1d3a9ed3a9bb3a4a1e06945fa03f72424a Mon Sep 17 00:00:00 2001
From: Stefan Seyfried <seife+dev@b1-systems.com>
Date: Thu, 5 Dec 2013 11:08:28 +0100
Subject: [PATCH 2/2] image-mklibs: also allow LSB binaries (powerpc...)

Signed-off-by: Stefan Seyfried <seife+dev@b1-systems.com>
---
 meta/classes/image-mklibs.bbclass | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/classes/image-mklibs.bbclass b/meta/classes/image-mklibs.bbclass
index 66b0f52..c80293e 100644
--- a/meta/classes/image-mklibs.bbclass
+++ b/meta/classes/image-mklibs.bbclass
@@ -9,7 +9,7 @@ mklibs_optimize_image_doit() {
 	du -bs > ${WORKDIR}/mklibs/du.before.mklibs.txt
 	for i in `find .`; do file $i; done \
 		| grep ELF \
-		| grep "LSB *executable" \
+		| grep "[LM]SB *executable" \
 		| grep "dynamically linked" \
 		| sed "s/:.*//" \
 		| sed "s+^\./++" \
-- 
1.8.4.4


--------------040606050402030104000800--
