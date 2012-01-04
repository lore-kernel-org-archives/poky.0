Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C408E01366
	for <poky@yoctoproject.org>; Wed,  4 Jan 2012 05:55:01 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 804EBF81228; Wed,  4 Jan 2012 06:54:58 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 87E86F81227;
	Wed,  4 Jan 2012 06:54:43 -0700 (MST)
Message-ID: <4F045A23.7070208@mlbassoc.com>
Date: Wed, 04 Jan 2012 06:54:43 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: poky@yoctoproject.org
Subject: Can't build vte
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
X-List-Received-Date: Wed, 04 Jan 2012 13:55:02 -0000
X-Groupsio-MsgNum: 7324
Content-Type: multipart/mixed; boundary="------------050205080908080301050703"

--------------050205080908080301050703
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

It seems that master is rather broken at the moment.

OE Build Configuration:
BB_VERSION        = "1.15.0"
TARGET_ARCH       = "arm"
TARGET_OS         = "linux-gnueabi"
MACHINE           = "beagleboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.1+snapshot-20120104"
TUNE_FEATURES     = "armv7a vfp neon cortexa8"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "master:f3a1a8897c78e116d7d28947a85687d0ce9d7df7"

'bitbake vte' fails to configure.  Log attached.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------050205080908080301050703
Content-Type: text/plain;
 name="log.do_configure.vte"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="log.do_configure.vte"

DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common', 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi', 'common']
automake (GNU automake) 1.11.2
Copyright (C) 2011 Free Software Foundation, Inc.
License GPLv2+: GNU GPL version 2 or later <http://gnu.org/licenses/gpl-2.0.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by Tom Tromey <tromey@redhat.com>
       and Alexandre Duret-Lutz <adl@gnu.org>.
AUTOV is 1.11
NOTE: Executing glib-gettextize --force --copy
Copying file mkinstalldirs
Copying file po/Makefile.in.in

Please add the files
  codeset.m4 gettext.m4 glibc21.m4 iconv.m4 isc-posix.m4 lcmessage.m4
  progtest.m4
from the /home/local/bb_test2/tmp/sysroots/i686-linux/usr/share/aclocal directory to your autoconf macro directory
or directly to your aclocal.m4 file.
You will also need config.guess and config.sub, which you can get from
ftp://ftp.gnu.org/pub/gnu/config/.

