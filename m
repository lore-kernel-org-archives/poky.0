Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 103534C800B6
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 17:54:49 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 29 Apr 2011 15:54:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,290,1301900400"; d="scan'208";a="636037502"
Received: from unknown (HELO [10.255.13.18]) ([10.255.13.18])
	by orsmga002.jf.intel.com with ESMTP; 29 Apr 2011 15:54:48 -0700
Message-ID: <4DBB41B7.5060704@intel.com>
Date: Fri, 29 Apr 2011 15:54:47 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Qing He <qing.he@intel.com>
References: <cover.1304069545.git.qing.he@intel.com>
	<edcc0da077bfd69009c8d63ec7bf5766684b3c1a.1304069545.git.qing.he@intel.com>
In-Reply-To: <edcc0da077bfd69009c8d63ec7bf5766684b3c1a.1304069545.git.qing.he@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 01/10] attr: upgrade to version 2.4.46
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
X-List-Received-Date: Fri, 29 Apr 2011 22:54:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/29/2011 02:35 AM, Qing He wrote:
> From: Qing He<qing.he@intel.com>
>
> from 2.4.44
>   - remove the backported patch that is now in the tarball
>   - prog path issue has also been fixed in the upstream
>
Qing,

I noticed that there is a 
recipes-support/attr/files/relative-libdir.patch patch that has not had 
it's Upstream-Status added,
please add this.

Thanks

Sau!

