Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4A2F14C811AB
	for <poky@yoctoproject.org>; Thu, 12 May 2011 19:20:34 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 May 2011 17:20:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,361,1301900400"; d="scan'208";a="642035999"
Received: from nbuild2.sc.intel.com (HELO localhost) ([172.25.110.37])
	by orsmga002.jf.intel.com with ESMTP; 12 May 2011 17:20:34 -0700
Message-Id: <483456db6f26684d977870434bbf3b51891c171c.1305245924.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1305245922.git.nitin.a.kamble@intel.com>
References: <cover.1305245922.git.nitin.a.kamble@intel.com>
Old-Date: Thu, 12 May 2011 17:04:41 -0700
Date: Thu, 12 May 2011 17:20:33 -0700
To: poky@yoctoproject.org
From: Nitin A Kamble <nitin.a.kamble@intel.com>
Subject: [PATCH 25/25] m4: update upstream-status for patches
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
X-List-Received-Date: Fri, 13 May 2011 00:20:34 -0000

From: Nitin A Kamble <nitin.a.kamble@intel.com>

Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
---
 meta/recipes-devtools/m4/m4/ac_config_links.patch  |    2 +
 .../m4/m4/fix_for_circular_dependency.patch        |    2 +
 .../m4/m4/m4-1.4.9_extra_options.patch             |  169 ++++++++++++++++++++
 meta/recipes-devtools/m4/m4/make.patch             |    1 +
 4 files changed, 174 insertions(+), 0 deletions(-)
 create mode 100644 meta/recipes-devtools/m4/m4/m4-1.4.9_extra_options.patch

diff --git a/meta/recipes-devtools/m4/m4/ac_config_links.patch b/meta/recipes-devtools/m4/m4/ac_config_links.patch
index 2210387..1ff28d1 100644
--- a/meta/recipes-devtools/m4/m4/ac_config_links.patch
+++ b/meta/recipes-devtools/m4/m4/ac_config_links.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Pending
+
 This patch fixes a build problem for m4-native experienced on Ubuntu 9.10,
 where autoconf/automake (AC_CONFIG_LINKS) ends up making GNUmakefile a
 symlink to itself.
diff --git a/meta/recipes-devtools/m4/m4/fix_for_circular_dependency.patch b/meta/recipes-devtools/m4/m4/fix_for_circular_dependency.patch
index ba51d87..9877453 100644
--- a/meta/recipes-devtools/m4/m4/fix_for_circular_dependency.patch
+++ b/meta/recipes-devtools/m4/m4/fix_for_circular_dependency.patch
@@ -1,3 +1,5 @@
+Upstream-Status: Inappropriate [licensing]
+
 The older GPLv2 m4 does not work well with newer autoconf. It causes the 
 circular dependency as seen bellow.
   Removing this m4 file which was needed only forl older autoconf
