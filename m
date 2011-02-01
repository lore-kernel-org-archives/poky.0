Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id BF7A64C800A7
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 10:03:06 -0600 (CST)
Received: by wye20 with SMTP id 20so7142834wye.35
	for <poky@yoctoproject.org>; Tue, 01 Feb 2011 08:03:06 -0800 (PST)
Received: by 10.216.17.201 with SMTP id j51mr7602232wej.44.1296576184876;
	Tue, 01 Feb 2011 08:03:04 -0800 (PST)
Received: from localhost (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id t11sm11524074wes.41.2011.02.01.08.03.04
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Tue, 01 Feb 2011 08:03:04 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
To: poky@yoctoproject.org
Date: Tue,  1 Feb 2011 17:00:24 +0100
Message-Id: <1296576024-11355-1-git-send-email-koen@dominion.thruhere.net>
X-Mailer: git-send-email 1.6.6.1
Subject: [PATCH] opkg: Update to svn r596 to fix segfault when upgrading packages
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
X-List-Received-Date: Tue, 01 Feb 2011 16:03:07 -0000

The longlinks patch is upstream and and be removed now

Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
---
 .../conf/distro/include/poky-default-revisions.inc |    2 +-
 meta/recipes-devtools/opkg/opkg/longlinksfix.patch |   92 --------------------
 meta/recipes-devtools/opkg/opkg_svn.bb             |    1 -
 3 files changed, 1 insertions(+), 94 deletions(-)
 delete mode 100644 meta/recipes-devtools/opkg/opkg/longlinksfix.patch

diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
index 0c3aa9a..ebf313e 100644
--- a/meta/conf/distro/include/poky-default-revisions.inc
+++ b/meta/conf/distro/include/poky-default-revisions.inc
@@ -132,7 +132,7 @@ SRCREV_pn-networkmanager ??= "2984"
 SRCREV_pn-ofono ??= "14544d5996836f628613c2ce544380ee6fc8f514"
 SRCREV_pn-oh-puzzles ??= "23"
 SRCREV_pn-ohm ??= "edfe25d49d67884bf004de7ae0724c162bb5e65e"
-OPKGSRCREV = "590"
+OPKGSRCREV = "596"
 SRCREV_pn-opkg ??= "${OPKGSRCREV}"
 SRCREV_pn-opkg-native ??= "${OPKGSRCREV}"
 SRCREV_pn-opkg-nativesdk ??= "${OPKGSRCREV}"
diff --git a/meta/recipes-devtools/opkg/opkg/longlinksfix.patch b/meta/recipes-devtools/opkg/opkg/longlinksfix.patch
deleted file mode 100644
index 6908392..0000000
--- a/meta/recipes-devtools/opkg/opkg/longlinksfix.patch
+++ /dev/null
@@ -1,92 +0,0 @@
-If a tarball contains a long symlink (over 100 chars) in a longpath (over 100 
-chars) then the resulting link or path can be truncated to 100 chars.
-
-This is due to a bug where if both 'L' and 'K' entries are found in the tarball,
-only the first one takes affect due to get_header_tar recursively calling itself.
-To fix this, process longname and linkname at the end of the function rather 
-than the start after any subcalls have taken place.
-
-Richard Purdie
-22/12/2010
-
-Index: trunk/libbb/unarchive.c
-===================================================================
---- trunk.orig/libbb/unarchive.c	2010-12-22 18:14:52.575074849 +0000
-+++ trunk/libbb/unarchive.c	2010-12-22 18:16:01.845103832 +0000
-@@ -506,23 +506,7 @@
- 	/* convert to type'ed variables */
- 	tar_entry = xcalloc(1, sizeof(file_header_t));
- 
--#ifdef CONFIG_FEATURE_TAR_GNU_EXTENSIONS
--        if (longname) {
--                tar_entry->name = longname;
--                longname = NULL;
--        } else
--#endif
--        {
--                tar_entry->name = xstrndup(tar.formated.name, 100);
- 
--                if (tar.formated.prefix[0]) {
--                        char *temp = tar_entry->name;
--                        char *prefixTemp = xstrndup(tar.formated.prefix, 155);
--                        tar_entry->name = concat_path_file(prefixTemp, temp);
--                        free(temp);
--                        free(prefixTemp);
--                }
--        }
- 
- 	// tar_entry->name = xstrdup(tar.formated.name);
- 
-@@ -535,16 +519,7 @@
- 	tar_entry->gid   = strtol(tar.formated.gid, NULL, 8);
- 	tar_entry->size  = strtol(tar.formated.size, NULL, 8);
- 	tar_entry->mtime = strtol(tar.formated.mtime, NULL, 8);
--#ifdef CONFIG_FEATURE_TAR_GNU_EXTENSIONS
--	if (linkname) {
--		tar_entry->link_name = linkname;
--		linkname = NULL;
--	} else
--#endif
--	{
--		tar_entry->link_name = *tar.formated.linkname != '\0' ?
--			xstrndup(tar.formated.linkname, 100) : NULL;
--	}
-+
- 	tar_entry->device = (strtol(tar.formated.devmajor, NULL, 8) << 8) +
- 		strtol(tar.formated.devminor, NULL, 8);
- 
-@@ -611,6 +586,34 @@
- 
- 	}
- 
-+
-+#ifdef CONFIG_FEATURE_TAR_GNU_EXTENSIONS
-+        if (longname) {
-+                tar_entry->name = longname;
-+                longname = NULL;
-+        } else
-+#endif
-+        {
-+                tar_entry->name = xstrndup(tar.formated.name, 100);
-+
-+                if (tar.formated.prefix[0]) {
-+                        char *temp = tar_entry->name;
-+                        char *prefixTemp = xstrndup(tar.formated.prefix, 155);
-+                        tar_entry->name = concat_path_file(prefixTemp, temp);
-+                        free(temp);
-+                        free(prefixTemp);
-+                }
-+        }
-+
-+	if (linkname) {
-+		tar_entry->link_name = linkname;
-+		linkname = NULL;
-+	} else
-+	{
-+		tar_entry->link_name = *tar.formated.linkname != '\0' ?
-+			xstrndup(tar.formated.linkname, 100) : NULL;
-+	}
-+
- 	return(tar_entry);
- }
- 
diff --git a/meta/recipes-devtools/opkg/opkg_svn.bb b/meta/recipes-devtools/opkg/opkg_svn.bb
index 141e00d..76ec838 100644
--- a/meta/recipes-devtools/opkg/opkg_svn.bb
+++ b/meta/recipes-devtools/opkg/opkg_svn.bb
@@ -11,7 +11,6 @@ PACKAGE_ARCH_update-alternatives-cworth = "all"
 SRC_URI = "svn://opkg.googlecode.com/svn;module=trunk;proto=http \
            file://add_vercmp.patch \
            file://headerfix.patch \
-           file://longlinksfix.patch \
 "
 
 S = "${WORKDIR}/trunk"
-- 
1.6.6.1


