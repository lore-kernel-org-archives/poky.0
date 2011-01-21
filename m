Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 295824C80BD4
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 04:18:38 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 21 Jan 2011 02:18:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,357,1291622400"; d="scan'208";a="649615997"
Received: from unknown (HELO [10.255.14.114]) ([10.255.14.114])
	by fmsmga002.fm.intel.com with ESMTP; 21 Jan 2011 02:18:36 -0800
Message-ID: <4D395D77.1040301@intel.com>
Date: Fri, 21 Jan 2011 02:18:31 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Qing He <qing.he@intel.com>
References: <cover.1295515302.git.qing.he@intel.com>
	<85f7ea2efeca4cc2dcbfeeb6adbfe29aa584bf64.1295515302.git.qing.he@intel.com>
In-Reply-To: <85f7ea2efeca4cc2dcbfeeb6adbfe29aa584bf64.1295515302.git.qing.he@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 4/7] shared-mime-info: upgrade to version 0.90
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
X-List-Received-Date: Fri, 21 Jan 2011 10:18:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/20/2011 01:24 AM, Qing He wrote:
> from 0.80
>
> The patch is to fix the build for 0.90 and is expected to be removed
> in the next version
>
> Signed-off-by: Qing He<qing.he@intel.com>
> ---
>   .../conf/distro/include/distro_tracking_fields.inc |    4 +-
>   .../shared-mime-info/fix-parallel-build.patch      |   21 ++++++++++++++++++++
>   .../shared-mime-info/shared-mime-info_0.80.bb      |    5 ----
>   .../shared-mime-info/shared-mime-info_0.90.bb      |    7 ++++++
>   4 files changed, 30 insertions(+), 7 deletions(-)
>   create mode 100644 meta/recipes-support/shared-mime-info/shared-mime-info/fix-parallel-build.patch
>   delete mode 100644 meta/recipes-support/shared-mime-info/shared-mime-info_0.80.bb
>   create mode 100644 meta/recipes-support/shared-mime-info/shared-mime-info_0.90.bb
>
Qing,

This patch is failing, I am doing a basic x86 build on a x86-64 machine.

Sau!


NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Running task 813 of 977 (ID: 6, 
/vol/1/sgw/poky/meta/recipes-support/shared-mime-info/shared-mime-info_0.90.bb, 
do_setscene)
NOTE: package shared-mime-info-0.90-r0: task do_setscene: Started
NOTE: package shared-mime-info-0.90-r0: task do_setscene: Succeeded
NOTE: Running task 965 of 977 (ID: 5, 
/vol/1/sgw/poky/meta/recipes-support/shared-mime-info/shared-mime-info_0.90.bb, 
do_fetch)
NOTE: package shared-mime-info-0.90-r0: task do_fetch: Started
NOTE: package shared-mime-info-0.90-r0: task do_fetch: Succeeded
NOTE: Running task 966 of 977 (ID: 0, 
/vol/1/sgw/poky/meta/recipes-support/shared-mime-info/shared-mime-info_0.90.bb, 
do_unpack)
NOTE: package shared-mime-info-0.90-r0: task do_unpack: Started
NOTE: package shared-mime-info-0.90-r0: task do_unpack: Succeeded
NOTE: Running task 967 of 977 (ID: 1, 
/vol/1/sgw/poky/meta/recipes-support/shared-mime-info/shared-mime-info_0.90.bb, 
do_patch)
NOTE: package shared-mime-info-0.90-r0: task do_patch: Started
NOTE: package shared-mime-info-0.90-r0: task do_patch: Succeeded
NOTE: Running task 968 of 977 (ID: 7, 
/vol/1/sgw/poky/meta/recipes-support/shared-mime-info/shared-mime-info_0.90.bb, 
do_configure)
NOTE: package shared-mime-info-0.90-r0: task do_configure: Started
NOTE: package shared-mime-info-0.90-r0: task do_configure: Succeeded
NOTE: Running task 969 of 977 (ID: 8, 
/vol/1/sgw/poky/meta/recipes-support/shared-mime-info/shared-mime-info_0.90.bb, 
do_compile)
NOTE: package shared-mime-info-0.90-r0: task do_compile: Started
ERROR: Function 'do_compile' failed (see 
/vol/1/sgw/builds/new/tmp/work/x86_64-poky-linux/shared-mime-info-0.90-r0/temp/log.do_compile.17751 
for further information)
ERROR: 
'/vol/1/sgw/poky/meta/recipes-support/shared-mime-info/shared-mime-info_0.90.bb' 
failed
ERROR: Logfile of failure stored in: 
/vol/1/sgw/builds/new/tmp/work/x86_64-poky-linux/shared-mime-info-0.90-r0/temp/log.do_compile.17751
Log data follows:
| NOTE: make -j 32
| make -C po shared-mime-info.pot
| LC_ALL=C 
/vol/1/sgw/builds/new/tmp/sysroots/x86_64-linux/usr/bin/intltool-merge 
-x -u -c ./po/.intltool-merge-cache ./po freedesktop.org.xml.in 
freedesktop.org.xml
| ccache x86_64-poky-linux-gcc -m64 
--sysroot=/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux 
-DHAVE_CONFIG_H -I. 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/include/libxml2 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/include/glib-2.0 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/lib/glib-2.0/include 
 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/include/libxml2 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/include/glib-2.0 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/lib/glib-2.0/include 
   -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 