> Signed-off-by: Qing He<qing.he@intel.com>
> ---
>   .../attr/attr-2.4.44/double-free.patch             |   18 ----
>   .../attr/attr-2.4.44/memory-leak-in-copy.patch     |   50 ----------
>   .../attr/attr-2.4.44/memory-leak2.patch            |   18 ----
>   .../attr/attr-2.4.44/pull-in-string.h.patch        |   21 ----
>   .../attr/attr-2.4.44/thinko-in-restore.patch       |   19 ----
>   meta/recipes-support/attr/attr_2.4.44.bb           |   12 ---
>   meta/recipes-support/attr/attr_2.4.46.bb           |    6 +
>   meta/recipes-support/attr/ea-acl.inc               |    2 +-
>   .../attr/files/no-fixed-prog-path.patch            |   99 --------------------
>   9 files changed, 7 insertions(+), 238 deletions(-)
>   delete mode 100644 meta/recipes-support/attr/attr-2.4.44/double-free.patch
>   delete mode 100644 meta/recipes-support/attr/attr-2.4.44/memory-leak-in-copy.patch
>   delete mode 100644 meta/recipes-support/attr/attr-2.4.44/memory-leak2.patch
>   delete mode 100644 meta/recipes-support/attr/attr-2.4.44/pull-in-string.h.patch
>   delete mode 100644 meta/recipes-support/attr/attr-2.4.44/thinko-in-restore.patch
>   delete mode 100644 meta/recipes-support/attr/attr_2.4.44.bb
>   create mode 100644 meta/recipes-support/attr/attr_2.4.46.bb
>   delete mode 100644 meta/recipes-support/attr/files/no-fixed-prog-path.patch
>
> diff --git a/meta/recipes-support/attr/attr-2.4.44/double-free.patch b/meta/recipes-support/attr/attr-2.4.44/double-free.patch
> deleted file mode 100644
> index 6fc684f..0000000
> --- a/meta/recipes-support/attr/attr-2.4.44/double-free.patch
> +++ /dev/null
> @@ -1,18 +0,0 @@
> -commit 5b28eb3b0e0430ce6af28edc9100ca23299d1218
> -Author: Kamil Dudka<kdudka@redhat.com>
> -Date:   Thu Jun 3 15:29:54 2010 +0200
> -
> -    attr_parse_attr_conf: eliminate a double free
> -
> -diff --git a/libattr/attr_copy_action.c b/libattr/attr_copy_action.c
> -index 030bbf5..2697328 100644
> ---- a/libattr/attr_copy_action.c
> -+++ b/libattr/attr_copy_action.c
> -@@ -81,6 +81,7 @@ repeat:
> - 		fclose(file);
> - 		file = NULL;
> - 		free(text);
> -+		text = NULL;
> - 		size_guess *= 2;
> - 		goto repeat;
> - 	}
> diff --git a/meta/recipes-support/attr/attr-2.4.44/memory-leak-in-copy.patch b/meta/recipes-support/attr/attr-2.4.44/memory-leak-in-copy.patch
> deleted file mode 100644
> index 966632d..0000000
> --- a/meta/recipes-support/attr/attr-2.4.44/memory-leak-in-copy.patch
> +++ /dev/null
> @@ -1,50 +0,0 @@
> -commit 972b42a67393f762936e74d3ce929914181f5f28
> -Author: Brandon Philips<brandon@ifup.org>
> -Date:   Thu Dec 17 17:15:57 2009 -0800
> -
> -    libattr: fix memory leak in attr_copy_action()
> -
> -    stanse found that attr_copy_action returns before freeing the memory
> -    allocated for text.
> -
> -    Move fopen() above the malloc so this is not a problem.
> -
> -    Fixes this bug:
> -     https://bugzilla.novell.com/show_bug.cgi?id=564735
> -
> -    Signed-off-by: Brandon Philips<bphilips@suse.de>
> -
> -diff --git a/libattr/attr_copy_action.c b/libattr/attr_copy_action.c
> -index 0d7aca5..dc94224 100644
> ---- a/libattr/attr_copy_action.c
> -+++ b/libattr/attr_copy_action.c
> -@@ -53,7 +53,7 @@ free_attr_actions(void)
> - static int
> - attr_parse_attr_conf(struct error_context *ctx)
> - {
> --	char *text, *t;
> -+	char *text = NULL, *t;
> - 	size_t size_guess = 4096, len;
> - 	FILE *file;
> - 	char *pattern = NULL;
> -@@ -64,15 +64,16 @@ attr_parse_attr_conf(struct error_context *ctx)
> - 		return 0;
> -
> - repeat:
> --	text = malloc(size_guess + 1);
> --	if (!text)
> --		goto fail;
> --
> - 	if ((file = fopen(ATTR_CONF, "r")) == NULL) {
> - 		if (errno == ENOENT)
> - 			return 0;
> - 		goto fail;
> - 	}
> -+
> -+	text = malloc(size_guess + 1);
> -+	if (!text)
> -+		goto fail;
> -+
> - 	len = fread(text, 1, size_guess, file);
> - 	if (ferror(file))
> - 		goto fail;
> diff --git a/meta/recipes-support/attr/attr-2.4.44/memory-leak2.patch b/meta/recipes-support/attr/attr-2.4.44/memory-leak2.patch
> deleted file mode 100644
> index 0339542..0000000
> --- a/meta/recipes-support/attr/attr-2.4.44/memory-leak2.patch
> +++ /dev/null
> @@ -1,18 +0,0 @@
> -commit 42f50a130d144ffbc01738f15da9d4f1b57505bd
> -Author: Kamil Dudka<kdudka@redhat.com>
> -Date:   Thu Jun 3 15:23:04 2010 +0200
> -
> -    attr_parse_attr_conf: eliminate a memory leak
> -
> -diff --git a/libattr/attr_copy_action.c b/libattr/attr_copy_action.c
> -index dc94224..030bbf5 100644
> ---- a/libattr/attr_copy_action.c
> -+++ b/libattr/attr_copy_action.c
> -@@ -129,6 +129,7 @@ repeat:
> -
> - 		t += strcspn(t, "\n");
> - 	}
> -+	free(text);
> - 	return 0;
> -
> - parse_error:
> diff --git a/meta/recipes-support/attr/attr-2.4.44/pull-in-string.h.patch b/meta/recipes-support/attr/attr-2.4.44/pull-in-string.h.patch
> deleted file mode 100644
> index ccbc236..0000000
> --- a/meta/recipes-support/attr/attr-2.4.44/pull-in-string.h.patch
> +++ /dev/null
> @@ -1,21 +0,0 @@
> -commit 235cdd2af498d288f1af1142e7a23fbd16dff907
> -Author: Mike Frysinger<vapier@gentoo.org>
> -Date:   Fri Jan 8 21:53:19 2010 -0500
> -
> -    quote: pull in string.h for strchr prototype
> -
> -    Signed-off-by: Mike Frysinger<vapier@gentoo.org>
> -    Signed-off-by: Brandon Philips<brandon@ifup.org>
> -
> -diff --git a/libmisc/quote.c b/libmisc/quote.c
> -index f98c887..bf8f9eb 100644
> ---- a/libmisc/quote.c
> -+++ b/libmisc/quote.c
> -@@ -20,6 +20,7 @@
> - #include<stdio.h>
> - #include<stdlib.h>
> - #include<ctype.h>
> -+#include<string.h>
> - #include "misc.h"
> -
> - const char *quote(const char *str, const char *quote_chars)
> diff --git a/meta/recipes-support/attr/attr-2.4.44/thinko-in-restore.patch b/meta/recipes-support/attr/attr-2.4.44/thinko-in-restore.patch
> deleted file mode 100644
> index a84de94..0000000
> --- a/meta/recipes-support/attr/attr-2.4.44/thinko-in-restore.patch
> +++ /dev/null
> @@ -1,19 +0,0 @@
> -commit e8d568c696692eed5c92d5a35498e1c26e13d6b3
> -Author: Kamil Dudka<kdudka@redhat.com>
> -Date:   Thu Jun 3 15:30:19 2010 +0200
> -
> -    setfattr.c: fix thinko in restore()
> -
> -diff --git a/setfattr/setfattr.c b/setfattr/setfattr.c
> -index 491c25a..0a14cfa 100644
> ---- a/setfattr/setfattr.c
> -+++ b/setfattr/setfattr.c
> -@@ -120,7 +120,7 @@ int restore(const char *filename)
> - 			break;
> - 		line++;
> - 		if (strncmp(l, "# file: ", 8) != 0) {
> --			if (filename) {
> -+			if (file != stdin) {
> - 				fprintf(stderr, _("%s: %s: No filename found "
> - 				                  "in line %d, aborting\n"),
> - 					progname, filename, backup_line);
> diff --git a/meta/recipes-support/attr/attr_2.4.44.bb b/meta/recipes-support/attr/attr_2.4.44.bb
> deleted file mode 100644
> index a0945f1..0000000
> --- a/meta/recipes-support/attr/attr_2.4.44.bb
> +++ /dev/null
> @@ -1,12 +0,0 @@
> -require attr.inc
> -
> -PR = "r3"
> -
> -SRC_URI += "file://memory-leak-in-copy.patch \
> -            file://memory-leak2.patch \
> -            file://double-free.patch \
> -            file://pull-in-string.h.patch \
> -            file://thinko-in-restore.patch"
> -
> -SRC_URI[md5sum] = "d132c119831c27350e10b9f885711adc"
> -SRC_URI[sha256sum] = "9f6214b8e53f4bba651ac5a72c0f6193b12aa21fbf1d675d89a7b4bc45264498"
> diff --git a/meta/recipes-support/attr/attr_2.4.46.bb b/meta/recipes-support/attr/attr_2.4.46.bb
> new file mode 100644
> index 0000000..9fef41b
> --- /dev/null
> +++ b/meta/recipes-support/attr/attr_2.4.46.bb
> @@ -0,0 +1,6 @@
> +require attr.inc
> +
> +PR = "r0"
> +
> +SRC_URI[md5sum] = "db557c17fdfa4f785333ecda08654010"
> +SRC_URI[sha256sum] = "dcd69bdca7ff166bc45141eddbcf21967999a6b66b0544be12a1cc2fd6340e1f"
> diff --git a/meta/recipes-support/attr/ea-acl.inc b/meta/recipes-support/attr/ea-acl.inc
> index a09c31c..afe2f1c 100644
> --- a/meta/recipes-support/attr/ea-acl.inc
> +++ b/meta/recipes-support/attr/ea-acl.inc
> @@ -1,7 +1,7 @@
>   # this build system is mostly shared by attr and acl
>
>   SRC_URI += "file://relative-libdir.patch;striplevel=0 \
> -            file://no-fixed-prog-path.patch"
> +           "
>
>   inherit autotools gettext
>
> diff --git a/meta/recipes-support/attr/files/no-fixed-prog-path.patch b/meta/recipes-support/attr/files/no-fixed-prog-path.patch
> deleted file mode 100644
> index 88d9c0e..0000000
> --- a/meta/recipes-support/attr/files/no-fixed-prog-path.patch
> +++ /dev/null
> @@ -1,99 +0,0 @@
> -Not using fixed utility path, but respect $PATH
> -
> -10/09/2010 - created by Qing He<qing.he@intel.com>
> -
> -diff --git a/m4/package_utilies.m4 b/m4/package_utilies.m4
> -index 165db35..0afe578 100644
> ---- a/m4/package_utilies.m4
> -+++ b/m4/package_utilies.m4
> -@@ -37,22 +37,22 @@ AC_DEFUN([AC_PACKAGE_UTILITIES],
> -     AC_PACKAGE_NEED_UTILITY($1, "$cc", cc, [C compiler])
> -
> -     if test -z "$MAKE"; then
> --        AC_PATH_PROG(MAKE, gmake,, /usr/bin:/usr/local/bin:/usr/freeware/bin)
> -+        AC_PATH_PROG(MAKE, gmake)
> -     fi
> -     if test -z "$MAKE"; then
> --        AC_PATH_PROG(MAKE, make,, /usr/bin)
> -+        AC_PATH_PROG(MAKE, make)
> -     fi
> -     make=$MAKE
> -     AC_SUBST(make)
> -     AC_PACKAGE_NEED_UTILITY($1, "$make", make, [GNU make])
> -
> -     if test -z "$TAR"; then
> --        AC_PATH_PROG(TAR, tar,, /usr/freeware/bin:/bin:/usr/local/bin:/usr/bin)
> -+        AC_PATH_PROG(TAR, tar)
> -     fi
> -     tar=$TAR
> -     AC_SUBST(tar)
> -     if test -z "$ZIP"; then
> --        AC_PATH_PROG(ZIP, gzip,, /bin:/usr/bin:/usr/local/bin:/usr/freeware/bin)
> -+        AC_PATH_PROG(ZIP, gzip)
> -     fi
> -
> -     zip=$ZIP
> -@@ -65,25 +65,25 @@ AC_DEFUN([AC_PACKAGE_UTILITIES],
> -     AC_SUBST(makedepend)
> -
> -     if test -z "$AWK"; then
> --        AC_PATH_PROG(AWK, awk,, /bin:/usr/bin)
> -+        AC_PATH_PROG(AWK, awk)
> -     fi
> -     awk=$AWK
> -     AC_SUBST(awk)
> -
> -     if test -z "$SED"; then
> --        AC_PATH_PROG(SED, sed,, /bin:/usr/bin)
> -+        AC_PATH_PROG(SED, sed)
> -     fi
> -     sed=$SED
> -     AC_SUBST(sed)
> -
> -     if test -z "$ECHO"; then
> --        AC_PATH_PROG(ECHO, echo,, /bin:/usr/bin)
> -+        AC_PATH_PROG(ECHO, echo)
> -     fi
> -     echo=$ECHO
> -     AC_SUBST(echo)
> -
> -     if test -z "$SORT"; then
> --        AC_PATH_PROG(SORT, sort,, /bin:/usr/bin)
> -+        AC_PATH_PROG(SORT, sort)
> -     fi
> -     sort=$SORT
> -     AC_SUBST(sort)
> -@@ -93,21 +93,21 @@ AC_DEFUN([AC_PACKAGE_UTILITIES],
> -
> -     if test "$enable_gettext" = yes; then
> -         if test -z "$MSGFMT"; then
> --                AC_PATH_PROG(MSGFMT, msgfmt,, /usr/bin:/usr/local/bin:/usr/freeware/bin)
> -+                AC_PATH_PROG(MSGFMT, msgfmt)
> -         fi
> -         msgfmt=$MSGFMT
> -         AC_SUBST(msgfmt)
> -         AC_PACKAGE_NEED_UTILITY($1, "$msgfmt", msgfmt, gettext)
> -
> -         if test -z "$MSGMERGE"; then
> --                AC_PATH_PROG(MSGMERGE, msgmerge,, /usr/bin:/usr/local/bin:/usr/freeware/bin)
> -+                AC_PATH_PROG(MSGMERGE, msgmerge)
> -         fi
> -         msgmerge=$MSGMERGE
> -         AC_SUBST(msgmerge)
> -         AC_PACKAGE_NEED_UTILITY($1, "$msgmerge", msgmerge, gettext)
> -
> -         if test -z "$XGETTEXT"; then
> --                AC_PATH_PROG(XGETTEXT, xgettext,, /usr/bin:/usr/local/bin:/usr/freeware/bin)
> -+                AC_PATH_PROG(XGETTEXT, xgettext)
> -         fi
> -         xgettext=$XGETTEXT
> -         AC_SUBST(xgettext)
> -@@ -117,7 +117,7 @@ AC_DEFUN([AC_PACKAGE_UTILITIES],
> -     fi
> -
> -     if test -z "$RPM"; then
> --        AC_PATH_PROG(RPM, rpm,, /bin:/usr/bin:/usr/freeware/bin)
> -+        AC_PATH_PROG(RPM, rpm)
> -     fi
> -     rpm=$RPM
> -     AC_SUBST(rpm)


