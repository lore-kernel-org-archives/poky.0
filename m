Return-Path: <scott.a.garman@intel.com>
Received: from masterfoo.zenlinux.com (masterfoo.zenlinux.com [207.192.74.254])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6E8BE4C811F8
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 18:39:33 -0600 (CST)
Received: from localhost (c-76-105-143-140.hsd1.or.comcast.net
	[76.105.143.140])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by masterfoo.zenlinux.com (Postfix) with ESMTP id C7481304F6
	for <poky@yoctoproject.org>; Wed, 19 Jan 2011 19:39:25 -0500 (EST)
Message-Id: <4351f4e519c7293e6b8e564a1f656049bc403fe6.1295483757.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1295483757.git.scott.a.garman@intel.com>
References: <cover.1295483757.git.scott.a.garman@intel.com>
From: Scott Garman <scott.a.garman@intel.com>
Old-Date: Wed, 19 Jan 2011 11:24:41 -0800
Date: Wed, 19 Jan 2011 16:39:23 -0800
To: poky@yoctoproject.org
CC: 
X-MasterFoo-MailScanner-Information: Please contact the ISP for more
	information
X-MailScanner-ID: C7481304F6.8C2C3
X-MasterFoo-MailScanner: Found to be clean
X-MasterFoo-MailScanner-SpamCheck: not spam
X-MasterFoo-MailScanner-From: scott.a.garman@intel.com
X-Spam-Status: No
Subject: [PATCH 09/12] binutils: forward-port the binutils-poison.patch
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
X-List-Received-Date: Thu, 20 Jan 2011 00:39:33 -0000

Update the binutils-poison.patch to apply cleanly on binutils
2.21

Signed-off-by: Scott Garman <scott.a.garman@intel.com>
---
 .../binutils/binutils-2.21/binutils-poison.patch   |  314 ++++++++++----------
 meta/recipes-devtools/binutils/binutils_2.21.bb    |    3 +-
 2 files changed, 154 insertions(+), 163 deletions(-)

diff --git a/meta/recipes-devtools/binutils/binutils-2.21/binutils-poison.patch b/meta/recipes-devtools/binutils/binutils-2.21/binutils-poison.patch
index c2f1927..1fe713a 100644
--- a/meta/recipes-devtools/binutils/binutils-2.21/binutils-poison.patch
+++ b/meta/recipes-devtools/binutils/binutils-2.21/binutils-poison.patch
@@ -1,57 +1,58 @@
-This patch is recived from Mark Hatle
+Patch originally created by Mark Hatle, forward-ported to
+binutils 2.21 by Scott Garman.
 
 purpose:  warn for uses of system directories when cross linking
 
-Signed-Off-By: Mark Hatle <mark.hatle@windriver.com>
-
 Code Merged from Sourcery G++ binutils 2.19 - 4.4-277
 
 2008-07-02  Joseph Myers  <joseph@codesourcery.com>
 
-	ld/
-	* ld.h (args_type): Add error_poison_system_directories.
-	* ld.texinfo (--error-poison-system-directories): Document.
-	* ldfile.c (ldfile_add_library_path): Check
-	command_line.error_poison_system_directories.
-	* ldmain.c (main): Initialize
-	command_line.error_poison_system_directories.
-	* lexsup.c (enum option_values): Add
-	OPTION_ERROR_POISON_SYSTEM_DIRECTORIES.
-	(ld_options): Add --error-poison-system-directories.
-	(parse_args): Handle new option.	
+    ld/
+    * ld.h (args_type): Add error_poison_system_directories.
+    * ld.texinfo (--error-poison-system-directories): Document.
+    * ldfile.c (ldfile_add_library_path): Check
+    command_line.error_poison_system_directories.
+    * ldmain.c (main): Initialize
+    command_line.error_poison_system_directories.
+    * lexsup.c (enum option_values): Add
+    OPTION_ERROR_POISON_SYSTEM_DIRECTORIES.
+    (ld_options): Add --error-poison-system-directories.
+    (parse_args): Handle new option.
 
 2007-06-13  Joseph Myers  <joseph@codesourcery.com>
 