-ggdb -feliminate-unused-debug-types -Wall -Wstrict-prototypes 
-Wmissing-prototypes -Wwrite-strings -MT 
update_mime_database-update-mime-database.o -MD -MP -MF 
.deps/update_mime_database-update-mime-database.Tpo -c -o 
update_mime_database-update-mime-database.o `test -f 
'update-mime-database.c' || echo './'`update-mime-database.c
| Making check in .
| make[1]: Entering directory 
`/vol/1/sgw/builds/new/tmp/work/x86_64-poky-linux/shared-mime-info-0.90-r0/shared-mime-info-0.90'
| ccache x86_64-poky-linux-gcc -m64 
--sysroot=/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux 
-DHAVE_CONFIG_H -I. 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/include/libxml2 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/include/glib-2.0 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/lib/glib-2.0/include 
 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/include/libxml2 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/include/glib-2.0 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/lib/glib-2.0/include 
   -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 
-ggdb -feliminate-unused-debug-types -Wall -Wstrict-prototypes 
-Wmissing-prototypes -Wwrite-strings -MT 
update_mime_database-update-mime-database.o -MD -MP -MF 
.deps/update_mime_database-update-mime-database.Tpo -c -o 
update_mime_database-update-mime-database.o `test -f 
'update-mime-database.c' || echo './'`update-mime-database.c
| ccache x86_64-poky-linux-gcc -m64 
--sysroot=/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux 
-DHAVE_CONFIG_H -I. 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/include/libxml2 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/include/glib-2.0 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/lib/glib-2.0/include 
 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/include/libxml2 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/include/glib-2.0 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/lib/glib-2.0/include 
   -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 
-ggdb -feliminate-unused-debug-types -Wall -Wstrict-prototypes 
-Wmissing-prototypes -Wwrite-strings -MT 
test_subclassing-test-subclassing.o -MD -MP -MF 
.deps/test_subclassing-test-subclassing.Tpo -c -o 
test_subclassing-test-subclassing.o `test -f 'test-subclassing.c' || 
echo './'`test-subclassing.c
| ccache x86_64-poky-linux-gcc -m64 
--sysroot=/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux 
-DHAVE_CONFIG_H -I. 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/include/libxml2 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/include/glib-2.0 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/lib/glib-2.0/include 
     -pthread 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/include/glib-2.0 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/lib/glib-2.0/include 
   -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 
-ggdb -feliminate-unused-debug-types -Wall -Wstrict-prototypes 
-Wmissing-prototypes -Wwrite-strings -MT 
test_tree_magic-test-tree-magic.o -MD -MP -MF 
.deps/test_tree_magic-test-tree-magic.Tpo -c -o 
test_tree_magic-test-trERROR: Function 'do_compile' failed (see 
/vol/1/sgw/builds/new/tmp/work/x86_64-poky-linux/shared-mime-info-0.90-r0/temp/log.do_compile.17751 
for further information)
| ee-magic.o `test -f 'test-tree-magic.c' || echo './'`test-tree-magic.c
| LC_ALL=C 
/vol/1/sgw/builds/new/tmp/sysroots/x86_64-linux/usr/bin/intltool-merge 
-x -u -c ./po/.intltool-merge-cache ./po freedesktop.org.xml.in 
freedesktop.org.xml
| make[1]: Entering directory 
`/vol/1/sgw/builds/new/tmp/work/x86_64-poky-linux/shared-mime-info-0.90-r0/shared-mime-info-0.90/po'
| make[1]: `shared-mime-info.pot' is up to date.
| make[1]: Leaving directory 
`/vol/1/sgw/builds/new/tmp/work/x86_64-poky-linux/shared-mime-info-0.90-r0/shared-mime-info-0.90/po'
| mv -f .deps/test_subclassing-test-subclassing.Tpo 
.deps/test_subclassing-test-subclassing.Po
| ccache x86_64-poky-linux-gcc -m64 
--sysroot=/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/include/libxml2 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/include/glib-2.0 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/lib/glib-2.0/include 
   -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 
