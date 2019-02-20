Return-Path: <i.efimov@inango-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE1B0E00BCC; Wed, 20 Feb 2019 00:40:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 414 seconds by postgrey-1.32 at yocto-www;
	Wed, 20 Feb 2019 00:40:53 PST
Received: from mail.inango-sw.com (mail.inango-systems.com [213.136.71.184])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FFB4E0090E
	for <poky@yoctoproject.org>; Wed, 20 Feb 2019 00:40:53 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.inango-sw.com (Postfix) with ESMTP id 31EEC7A2393
	for <poky@yoctoproject.org>; Wed, 20 Feb 2019 10:33:58 +0200 (IST)
Received: from mail.inango-sw.com ([127.0.0.1])
	by localhost (mail.inango-sw.com [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id dxBDDcvHZrSX; Wed, 20 Feb 2019 10:33:54 +0200 (IST)
Received: from localhost (localhost [127.0.0.1])
	by mail.inango-sw.com (Postfix) with ESMTP id B03147A238B;
	Wed, 20 Feb 2019 10:33:54 +0200 (IST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.inango-sw.com B03147A238B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=inango-systems.com;
	s=45A440E0-D841-11E8-B985-5FCC721607E0; t=1550651634;
	bh=2KpxhMlWPbDREtwm+t4fYi8FVhr9ZH+d788PHIZbTlQ=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=rvj+fp/Khl9RY75Rux968Gk+hSmkFNy7TMJbbvS5tZgbabQcmNlGhe/EqNLq9fhYZ
	bBX4ppD6kHS0Xrwxg2gnLTifnHeFm1z7Tf37lE2f/qemfHgyT4Rk9WmvyJIZdJFQx7
	udySGZ7IkezLFQQqXJZXUCUo/VWSaVN/zIu2agBQzwrqQrO6g5YRYlzh5k4OM4Biyz
	Nlsw1O6jPvQ3ijQp+Ipyjls+g2dfM+rYybAFDoB5EGLxVVD6FEX7ibg1pELYq+KTb7
	Iv5twKmiPCBmayXb/oYzg+BVgoKlK6XiMrkCByPdV0niycEjnXEProdAoL+a7KEqPl
	P8CIyiLw93jNA==
X-Virus-Scanned: amavisd-new at inango-sw.com
Received: from mail.inango-sw.com ([127.0.0.1])
	by localhost (mail.inango-sw.com [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id dWvb7lNWGut5; Wed, 20 Feb 2019 10:33:54 +0200 (IST)
Received: from mail.inango-sw.com (mail.inango-sw.com [172.17.220.3])
	by mail.inango-sw.com (Postfix) with ESMTP id 5F57F7A0C8B;
	Wed, 20 Feb 2019 10:33:54 +0200 (IST)
Date: Wed, 20 Feb 2019 10:33:54 +0200 (IST)
From: Ivan Efimov <i.efimov@inango-systems.com>
To: poky@yoctoproject.org
Message-ID: <1780990602.1036136.1550651634177.JavaMail.zimbra@inango-systems.com>
MIME-Version: 1.0
X-Originating-IP: [172.17.220.3]
X-Mailer: Zimbra 8.8.9_GA_3006 (ZimbraWebClient - FF64 (Linux)/8.8.9_GA_3006)
Thread-Index: UdbLUJH5Yp1qayOYR/ZmCAupttFF6w==
Thread-Topic: btrfs-tools Makefile: 1) remove duplicate of '-o $@' option from
	CC cmdline; 2) disable "bttfs-fragments" tool compilation
Cc: Architecture group <arch@inango-systems.com>
Subject: [PATCH 1/1] btrfs-tools Makefile: 1) remove duplicate of '-o $@' option from CC cmdline; 2) disable "bttfs-fragments" tool compilation
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
X-List-Received-Date: Wed, 20 Feb 2019 08:40:55 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

1) Command line for target "libbtrfsutil/%.o" contained double usage of '-o $@' option and causes error:

     cc1: error: too many filenames given

2) "btrfs-fragments" tool depends on library "gd", but there is no "gd" recipe in Yocto Poky.
   "btrfs-fragments" has been excluded from list of tools for compilation ("progs" Makefile variable)