-	ld/
-	* config.in: Regenerate.
-	* ld.h (args_type): Add poison_system_directories.
-	* ld.texinfo (--no-poison-system-directories): Document.
-	* ldfile.c (ldfile_add_library_path): Check
-	command_line.poison_system_directories.
-	* ldmain.c (main): Initialize
-	command_line.poison_system_directories.
-	* lexsup.c (enum option_values): Add
-	OPTION_NO_POISON_SYSTEM_DIRECTORIES.
-	(ld_options): Add --no-poison-system-directories.
-	(parse_args): Handle new option.
+    ld/
+    * config.in: Regenerate.
+    * ld.h (args_type): Add poison_system_directories.
+    * ld.texinfo (--no-poison-system-directories): Document.
+    * ldfile.c (ldfile_add_library_path): Check
+    command_line.poison_system_directories.
+    * ldmain.c (main): Initialize
+    command_line.poison_system_directories.
+    * lexsup.c (enum option_values): Add
+    OPTION_NO_POISON_SYSTEM_DIRECTORIES.
+    (ld_options): Add --no-poison-system-directories.
+    (parse_args): Handle new option.
 
 2007-04-20  Joseph Myers  <joseph@codesourcery.com>
 
-	Merge from Sourcery G++ binutils 2.17:
+    Merge from Sourcery G++ binutils 2.17:
+
+    2007-03-20  Joseph Myers  <joseph@codesourcery.com>
+    Based on patch by Mark Hatle <mark.hatle@windriver.com>.
+    ld/
+    * configure.in (--enable-poison-system-directories): New option.
+    * configure, config.in: Regenerate.
+    * ldfile.c (ldfile_add_library_path): If
+    ENABLE_POISON_SYSTEM_DIRECTORIES defined, warn for use of /lib,
+    /usr/lib, /usr/local/lib or /usr/X11R6/lib.
 
-	2007-03-20  Joseph Myers  <joseph@codesourcery.com>
-	Based on patch by Mark Hatle <mark.hatle@windriver.com>.
-	ld/
-	* configure.in (--enable-poison-system-directories): New option.
-	* configure, config.in: Regenerate.
-	* ldfile.c (ldfile_add_library_path): If
-	ENABLE_POISON_SYSTEM_DIRECTORIES defined, warn for use of /lib,
-	/usr/lib, /usr/local/lib or /usr/X11R6/lib.
+Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
+Signed-off-by: Scott Garman <scott.a.garman@intel.com>
 
-Index: binutils-2.20.1/ld/config.in
-===================================================================
---- binutils-2.20.1.orig/ld/config.in
-+++ binutils-2.20.1/ld/config.in
+diff -urN binutils-2.21.orig//ld/config.in binutils-2.21/ld/config.in
+--- binutils-2.21.orig//ld/config.in	2010-11-05 03:34:27.000000000 -0700
++++ binutils-2.21/ld/config.in	2011-01-19 10:48:15.147301022 -0800
 @@ -4,6 +4,9 @@
     language is requested. */
  #undef ENABLE_NLS
@@ -62,32 +63,96 @@ Index: binutils-2.20.1/ld/config.in
  /* Additional extension a shared object might have. */
  #undef EXTRA_SHLIB_EXTENSION
  