-ggdb -feliminate-unused-debug-types -Wall -Wstrict-prototypes 
-Wmissing-prototypes -Wwrite-strings  -Wl,-O1 -Wl,--hash-style=gnu 
-Wl,--as-needed -o test-subclassing test_subclassing-test-subclassing.o 
-lxml2 -lglib-2.0
| test-tree-magic.c: In function 'read_tree_magic_from_directory':
| test-tree-magic.c:207:13: warning: 'match' may be used uninitialized 
in this function
| mv -f .deps/test_tree_magic-test-tree-magic.Tpo 
.deps/test_tree_magic-test-tree-magic.Po
| ccache x86_64-poky-linux-gcc -m64 
--sysroot=/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux -pthread 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/include/glib-2.0 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/lib/glib-2.0/include 
   -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 
-ggdb -feliminate-unused-debug-types -Wall -Wstrict-prototypes 
-Wmissing-prototypes -Wwrite-strings  -Wl,-O1 -Wl,--hash-style=gnu 
-Wl,--as-needed -o test-tree-magic test_tree_magic-test-tree-magic.o 
-pthread -lgio-2.0 -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lglib-2.0
| mv -f .deps/update_mime_database-update-mime-database.Tpo 
.deps/update_mime_database-update-mime-database.Po
| ccache x86_64-poky-linux-gcc -m64 
--sysroot=/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/include/libxml2 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/include/glib-2.0 
-I/vol/1/sgw/builds/new/tmp/sysroots/x86_64-poky-linux/usr/lib/glib-2.0/include 
   -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 
-ggdb -feliminate-unused-debug-types -Wall -Wstrict-prototypes 
-Wmissing-prototypes -Wwrite-strings  -Wl,-O1 -Wl,--hash-style=gnu 
-Wl,--as-needed -o update-mime-database 
update_mime_database-update-mime-database.o -lxml2 -lglib-2.0
| mv -f .deps/update_mime_database-update-mime-database.Tpo 
.deps/update_mime_database-update-mime-database.Po
| mv: cannot stat `.deps/update_mime_database-update-mime-database.Tpo': 
No such file or directory
| make[1]: *** [update_mime_database-update-mime-database.o] Error 1
| make[1]: *** Waiting for unfinished jobs....
| 
/vol/1/sgw/builds/new/tmp/sysroots/x86_64-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/4.5.1/ld: 
cannot find update_mime_database-update-mime-database.o: No such file or 
directory
| collect2: ld returned 1 exit status
| make: *** [update-mime-database] Error 1
| make: *** Waiting for unfinished jobs....
| Generating and caching the translation database
| Merging translations into freedesktop.org.xml.
| CREATED freedesktop.org.xml
| Generating and caching the translation database
| Merging translations into freedesktop.org.xml.
| CREATED freedesktop.org.xml
| make[1]: Leaving directory 
`/vol/1/sgw/builds/new/tmp/work/x86_64-poky-linux/shared-mime-info-0.90-r0/shared-mime-info-0.90'
| make: *** [check-recursive] Error 1
| FATAL: oe_runmake failed
| Function 'do_compile' failed (see 
/vol/1/sgw/builds/new/tmp/work/x86_64-poky-linux/shared-mime-info-0.90-r0/temp/log.do_compile.17751 
for further information)


> diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
> index 37f0650..abc723d 100644
> --- a/meta/conf/distro/include/distro_tracking_fields.inc
> +++ b/meta/conf/distro/include/distro_tracking_fields.inc
> @@ -1688,11 +1688,11 @@ RECIPE_LATEST_RELEASE_DATE_pn-rpm = "01/2010"
>   RECIPE_COMMENTS_pn-rpm = "the library alone is under dual license"
>
>   RECIPE_STATUS_pn-shared-mime-info = "green"
> -RECIPE_LAST_UPDATE_pn-shared-mime-info = "Nov 9, 2010"
> +RECIPE_LAST_UPDATE_pn-shared-mime-info = "Jan 20, 2011"
>   RECIPE_MAINTAINER_pn-shared-mime-info = "Qing He<qing.he@intel.com>"
>   RECIPE_LATEST_VERSION_pn-shared-mime-info = "0.90"
>   RECIPE_INTEL_SECTION_pn-shared-mime-info = "base utils"
> -RECIPE_LATEST_RELEASE_DATE_pn-shared-mime-info = "02/2010"
> +RECIPE_LATEST_RELEASE_DATE_pn-shared-mime-info = "12/2010"
>
>   RECIPE_STATUS_pn-util-linux = "green"
>   RECIPE_LAST_UPDATE_pn-util-linux = "Jul 21, 2010"
> diff --git a/meta/recipes-support/shared-mime-info/shared-mime-info/fix-parallel-build.patch b/meta/recipes-support/shared-mime-info/shared-mime-info/fix-parallel-build.patch
> new file mode 100644
> index 0000000..6c5a968
> --- /dev/null
> +++ b/meta/recipes-support/shared-mime-info/shared-mime-info/fix-parallel-build.patch
> @@ -0,0 +1,21 @@
> +From 68e31f61f5e50e5222bc05437d1123e932922796 Mon Sep 17 00:00:00 2001
> +From: Samuli Suominen<ssuominen@gentoo.org>
> +Date: Mon, 06 Dec 2010 19:46:57 +0000
> +Subject: Fix parallel build
> +
> +https://bugs.freedesktop.org/show_bug.cgi?id=32127
> +---
> +diff --git a/Makefile.am b/Makefile.am
> +index ea4829b..5d0ea65 100644
> +--- a/Makefile.am
> ++++ b/Makefile.am
> +@@ -72,7 +72,7 @@ all: check create-pot
> + create-pot:
> + 	$(MAKE) -C po shared-mime-info.pot
> +
> +-check: freedesktop.org.xml update-mime-database check-translations
> ++check: create-pot freedesktop.org.xml update-mime-database check-translations
> + 	if test -n $(XMLLINT) ; then \
> + 		if test -e $(top_builddir)/freedesktop.org.xml; then \
> + 		xmllint --noout --valid $(top_builddir)/freedesktop.org.xml;	\
> +--
> diff --git a/meta/recipes-support/shared-mime-info/shared-mime-info_0.80.bb b/meta/recipes-support/shared-mime-info/shared-mime-info_0.80.bb
> deleted file mode 100644
> index f809923..0000000
> --- a/meta/recipes-support/shared-mime-info/shared-mime-info_0.80.bb
> +++ /dev/null
> @@ -1,5 +0,0 @@
> -require shared-mime-info.inc
> -PR = "r0"
> -
> -SRC_URI[md5sum] = "eb8d24a6a80888849c9db7f30232ba6a"
> -SRC_URI[sha256sum] = "80857ba19f8066bfc8d998bfc72b492e241ebd52d49c245aae9fd5b3d233b024"
> diff --git a/meta/recipes-support/shared-mime-info/shared-mime-info_0.90.bb b/meta/recipes-support/shared-mime-info/shared-mime-info_0.90.bb
> new file mode 100644
> index 0000000..d296880
> --- /dev/null
> +++ b/meta/recipes-support/shared-mime-info/shared-mime-info_0.90.bb
> @@ -0,0 +1,7 @@
> +require shared-mime-info.inc
> +PR = "r0"
> +
> +SRC_URI =+ "file://fix-parallel-build.patch"
> +
> +SRC_URI[md5sum] = "967d68d3890ba3994cfce3adf5b8f15b"
> +SRC_URI[sha256sum] = "52c9f84a8c72de631a0458542980b1728560f59845eb5e93e1dbe825f4b72304"