Signed-off-by: Ivan Efimov <i.efimov@inango-systems.com>
---
 ...1-Makefile-disable-btrfs-fragments-compilation.patch | 15 +++++++++++++++
 ...01-Makefile-fix-double-o-compiler-option-using.patch | 17 +++++++++++++++++
 meta/recipes-devtools/btrfs-tools/btrfs-tools_4.19.1.bb |  2 ++
 3 files changed, 34 insertions(+)
 create mode 100644 meta/recipes-devtools/btrfs-tools/btrfs-tools/0001-Makefile-disable-btrfs-fragments-compilation.patch
 create mode 100644 meta/recipes-devtools/btrfs-tools/btrfs-tools/0001-Makefile-fix-double-o-compiler-option-using.patch

diff --git a/meta/recipes-devtools/btrfs-tools/btrfs-tools/0001-Makefile-disable-btrfs-fragments-compilation.patch b/meta/recipes-devtools/btrfs-tools/btrfs-tools/0001-Makefile-disable-btrfs-fragments-compilation.patch
new file mode 100644
index 0000000000..c20bde967d
--- /dev/null
+++ b/meta/recipes-devtools/btrfs-tools/btrfs-tools/0001-Makefile-disable-btrfs-fragments-compilation.patch
@@ -0,0 +1,15 @@
+"btrfs-fragments" tool requires library "gd" for compilation, but 
+  there is no "gd" recipe in Yocto Poky
+Index: git/Makefile
+===================================================================
+--- git.orig/Makefile
++++ git/Makefile
+@@ -217,7 +217,7 @@ progs_build = $(progs_install) btrfsck b
+ 
+ # All programs. Use := instead of = so that this is expanded before we reassign
+ # progs_build below.
+-progs := $(progs_build) btrfs-convert btrfs-fragments
++progs := $(progs_build) btrfs-convert
+ 
+ ifneq ($(DISABLE_BTRFSCONVERT),1)
+ progs_install += btrfs-convert
diff --git a/meta/recipes-devtools/btrfs-tools/btrfs-tools/0001-Makefile-fix-double-o-compiler-option-using.patch b/meta/recipes-devtools/btrfs-tools/btrfs-tools/0001-Makefile-fix-double-o-compiler-option-using.patch
new file mode 100644
index 0000000000..335067bc1f
--- /dev/null
+++ b/meta/recipes-devtools/btrfs-tools/btrfs-tools/0001-Makefile-fix-double-o-compiler-option-using.patch
@@ -0,0 +1,17 @@
+Command line for target "libbtrfsutil/%.o" contained double usage
+  of '-o $@' option and caused error:
+    cc1: error: too many filenames given
+
+Index: git/Makefile
+===================================================================
+--- git.orig/Makefile
++++ git/Makefile
+@@ -414,7 +414,7 @@ libbtrfs.so.0 libbtrfs.so: libbtrfs.so.0
+ 
+ libbtrfsutil/%.o: libbtrfsutil/%.c
+ 	@echo "    [CC]     $@"
+-	$(Q)$(CC) $(LIBBTRFSUTIL_CFLAGS) -o $@ -c $< -o $@
++	$(Q)$(CC) $(LIBBTRFSUTIL_CFLAGS) -c $< -o $@
+ 
+ libbtrfsutil.so.$(libbtrfsutil_version): $(libbtrfsutil_objects)
+ 	@echo "    [LD]     $@"
diff --git a/meta/recipes-devtools/btrfs-tools/btrfs-tools_4.19.1.bb b/meta/recipes-devtools/btrfs-tools/btrfs-tools_4.19.1.bb
index 2f59a0c13e..6b77ee796f 100644
--- a/meta/recipes-devtools/btrfs-tools/btrfs-tools_4.19.1.bb
+++ b/meta/recipes-devtools/btrfs-tools/btrfs-tools_4.19.1.bb
@@ -19,6 +19,8 @@ SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/kdave/btrfs-progs.git \
            file://0001-Makefile-build-mktables-using-native-gcc.patch \
            file://0001-Add-LDFLAGS-when-building-libbtrfsutil.so.patch \
            file://0001-Add-a-possibility-to-specify-where-python-modules-ar.patch \
+           file://0001-Makefile-disable-btrfs-fragments-compilation.patch \
+           file://0001-Makefile-fix-double-o-compiler-option-using.patch \
            "
 
 inherit autotools-brokensep pkgconfig manpages distutils3-base
-- 
2.14.1

[ https://inango.com/ |    ] 
Ivan Efimov 
Architect, Arch Group 
i.efimov@inango-systems.com 
T +7 343 298 0147 C +7 904 9 888 350 
[ https://inango.com/ | inango.com ] [ https://www.linkedin.com/company/inango ]