-Index: binutils-2.20.1/ld/configure.in
-===================================================================
---- binutils-2.20.1.orig/ld/configure.in
-+++ binutils-2.20.1/ld/configure.in
-@@ -69,6 +69,16 @@ AC_SUBST(use_sysroot)
+diff -urN binutils-2.21.orig//ld/configure binutils-2.21/ld/configure
+--- binutils-2.21.orig//ld/configure	2011-01-19 10:46:46.997571921 -0800
++++ binutils-2.21/ld/configure	2011-01-19 11:03:50.577832729 -0800
+@@ -768,6 +768,7 @@
+ enable_targets
+ enable_64_bit_bfd
+ with_sysroot
++enable_poison_system_directories
+ enable_gold
+ enable_got
+ enable_werror
+@@ -1418,6 +1419,8 @@
+ 			  (and sometimes confusing) to the casual installer
+   --enable-targets        alternative target configurations
+   --enable-64-bit-bfd     64-bit support (on hosts with narrower word sizes)
++  --enable-poison-system-directories
++                          warn for use of native system library directories
+   --enable-gold[=ARG]     build gold [ARG={default,yes,no}]
+   --enable-got=<type>     GOT handling scheme (target, single, negative,
+                           multigot)
+@@ -4203,7 +4206,18 @@
+ fi
+ 
+ 
++# Check whether --enable-poison-system-directories was given.
++if test "${enable_poison_system_directories+set}" = set; then :
++  enableval=$enable_poison_system_directories;
++else
++  enable_poison_system_directories=no
++fi
++
++if test "x${enable_poison_system_directories}" = "xyes"; then
+ 
++$as_echo "#define ENABLE_POISON_SYSTEM_DIRECTORIES 1" >>confdefs.h
++
++fi
+ 
+ # Check whether --enable-got was given.
+ if test "${enable_got+set}" = set; then :
+diff -urN binutils-2.21.orig//ld/configure.in binutils-2.21/ld/configure.in
+--- binutils-2.21.orig//ld/configure.in	2010-11-23 05:50:32.000000000 -0800
++++ binutils-2.21/ld/configure.in	2011-01-19 10:50:57.378398946 -0800
+@@ -69,6 +69,16 @@
  AC_SUBST(TARGET_SYSTEM_ROOT)
  AC_SUBST(TARGET_SYSTEM_ROOT_DEFINE)
  
 +AC_ARG_ENABLE([poison-system-directories],
-+	      AS_HELP_STRING([--enable-poison-system-directories],
-+			     [warn for use of native system library directories]),,
-+	      [enable_poison_system_directories=no])
++         AS_HELP_STRING([--enable-poison-system-directories],
++                [warn for use of native system library directories]),,
++         [enable_poison_system_directories=no])
 +if test "x${enable_poison_system_directories}" = "xyes"; then
 +  AC_DEFINE([ENABLE_POISON_SYSTEM_DIRECTORIES],
-+	    [1],
-+	    [Define to warn for use of native system library directories])
++       [1],
++       [Define to warn for use of native system library directories])
 +fi
 +
