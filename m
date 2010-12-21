Return-Path: <raj.khem@gmail.com>
Received: from mail-pv0-f176.google.com (mail-pv0-f176.google.com
	[74.125.83.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 04D8D4C81146
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 03:27:53 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pvb32 with SMTP id 32so1038129pvb.35
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 01:27:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:received:received:from:to:cc:subject:date
	:message-id:x-mailer:in-reply-to:references;
	bh=Dgm02bVLxKCsEhLEG/Vn4BwYU8SuKJ1rVZ5SYgfNye8=;
	b=BhMbm7FI4rcidUtdE3sdPDbq9dSax827TDO6dVOfdWIdiQhp4jTxKjHYTQBciOSfGL
	VO5erfuJizFrGp6L1LijTndK49AwhQp6fc4aIz5zqJHrccQZkrpmaBknusTHed7ac5PK
	zYewmKbQCHbsOqNYU4gKdb3+x/7/lqHfm3QnQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	b=Gubf+YjAdAkTtYLM3j3Fbo0zFxjUBc5ao6VAvnYySbXwlY5p9l5eZja8tL+5lqtjwM
	ff0O+iLcqJ8R50leRMtz67Zkl5FdLPe80KpjXRmf63xTiGLOHCwtQo2CYb9otkUU77LG
	Hgrq0zAgJypSdrhDeeORF4zX3Xzusvgpl/pm0=
Received: by 10.142.48.14 with SMTP id v14mr4311125wfv.157.1292923673596;
	Tue, 21 Dec 2010 01:27:53 -0800 (PST)
Received: from localhost.localdomain
	(99-57-141-118.lightspeed.sntcca.sbcglobal.net [99.57.141.118])
	by mx.google.com with ESMTPS id w22sm7237259wfd.19.2010.12.21.01.27.52
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Tue, 21 Dec 2010 01:27:52 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: poky@yoctoproject.org
Date: Tue, 21 Dec 2010 01:27:37 -0800
Message-Id: <aa49242ff7d85c698c7e9db1946c6bbf8924d2c6.1292920702.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1292920700.git.raj.khem@gmail.com>
References: <cover.1292920700.git.raj.khem@gmail.com>
Subject: [PATCH 1/3] gcc: Upgrade recipes from 4.5.1 -> 4.5.2
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
X-List-Received-Date: Tue, 21 Dec 2010 09:27:54 -0000

* Generate libgcc_s.so as a linker stub irrespective
  of whatever is generated during gcc build

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../gcc/gcc-4.5.1/gcc-poison-dir-extend.patch      |   24 ------------------
 .../gcc/{gcc-4.5.1.inc => gcc-4.5.2.inc}           |    0
 .../{gcc-4.5.1 => gcc-4.5.2}/100-uclibc-conf.patch |    0
 .../103-uclibc-conf-noupstream.patch               |    0
 .../200-uclibc-locale.patch                        |    0
 .../203-uclibc-locale-no__x.patch                  |    0
 .../204-uclibc-locale-wchar_fix.patch              |    0
 .../205-uclibc-locale-update.patch                 |    0
 .../301-missing-execinfo_h.patch                   |    0
 .../302-c99-snprintf.patch                         |    0
 .../303-c99-complex-ugly-hack.patch                |    0
 .../{gcc-4.5.1 => gcc-4.5.2}/304-index_macro.patch |    0
 .../305-libmudflap-susv3-legacy.patch              |    0
 .../306-libstdc++-namespace.patch                  |    0
 .../307-locale_facets.patch                        |    0
 .../602-sdk-libstdc++-includes.patch               |    0
 .../gcc/{gcc-4.5.1 => gcc-4.5.2}/64bithack.patch   |    0
 .../{gcc-4.5.1 => gcc-4.5.2}/740-sh-pr24836.patch  |    0
 .../800-arm-bigendian.patch                        |    0
 .../904-flatten-switch-stmt-00.patch               |    0
 .../{gcc-4.5.1 => gcc-4.5.2}/arm-bswapsi2.patch    |    0
 .../{gcc-4.5.1 => gcc-4.5.2}/arm-nolibfloat.patch  |    0
 .../{gcc-4.5.1 => gcc-4.5.2}/arm-softfloat.patch   |    0
 .../arm-unbreak-eabi-armv4t.dpatch                 |    0
 .../{gcc-4.5.1 => gcc-4.5.2}/cache-amnesia.patch   |    0
 .../disable_relax_pic_calls_flag.patch             |    0
 .../fedora/gcc43-c++-builtin-redecl.patch          |    0
 .../fedora/gcc43-cpp-pragma.patch                  |    0
 .../fedora/gcc43-i386-libgomp.patch                |    0
 .../fedora/gcc43-ia64-libunwind.patch              |    0
 .../fedora/gcc43-java-debug-iface-type.patch       |    0
 .../fedora/gcc43-java-nomulti.patch                |    0
 .../fedora/gcc43-libgomp-speedup.patch             |    0
 .../fedora/gcc43-ppc32-retaddr.patch               |    0
 .../fedora/gcc43-pr27898.patch                     |    0
 .../fedora/gcc43-pr32139.patch                     |    0
 .../fedora/gcc43-pr33763.patch                     |    0
 .../fedora/gcc43-rh251682.patch                    |    0
 .../fedora/gcc43-rh330771.patch                    |    0
 .../fedora/gcc43-rh341221.patch                    |    0
 .../fortran-cross-compile-hack.patch               |    0
 .../gcc-4.0.2-e300c2c3.patch                       |    0
 .../gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch          |    0
 .../gcc-4.3.3-SYSROOT_CFLAGS_FOR_TARGET.patch      |    0
 .../gcc-arm-frename-registers.patch                |    0
 .../gcc-flags-for-build.patch                      |    0
 .../{gcc-4.5.1 => gcc-4.5.2}/gcc-ice-hack.dpatch   |    0
 .../gcc/gcc-4.5.2/gcc-poison-dir-extend.patch      |   26 ++++++++++++++++++++
 .../gcc-poison-parameters.patch                    |    0
 .../gcc-poison-system-directories.patch            |    0
 .../gcc-uclibc-locale-ctype_touplow_t.patch        |    0
 .../libstdc++-emit-__cxa_end_cleanup-in-text.patch |    0
 .../{gcc-4.5.1 => gcc-4.5.2}/libstdc++-pic.dpatch  |    0
 .../optional_libstdc.patch                         |    0
 .../gcc/{gcc-4.5.1 => gcc-4.5.2}/pr30961.dpatch    |    0
 .../gcc/{gcc-4.5.1 => gcc-4.5.2}/pr35942.patch     |    0
 .../{gcc-4.5.1 => gcc-4.5.2}/zecke-xgcc-cpp.patch  |    0
 ...nadian_4.5.1.bb => gcc-cross-canadian_4.5.2.bb} |    0
 ...initial_4.5.1.bb => gcc-cross-initial_4.5.2.bb} |    0
 .../gcc/gcc-cross-intermediate.inc                 |    8 ++++++
 ...te_4.5.1.bb => gcc-cross-intermediate_4.5.2.bb} |    0
 .../gcc/{gcc-cross_4.5.1.bb => gcc-cross_4.5.2.bb} |    0
 ...tial_4.5.1.bb => gcc-crosssdk-initial_4.5.2.bb} |    0
 ...4.5.1.bb => gcc-crosssdk-intermediate_4.5.2.bb} |    0
 ...gcc-crosssdk_4.5.1.bb => gcc-crosssdk_4.5.2.bb} |    0
 meta/recipes-devtools/gcc/gcc-package-cross.inc    |    5 ++++
 meta/recipes-devtools/gcc/gcc-package-target.inc   |    5 ++++
 .../{gcc-runtime_4.5.1.bb => gcc-runtime_4.5.2.bb} |    0
 .../gcc/{gcc_4.5.1.bb => gcc_4.5.2.bb}             |    0
 69 files changed, 44 insertions(+), 24 deletions(-)
 delete mode 100644 meta/recipes-devtools/gcc/gcc-4.5.1/gcc-poison-dir-extend.patch
 rename meta/recipes-devtools/gcc/{gcc-4.5.1.inc => gcc-4.5.2.inc} (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/100-uclibc-conf.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/103-uclibc-conf-noupstream.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/200-uclibc-locale.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/203-uclibc-locale-no__x.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/204-uclibc-locale-wchar_fix.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/205-uclibc-locale-update.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/301-missing-execinfo_h.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/302-c99-snprintf.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/303-c99-complex-ugly-hack.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/304-index_macro.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/305-libmudflap-susv3-legacy.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/306-libstdc++-namespace.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/307-locale_facets.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/602-sdk-libstdc++-includes.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/64bithack.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/740-sh-pr24836.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/800-arm-bigendian.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/904-flatten-switch-stmt-00.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/arm-bswapsi2.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/arm-nolibfloat.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/arm-softfloat.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/arm-unbreak-eabi-armv4t.dpatch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/cache-amnesia.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/disable_relax_pic_calls_flag.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/fedora/gcc43-c++-builtin-redecl.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/fedora/gcc43-cpp-pragma.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/fedora/gcc43-i386-libgomp.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/fedora/gcc43-ia64-libunwind.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/fedora/gcc43-java-debug-iface-type.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/fedora/gcc43-java-nomulti.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/fedora/gcc43-libgomp-speedup.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/fedora/gcc43-ppc32-retaddr.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/fedora/gcc43-pr27898.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/fedora/gcc43-pr32139.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/fedora/gcc43-pr33763.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/fedora/gcc43-rh251682.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/fedora/gcc43-rh330771.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/fedora/gcc43-rh341221.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/fortran-cross-compile-hack.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/gcc-4.0.2-e300c2c3.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/gcc-4.3.3-SYSROOT_CFLAGS_FOR_TARGET.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/gcc-arm-frename-registers.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/gcc-flags-for-build.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/gcc-ice-hack.dpatch (100%)
 create mode 100644 meta/recipes-devtools/gcc/gcc-4.5.2/gcc-poison-dir-extend.patch
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/gcc-poison-parameters.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/gcc-poison-system-directories.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/gcc-uclibc-locale-ctype_touplow_t.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/libstdc++-emit-__cxa_end_cleanup-in-text.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/libstdc++-pic.dpatch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/optional_libstdc.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/pr30961.dpatch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/pr35942.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-4.5.1 => gcc-4.5.2}/zecke-xgcc-cpp.patch (100%)
 rename meta/recipes-devtools/gcc/{gcc-cross-canadian_4.5.1.bb => gcc-cross-canadian_4.5.2.bb} (100%)
 rename meta/recipes-devtools/gcc/{gcc-cross-initial_4.5.1.bb => gcc-cross-initial_4.5.2.bb} (100%)
 rename meta/recipes-devtools/gcc/{gcc-cross-intermediate_4.5.1.bb => gcc-cross-intermediate_4.5.2.bb} (100%)
 rename meta/recipes-devtools/gcc/{gcc-cross_4.5.1.bb => gcc-cross_4.5.2.bb} (100%)
 rename meta/recipes-devtools/gcc/{gcc-crosssdk-initial_4.5.1.bb => gcc-crosssdk-initial_4.5.2.bb} (100%)
 rename meta/recipes-devtools/gcc/{gcc-crosssdk-intermediate_4.5.1.bb => gcc-crosssdk-intermediate_4.5.2.bb} (100%)
 rename meta/recipes-devtools/gcc/{gcc-crosssdk_4.5.1.bb => gcc-crosssdk_4.5.2.bb} (100%)
 rename meta/recipes-devtools/gcc/{gcc-runtime_4.5.1.bb => gcc-runtime_4.5.2.bb} (100%)
 rename meta/recipes-devtools/gcc/{gcc_4.5.1.bb => gcc_4.5.2.bb} (100%)

diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-poison-dir-extend.patch b/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-poison-dir-extend.patch
deleted file mode 100644
index d171207..0000000
--- a/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-poison-dir-extend.patch
+++ /dev/null
@@ -1,24 +0,0 @@
-Add /sw/include and /opt/include based on the original
-zecke-no-host-includes.patch patch.  The original patch checked for
-/usr/include, /sw/include and /opt/include and then triggered a failure and
-aborted.
-
-Instead, we add the two missing items to the current scan.  If the user
-wants this to be a failure, they can add "-Werror=poison-system-directories".
-
-Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
-
-diff -ur gcc-4.5.0.orig/gcc/incpath.c gcc-4.5.0/gcc/incpath.c
---- gcc-4.5.0.orig/gcc/incpath.c	2010-09-29 14:58:31.358975524 -0500
-+++ gcc-4.5.0/gcc/incpath.c	2010-09-29 15:08:02.065975516 -0500
-@@ -363,7 +363,9 @@
-          {
-           if ((!strncmp (p->name, "/usr/include", 12))
-               || (!strncmp (p->name, "/usr/local/include", 18))
--              || (!strncmp (p->name, "/usr/X11R6/include", 18)))
-+              || (!strncmp (p->name, "/usr/X11R6/include", 18))
-+              || (!strncmp (p->name, "/sw/include", 11))
-+              || (!strncmp (p->name, "/opt/include", 12)))
-             warning (OPT_Wpoison_system_directories,
-                      "include location \"%s\" is unsafe for "
-                      "cross-compilation",
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1.inc b/meta/recipes-devtools/gcc/gcc-4.5.2.inc
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1.inc
rename to meta/recipes-devtools/gcc/gcc-4.5.2.inc
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/100-uclibc-conf.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/100-uclibc-conf.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/100-uclibc-conf.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/100-uclibc-conf.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/103-uclibc-conf-noupstream.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/103-uclibc-conf-noupstream.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/103-uclibc-conf-noupstream.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/103-uclibc-conf-noupstream.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/200-uclibc-locale.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/200-uclibc-locale.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/200-uclibc-locale.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/200-uclibc-locale.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/203-uclibc-locale-no__x.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/203-uclibc-locale-no__x.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/203-uclibc-locale-no__x.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/203-uclibc-locale-no__x.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/204-uclibc-locale-wchar_fix.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/204-uclibc-locale-wchar_fix.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/204-uclibc-locale-wchar_fix.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/204-uclibc-locale-wchar_fix.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/205-uclibc-locale-update.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/205-uclibc-locale-update.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/205-uclibc-locale-update.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/205-uclibc-locale-update.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/301-missing-execinfo_h.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/301-missing-execinfo_h.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/301-missing-execinfo_h.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/301-missing-execinfo_h.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/302-c99-snprintf.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/302-c99-snprintf.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/302-c99-snprintf.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/302-c99-snprintf.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/303-c99-complex-ugly-hack.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/303-c99-complex-ugly-hack.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/303-c99-complex-ugly-hack.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/303-c99-complex-ugly-hack.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/304-index_macro.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/304-index_macro.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/304-index_macro.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/304-index_macro.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/305-libmudflap-susv3-legacy.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/305-libmudflap-susv3-legacy.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/305-libmudflap-susv3-legacy.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/305-libmudflap-susv3-legacy.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/306-libstdc++-namespace.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/306-libstdc++-namespace.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/306-libstdc++-namespace.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/306-libstdc++-namespace.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/307-locale_facets.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/307-locale_facets.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/307-locale_facets.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/307-locale_facets.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/602-sdk-libstdc++-includes.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/602-sdk-libstdc++-includes.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/602-sdk-libstdc++-includes.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/602-sdk-libstdc++-includes.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/64bithack.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/64bithack.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/64bithack.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/64bithack.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/740-sh-pr24836.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/740-sh-pr24836.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/740-sh-pr24836.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/740-sh-pr24836.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/800-arm-bigendian.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/800-arm-bigendian.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/800-arm-bigendian.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/800-arm-bigendian.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/904-flatten-switch-stmt-00.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/904-flatten-switch-stmt-00.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/904-flatten-switch-stmt-00.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/904-flatten-switch-stmt-00.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/arm-bswapsi2.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/arm-bswapsi2.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/arm-bswapsi2.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/arm-bswapsi2.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/arm-nolibfloat.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/arm-nolibfloat.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/arm-nolibfloat.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/arm-nolibfloat.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/arm-softfloat.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/arm-softfloat.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/arm-softfloat.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/arm-softfloat.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/arm-unbreak-eabi-armv4t.dpatch b/meta/recipes-devtools/gcc/gcc-4.5.2/arm-unbreak-eabi-armv4t.dpatch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/arm-unbreak-eabi-armv4t.dpatch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/arm-unbreak-eabi-armv4t.dpatch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/cache-amnesia.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/cache-amnesia.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/cache-amnesia.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/cache-amnesia.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/disable_relax_pic_calls_flag.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/disable_relax_pic_calls_flag.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/disable_relax_pic_calls_flag.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/disable_relax_pic_calls_flag.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-c++-builtin-redecl.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/fedora/gcc43-c++-builtin-redecl.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-c++-builtin-redecl.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/fedora/gcc43-c++-builtin-redecl.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-cpp-pragma.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/fedora/gcc43-cpp-pragma.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-cpp-pragma.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/fedora/gcc43-cpp-pragma.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-i386-libgomp.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/fedora/gcc43-i386-libgomp.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-i386-libgomp.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/fedora/gcc43-i386-libgomp.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-ia64-libunwind.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/fedora/gcc43-ia64-libunwind.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-ia64-libunwind.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/fedora/gcc43-ia64-libunwind.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-java-debug-iface-type.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/fedora/gcc43-java-debug-iface-type.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-java-debug-iface-type.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/fedora/gcc43-java-debug-iface-type.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-java-nomulti.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/fedora/gcc43-java-nomulti.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-java-nomulti.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/fedora/gcc43-java-nomulti.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-libgomp-speedup.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/fedora/gcc43-libgomp-speedup.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-libgomp-speedup.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/fedora/gcc43-libgomp-speedup.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-ppc32-retaddr.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/fedora/gcc43-ppc32-retaddr.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-ppc32-retaddr.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/fedora/gcc43-ppc32-retaddr.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-pr27898.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/fedora/gcc43-pr27898.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-pr27898.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/fedora/gcc43-pr27898.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-pr32139.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/fedora/gcc43-pr32139.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-pr32139.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/fedora/gcc43-pr32139.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-pr33763.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/fedora/gcc43-pr33763.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-pr33763.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/fedora/gcc43-pr33763.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-rh251682.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/fedora/gcc43-rh251682.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-rh251682.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/fedora/gcc43-rh251682.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-rh330771.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/fedora/gcc43-rh330771.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-rh330771.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/fedora/gcc43-rh330771.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-rh341221.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/fedora/gcc43-rh341221.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/fedora/gcc43-rh341221.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/fedora/gcc43-rh341221.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/fortran-cross-compile-hack.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/fortran-cross-compile-hack.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/fortran-cross-compile-hack.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/fortran-cross-compile-hack.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-4.0.2-e300c2c3.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/gcc-4.0.2-e300c2c3.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/gcc-4.0.2-e300c2c3.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/gcc-4.0.2-e300c2c3.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-4.3.3-SYSROOT_CFLAGS_FOR_TARGET.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/gcc-4.3.3-SYSROOT_CFLAGS_FOR_TARGET.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/gcc-4.3.3-SYSROOT_CFLAGS_FOR_TARGET.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/gcc-4.3.3-SYSROOT_CFLAGS_FOR_TARGET.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-arm-frename-registers.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/gcc-arm-frename-registers.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/gcc-arm-frename-registers.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/gcc-arm-frename-registers.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-flags-for-build.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/gcc-flags-for-build.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/gcc-flags-for-build.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/gcc-flags-for-build.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-ice-hack.dpatch b/meta/recipes-devtools/gcc/gcc-4.5.2/gcc-ice-hack.dpatch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/gcc-ice-hack.dpatch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/gcc-ice-hack.dpatch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.2/gcc-poison-dir-extend.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/gcc-poison-dir-extend.patch
new file mode 100644
index 0000000..f67a463
--- /dev/null
+++ b/meta/recipes-devtools/gcc/gcc-4.5.2/gcc-poison-dir-extend.patch
@@ -0,0 +1,26 @@
+Add /sw/include and /opt/include based on the original
+zecke-no-host-includes.patch patch.  The original patch checked for
+/usr/include, /sw/include and /opt/include and then triggered a failure and
+aborted.
+
+Instead, we add the two missing items to the current scan.  If the user
+wants this to be a failure, they can add "-Werror=poison-system-directories".
+
+Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
+
+Index: gcc-4.5.1/gcc/incpath.c
+===================================================================
+--- gcc-4.5.1.orig/gcc/incpath.c
++++ gcc-4.5.1/gcc/incpath.c
+@@ -365,7 +365,10 @@ merge_include_chains (const char *sysroo
+ 	  {
+ 	   if ((!strncmp (p->name, "/usr/include", 12))
+ 	       || (!strncmp (p->name, "/usr/local/include", 18))
+-	       || (!strncmp (p->name, "/usr/X11R6/include", 18)))
++	       || (!strncmp (p->name, "/usr/X11R6/include", 18))
++	       || (!strncmp (p->name, "/sw/include", 11))
++	       || (!strncmp (p->name, "/opt/include", 12)))
++
+ 	     warning (OPT_Wpoison_system_directories,
+ 		      "include location \"%s\" is unsafe for "
+ 		      "cross-compilation",
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-poison-parameters.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/gcc-poison-parameters.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/gcc-poison-parameters.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/gcc-poison-parameters.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-poison-system-directories.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/gcc-poison-system-directories.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/gcc-poison-system-directories.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/gcc-poison-system-directories.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/gcc-uclibc-locale-ctype_touplow_t.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/gcc-uclibc-locale-ctype_touplow_t.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/gcc-uclibc-locale-ctype_touplow_t.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/gcc-uclibc-locale-ctype_touplow_t.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/libstdc++-emit-__cxa_end_cleanup-in-text.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/libstdc++-emit-__cxa_end_cleanup-in-text.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/libstdc++-emit-__cxa_end_cleanup-in-text.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/libstdc++-emit-__cxa_end_cleanup-in-text.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/libstdc++-pic.dpatch b/meta/recipes-devtools/gcc/gcc-4.5.2/libstdc++-pic.dpatch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/libstdc++-pic.dpatch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/libstdc++-pic.dpatch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/optional_libstdc.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/optional_libstdc.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/optional_libstdc.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/optional_libstdc.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/pr30961.dpatch b/meta/recipes-devtools/gcc/gcc-4.5.2/pr30961.dpatch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/pr30961.dpatch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/pr30961.dpatch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/pr35942.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/pr35942.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/pr35942.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/pr35942.patch
diff --git a/meta/recipes-devtools/gcc/gcc-4.5.1/zecke-xgcc-cpp.patch b/meta/recipes-devtools/gcc/gcc-4.5.2/zecke-xgcc-cpp.patch
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-4.5.1/zecke-xgcc-cpp.patch
rename to meta/recipes-devtools/gcc/gcc-4.5.2/zecke-xgcc-cpp.patch
diff --git a/meta/recipes-devtools/gcc/gcc-cross-canadian_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-cross-canadian_4.5.2.bb
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-cross-canadian_4.5.1.bb
rename to meta/recipes-devtools/gcc/gcc-cross-canadian_4.5.2.bb
diff --git a/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.2.bb
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb
rename to meta/recipes-devtools/gcc/gcc-cross-initial_4.5.2.bb
diff --git a/meta/recipes-devtools/gcc/gcc-cross-intermediate.inc b/meta/recipes-devtools/gcc/gcc-cross-intermediate.inc
index 72a4241..fbf0082 100644
--- a/meta/recipes-devtools/gcc/gcc-cross-intermediate.inc
+++ b/meta/recipes-devtools/gcc/gcc-cross-intermediate.inc
@@ -24,5 +24,13 @@ do_compile () {
 do_install () {
 	oe_runmake 'DESTDIR=${D}' install
 	install -d ${D}${target_base_libdir}/
+	install -d ${D}${target_libdir}/
 	mv ${D}${exec_prefix}/${TARGET_SYS}/lib/* ${D}${target_base_libdir}/
+	rm -f ${D}${target_base_libdir}/libgcc_s.so
+	rm -f ${D}${target_libdir}/libgcc_s.so
+	echo "/* GNU ld script
+   Use the shared library, but some functions are only in
+   the static library.  */
+GROUP ( libgcc_s.so.1 libgcc.a )" > ${D}${target_libdir}/libgcc_s.so
+
 }
diff --git a/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.2.bb
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.1.bb
rename to meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.2.bb
diff --git a/meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-cross_4.5.2.bb
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-cross_4.5.1.bb
rename to meta/recipes-devtools/gcc/gcc-cross_4.5.2.bb
diff --git a/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.2.bb
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb
rename to meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.2.bb
diff --git a/meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.2.bb
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.1.bb
rename to meta/recipes-devtools/gcc/gcc-crosssdk-intermediate_4.5.2.bb
diff --git a/meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-crosssdk_4.5.2.bb
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-crosssdk_4.5.1.bb
rename to meta/recipes-devtools/gcc/gcc-crosssdk_4.5.2.bb
diff --git a/meta/recipes-devtools/gcc/gcc-package-cross.inc b/meta/recipes-devtools/gcc/gcc-package-cross.inc
index 4f902fa..71fbd2d 100644
--- a/meta/recipes-devtools/gcc/gcc-package-cross.inc
+++ b/meta/recipes-devtools/gcc/gcc-package-cross.inc
@@ -44,4 +44,9 @@ do_install () {
 		mv $dest${target_libdir}/gcc/* $dest${target_libdir}/
 		rmdir $dest${target_libdir}/gcc
 	fi
+	echo "/* GNU ld script
+   Use the shared library, but some functions are only in
+   the static library.  */
+GROUP ( libgcc_s.so.1 libgcc.a )" > ${D}${target_libdir}/libgcc_s.so
+
 }
diff --git a/meta/recipes-devtools/gcc/gcc-package-target.inc b/meta/recipes-devtools/gcc/gcc-package-target.inc
index 3286da6..bc32006 100644
--- a/meta/recipes-devtools/gcc/gcc-package-target.inc
+++ b/meta/recipes-devtools/gcc/gcc-package-target.inc
@@ -96,4 +96,9 @@ do_install () {
 	ln -sf g++ c++
 	ln -sf gcc cc
 	ln -sf ${bindir}/${TARGET_SYS}-cpp ${D}${bindir}/cpp
+	echo "/* GNU ld script
+   Use the shared library, but some functions are only in
+   the static library.  */
+GROUP ( libgcc_s.so.1 libgcc.a )" > ${D}${libdir}/libgcc_s.so
+
 }
diff --git a/meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb b/meta/recipes-devtools/gcc/gcc-runtime_4.5.2.bb
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc-runtime_4.5.1.bb
rename to meta/recipes-devtools/gcc/gcc-runtime_4.5.2.bb
diff --git a/meta/recipes-devtools/gcc/gcc_4.5.1.bb b/meta/recipes-devtools/gcc/gcc_4.5.2.bb
similarity index 100%
rename from meta/recipes-devtools/gcc/gcc_4.5.1.bb
rename to meta/recipes-devtools/gcc/gcc_4.5.2.bb
-- 
1.7.1