diff --git a/meta/recipes-devtools/m4/m4/m4-1.4.9_extra_options.patch b/meta/recipes-devtools/m4/m4/m4-1.4.9_extra_options.patch
new file mode 100644
index 0000000..42fa3b8
--- /dev/null
+++ b/meta/recipes-devtools/m4/m4/m4-1.4.9_extra_options.patch
@@ -0,0 +1,169 @@
+Upstream-Status: Inappropriate [Backport]
+
+commit 22fa1d09ac5d2e180d7d6fd1a23ca064516786af
+Author: Eric Blake <ebb9@byu.net>
+Date:   Mon Jul 14 06:17:50 2008 -0600
+
+    Add -g/--gnu command line argument.
+    
+    * src/m4.c (usage): Mention the new option.
+    (long_options, OPTSTRING): Add new option.
+    (main): Use it.
+    * NEWS: Document this addition.
+    * doc/m4.texinfo (Limits control): Likewise.
+    (Incompatibilities): Mention future use of POSIXLY_CORRECT.
+    * THANKS: Update.
+    Reported by Joel E. Denny.
+    
+    Signed-off-by: Eric Blake <ebb9@byu.net>
+    (cherry picked from commit 8e6cc3c04610603437d9f67e337d0abf113eb46b)
+
+diff --git a/ChangeLog b/ChangeLog
+index 5c1bb54..3177d6b 100644
+--- a/ChangeLog
++++ b/ChangeLog
+@@ -1,3 +1,15 @@
++2008-07-13  Eric Blake  <ebb9@byu.net>
++
++	Add -g/--gnu command line argument.
++	* src/m4.c (usage): Mention the new option.
++	(long_options, OPTSTRING): Add new option.
++	(main): Use it.
++	* NEWS: Document this addition.
++	* doc/m4.texinfo (Limits control): Likewise.
++	(Incompatibilities): Mention future use of POSIXLY_CORRECT.
++	* THANKS: Update.
++	Reported by Joel E. Denny.
++
+ 2008-07-11  Eric Blake  <ebb9@byu.net>
+ 
+ 	Avoid bogus whitespace in @ovar, @dvar.
+diff --git a/NEWS b/NEWS
+index 2a4ba93..006a016 100644
+--- a/NEWS
++++ b/NEWS
+@@ -9,6 +9,18 @@ Foundation, Inc.
+    a macro.  This was most noticeable with `traceon(`traceon')', but
+    would also happen in cases such as `foo(traceon(`foo'))'.
+ 
++** New `-g'/`--gnu' command-line option overrides `-G'/`--traditional'.
++   For now, the environment variable POSIXLY_CORRECT has no effect on M4
++   behavior; but a future release of M4 will behave as though --traditional
++   is implied if POSIXLY_CORRECT is set (this future change is necessary,
++   because in the current release, there is no way to disable GNU
++   extensions that conflict with POSIX without the use of a non-POSIX
++   command-line argument).  Clients of M4 that want to use GNU extensions,
++   even when POSIXLY_CORRECT is set, should start using the -g command-line
++   argument, even though it is currently a no-op if -G did not appear
++   earlier in the command line, so that the client will not break in the
++   face of an upgraded m4 and a POSIXLY_CORRECT execution environment.
++
+ ** A number of portability improvements inherited from gnulib.
+ 
+ * Noteworthy changes in Version 1.4.11 (2008-04-02) [stable]
+diff --git a/THANKS b/THANKS
+index 1fa9ba5..6a048b9 100644
+--- a/THANKS
++++ b/THANKS
+@@ -51,6 +51,7 @@ Jean-Charles Longuet	jclonguet@free.fr
+ Jim Avera		jima@netcom.com
+ Jim Kingdom		kingdon@cygnus.com
+ Jim Meyering		meyering@acm.org
++Joel E. Denny		jdenny@ces.clemson.edu
+ Joel Sherrill		jsherril@uahcs2.cs.uah.edu
+ John Brzustowski	jbrzusto@fastmail.fm
+ John David Anglin	dave@hiauly1.hia.nrc.ca
+diff --git a/doc/m4.texinfo b/doc/m4.texinfo
+index 0021208..a69d439 100644
+--- a/doc/m4.texinfo
++++ b/doc/m4.texinfo
+@@ -739,6 +739,23 @@ only by your hardware and operating system constraints) in @acronym{GNU}
+ @code{m4}.
+ 
+ @table @code
++@item -g
++@itemx --gnu
++Enable all the extensions in this implementation.  In this release of
++M4, this option is always on by default; it is currently only useful
++when overriding a prior use of @option{--traditional}.  However, having
++@acronym{GNU} behavior as default makes it impossible to write a
++strictly @acronym{POSIX}-compliant client that avoids all incompatible
++@acronym{GNU} M4 extensions, since such a client would have to use the
++non-@acronym{POSIX} command-line option to force full @acronym{POSIX}
++behavior.  Thus, a future version of M4 will be changed to implicitly
++use the option @option{--traditional} if the environment variable
++@env{POSIXLY_CORRECT} is set.  Projects that intentionally use
++@acronym{GNU} extensions should consider using @option{--gnu} to state
++their intentions, so that the project will not mysteriously break if the
++user upgrades to a newer M4 and has @env{POSIXLY_CORRECT} set in their
++environment.
++
+ @item -G
+ @itemx --traditional
+ Suppress all the extensions made in this implementation, compared to the
+@@ -7080,6 +7097,22 @@ However, this appears to be a bug in @acronym{POSIX}, since most
+ traditional implementations also ignore all whitespace (formfeed,
+ carriage return, and vertical tab).  @acronym{GNU} @code{m4} follows
+ tradition and ignores all leading unquoted whitespace.
++
++@item
++@cindex @env{POSIXLY_CORRECT}
++A strictly-compliant @acronym{POSIX} client is not allowed to use
++command-line arguments not specified by @acronym{POSIX}.  However, since
++this version of M4 ignores @env{POSIXLY_CORRECT} and enables the option
++@code{--gnu} by default (@pxref{Limits control, , Invoking m4}), a
++client desiring to be strictly compliant has no way to disable
++@acronym{GNU} extensions that conflict with @acronym{POSIX} when
++directly invoking the compiled @code{m4}.  A future version of
++@code{GNU} M4 will honor the environment variable @env{POSIXLY_CORRECT},
++implicitly enabling @option{--traditional} if it is set, in order to
++allow a strictly-compliant client.  In the meantime, a client needing
++strict @acronym{POSIX} compliance can use the workaround of invoking a
++shell script wrapper, where the wrapper then adds @option{--traditional}
++to the arguments passed to the compiled @code{m4}.
+ @end itemize
+ 
+ @node Other Incompatibilities
+diff --git a/src/m4.c b/src/m4.c
+index ca341cc..bd5fd3c 100644
+--- a/src/m4.c
++++ b/src/m4.c
+@@ -178,6 +178,7 @@ Preprocessor features:\n\
+       fputs ("\
+ \n\
+ Limits control:\n\
++  -g, --gnu                    override -G to re-enable GNU extensions\n\
+   -G, --traditional            suppress all GNU extensions\n\
+   -H, --hashsize=PRIME         set symbol lookup hash table size [509]\n\
+   -L, --nesting-limit=NUMBER   change artificial nesting limit [1024]\n\
+@@ -250,6 +251,7 @@ static const struct option long_options[] =
+   {"error-output", required_argument, NULL, 'o'}, /* FIXME: deprecate in 2.0 */
+   {"fatal-warnings", no_argument, NULL, 'E'},
+   {"freeze-state", required_argument, NULL, 'F'},
++  {"gnu", no_argument, NULL, 'g'},
+   {"hashsize", required_argument, NULL, 'H'},
+   {"include", required_argument, NULL, 'I'},
+   {"interactive", no_argument, NULL, 'i'},
+@@ -311,9 +313,9 @@ process_file (const char *name)
+    '-' forces getopt_long to hand back file names as arguments to opt
+    '\1', rather than reordering the command line.  */
+ #ifdef ENABLE_CHANGEWORD
+-#define OPTSTRING "-B:D:EF:GH:I:L:N:PQR:S:T:U:W:d::eil:o:st:"
++#define OPTSTRING "-B:D:EF:GH:I:L:N:PQR:S:T:U:W:d::egil:o:st:"
+ #else
+-#define OPTSTRING "-B:D:EF:GH:I:L:N:PQR:S:T:U:d::eil:o:st:"
++#define OPTSTRING "-B:D:EF:GH:I:L:N:PQR:S:T:U:d::egil:o:st:"
+ #endif
+ 
+ int
+@@ -452,6 +454,10 @@ main (int argc, char *const *argv, char *const *envp)
+ 	interactive = true;
+ 	break;
+ 
++      case 'g':
++	no_gnu_extensions = 0;
++	break;
++
+       case 'l':
+ 	max_debug_argument_length = atoi (optarg);
+ 	if (max_debug_argument_length <= 0)
diff --git a/meta/recipes-devtools/m4/m4/make.patch b/meta/recipes-devtools/m4/m4/make.patch
index 3577b0b..c94bf12 100644
--- a/meta/recipes-devtools/m4/m4/make.patch
+++ b/meta/recipes-devtools/m4/m4/make.patch
@@ -1,3 +1,4 @@
+Upstream-Status: Pending
 
 #
 # Patch managed by http://www.holgerschurig.de/patcher.html
-- 
1.7.3.4


