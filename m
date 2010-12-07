Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id 069E04C811E5
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 15:14:27 -0600 (CST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 9DF001805940
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 22:14:26 +0100 (CET)
X-Auth-Info: AtrY9kE1I+MFs8Ovyqew1tgS6yGqvCtD/tc+Us40+/Q=
Received: from diddl.denx.de (ppp-188-174-79-57.dynamic.mnet-online.de
	[188.174.79.57])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id D0B2B1C0015D
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 22:14:26 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 649D2333521F
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 22:14:26 +0100 (CET)
Received: by gemini.denx.de (Postfix, from userid 500)
	id 536C9D0E429; Tue,  7 Dec 2010 22:14:26 +0100 (CET)
From: Wolfgang Denk <wd@denx.de>
To: poky@yoctoproject.org
Date: Tue,  7 Dec 2010 22:14:03 +0100
Message-Id: <1291756443-28767-6-git-send-email-wd@denx.de>
X-Mailer: git-send-email 1.7.3.2
In-Reply-To: <1291756443-28767-1-git-send-email-wd@denx.de>
References: <1291756443-28767-1-git-send-email-wd@denx.de>
Subject: [PATCH 5/5] elfutils-0.148: fix problems with `ld' not recognizing options
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
X-List-Received-Date: Tue, 07 Dec 2010 21:14:28 -0000

Recent versions of gcc (for example in Fedora 14) will call the
included linker with options like "-rpath", "-rpath-link" and
"--add-needed" resp. "--no-add-needed" wich cause the linker to fail.
Previde backward compatibility renames for the "-rpath*" options and
add dummy handling for the "*add-needed" options.

Signed-off-by: Wolfgang Denk <wd@denx.de>
---
I have to admit that I dislike the approach of ignoring the
"*add-needed" options myself, but I haven't found a way to stop the
Fedora compiler from inserting these options.

 .../elfutils/elfutils-0.148/ld-compatibility.patch |   56 ++++++++++++++++++++
 meta/recipes-devtools/elfutils/elfutils_0.148.bb   |    3 +-
 2 files changed, 58 insertions(+), 1 deletions(-)
 create mode 100644 meta/recipes-devtools/elfutils/elfutils-0.148/ld-compatibility.patch

diff --git a/meta/recipes-devtools/elfutils/elfutils-0.148/ld-compatibility.patch b/meta/recipes-devtools/elfutils/elfutils-0.148/ld-compatibility.patch
new file mode 100644
index 0000000..74eb706
--- /dev/null
+++ b/meta/recipes-devtools/elfutils/elfutils-0.148/ld-compatibility.patch
@@ -0,0 +1,56 @@
+--- elfutils-0.148/src/ld.c.ORIG	2010-04-13 22:08:02.000000000 +0200
++++ elfutils-0.148/src/ld.c	2010-12-06 22:38:54.837104954 +0100
+@@ -78,6 +78,8 @@
+ #if YYDEBUG
+     ARGP_yydebug,
+ #endif
++    ARGP_add_needed,
++    ARGP_no_add_needed,
+   };
+ 
+ 
+@@ -190,6 +192,11 @@
+     N_("Read version information from FILE."), 0 },
+   { "emulation", 'm', "NAME", 0, N_("Set emulation to NAME."), 0 },
+ 
++  { "add-needed", ARGP_add_needed, NULL, 0,
++    N_("Dummy implementation - does nothing"), 0 },
++  { "no-add-needed", ARGP_no_add_needed, NULL, 0,
++    N_("Dummy implementation - does nothing"), 0 },
++
+   { NULL, 0, NULL, 0, NULL, 0 }
+ };
+ 
+@@ -509,6 +516,8 @@
+ 	{ "-export-dynamic", "--export-dynamic" },
+ 	{ "-dynamic-linker", "--dynamic-linker" },
+ 	{ "-static", "--static" },
++	{ "-rpath", "--rpath" },
++	{ "-rpath-link", "--rpath-link" },
+       };
+   const size_t nargs = sizeof (args) / sizeof (args[0]);
+ 
+@@ -754,6 +763,11 @@
+       conserve_memory = 1;
+       break;
+ 
++    case ARGP_add_needed:	/* dummy entry, do nothing */
++      break;
++    case ARGP_no_add_needed:	/* dummy entry, do nothing */
++      break;
++
+     default:
+       return ARGP_ERR_UNKNOWN;
+     }
+@@ -898,6 +912,11 @@
+       }
+       break;
+ 
++    case ARGP_add_needed:	/* dummy entry, do nothing */
++      break;
++    case ARGP_no_add_needed:	/* dummy entry, do nothing */
++      break;
++
+     default:
+       /* We can catch all other options here.  They either have
+ 	 already been handled or, if the parameter was not correct,
diff --git a/meta/recipes-devtools/elfutils/elfutils_0.148.bb b/meta/recipes-devtools/elfutils/elfutils_0.148.bb
index 5a7beaa..16dfb46 100644
--- a/meta/recipes-devtools/elfutils/elfutils_0.148.bb
+++ b/meta/recipes-devtools/elfutils/elfutils_0.148.bb
@@ -6,7 +6,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3\
                     file://EXCEPTION;md5=570adcb0c1218ab57f2249c67d0ce417"
 DEPENDS = "libtool zlib"
 
-PR = "r2"
+PR = "r3"
 
 SRC_URI = "https://fedorahosted.org/releases/e/l/elfutils/elfutils-${PV}.tar.bz2"
 
@@ -25,6 +25,7 @@ SRC_URI += "\
         file://elf_additions.diff \
 	file://elfutils-fsize.patch \
 	file://ar-options.patch \
+	file://ld-compatibility.patch \
 "
 
 # The buildsystem wants to generate 2 .h files from source using a binary it just built,
-- 
1.7.3.2