NOTE: Executing intltoolize --copy --force --automake
NOTE: Executing autoreconf --verbose --install --force --exclude=autopoint -I/home/local/bb_test2/tmp/sysroots/i686-linux/usr/share/aclocal-1.11 -I /home/local/bb_test2/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/vte-0.24.3-r0/vte-0.24.3/aclocal-copy/
autoreconf: Entering directory `.'
autoreconf: configure.in: not using Gettext
autoreconf: running: aclocal -I /home/local/bb_test2/tmp/sysroots/i686-linux/usr/share/aclocal-1.11 -I /home/local/bb_test2/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/vte-0.24.3-r0/vte-0.24.3/aclocal-copy/ -I /home/local/bb_test2/tmp/sysroots/i686-linux/usr/share/aclocal-1.11 -I /home/local/bb_test2/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/vte-0.24.3-r0/vte-0.24.3/aclocal-copy/ --force --warnings=cross 
aclocal: unknown warning category `cross'
configure.in:163: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call detected in body
../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
../../lib/autoconf/general.m4:2585: _AC_COMPILE_IFELSE is expanded from...
../../lib/autoconf/general.m4:2601: AC_COMPILE_IFELSE is expanded from...
configure.in:108: VTE_CC_TRY_FLAG is expanded from...
../../lib/m4sugar/m4sh.m4:606: AS_IF is expanded from...
../../lib/autoconf/general.m4:2026: AC_CACHE_VAL is expanded from...
../../lib/autoconf/general.m4:2047: AC_CACHE_CHECK is expanded from...
configure.in:163: the top level
configure.in:192: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call detected in body
../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
../../lib/autoconf/general.m4:2656: _AC_LINK_IFELSE is expanded from...
../../lib/autoconf/general.m4:2673: AC_LINK_IFELSE is expanded from...
configure.in:124: VTE_LD_TRY_FLAG is expanded from...
configure.in:192: the top level
autoreconf: configure.in: tracing
configure.in:163: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call detected in body
../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
../../lib/autoconf/general.m4:2585: _AC_COMPILE_IFELSE is expanded from...
../../lib/autoconf/general.m4:2601: AC_COMPILE_IFELSE is expanded from...
configure.in:108: VTE_CC_TRY_FLAG is expanded from...
../../lib/m4sugar/m4sh.m4:606: AS_IF is expanded from...
../../lib/autoconf/general.m4:2026: AC_CACHE_VAL is expanded from...
../../lib/autoconf/general.m4:2047: AC_CACHE_CHECK is expanded from...
configure.in:163: the top level
configure.in:192: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call detected in body
../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
../../lib/autoconf/general.m4:2656: _AC_LINK_IFELSE is expanded from...
../../lib/autoconf/general.m4:2673: AC_LINK_IFELSE is expanded from...
configure.in:124: VTE_LD_TRY_FLAG is expanded from...
configure.in:192: the top level
autoreconf: configure.in: adding subdirectory gnome-pty-helper to autoreconf
autoreconf: Entering directory `gnome-pty-helper'
aclocal: unknown warning category `cross'
autoreconf: configure.in: not using Libtool
autoreconf: running: /home/local/bb_test2/tmp/sysroots/i686-linux/usr/bin/autoconf --include=/home/local/bb_test2/tmp/sysroots/i686-linux/usr/share/aclocal-1.11 --include=/home/local/bb_test2/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/vte-0.24.3-r0/vte-0.24.3/aclocal-copy/ --force --warnings=cross
autoreconf: running: /home/local/bb_test2/tmp/sysroots/i686-linux/usr/bin/autoheader --include=/home/local/bb_test2/tmp/sysroots/i686-linux/usr/share/aclocal-1.11 --include=/home/local/bb_test2/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/vte-0.24.3-r0/vte-0.24.3/aclocal-copy/ --force --warnings=cross
autoreconf: running: automake --foreign --add-missing --copy --force-missing --warnings=cross
automake: unknown warning category `cross'
autoreconf: running: gnu-configize
autoreconf: Leaving directory `gnome-pty-helper'
autoreconf: running: libtoolize --copy --force
libtoolize: putting auxiliary files in `.'.
libtoolize: copying file `./ltmain.sh'
libtoolize: Consider adding `AC_CONFIG_MACRO_DIR([m4])' to configure.in and
libtoolize: rerunning libtoolize, to keep the correct libtool macros in-tree.
libtoolize: Consider adding `-I m4' to ACLOCAL_AMFLAGS in Makefile.am.
aclocal: unknown warning category `cross'
configure.in:163: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call detected in body
../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
../../lib/autoconf/general.m4:2585: _AC_COMPILE_IFELSE is expanded from...
../../lib/autoconf/general.m4:2601: AC_COMPILE_IFELSE is expanded from...
configure.in:108: VTE_CC_TRY_FLAG is expanded from...
../../lib/m4sugar/m4sh.m4:606: AS_IF is expanded from...
../../lib/autoconf/general.m4:2026: AC_CACHE_VAL is expanded from...
../../lib/autoconf/general.m4:2047: AC_CACHE_CHECK is expanded from...
configure.in:163: the top level
configure.in:192: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call detected in body
../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
../../lib/autoconf/general.m4:2656: _AC_LINK_IFELSE is expanded from...
../../lib/autoconf/general.m4:2673: AC_LINK_IFELSE is expanded from...
configure.in:124: VTE_LD_TRY_FLAG is expanded from...
configure.in:192: the top level
configure.in:163: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call detected in body
../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
../../lib/autoconf/general.m4:2585: _AC_COMPILE_IFELSE is expanded from...
../../lib/autoconf/general.m4:2601: AC_COMPILE_IFELSE is expanded from...
configure.in:108: VTE_CC_TRY_FLAG is expanded from...
../../lib/m4sugar/m4sh.m4:606: AS_IF is expanded from...
../../lib/autoconf/general.m4:2026: AC_CACHE_VAL is expanded from...
../../lib/autoconf/general.m4:2047: AC_CACHE_CHECK is expanded from...
configure.in:163: the top level
configure.in:192: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call detected in body
../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
../../lib/autoconf/general.m4:2656: _AC_LINK_IFELSE is expanded from...
../../lib/autoconf/general.m4:2673: AC_LINK_IFELSE is expanded from...
configure.in:124: VTE_LD_TRY_FLAG is expanded from...
configure.in:192: the top level
configure.in:163: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call detected in body
../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
../../lib/autoconf/general.m4:2585: _AC_COMPILE_IFELSE is expanded from...
../../lib/autoconf/general.m4:2601: AC_COMPILE_IFELSE is expanded from...
configure.in:108: VTE_CC_TRY_FLAG is expanded from...
../../lib/m4sugar/m4sh.m4:606: AS_IF is expanded from...
../../lib/autoconf/general.m4:2026: AC_CACHE_VAL is expanded from...
../../lib/autoconf/general.m4:2047: AC_CACHE_CHECK is expanded from...
configure.in:163: the top level
configure.in:192: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call detected in body
../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
../../lib/autoconf/general.m4:2656: _AC_LINK_IFELSE is expanded from...
../../lib/autoconf/general.m4:2673: AC_LINK_IFELSE is expanded from...
configure.in:124: VTE_LD_TRY_FLAG is expanded from...
configure.in:192: the top level
automake: unknown warning category `cross'
configure.in:163: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call detected in body
../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expaERROR: Function 'do_configure' failed (see /home/local/bb_test2/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/vte-0.24.3-r0/temp/log.do_configure.8529 for further information)
nded from...
../../lib/autoconf/general.m4:2585: _AC_COMPILE_IFELSE is expanded from...
../../lib/autoconf/general.m4:2601: AC_COMPILE_IFELSE is expanded from...
configure.in:108: VTE_CC_TRY_FLAG is expanded from...
../../lib/m4sugar/m4sh.m4:606: AS_IF is expanded from...
../../lib/autoconf/general.m4:2026: AC_CACHE_VAL is expanded from...
../../lib/autoconf/general.m4:2047: AC_CACHE_CHECK is expanded from...
configure.in:163: the top level
configure.in:192: warning: AC_LANG_CONFTEST: no AC_LANG_SOURCE call detected in body
../../lib/autoconf/lang.m4:194: AC_LANG_CONFTEST is expanded from...
../../lib/autoconf/general.m4:2656: _AC_LINK_IFELSE is expanded from...
../../lib/autoconf/general.m4:2673: AC_LINK_IFELSE is expanded from...
configure.in:124: VTE_LD_TRY_FLAG is expanded from...
configure.in:192: the top level
src/Makefile.am:155: `pkglibdir' is not a legitimate directory for `PROGRAMS'
src/Makefile.am:156: `pkglibdir' is not a legitimate directory for `SCRIPTS'
src/Makefile.am:178: variable `interpret_SOURCES' is defined but no program or
src/Makefile.am:178: library has `interpret' as canonical name (possible typo)
src/Makefile.am:229: variable `slowcat_SOURCES' is defined but no program or
src/Makefile.am:229: library has `slowcat' as canonical name (possible typo)
src/Makefile.am:203: variable `interpret_LDADD' is defined but no program or
src/Makefile.am:203: library has `interpret' as canonical name (possible typo)
autoreconf: automake failed with exit status: 1
ERROR: autoreconf execution failed.

--------------050205080908080301050703--