- AC_ARG_ENABLE([got],
- AS_HELP_STRING([--enable-got=<type>],
-                [GOT handling scheme (target, single, negative, multigot)]),
-Index: binutils-2.20.1/ld/ld.h
-===================================================================
---- binutils-2.20.1.orig/ld/ld.h
-+++ binutils-2.20.1/ld/ld.h
-@@ -176,6 +176,14 @@ typedef struct {
+ dnl Use --enable-gold to decide if this linker should be the default.
+ dnl "install_as_default" is set to false if gold is the default linker.
+ dnl "installed_linker" is the installed BFD linker name.
+diff -urN binutils-2.21.orig//ld/ldfile.c binutils-2.21/ld/ldfile.c
+--- binutils-2.21.orig//ld/ldfile.c	2011-01-19 10:46:47.157553281 -0800
++++ binutils-2.21/ld/ldfile.c	2011-01-19 10:58:30.035468447 -0800
+@@ -124,6 +124,23 @@
+     {
+       new_dirs->name = xstrdup (name);
+       new_dirs->sysrooted = is_sysrooted_pathname (name, FALSE);
++
++#ifdef ENABLE_POISON_SYSTEM_DIRECTORIES
++      if (command_line.poison_system_directories
++     && ((!strncmp (name, "/lib", 4))
++         || (!strncmp (name, "/usr/lib", 8))
++         || (!strncmp (name, "/usr/local/lib", 14))
++         || (!strncmp (name, "/usr/X11R6/lib", 14))))
++   {
++     if (command_line.error_poison_system_directories)
++       einfo (_("%X%P: error: library search path \"%s\" is unsafe for "
++            "cross-compilation\n"), name);
++     else
++       einfo (_("%P: warning: library search path \"%s\" is unsafe for "
++            "cross-compilation\n"), name);
++   }
++#endif
++
+     }
+ }
+ 
+diff -urN binutils-2.21.orig//ld/ld.h binutils-2.21/ld/ld.h
+--- binutils-2.21.orig//ld/ld.h	2009-11-26 05:45:25.000000000 -0800
++++ binutils-2.21/ld/ld.h	2011-01-19 10:52:54.814716478 -0800
+@@ -198,6 +198,14 @@
       input files.  */
    bfd_boolean accept_unknown_input_arch;
  
@@ -102,11 +167,22 @@ Index: binutils-2.20.1/ld/ld.h
    /* Big or little endian as set on command line.  */
    enum endian_enum endian;
  
-Index: binutils-2.20.1/ld/ld.texinfo
-===================================================================
---- binutils-2.20.1.orig/ld/ld.texinfo
-+++ binutils-2.20.1/ld/ld.texinfo
-@@ -2084,6 +2084,18 @@ string identifying the original linked f
+diff -urN binutils-2.21.orig//ld/ldmain.c binutils-2.21/ld/ldmain.c
+--- binutils-2.21.orig//ld/ldmain.c	2010-11-05 00:20:07.000000000 -0700
++++ binutils-2.21/ld/ldmain.c	2011-01-19 10:59:18.579767697 -0800
+@@ -259,6 +259,8 @@
+   command_line.warn_search_mismatch = TRUE;
+   command_line.check_section_addresses = -1;
+   command_line.disable_target_specific_optimizations = -1;
++  command_line.poison_system_directories = TRUE;
++  command_line.error_poison_system_directories = FALSE;
+ 
+   /* We initialize DEMANGLING based on the environment variable
+      COLLECT_NO_DEMANGLE.  The gcc collect2 program will demangle the
+diff -urN binutils-2.21.orig//ld/ld.texinfo binutils-2.21/ld/ld.texinfo
+--- binutils-2.21.orig//ld/ld.texinfo	2010-10-28 04:40:26.000000000 -0700
++++ binutils-2.21/ld/ld.texinfo	2011-01-19 10:56:04.452567113 -0800
+@@ -2133,6 +2133,18 @@
  
  Passing @code{none} for @var{style} disables the setting from any
  @code{--build-id} options earlier on the command line.
@@ -125,63 +201,19 @@ Index: binutils-2.20.1/ld/ld.texinfo
  @end table
  
  @c man end
-Index: binutils-2.20.1/ld/ldfile.c
-===================================================================
---- binutils-2.20.1.orig/ld/ldfile.c
-+++ binutils-2.20.1/ld/ldfile.c
-@@ -120,6 +120,23 @@ ldfile_add_library_path (const char *nam
-     {
-       new_dirs->name = xstrdup (name);
-       new_dirs->sysrooted = is_sysrooted_pathname (name, FALSE);
-+
-+#ifdef ENABLE_POISON_SYSTEM_DIRECTORIES
-+      if (command_line.poison_system_directories
-+	  && ((!strncmp (name, "/lib", 4))
-+	      || (!strncmp (name, "/usr/lib", 8))
-+	      || (!strncmp (name, "/usr/local/lib", 14))
-+	      || (!strncmp (name, "/usr/X11R6/lib", 14))))
-+	{
-+	  if (command_line.error_poison_system_directories)
-+	    einfo (_("%X%P: error: library search path \"%s\" is unsafe for "
-+		     "cross-compilation\n"), name);
-+	  else
-+	    einfo (_("%P: warning: library search path \"%s\" is unsafe for "
-+		     "cross-compilation\n"), name);
-+	}
-+#endif
-+
-     }
- }
- 
-Index: binutils-2.20.1/ld/ldmain.c
-===================================================================
---- binutils-2.20.1.orig/ld/ldmain.c
-+++ binutils-2.20.1/ld/ldmain.c
-@@ -252,6 +252,8 @@ main (int argc, char **argv)
-   command_line.warn_mismatch = TRUE;
-   command_line.warn_search_mismatch = TRUE;
-   command_line.check_section_addresses = -1;
-+  command_line.poison_system_directories = TRUE;
-+  command_line.error_poison_system_directories = FALSE;
- 
-   /* We initialize DEMANGLING based on the environment variable
-      COLLECT_NO_DEMANGLE.  The gcc collect2 program will demangle the
-Index: binutils-2.20.1/ld/lexsup.c
-===================================================================
---- binutils-2.20.1.orig/ld/lexsup.c
-+++ binutils-2.20.1/ld/lexsup.c
-@@ -166,7 +166,9 @@ enum option_values
-   OPTION_WARN_SHARED_TEXTREL,
-   OPTION_WARN_ALTERNATE_EM,
-   OPTION_REDUCE_MEMORY_OVERHEADS,
--  OPTION_DEFAULT_SCRIPT
-+  OPTION_DEFAULT_SCRIPT,
+diff -urN binutils-2.21.orig//ld/lexsup.c binutils-2.21/ld/lexsup.c
+--- binutils-2.21.orig//ld/lexsup.c	2010-10-27 23:45:33.000000000 -0700
++++ binutils-2.21/ld/lexsup.c	2011-01-19 11:02:07.799898432 -0800
+@@ -175,6 +175,8 @@
+   OPTION_PLUGIN_OPT,
+ #endif /* ENABLE_PLUGINS */
+   OPTION_DEFAULT_SCRIPT,
 +  OPTION_NO_POISON_SYSTEM_DIRECTORIES,
 +  OPTION_ERROR_POISON_SYSTEM_DIRECTORIES
  };
  
  /* The long options.  This structure is used for both the option
-@@ -575,6 +577,14 @@ static const struct ld_option ld_options
+@@ -603,6 +605,14 @@
      TWO_DASHES },
    { {"wrap", required_argument, NULL, OPTION_WRAP},
      '\0', N_("SYMBOL"), N_("Use wrapper functions for SYMBOL"), TWO_DASHES },
@@ -196,58 +228,18 @@ Index: binutils-2.20.1/ld/lexsup.c
  };
  
  #define OPTION_COUNT ARRAY_SIZE (ld_options)
-@@ -1480,6 +1490,14 @@ parse_args (unsigned argc, char **argv)
+@@ -1518,6 +1528,14 @@
                einfo (_("%P%X: --hash-size needs a numeric argument\n"));
            }
            break;
 +
-+	case OPTION_NO_POISON_SYSTEM_DIRECTORIES:
-+	  command_line.poison_system_directories = FALSE;
-+	  break;
++   case OPTION_NO_POISON_SYSTEM_DIRECTORIES:
++     command_line.poison_system_directories = FALSE;
++     break;
 +
-+	case OPTION_ERROR_POISON_SYSTEM_DIRECTORIES:
-+	  command_line.error_poison_system_directories = TRUE;
-+	  break;
++   case OPTION_ERROR_POISON_SYSTEM_DIRECTORIES:
++     command_line.error_poison_system_directories = TRUE;
++     break;
  	}
      }
  
-diff -ur binutils-2.20.1.orig/ld/configure binutils-2.20.1/ld/configure
---- binutils-2.20.1.orig/ld/configure	2010-03-03 08:06:22.000000000 -0600
-+++ binutils-2.20.1/ld/configure	2010-09-30 11:19:35.776990594 -0500
-@@ -901,6 +904,7 @@
- enable_targets
- enable_64_bit_bfd
- with_sysroot
-+enable_poison_system_directories
- enable_got
- enable_werror
- enable_build_warnings
-@@ -1548,6 +1552,8 @@
- 			  (and sometimes confusing) to the casual installer
-   --enable-targets        alternative target configurations
-   --enable-64-bit-bfd     64-bit support (on hosts with narrower word sizes)
-+  --enable-poison-system-directories
-+                          warn for use of native system library directories
-   --enable-got=<type>     GOT handling scheme (target, single, negative,
-                           multigot)
-   --enable-werror         treat compile warnings as errors
-@@ -4302,6 +4334,19 @@
- 
- 
- 
-+# Check whether --enable-poison-system-directories was given.
-+if test "${enable_poison_system_directories+set}" = set; then :
-+  enableval=$enable_poison_system_directories;
-+else
-+  enable_poison_system_directories=no
-+fi
-+
-+if test "x${enable_poison_system_directories}" = "xyes"; then
-+
-+$as_echo "#define ENABLE_POISON_SYSTEM_DIRECTORIES 1" >>confdefs.h
-+
-+fi
-+
- # Check whether --enable-got was given.
- if test "${enable_got+set}" = set; then :
-   enableval=$enable_got; case "${enableval}" in
diff --git a/meta/recipes-devtools/binutils/binutils_2.21.bb b/meta/recipes-devtools/binutils/binutils_2.21.bb
index 8282eb8..1d6a3c4 100644
--- a/meta/recipes-devtools/binutils/binutils_2.21.bb
+++ b/meta/recipes-devtools/binutils/binutils_2.21.bb
@@ -27,8 +27,7 @@ SRC_URI = "\
      file://libtool-2.4-update.patch \
      file://binutils-2.19.1-ld-sysroot.patch \
      file://libiberty_path_fix.patch \
-# Need to consult w/ Mark Hatle to get this patch updated:
-#     file://binutils-poison.patch \
+     file://binutils-poison.patch \
      "
 
 SRC_URI[md5sum] = "c84c5acc9d266f1a7044b51c85a823f5"
-- 
1.7.1


