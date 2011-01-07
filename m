Return-Path: <edwin.zhai@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 747474C80B70
	for <poky@yoctoproject.org>; Fri,  7 Jan 2011 04:12:21 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 07 Jan 2011 02:11:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,288,1291622400"; d="scan'208";a="371385308"
Received: from shxpwgzhai1a.ccr.corp.intel.com (HELO [10.239.48.130])
	([10.239.48.130])
	by azsmga001.ch.intel.com with ESMTP; 07 Jan 2011 02:11:18 -0800
Message-ID: <4D26E6C9.70606@intel.com>
Date: Fri, 07 Jan 2011 18:11:21 +0800
From: "Zhai, Edwin" <edwin.zhai@intel.com>
User-Agent: Thunderbird 2.0.0.17 (Windows/20080914)
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <cover.1294148490.git.edwin.zhai@intel.com>	<377902145104994aab4b69c1239a6a907f946c7c.1294148490.git.edwin.zhai@intel.com>
	<4D237B27.6040701@linux.intel.com> <4D266450.8010407@intel.com>
In-Reply-To: <4D266450.8010407@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 2/7] apr: Update to 1.4.2
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
X-List-Received-Date: Fri, 07 Jan 2011 10:12:22 -0000
Content-Type: multipart/mixed; boundary="------------040006010103010606020801"

--------------040006010103010606020801
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I have compared the autoconf process between apr-1.3 and 1.4, but found 
no clue of why build/libtool.m4 got overwritten only on apr-1.4.
Attached log files, and hope some autotools expert can help.

Following only occur in 1.4 log
libtoolize: copying file `build/libtool.m4'
libtoolize: copying file `build/ltoptions.m4'
.......




Zhai, Edwin wrote:
>
>
> Saul Wold wrote:
>> On 01/04/2011 05:50 AM, Zhai Edwin wrote:
>>  
>>> Add buildconf_fix.patch of removing new libtool detection method to 
>>> avoid config
>>> failure.  Handled build/libtool.m4&  apr_rules.mk after configure to 
>>> take place
>>> of "top_builddir" by "apr_builddir", as these files would be reused 
>>> by apr-util.
>>>
>>>     
>> Edwin,
>>
>> Is there a reason that this change can not be implemented as a patch?
>>   
>
> We need something run after configure, so patch doesn't work.
>> I note that buildconf script already does make a libtool.m4 fixup 
>> similar to what you are doing.
>>   
>
> Yes, it's done before configure. It copy $ltfile to libtool.m4, then 
> substitute "top_builddir", so patch doesn't work here too.
>
> The headache is this handled file got overwritten after autoconf, and 
> restored to "top_builddir" again:( So I have to substitute it again.
> I'm not sure if this overwriting in autoconf is right(apr-1.3.5 
> doesn't do it). I will further check it.
>
>> I also notice that there is both a top_blddir and top_builddir, I 
>> wonder if the top_blddir should really be patched to be top_builddir?
>>   
>
> I saw this also, and believed that it should be a harmless bug in 
> upstream.
>> Please investigate this further and re-submit this change.
>>
>> Sau!
>>
>>  
>>> Signed-off-by: Zhai Edwin<edwin.zhai@intel.com>
>>> ---
>>>   meta/recipes-support/apr/apr/buildconf_fix.patch   |   25 
>>> ++++++++++++++++++++
>>>   meta/recipes-support/apr/apr/cleanup.patch         |    9 +++----
>>>   .../apr/{apr_1.3.3.bb =>  apr_1.4.2.bb}             |   23 
>>> ++++++++++++++----
>>>   3 files changed, 47 insertions(+), 10 deletions(-)
>>>   create mode 100644 meta/recipes-support/apr/apr/buildconf_fix.patch
>>>   rename meta/recipes-support/apr/{apr_1.3.3.bb =>  apr_1.4.2.bb} (60%)
>>>
>>> diff --git a/meta/recipes-support/apr/apr/buildconf_fix.patch 
>>> b/meta/recipes-support/apr/apr/buildconf_fix.patch
>>> new file mode 100644
>>> index 0000000..641340b
>>> --- /dev/null
>>> +++ b/meta/recipes-support/apr/apr/buildconf_fix.patch
>>> @@ -0,0 +1,25 @@
>>> +Remove the new libtool detection method to avoid config failure. 
>>> Poky's libtool
>>> +has different format for "aclocaldir", and there is no elegant 
>>> parsing method,
>>> +so fall back to old detection.
>>> +
>>> +Signed-off-by: Zhai Edwin<edwin.zhai@intel.com>
>>> +
>>> +Index: apr-1.4.2/buildconf
>>> +===================================================================
>>> +--- apr-1.4.2.orig/buildconf    2009-11-13 06:19:49.000000000 +0800
>>> ++++ apr-1.4.2/buildconf    2010-11-29 14:39:19.000000000 +0800
>>> +@@ -50,14 +50,6 @@
>>> +
>>> + if [ -f libtool.m4 ]; then
>>> +    ltfile=`pwd`/libtool.m4
>>> +-elif grep all_pkgmacro_files $libtoolize>  /dev/null; then
>>> +-    # libtool 2.x
>>> +-   aclocal_dir=`sed -n '/^aclocaldir=/{s/.*=//;p;q;}'<  $libtoolize`
>>> +-   ltfiles=`sed -n '/^all_pkgmacro_files=/{s/.*=//;;s/"//;p;q;}'<  
>>> $libtoolize`
>>> +-   for f in $ltfiles; do
>>> +-       test -f "$aclocal_dir/$f"&&  cp "$aclocal_dir/$f" build
>>> +-   done
>>> +-   ltfile=$aclocal_dir/libtool.m4
>>> + else
>>> +    ltfindcmd="`sed -n \"/=[^\\\`]/p;/libtool_m4=/{s/.*=/echo 
>>> /p;q;}\" \
>>> +<  $libtoolize`"
>>> diff --git a/meta/recipes-support/apr/apr/cleanup.patch 
>>> b/meta/recipes-support/apr/apr/cleanup.patch
>>> index fd74826..47f1c42 100644
>>> --- a/meta/recipes-support/apr/apr/cleanup.patch
>>> +++ b/meta/recipes-support/apr/apr/cleanup.patch
>>> @@ -1,7 +1,7 @@
>>> -Index: apr-1.3.3/build/buildcheck.sh
>>> +Index: apr-1.4.2/build/buildcheck.sh
>>>   ===================================================================
>>> ---- apr-1.3.3.orig/build/buildcheck.sh    2009-01-15 
>>> 13:32:33.000000000 +0000
>>> -+++ apr-1.3.3/build/buildcheck.sh    2009-01-15 13:33:06.000000000 
>>> +0000
>>> +--- apr-1.4.2.orig/build/buildcheck.sh    2009-11-13 
>>> 08:27:16.000000000 +0800
>>> ++++ apr-1.4.2/build/buildcheck.sh    2010-11-26 15:44:00.000000000 
>>> +0800
>>>   @@ -32,35 +32,4 @@
>>>    echo "buildconf: autoconf version $ac_version (ok)"
>>>    fi
>>> @@ -12,7 +12,7 @@ Index: apr-1.3.3/build/buildcheck.sh
>>>   -# output is multiline from 1.5 onwards
>>>   -
>>>   -# Require libtool 1.4 or newer
>>> --libtool=`build/PrintPath glibtool libtool libtool15 libtool14`
>>> +-libtool=`build/PrintPath glibtool1 glibtool libtool libtool15 
>>> libtool14`
>>>   -lt_pversion=`$libtool --version 2>/dev/null|sed -e 
>>> 's/([^)]*)//g;s/^[^0-9]*//;s/[- ].*//g;q'`
>>>   -if test -z "$lt_pversion"; then
>>>   -echo "buildconf: libtool not found."
>>> @@ -39,4 +39,3 @@ Index: apr-1.3.3/build/buildcheck.sh
>>>   -
>>>   -exit 1
>>>   +exit 0
>>> -\ No newline at end of file
>>> diff --git a/meta/recipes-support/apr/apr_1.3.3.bb 
>>> b/meta/recipes-support/apr/apr_1.4.2.bb
>>> similarity index 60%
>>> rename from meta/recipes-support/apr/apr_1.3.3.bb
>>> rename to meta/recipes-support/apr/apr_1.4.2.bb
>>> index 26cc01f..fe983eb 100644
>>> --- a/meta/recipes-support/apr/apr_1.3.3.bb
>>> +++ b/meta/recipes-support/apr/apr_1.4.2.bb
>>> @@ -1,16 +1,21 @@
>>>   DESCRIPTION = "Apache Portable Runtime (APR) library"
>>> +HOMEPAGE = "http://apr.apache.org/"
>>>   SECTION = "libs"
>>> +
>>>   LICENSE = "Apache License, Version 2.0"
>>> -LIC_FILES_CHKSUM = 
>>> "file://LICENSE;md5=0c35ff3c4c83b89d2f076e315caac28b"
>>> -PR = "r5"
>>> +LIC_FILES_CHKSUM = 
>>> "file://LICENSE;md5=0c35ff3c4c83b89d2f076e315caac28b \
>>> +                    
>>> file://include/apr_lib.h;endline=17;md5=ee42fa7575dc40580a9e01c1b75fae96" 
>>>
>>> +
>>> +PR = "r0"
>>>
>>>   SRC_URI = "${APACHE_MIRROR}/apr/${P}.tar.bz2 \
>>>              file://configure_fixes.patch;patch=1 \
>>>          file://cleanup.patch;patch=1 \
>>> -           file://configfix.patch;patch=1"
>>> +           file://configfix.patch;patch=1 \
>>> +           file://buildconf_fix.patch;patch=1"
>>>
>>> -SRC_URI[md5sum] = "2090c21dee4f0eb1512604127dcd158f"
>>> -SRC_URI[sha256sum] = 
>>> "d95f3b78366c86317043304864bb08cb836312c87ea7d142a4c02154e7e0dd37"
>>> +SRC_URI[md5sum] = "4b00e8f70c067893d075577962656b35"
>>> +SRC_URI[sha256sum] = 
>>> "2017ca700694d09d2b0b21dd7c4d195e43a48735aac88526160c6195ee8f5391"
>>>
>>>   inherit autotools lib_package binconfig
>>>
>>> @@ -21,6 +26,14 @@ do_configure_prepend() {
>>>       ./buildconf
>>>   }
>>>
>>> +#for some reason, build/libtool.m4 handled by buildconf still be 
>>> overwritten
>>> +#when autoconf, so handle it again.
>>> +do_configure_append() {
>>> +    cd ${S}
>>> +    sed -i -e 's/LIBTOOL=\(.*\)top_build/LIBTOOL=\1apr_build/' 
>>> build/libtool.m4
>>> +    sed -i -e 's/LIBTOOL=\(.*\)top_build/LIBTOOL=\1apr_build/' 
>>> build/apr_rules.mk
>>> +}
>>> +
>>>   SYSROOT_PREPROCESS_FUNCS += "apr_sysroot_preprocess"
>>>
>>>   apr_sysroot_preprocess () {
>>>     
>>
>>   
>
buildconf: checking installation...
buildconf: python version 2.6.6 (ok)
buildconf: autoconf version 2.65 (ok)
Copying libtool helper files ...
./buildconf: line 57: alias: -g: invalid option
alias: usage: alias [-p] [name[=value] ... ]
./buildconf: eval: line 62: syntax error near unexpected token `&&'
./buildconf: eval: line 62: `    && (test "X`print -r -- $as_echo`" = "X$as_echo") 2>/dev/null; then'
buildconf: Using libtool.m4 at /distro/edwin-working/poky/build-arm/tmp/sysroots/i686-linux/usr/share/aclocal/libtool.m4.
Creating include/arch/unix/apr_private.h.in ...
configure.in:186: warning: LTOPTIONS_VERSION is m4_require'd but not m4_defun'd
build/libtool.m4:69: LT_INIT is expanded from...
build/libtool.m4:108: AC_PROG_LIBTOOL is expanded from...
configure.in:186: the top level
configure.in:186: warning: LTSUGAR_VERSION is m4_require'd but not m4_defun'd
configure.in:186: warning: LTVERSION_VERSION is m4_require'd but not m4_defun'd
configure.in:186: warning: LTOBSOLETE_VERSION is m4_require'd but not m4_defun'd
Creating configure ...
configure.in:186: warning: LTOPTIONS_VERSION is m4_require'd but not m4_defun'd
build/libtool.m4:69: LT_INIT is expanded from...
build/libtool.m4:108: AC_PROG_LIBTOOL is expanded from...
configure.in:186: the top level
configure.in:186: warning: LTSUGAR_VERSION is m4_require'd but not m4_defun'd
configure.in:186: warning: LTVERSION_VERSION is m4_require'd but not m4_defun'd
configure.in:186: warning: LTOBSOLETE_VERSION is m4_require'd but not m4_defun'd
configure:9658: error: possibly undefined macro: m4_ifval
      If this token and others are legitimate, please use m4_pattern_allow.
      See the Autoconf documentation.
configure:12838: error: possibly undefined macro: _LT_SET_OPTIONS
configure:12838: error: possibly undefined macro: LT_INIT
Generating 'make' outputs ...
rebuilding rpm spec file
automake (GNU automake) 1.11.1
Copyright (C) 2009 Free Software Foundation, Inc.
License GPLv2+: GNU GPL version 2 or later <http://gnu.org/licenses/gpl-2.0.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by Tom Tromey <tromey@redhat.com>
       and Alexandre Duret-Lutz <adl@gnu.org>.
AUTOV is 1.11
NOTE: Executing autoreconf --verbose --install --force --exclude=autopoint -I /distro/edwin-working/poky/build-arm/tmp/work/armv5te-poky-linux-gnueabi/apr-1.3.3-r5/apr-1.3.3/build/ -I/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/share/aclocal-1.11 -I /distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/share/aclocal
autoreconf: Entering directory `.'
autoreconf: configure.in: not using Gettext
autoreconf: running: aclocal -I /distro/edwin-working/poky/build-arm/tmp/work/armv5te-poky-linux-gnueabi/apr-1.3.3-r5/apr-1.3.3/build/ -I /distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/share/aclocal-1.11 -I /distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/share/aclocal -I /distro/edwin-working/poky/build-arm/tmp/work/armv5te-poky-linux-gnueabi/apr-1.3.3-r5/apr-1.3.3/build/ -I /distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/share/aclocal-1.11 -I /distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/share/aclocal --force 
build/apr_network.m4:24: warning: underquoted definition of APR_TYPE_IN_ADDR
build/apr_network.m4:24:   run info '(automake)Extending aclocal'
build/apr_network.m4:24:   or see http://sources.redhat.com/automake/automake.html#Extending-aclocal
autoreconf: configure.in: tracing
configure.in:1762: warning: AC_RUN_IFELSE called without default to allow cross compiling
../../lib/autoconf/general.m4:2709: AC_RUN_IFELSE is expanded from...
../../lib/autoconf/general.m4:2725: AC_TRY_RUN is expanded from...
../../lib/m4sugar/m4sh.m4:598: AS_IF is expanded from...
../../lib/autoconf/general.m4:1992: AC_CACHE_VAL is expanded from...
../../lib/autoconf/general.m4:2013: AC_CACHE_CHECK is expanded from...
configure.in:1762: the top level
configure.in:1787: warning: AC_RUN_IFELSE called without default to allow cross compiling
build/apr_threads.m4:248: APR_CHECK_PTHREAD_ROBUST_SHARED_MUTEX is expanded from...
configure.in:1787: the top level
configure.in:2185: warning: AC_RUN_IFELSE called without default to allow cross compiling
build/apr_network.m4:502: APR_CHECK_TCP_NODELAY_WITH_CORK is expanded from...
configure.in:2185: the top level
autoreconf: running: libtoolize --copy --force
libtoolize: putting auxiliary files in AC_CONFIG_AUX_DIR, `build'.
libtoolize: copying file `build/ltmain.sh'
libtoolize: You should add the contents of the following files to `aclocal.m4':
libtoolize:   `/distro/edwin-working/poky/build-arm/tmp/sysroots/i686-linux/usr/share/aclocal/libtool.m4'
libtoolize: Consider adding `AC_CONFIG_MACRO_DIR([m4])' to configure.in and
libtoolize: rerunning libtoolize, to keep the correct libtool macros in-tree.
libtoolize: Consider adding `-I m4' to ACLOCAL_AMFLAGS in Makefile.am.
libtoolize: `AC_PROG_RANLIB' is rendered obsolete by `LT_INIT'
build/apr_network.m4:24: warning: underquoted definition of APR_TYPE_IN_ADDR
build/apr_network.m4:24:   run info '(automake)Extending aclocal'
build/apr_network.m4:24:   or see http://sources.redhat.com/automake/automake.html#Extending-aclocal
autoreconf: running: /distro/edwin-working/poky/build-arm/tmp/sysroots/i686-linux/usr/bin/autoconf --include=/distro/edwin-working/poky/build-arm/tmp/work/armv5te-poky-linux-gnueabi/apr-1.3.3-r5/apr-1.3.3/build/ --include=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/share/aclocal-1.11 --include=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/share/aclocal --force --warnings=cross
configure.in:1762: warning: AC_RUN_IFELSE called without default to allow cross compiling
../../lib/autoconf/general.m4:2709: AC_RUN_IFELSE is expanded from...
../../lib/autoconf/general.m4:2725: AC_TRY_RUN is expanded from...
../../lib/m4sugar/m4sh.m4:598: AS_IF is expanded from...
../../lib/autoconf/general.m4:1992: AC_CACHE_VAL is expanded from...
../../lib/autoconf/general.m4:2013: AC_CACHE_CHECK is expanded from...
configure.in:1762: the top level
configure.in:1787: warning: AC_RUN_IFELSE called without default to allow cross compiling
build/apr_threads.m4:248: APR_CHECK_PTHREAD_ROBUST_SHARED_MUTEX is expanded from...
configure.in:1787: the top level
configure.in:2185: warning: AC_RUN_IFELSE called without default to allow cross compiling
build/apr_network.m4:502: APR_CHECK_TCP_NODELAY_WITH_CORK is expanded from...
configure.in:2185: the top level
autoreconf: running: /distro/edwin-working/poky/build-arm/tmp/sysroots/i686-linux/usr/bin/autoheader --include=/distro/edwin-working/poky/build-arm/tmp/work/armv5te-poky-linux-gnueabi/apr-1.3.3-r5/apr-1.3.3/build/ --include=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/share/aclocal-1.11 --include=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/share/aclocal --force --warnings=cross
autoreconf: configure.in: not using Automake
autoreconf: running: gnu-configize
autoreconf: Leaving directory `.'
NOTE: Running /distro/edwin-working/poky/build-arm/tmp/work/armv5te-poky-linux-gnueabi/apr-1.3.3-r5/apr-1.3.3/configure 		         --build=i686-linux 		  --host=arm-poky-linux-gnueabi 		  --target=arm-poky-linux-gnueabi 		  --prefix=/usr 		  --exec_prefix=/usr 		  --bindir=/usr/bin 		  --sbindir=/usr/sbin 		  --libexecdir=/usr/libexec 		  --datadir=/usr/share 		  --sysconfdir=/etc 		  --sharedstatedir=/com 		  --localstatedir=/var 		  --libdir=/usr/lib 		  --includedir=/usr/include 		  --oldincludedir=/usr/include 		  --infodir=/usr/share/info 		  --mandir=/usr/share/man 			 		    ...
configure: loading site script /distro/edwin-working/poky/meta/site/endian-little
configure: loading site script /distro/edwin-working/poky/meta/site/common-glibc
configure: loading site script /distro/edwin-working/poky/meta/site/arm-common
configure: loading site script /distro/edwin-working/poky/meta/site/arm-linux
configure: loading site script /distro/edwin-working/poky/meta/site/common
configure: loading site script /distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/share/arm-poky-linux-gnueabi_config_site.d/eglibc_config
configure: loading site script /distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/share/arm-poky-linux-gnueabi_config_site.d/zlib_config
checking build system type... i686-pc-linux-gnu
checking host system type... arm-poky-linux-gnueabi
checking target system type... arm-poky-linux-gnueabi
Configuring APR library
Platform: arm-poky-linux-gnueabi
checking for working mkdir -p... yes
APR Version: 1.3.3
checking for chosen layout... apr
checking for arm-poky-linux-gnueabi-gcc... arm-poky-linux-gnueabi-gcc -march=armv5te -mtune=arm926ej-s --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... yes
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether arm-poky-linux-gnueabi-gcc -march=armv5te -mtune=arm926ej-s --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi accepts -g... yes
checking for arm-poky-linux-gnueabi-gcc -march=armv5te -mtune=arm926ej-s --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi option to accept ISO C89... none needed
Applying APR hints file rules for arm-poky-linux-gnueabi
  setting CPPFLAGS to "-DLINUX=2"
  adding "-D_REENTRANT" to CPPFLAGS
  adding "-D_GNU_SOURCE" to CPPFLAGS
(Default will be unix)
checking whether make sets $(MAKE)... yes
checking how to run the C preprocessor... arm-poky-linux-gnueabi-gcc -E --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi
checking for gawk... gawk
checking whether ln -s works... yes
checking for arm-poky-linux-gnueabi-ranlib... arm-poky-linux-gnueabi-ranlib
checking for a BSD-compatible install... /usr/bin/install -c
checking for rm... rm
checking for as... arm-poky-linux-gnueabi-as
checking for cpp... cpp
checking for arm-poky-linux-gnueabi-ar... arm-poky-linux-gnueabi-ar
checking for grep that handles long lines and -e... /bin/grep
checking for egrep... /bin/grep -E
checking for ANSI C header files... (cached) yes
checking for sys/types.h... (cached) yes
checking for sys/stat.h... (cached) yes
checking for stdlib.h... (cached) yes
checking for string.h... (cached) yes
checking for memory.h... (cached) yes
checking for strings.h... (cached) yes
checking for inttypes.h... (cached) yes
checking for stdint.h... (cached) yes
checking for unistd.h... (cached) yes
checking minix/config.h usability... no
checking minix/config.h presence... no
checking for minix/config.h... no
checking whether it is safe to define __EXTENSIONS__... yes
checking for library containing strerror... none required
checking whether system uses EBCDIC... no
performing libtool configuration...
checking how to print strings... printf
checking for a sed that does not truncate output... /bin/sed
checking for fgrep... /bin/grep -F
checking for ld used by arm-poky-linux-gnueabi-gcc -march=armv5te -mtune=arm926ej-s --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi... arm-poky-linux-gnueabi-ld --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi
checking if the linker (arm-poky-linux-gnueabi-ld --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi) is GNU ld... yes
checking for BSD- or MS-compatible name lister (nm)... /distro/edwin-working/poky/build-arm/tmp/sysroots/i686-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-nm -B
checking the name lister (/distro/edwin-working/poky/build-arm/tmp/sysroots/i686-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-nm -B) interface... BSD nm
checking the maximum length of command line arguments... 1572864
checking whether the shell understands some XSI constructs... yes
checking whether the shell understands "+="... yes
checking how to convert i686-pc-linux-gnu file names to arm-poky-linux-gnueabi format... func_convert_file_noop
checking how to convert i686-pc-linux-gnu file names to toolchain format... func_convert_file_noop
checking for arm-poky-linux-gnueabi-ld --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi option to reload object files... -r
checking for arm-poky-linux-gnueabi-objdump... arm-poky-linux-gnueabi-objdump
checking how to recognize dependent libraries... pass_all
checking for arm-poky-linux-gnueabi-dlltool... no
checking for dlltool... no
checking how to associate runtime and link libraries... printf %s\n
checking for arm-poky-linux-gnueabi-ar... (cached) arm-poky-linux-gnueabi-ar
checking for archiver @FILE support... @
checking for arm-poky-linux-gnueabi-strip... arm-poky-linux-gnueabi-strip
checking for arm-poky-linux-gnueabi-ranlib... (cached) arm-poky-linux-gnueabi-ranlib
checking command to parse /distro/edwin-working/poky/build-arm/tmp/sysroots/i686-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-nm -B output from arm-poky-linux-gnueabi-gcc -march=armv5te -mtune=arm926ej-s --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi object... ok
checking for sysroot... no
checking for arm-poky-linux-gnueabi-mt... no
checking for mt... mt
configure: WARNING: using cross tools not prefixed with host triplet
checking if mt is a manifest tool... no
checking for dlfcn.h... (cached) yes
checking for objdir... .libs
checking if arm-poky-linux-gnueabi-gcc -march=armv5te -mtune=arm926ej-s --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi supports -fno-rtti -fno-exceptions... no
checking for arm-poky-linux-gnueabi-gcc -march=armv5te -mtune=arm926ej-s --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi option to produce PIC... -fPIC -DPIC
checking if arm-poky-linux-gnueabi-gcc -march=armv5te -mtune=arm926ej-s --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi PIC flag -fPIC -DPIC works... yes
checking if arm-poky-linux-gnueabi-gcc -march=armv5te -mtune=arm926ej-s --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi static flag -static works... yes
checking if arm-poky-linux-gnueabi-gcc -march=armv5te -mtune=arm926ej-s --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi supports -c -o file.o... rm: cannot remove `conftest*': No such file or directory
yes
checking if arm-poky-linux-gnueabi-gcc -march=armv5te -mtune=arm926ej-s --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi supports -c -o file.o... (cached) yes
checking whether the arm-poky-linux-gnueabi-gcc -march=armv5te -mtune=arm926ej-s --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi linker (arm-poky-linux-gnueabi-ld --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi) supports shared libraries... yes
checking whether -lc should be explicitly linked in... rm: cannot remove `conftest*': No such file or directory
no
checking dynamic linker characteristics... GNU/Linux ld.so
checking how to hardcode library paths into programs... immediate
checking whether stripping libraries is possible... yes
checking if libtool supports shared libraries... yes
checking whether to build shared libraries... yes
checking whether to build static libraries... yes
grep: /distro/edwin-working/poky/build-arm/tmp/work/armv5te-poky-linux-gnueabi/apr-1.3.3-r5/apr-1.3.3/libtool: No such file or directory

Check for compiler flags...
checking whether the compiler provides atomic builtins... no
checking whether to enable -D_LARGEFILE64_SOURCE... no

Checking for libraries...
checking for library containing gethostbyname... none required
checking for library containing gethostname... none required
checking for library containing socket... none required
checking for library containing crypt... -lcrypt
checking for main in -ltruerand... no
checking for library containing modf... none required

Checking for Threads...
checking for pthread.h... (cached) yes
checking for CFLAGS needed for pthreads... 
checking for LIBS needed for pthreads... 
checking for pthread.h... (cached) yes
checking whether pthread_getspecific takes two arguments... no
checking whether pthread_attr_getdetachstate takes one argument... no
checking for recursive mutex support... no
checking for pthread_key_delete... (cached) yes
checking for pthread_rwlock_init... no
checking for pthread_attr_setguardsize... no
checking for pthread_yield... no
checking for sched.h... (cached) yes
checking for sched_yield... (cached) yes
APR will use threads
checking for readdir in -lc_r... no
checking for gethostbyname in -lc_r... no
checking for gethostbyaddr in -lc_r... no
checking for getservbyname in -lc_r... no
checking for gethostbyname_r... (cached) yes
checking for gethostbyaddr_r... (cached) yes
checking for getservbyname_r... (cached) yes
checking for sigsuspend... (cached) yes
checking for sigwait... yes
checking for poll... (cached) yes
checking for kqueue... no
checking for port_create... no
checking for epoll support... no
checking for getpwnam_r... (cached) yes
checking for getpwuid_r... (cached) yes
checking for getgrnam_r... (cached) yes
checking for getgrgid_r... (cached) yes

Checking for Shared Memory Support...
checking for library containing shm_open... -lrt
checking for sys/types.h... (cached) yes
checking for sys/mman.h... (cached) yes
checking for sys/ipc.h... (cached) yes
checking sys/mutex.h usability... no
checking sys/mutex.h presence... no
checking for sys/mutex.h... no
checking for sys/shm.h... (cached) yes
checking for sys/file.h... (cached) yes
checking kernel/OS.h usability... no
checking kernel/OS.h presence... no
checking for kernel/OS.h... no
checking os2.h usability... no
checking os2.h presence... no
checking for os2.h... no
checking windows.h usability... no
checking windows.h presence... no
checking for windows.h... no
checking for mmap... (cached) yes
checking for munmap... (cached) yes
checking for shm_open... yes
checking for shm_unlink... yes
checking for shmget... (cached) yes
checking for shmat... (cached) yes
checking for shmdt... (cached) yes
checking for shmctl... (cached) yes
checking for create_area... no
checking for MAP_ANON in sys/mman.h... yes
decision on anonymous shared memory allocation method... 4.4BSD-style mmap() via MAP_ANON
decision on namebased memory allocation method... SysV IPC shmget()
checking for working alloca.h... yes
checking for alloca... yes
checking for calloc... (cached) yes
checking for setsid... (cached) yes
checking for isinf... (cached) yes
checking for isnan... (cached) yes
checking for getenv... (cached) yes
checking for putenv... (cached) yes
checking for setenv... (cached) yes
checking for unsetenv... (cached) yes
checking for writev... yes
checking for getifaddrs... (cached) yes
checking for utime... (cached) yes
checking for utimes... (cached) yes
checking for setrlimit... (cached) yes
checking for getrlimit... (cached) yes
checking for sendfilev in -lsendfile... no
checking for sendfile... yes
checking for send_file... no
checking for sendfilev... no
checking for sigaction... (cached) yes
checking whether sys_siglist is declared... (cached) yes
checking for fork... (cached) yes
checking for inet_addr... (cached) yes
checking for inet_network... yes
checking for _getch... no
checking for strerror_r... (cached) yes
checking for type of return code from strerror_r... pointer
checking for mmap... (cached) yes
checking for memmove... (cached) yes
checking for getpass... (cached) yes
checking for getpassphrase... no
checking for gmtime_r... (cached) yes
checking for localtime_r... (cached) yes
checking for mkstemp... (cached) yes
checking whether sigwait takes one argument... no
checking for ANSI C header files... (cached) yes
checking ByteOrder.h usability... no
checking ByteOrder.h presence... no
checking for ByteOrder.h... no
checking conio.h usability... no
checking conio.h presence... no
checking for conio.h... no
checking for crypt.h... (cached) yes
checking for ctype.h... (cached) yes
checking dir.h usability... no
checking dir.h presence... no
checking for dir.h... no
checking for dirent.h... (cached) yes
checking dl.h usability... no
checking dl.h presence... no
checking for dl.h... no
checking for dlfcn.h... (cached) yes
checking for errno.h... (cached) yes
checking for fcntl.h... (cached) yes
checking for grp.h... (cached) yes
checking io.h usability... no
checking io.h presence... no
checking for io.h... no
checking for limits.h... (cached) yes
checking mach-o/dyld.h usability... no
checking mach-o/dyld.h presence... no
checking for mach-o/dyld.h... no
checking for malloc.h... (cached) yes
checking for memory.h... (cached) yes
checking for netdb.h... (cached) yes
checking osreldate.h usability... no
checking osreldate.h presence... no
checking for osreldate.h... no
checking for poll.h... (cached) yes
checking process.h usability... no
checking process.h presence... no
checking for process.h... no
checking for pwd.h... (cached) yes
checking for semaphore.h... (cached) yes
checking for signal.h... (cached) yes
checking for stdarg.h... (cached) yes
checking for stddef.h... (cached) yes
checking for stdio.h... (cached) yes
checking for stdlib.h... (cached) yes
checking for string.h... (cached) yes
checking for strings.h... (cached) yes
checking sysapi.h usability... no
checking sysapi.h presence... no
checking for sysapi.h... no
checking sysgtime.h usability... no
checking sysgtime.h presence... no
checking for sysgtime.h... no
checking for termios.h... (cached) yes
checking for time.h... (cached) yes
checking tpfeq.h usability... no
checking tpfeq.h presence... no
checking for tpfeq.h... no
checking tpfio.h usability... no
checking tpfio.h presence... no
checking for tpfio.h... no
checking for unistd.h... (cached) yes
checking unix.h usability... no
checking unix.h presence... no
checking for unix.h... no
checking for windows.h... (cached) no
checking winsock2.h usability... no
checking winsock2.h presence... no
checking for winsock2.h... no
checking for arpa/inet.h... (cached) yes
checking for kernel/OS.h... (cached) no
checking net/errno.h usability... no
checking net/errno.h presence... no
checking for net/errno.h... no
checking for netinet/in.h... (cached) yes
checking for netinet/sctp.h... (cached) no
checking for netinet/sctp_uio.h... (cached) no
checking for sys/file.h... (cached) yes
checking for sys/ioctl.h... (cached) yes
checking for sys/mman.h... (cached) yes
checking for sys/param.h... (cached) yes
checking for sys/poll.h... (cached) yes
checking for sys/resource.h... (cached) yes
checking for sys/select.h... (cached) yes
checking for sys/sem.h... (cached) yes
checking sys/sendfile.h usability... yes
checking sys/sendfile.h presence... yes
checking for sys/sendfile.h... yes
checking for sys/signal.h... (cached) yes
checking for sys/socket.h... (cached) yes
checking sys/sockio.h usability... no
checking sys/sockio.h presence... no
checking for sys/sockio.h... no
checking for sys/stat.h... (cached) yes
checking for sys/sysctl.h... (cached) yes
checking sys/syslimits.h usability... no
checking sys/syslimits.h presence... no
checking for sys/syslimits.h... no
checking for sys/time.h... (cached) yes
checking for sys/types.h... (cached) yes
checking for sys/uio.h... (cached) yes
checking for sys/un.h... (cached) yes
checking for sys/wait.h... (cached) yes
checking for netinet/tcp.h... yes
checking for h_errno in netdb.h... yes
checking for off_t... yes
checking for pid_t... yes
checking for size_t... yes
checking for uid_t in sys/types.h... (cached) {ac_cv_type_uid_t=yes}
checking for ssize_t... yes
checking for inline... inline
checking for an ANSI C-conforming const... yes
checking whether setpgrp takes no argument... (cached) yes
checking for socklen_t... yes
checking size of void*... 4
checking size of char... (cached) 1
checking size of int... (cached) 4
checking size of long... (cached) 4
checking size of short... (cached) 2
checking size of long long... (cached) 8
checking for INT64_C... yes
checking size of pid_t... 8
checking whether ssize_t and int are the same... yes
checking whether ssize_t and long are the same... no
checking whether size_t and unsigned int are the same... yes
checking whether size_t and unsigned long are the same... no
checking size of ssize_t... (cached) 4
checking which format to use for apr_ssize_t... %d
checking size of size_t... (cached) 4
checking which format to use for apr_size_t... %u
checking size of off_t... (cached) 4
checking which type to use for apr_off_t... long
checking whether ino_t and unsigned long are the same... yes
configure: using unsigned long for ino_t
checking whether byte ordering is bigendian... (cached) no
checking for strnicmp... no
checking for strncasecmp... (cached) yes
checking for stricmp... no
checking for strcasecmp... (cached) yes
checking for strdup... (cached) yes
checking for strstr... (cached) yes
checking for memchr... (cached) yes
checking for strtoll... (cached) yes

Checking for DSO...
checking for dlopen... no
checking for dlopen in -ldl... yes
  adding "-ldl" to LIBS
checking for dlsym... yes

Checking for Processes...
checking for waitpid... (cached) yes
checking for Variable Length Arrays... yes
checking struct rlimit... no

Checking for Locking...
checking for semget... (cached) yes
checking for semctl... (cached) yes
checking for flock... (cached) yes
checking for semaphore.h... (cached) yes
checking OS.h usability... no
checking OS.h presence... no
checking for OS.h... no
checking for library containing sem_open... no
checking for sem_close... no
checking for sem_unlink... no
checking for sem_post... no
checking for sem_wait... no
checking for create_sem... no
checking for working sem_open... no
checking for union semun in sys/sem.h... no
checking for LOCK_EX in sys/file.h... yes
checking for F_SETLK in fcntl.h... yes
checking for SEM_UNDO in sys/sem.h... yes
checking for POLLIN in poll.h sys/poll.h... yes
checking for PTHREAD_PROCESS_SHARED in pthread.h... yes
checking for pthread_mutexattr_setpshared... no
decision on apr_lock implementation method... SysV IPC semget()
checking if fcntl returns EACCES when F_SETLK is already held... checking if all interprocess locks affect threads... no
checking if POSIX sems affect threads in the same process... no
checking if SysV sems affect threads in the same process... no
checking if fcntl locks affect threads in the same process... no
checking if flock locks affect threads in the same process... no
checking for entropy source... /dev/urandom

Checking for File Info Support...
checking for struct stat.st_blocks... yes
checking for struct stat.st_atimensec... no
checking for struct stat.st_ctimensec... no
checking for struct stat.st_mtimensec... no
checking for struct stat.st_atim.tv_nsec... yes
checking for struct stat.st_ctim.tv_nsec... yes
checking for struct stat.st_mtim.tv_nsec... yes
checking for struct stat.st_atime_n... no
checking for struct stat.st_ctime_n... no
checking for struct stat.st_mtime_n... no
checking for inode member of struct dirent... d_fileno
checking for file type member of struct dirent... d_type

Checking for OS UUID Support...
checking uuid.h usability... no
checking uuid.h presence... no
checking for uuid.h... no
checking uuid/uuid.h usability... yes
checking uuid/uuid.h presence... yes
checking for uuid/uuid.h... yes
checking for library containing uuid_create... no
checking for library containing uuid_generate... -luuid
checking for uuid_create... no
checking for uuid_generate... yes
checking for os uuid usability... yes

Checking for Time Support...
checking for struct tm.tm_gmtoff... yes
checking for struct tm.__tm_gmtoff... no

Checking for Networking support...
checking for type in_addr... yes
checking if fd == socket on this platform... yes
checking style of gethostbyname_r routine... glibc2
checking 3rd argument to the gethostbyname_r routines... char
checking style of getservbyname_r routine... glibc2
checking if TCP_NODELAY setting is inherited from lChecking autotools environment for common misconfiguration
istening sockets... yes
checking if O_NONBLOCK setting is inherited from listening sockets... yes
checking whether TCP_NODELAY and TCP_CORK can both be enabled... (cached) yes
checking for TCP_CORK in netinet/tcp.h... yes
checking for TCP_NOPUSH in netinet/tcp.h... no
checking for SO_ACCEPTFILTER in sys/socket.h... no
checking whether SCTP is supported... no
checking for struct ip_mreq... yes
checking for set_h_errno... no

Checking for IPv6 Networking support...
checking for library containing getaddrinfo... none required
checking for library containing gai_strerror... none required
checking for library containing getnameinfo... none required
checking for gai_strerror... (cached) yes
checking for working getaddrinfo... yes
checking for negative error codes for getaddrinfo... no
checking for working getnameinfo... yes
checking for sockaddr_in6... yes
checking for sockaddr_storage... yes
checking for working AI_ADDRCONFIG... no
checking if APR supports IPv6... yes
checking for langinfo.h... (cached) yes
checking for nl_langinfo... (cached) yes

Restore user-defined environment settings...
  restoring CPPFLAGS to ""
  setting EXTRA_CPPFLAGS to "-DLINUX=2 -D_REENTRANT -D_GNU_SOURCE"
  restoring CFLAGS to "-fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types"
  setting EXTRA_CFLAGS to ""
  restoring LDFLAGS to "-Wl,-O1 -Wl,--as-needed"
  setting EXTRA_LDFLAGS to ""
  restoring LIBS to ""
  setting EXTRA_LIBS to "-luuid -lrt -lcrypt  -ldl"
  restoring INCLUDES to ""
  setting EXTRA_INCLUDES to ""
configure: creating ./config.status
config.status: creating Makefile
config.status: creating include/apr.h
config.status: creating build/apr_rules.mk
config.status: creating build/pkg/pkginfo
config.status: creating apr-1-config
config.status: creating apr.pc
config.status: creating test/Makefile
config.status: creating test/internal/Makefile
config.status: creating include/arch/unix/apr_private.h
config.status: executing libtool commands
rm: cannot remove `arm-poky-linux-gnueabi-libtoolT': No such file or directory
config.status: executing default commands
NOTE: Checking autotools environment for common misconfiguration
md5 checksum matched for file://LICENSE;md5=0c35ff3c4c83b89d2f076e315caac28b
NOTE: md5 checksum matched for file://LICENSE;md5=0c35ff3c4c83b89d2f076e315caac28b
buildconf: checking installation...
buildconf: python version 2.6.6 (ok)
buildconf: autoconf version 2.65 (ok)
Copying libtool helper files ...
./buildconf: line 62: alias: -g: invalid option
alias: usage: alias [-p] [name[=value] ... ]
./buildconf: eval: line 67: syntax error near unexpected token `&&'
./buildconf: eval: line 67: `    && (test "X`print -r -- $as_echo`" = "X$as_echo") 2>/dev/null; then'
buildconf: Using libtool.m4 at /distro/edwin-working/poky/build-arm/tmp/sysroots/i686-linux/usr/share/aclocal/libtool.m4.
Creating include/arch/unix/apr_private.h.in ...
Creating configure ...
Generating 'make' outputs ...
rebuilding rpm spec file
automake (GNU automake) 1.11.1
Copyright (C) 2009 Free Software Foundation, Inc.
License GPLv2+: GNU GPL version 2 or later <http://gnu.org/licenses/gpl-2.0.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by Tom Tromey <tromey@redhat.com>
       and Alexandre Duret-Lutz <adl@gnu.org>.
AUTOV is 1.11
NOTE: Executing autoreconf --verbose --install --force --exclude=autopoint -I /distro/edwin-working/poky/build-arm/tmp/work/armv5te-poky-linux-gnueabi/apr-1.4.2-r0/apr-1.4.2/build/ -I/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/share/aclocal-1.11 -I /distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/share/aclocal
autoreconf: Entering directory `.'
autoreconf: configure.in: not using Gettext
autoreconf: running: aclocal -I /distro/edwin-working/poky/build-arm/tmp/work/armv5te-poky-linux-gnueabi/apr-1.4.2-r0/apr-1.4.2/build/ -I /distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/share/aclocal-1.11 -I /distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/share/aclocal -I /distro/edwin-working/poky/build-arm/tmp/work/armv5te-poky-linux-gnueabi/apr-1.4.2-r0/apr-1.4.2/build/ -I /distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/share/aclocal-1.11 -I /distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/share/aclocal --force 
build/apr_network.m4:24: warning: underquoted definition of APR_TYPE_IN_ADDR
build/apr_network.m4:24:   run info '(automake)Extending aclocal'
build/apr_network.m4:24:   or see http://sources.redhat.com/automake/automake.html#Extending-aclocal
autoreconf: configure.in: tracing
configure.in:2037: warning: AC_RUN_IFELSE called without default to allow cross compiling
../../lib/autoconf/general.m4:2709: AC_RUN_IFELSE is expanded from...
../../lib/autoconf/general.m4:2725: AC_TRY_RUN is expanded from...
../../lib/m4sugar/m4sh.m4:598: AS_IF is expanded from...
../../lib/autoconf/general.m4:1992: AC_CACHE_VAL is expanded from...
../../lib/autoconf/general.m4:2013: AC_CACHE_CHECK is expanded from...
configure.in:2037: the top level
configure.in:2062: warning: AC_RUN_IFELSE called without default to allow cross compiling
build/apr_threads.m4:248: APR_CHECK_PTHREAD_ROBUST_SHARED_MUTEX is expanded from...
configure.in:2062: the top level
configure.in:2463: warning: AC_RUN_IFELSE called without default to allow cross compiling
build/apr_network.m4:502: APR_CHECK_TCP_NODELAY_WITH_CORK is expanded from...
configure.in:2463: the top level
autoreconf: running: libtoolize --copy --force
libtoolize: putting auxiliary files in AC_CONFIG_AUX_DIR, `build'.
libtoolize: copying file `build/ltmain.sh'
libtoolize: putting macros in AC_CONFIG_MACRO_DIR, `build'.
libtoolize: copying file `build/libtool.m4'
libtoolize: copying file `build/ltoptions.m4'
libtoolize: copying file `build/ltsugar.m4'
libtoolize: copying file `build/ltversion.m4'
libtoolize: copying file `build/lt~obsolete.m4'
libtoolize: Consider adding `-I build' to ACLOCAL_AMFLAGS in Makefile.am.
libtoolize: `AC_PROG_RANLIB' is rendered obsolete by `LT_INIT'
build/apr_network.m4:24: warning: underquoted definition of APR_TYPE_IN_ADDR
build/apr_network.m4:24:   run info '(automake)Extending aclocal'
build/apr_network.m4:24:   or see http://sources.redhat.com/automake/automake.html#Extending-aclocal
autoreconf: running: /distro/edwin-working/poky/build-arm/tmp/sysroots/i686-linux/usr/bin/autoconf --include=/distro/edwin-working/poky/build-arm/tmp/work/armv5te-poky-linux-gnueabi/apr-1.4.2-r0/apr-1.4.2/build/ --include=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/share/aclocal-1.11 --include=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/share/aclocal --force --warnings=cross
configure.in:2037: warning: AC_RUN_IFELSE called without default to allow cross compiling
../../lib/autoconf/general.m4:2709: AC_RUN_IFELSE is expanded from...
../../lib/autoconf/general.m4:2725: AC_TRY_RUN is expanded from...
../../lib/m4sugar/m4sh.m4:598: AS_IF is expanded from...
../../lib/autoconf/general.m4:1992: AC_CACHE_VAL is expanded from...
../../lib/autoconf/general.m4:2013: AC_CACHE_CHECK is expanded from...
configure.in:2037: the top level
configure.in:2062: warning: AC_RUN_IFELSE called without default to allow cross compiling
build/apr_threads.m4:248: APR_CHECK_PTHREAD_ROBUST_SHARED_MUTEX is expanded from...
configure.in:2062: the top level
configure.in:2463: warning: AC_RUN_IFELSE called without default to allow cross compiling
build/apr_network.m4:502: APR_CHECK_TCP_NODELAY_WITH_CORK is expanded from...
configure.in:2463: the top level
autoreconf: running: /distro/edwin-working/poky/build-arm/tmp/sysroots/i686-linux/usr/bin/autoheader --include=/distro/edwin-working/poky/build-arm/tmp/work/armv5te-poky-linux-gnueabi/apr-1.4.2-r0/apr-1.4.2/build/ --include=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/share/aclocal-1.11 --include=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/share/aclocal --force --warnings=cross
autoreconf: configure.in: not using Automake
autoreconf: running: gnu-configize
autoreconf: Leaving directory `.'
NOTE: Running /distro/edwin-working/poky/build-arm/tmp/work/armv5te-poky-linux-gnueabi/apr-1.4.2-r0/apr-1.4.2/configure 		         --build=i686-linux 		  --host=arm-poky-linux-gnueabi 		  --target=arm-poky-linux-gnueabi 		  --prefix=/usr 		  --exec_prefix=/usr 		  --bindir=/usr/bin 		  --sbindir=/usr/sbin 		  --libexecdir=/usr/libexec 		  --datadir=/usr/share 		  --sysconfdir=/etc 		  --sharedstatedir=/com 		  --localstatedir=/var 		  --libdir=/usr/lib 		  --includedir=/usr/include 		  --oldincludedir=/usr/include 		  --infodir=/usr/share/info 		  --mandir=/usr/share/man 			 		    ...
configure: loading site script /distro/edwin-working/poky/meta/site/endian-little
configure: loading site script /distro/edwin-working/poky/meta/site/common-glibc
configure: loading site script /distro/edwin-working/poky/meta/site/arm-common
configure: loading site script /distro/edwin-working/poky/meta/site/arm-linux
configure: loading site script /distro/edwin-working/poky/meta/site/common
configure: loading site script /distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/share/arm-poky-linux-gnueabi_config_site.d/eglibc_config
configure: loading site script /distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi/usr/share/arm-poky-linux-gnueabi_config_site.d/zlib_config
checking build system type... i686-pc-linux-gnu
checking host system type... arm-poky-linux-gnueabi
checking target system type... arm-poky-linux-gnueabi
Configuring APR library
Platform: arm-poky-linux-gnueabi
checking for working mkdir -p... yes
APR Version: 1.4.2
checking for chosen layout... apr
checking for arm-poky-linux-gnueabi-gcc... arm-poky-linux-gnueabi-gcc -march=armv5te -mtune=arm926ej-s --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... yes
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether arm-poky-linux-gnueabi-gcc -march=armv5te -mtune=arm926ej-s --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi accepts -g... yes
checking for arm-poky-linux-gnueabi-gcc -march=armv5te -mtune=arm926ej-s --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi option to accept ISO C89... none needed
Applying APR hints file rules for arm-poky-linux-gnueabi
  setting CPPFLAGS to "-DLINUX=2"
  adding "-D_REENTRANT" to CPPFLAGS
  adding "-D_GNU_SOURCE" to CPPFLAGS
(Default will be unix)
checking whether make sets $(MAKE)... yes
checking how to run the C preprocessor... arm-poky-linux-gnueabi-gcc -E --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi
checking for gawk... gawk
checking whether ln -s works... yes
checking for arm-poky-linux-gnueabi-ranlib... arm-poky-linux-gnueabi-ranlib
checking for a BSD-compatible install... /usr/bin/install -c
checking for rm... rm
checking for as... arm-poky-linux-gnueabi-as
checking for cpp... cpp
checking for arm-poky-linux-gnueabi-ar... arm-poky-linux-gnueabi-ar
checking for grep that handles long lines and -e... /bin/grep
checking for egrep... /bin/grep -E
checking for ANSI C header files... (cached) yes
checking for sys/types.h... (cached) yes
checking for sys/stat.h... (cached) yes
checking for stdlib.h... (cached) yes
checking for string.h... (cached) yes
checking for memory.h... (cached) yes
checking for strings.h... (cached) yes
checking for inttypes.h... (cached) yes
checking for stdint.h... (cached) yes
checking for unistd.h... (cached) yes
checking minix/config.h usability... no
checking minix/config.h presence... no
checking for minix/config.h... no
checking whether it is safe to define __EXTENSIONS__... yes
checking for library containing strerror... none required
checking whether system uses EBCDIC... no
performing libtool configuration...
checking how to print strings... printf
checking for a sed that does not truncate output... /bin/sed
checking for fgrep... /bin/grep -F
checking for ld used by arm-poky-linux-gnueabi-gcc -march=armv5te -mtune=arm926ej-s --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi... arm-poky-linux-gnueabi-ld --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi
checking if the linker (arm-poky-linux-gnueabi-ld --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi) is GNU ld... yes
checking for BSD- or MS-compatible name lister (nm)... /distro/edwin-working/poky/build-arm/tmp/sysroots/i686-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-nm -B
checking the name lister (/distro/edwin-working/poky/build-arm/tmp/sysroots/i686-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-nm -B) interface... BSD nm
checking the maximum length of command line arguments... 1572864
checking whether the shell understands some XSI constructs... yes
checking whether the shell understands "+="... yes
checking how to convert i686-pc-linux-gnu file names to arm-poky-linux-gnueabi format... func_convert_file_noop
checking how to convert i686-pc-linux-gnu file names to toolchain format... func_convert_file_noop
checking for arm-poky-linux-gnueabi-ld --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi option to reload object files... -r
checking for arm-poky-linux-gnueabi-objdump... arm-poky-linux-gnueabi-objdump
checking how to recognize dependent libraries... pass_all
checking for arm-poky-linux-gnueabi-dlltool... dlltool
checking how to associate runtime and link libraries... printf %s\n
checking for arm-poky-linux-gnueabi-ar... (cached) arm-poky-linux-gnueabi-ar
checking for archiver @FILE support... @
checking for arm-poky-linux-gnueabi-strip... arm-poky-linux-gnueabi-strip
checking for arm-poky-linux-gnueabi-ranlib... (cached) arm-poky-linux-gnueabi-ranlib
checking command to parse /distro/edwin-working/poky/build-arm/tmp/sysroots/i686-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-nm -B output from arm-poky-linux-gnueabi-gcc -march=armv5te -mtune=arm926ej-s --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi object... ok
checking for sysroot... no
checking for arm-poky-linux-gnueabi-mt... no
checking for mt... mt
configure: WARNING: using cross tools not prefixed with host triplet
checking if mt is a manifest tool... no
checking for dlfcn.h... (cached) yes
checking for objdir... .libs
checking if arm-poky-linux-gnueabi-gcc -march=armv5te -mtune=arm926ej-s --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi supports -fno-rtti -fno-exceptions... no
checking for arm-poky-linux-gnueabi-gcc -march=armv5te -mtune=arm926ej-s --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi option to produce PIC... -fPIC -DPIC
checking if arm-poky-linux-gnueabi-gcc -march=armv5te -mtune=arm926ej-s --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi PIC flag -fPIC -DPIC works... yes
checking if arm-poky-linux-gnueabi-gcc -march=armv5te -mtune=arm926ej-s --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi static flag -static works... yes
checking if arm-poky-linux-gnueabi-gcc -march=armv5te -mtune=arm926ej-s --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi supports -c -o file.o... rm: cannot remove `conftest*': No such file or directory
yes
checking if arm-poky-linux-gnueabi-gcc -march=armv5te -mtune=arm926ej-s --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi supports -c -o file.o... (cached) yes
checking whether the arm-poky-linux-gnueabi-gcc -march=armv5te -mtune=arm926ej-s --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi linker (arm-poky-linux-gnueabi-ld --sysroot=/distro/edwin-working/poky/build-arm/tmp/sysroots/armv5te-poky-linux-gnueabi) supports shared libraries... yes
checking whether -lc should be explicitly linked in... rm: cannot remove `conftest*': No such file or directory
no
checking dynamic linker characteristics... GNU/Linux ld.so
checking how to hardcode library paths into programs... immediate
checking whether stripping libraries is possible... yes
checking if libtool supports shared libraries... yes
checking whether to build shared libraries... yes
checking whether to build static libraries... yes
grep: /distro/edwin-working/poky/build-arm/tmp/work/armv5te-poky-linux-gnueabi/apr-1.4.2-r0/apr-1.4.2/libtool: No such file or directory

Check for compiler flags...
checking whether the compiler provides atomic builtins... no
checking whether to enable -D_LARGEFILE64_SOURCE... no

Checking for libraries...
checking for library containing gethostbyname... none required
checking for library containing gethostname... none required
checking for library containing socket... none required
checking for library containing crypt... -lcrypt
checking for main in -ltruerand... no
checking for library containing modf... none required

Checking for Threads...
checking for pthread.h... (cached) yes
checking for CFLAGS needed for pthreads... 
checking for LIBS needed for pthreads... 
checking for pthread.h... (cached) yes
checking whether pthread_getspecific takes two arguments... no
checking whether pthread_attr_getdetachstate takes one argument... no
checking for recursive mutex support... no
checking for pthread_key_delete... (cached) yes
checking for pthread_rwlock_init... no
checking for pthread_attr_setguardsize... no
checking for pthread_yield... no
checking for sched.h... (cached) yes
checking for sched_yield... (cached) yes
APR will use threads
checking for readdir in -lc_r... no
checking for gethostbyname in -lc_r... no
checking for gethostbyaddr in -lc_r... no
checking for getservbyname in -lc_r... no
checking for gethostbyname_r... (cached) yes
checking for gethostbyaddr_r... (cached) yes
checking for getservbyname_r... (cached) yes
checking for sigsuspend... (cached) yes
checking for sigwait... yes
checking for poll... (cached) yes
checking for kqueue... no
checking for port_create... no
checking for epoll support... no
checking for epoll_create1 support... no
checking for dup3 support... no
checking for accept4 support... no
checking for SOCK_CLOEXEC support... no
checking for fdatasync... (cached) yes
checking for epoll_create1 support... (cached) no
checking for dup3 support... (cached) no
checking for accept4 support... (cached) no
checking for SOCK_CLOEXEC support... (cached) no
checking for getpwnam_r... (cached) yes
checking for getpwuid_r... (cached) yes
checking for getgrnam_r... (cached) yes
checking for getgrgid_r... (cached) yes

Checking for Shared Memory Support...
checking for library containing shm_open... -lrt
checking for sys/types.h... (cached) yes
checking for sys/mman.h... (cached) yes
checking for sys/ipc.h... (cached) yes
checking sys/mutex.h usability... no
checking sys/mutex.h presence... no
checking for sys/mutex.h... no
checking for sys/shm.h... (cached) yes
checking for sys/file.h... (cached) yes
checking kernel/OS.h usability... no
checking kernel/OS.h presence... no
checking for kernel/OS.h... no
checking os2.h usability... no
checking os2.h presence... no
checking for os2.h... no
checking windows.h usability... no
checking windows.h presence... no
checking for windows.h... no
checking for mmap... (cached) yes
checking for munmap... (cached) yes
checking for shm_open... yes
checking for shm_unlink... yes
checking for shmget... (cached) yes
checking for shmat... (cached) yes
checking for shmdt... (cached) yes
checking for shmctl... (cached) yes
checking for create_area... no
checking for MAP_ANON in sys/mman.h... yes
decision on anonymous shared memory allocation method... 4.4BSD-style mmap() via MAP_ANON
decision on namebased memory allocation method... SysV IPC shmget()
checking for working alloca.h... yes
checking for alloca... yes
checking for calloc... (cached) yes
checking for setsid... (cached) yes
checking for isinf... (cached) yes
checking for isnan... (cached) yes
checking for getenv... (cached) yes
checking for putenv... (cached) yes
checking for setenv... (cached) yes
checking for unsetenv... (cached) yes
checking for writev... yes
checking for getifaddrs... (cached) yes
checking for utime... (cached) yes
checking for utimes... (cached) yes
checking for setrlimit... (cached) yes
checking for getrlimit... (cached) yes
checking for sendfilev in -lsendfile... no
checking for sendfile... yes
checking for send_file... no
checking for sendfilev... no
checking for sigaction... (cached) yes
checking whether sys_siglist is declared... (cached) yes
checking for fork... (cached) yes
checking for inet_addr... (cached) yes
checking for inet_network... yes
checking for _getch... no
checking for strerror_r... (cached) yes
checking for type of return code from strerror_r... pointer
checking for mmap... (cached) yes
checking for memmove... (cached) yes
checking for getpass... (cached) yes
checking for getpassphrase... no
checking for gmtime_r... (cached) yes
checking for localtime_r... (cached) yes
checking for mkstemp... (cached) yes
checking whether sigwait takes one argument... no
checking for ANSI C header files... (cached) yes
checking ByteOrder.h usability... no
checking ByteOrder.h presence... no
checking for ByteOrder.h... no
checking conio.h usability... no
checking conio.h presence... no
checking for conio.h... no
checking for crypt.h... (cached) yes
checking for ctype.h... (cached) yes
checking dir.h usability... no
checking dir.h presence... no
checking for dir.h... no
checking for dirent.h... (cached) yes
checking dl.h usability... no
checking dl.h presence... no
checking for dl.h... no
checking for dlfcn.h... (cached) yes
checking for errno.h... (cached) yes
checking for fcntl.h... (cached) yes
checking for grp.h... (cached) yes
checking io.h usability... no
checking io.h presence... no
checking for io.h... no
checking for limits.h... (cached) yes
checking mach-o/dyld.h usability... no
checking mach-o/dyld.h presence... no
checking for mach-o/dyld.h... no
checking for malloc.h... (cached) yes
checking for memory.h... (cached) yes
checking for netdb.h... (cached) yes
checking osreldate.h usability... no
checking osreldate.h presence... no
checking for osreldate.h... no
checking for poll.h... (cached) yes
checking process.h usability... no
checking process.h presence... no
checking for process.h... no
checking for pwd.h... (cached) yes
checking for semaphore.h... (cached) yes
checking for signal.h... (cached) yes
checking for stdarg.h... (cached) yes
checking for stddef.h... (cached) yes
checking for stdio.h... (cached) yes
checking for stdlib.h... (cached) yes
checking for string.h... (cached) yes
checking for strings.h... (cached) yes
checking sysapi.h usability... no
checking sysapi.h presence... no
checking for sysapi.h... no
checking sysgtime.h usability... no
checking sysgtime.h presence... no
checking for sysgtime.h... no
checking for termios.h... (cached) yes
checking for time.h... (cached) yes
checking tpfeq.h usability... no
checking tpfeq.h presence... no
checking for tpfeq.h... no
checking tpfio.h usability... no
checking tpfio.h presence... no
checking for tpfio.h... no
checking for unistd.h... (cached) yes
checking unix.h usability... no
checking unix.h presence... no
checking for unix.h... no
checking for windows.h... (cached) no
checking winsock2.h usability... no
checking winsock2.h presence... no
checking for winsock2.h... no
checking for arpa/inet.h... (cached) yes
checking for kernel/OS.h... (cached) no
checking net/errno.h usability... no
checking net/errno.h presence... no
checking for net/errno.h... no
checking for netinet/in.h... (cached) yes
checking for netinet/sctp.h... (cached) no
checking for netinet/sctp_uio.h... (cached) no
checking for sys/file.h... (cached) yes
checking for sys/ioctl.h... (cached) yes
checking for sys/mman.h... (cached) yes
checking for sys/param.h... (cached) yes
checking for sys/poll.h... (cached) yes
checking for sys/resource.h... (cached) yes
checking for sys/select.h... (cached) yes
checking for sys/sem.h... (cached) yes
checking sys/sendfile.h usability... yes
checking sys/sendfile.h presence... yes
checking for sys/sendfile.h... yes
checking for sys/signal.h... (cached) yes
checking for sys/socket.h... (cached) yes
checking sys/sockio.h usability... no
checking sys/sockio.h presence... no
checking for sys/sockio.h... no
checking for sys/stat.h... (cached) yes
checking for sys/sysctl.h... (cached) yes
checking sys/syslimits.h usability... no
checking sys/syslimits.h presence... no
checking for sys/syslimits.h... no
checking for sys/time.h... (cached) yes
checking for sys/types.h... (cached) yes
checking for sys/uio.h... (cached) yes
checking for sys/un.h... (cached) yes
checking for sys/wait.h... (cached) yes
checking for netinet/tcp.h... yes
checking for h_errno in netdb.h... yes
checking for off_t... yes
checking for pid_t... yes
checking for size_t... yes
checking for uid_t in sys/types.h... (cached) {ac_cv_type_uid_t=yes}
checking for ssize_t... yes
checking for inline... inline
checking for an ANSI C-conforming const... yes
checking whether setpgrp takes no argument... (cached) yes
checking for socklen_t... yes
checking size of void*... 4
checking size of char... (cached) 1
checking size of int... (cached) 4
checking size of long... (cached) 4
checking size of short... (cached) 2
checking size of long long... (cached) 8
checking for INT64_C... yes
checking size of pid_t... 8
checking whether ssize_t and int are the same... yes
checking whether ssize_t and long are the same... no
checking whether size_t and unsigned int are the same... yes
checking whether size_t and unsigned long are the same... no
checking size of ssize_t... (cached) 4
checking which format to use for apr_ssize_t... %d
checking size of size_t... (cached) 4
checking which format to use for apr_size_t... %u
checking size of off_t... (cached) 4
checking which type to use for apr_off_t... long
checking whether ino_t and unsigned long are the same... yes
configure: using unsigned long for ino_t
checking whether byte ordering is bigendian... (cached) no
checking for strnicmp... no
checking for strncasecmp... (cached) yes
checking for stricmp... no
checking for strcasecmp... (cached) yes
checking for strdup... (cached) yes
checking for strstr... (cached) yes
checking for memchr... (cached) yes
checking for strtoll... (cached) yes

Checking for DSO...
checking for dlopen... no
checking for dlopen in -ldl... yes
  adding "-ldl" to LIBS
checking for dlsym... yes

Checking for Processes...
checking for waitpid... (cached) yes
checking for Variable Length Arrays... yes
checking struct rlimit... no

Checking for Locking...
checking for semget... (cached) yes
checking for semctl... (cached) yes
checking for flock... (cached) yes
checking for semaphore.h... (cached) yes
checking OS.h usability... no
checking OS.h presence... no
checking for OS.h... no
checking for library containing sem_open... no
checking for sem_close... no
checking for sem_unlink... no
checking for sem_post... no
checking for sem_wait... no
checking for create_sem... no
checking for working sem_open... no
checking for union semun in sys/sem.h... no
checking for LOCK_EX in sys/file.h... yes
checking for F_SETLK in fcntl.h... yes
checking for SEM_UNDO in sys/sem.h... yes
checking for POLLIN in poll.h sys/poll.h... yes
checking for PTHREAD_PROCESS_SHARED in pthread.h... yes
checking for pthread_mutexattr_setpshared... no
decision on apr_lock implementation method... SysV IPC semget()
checking if fcntl returns EACCES when F_SETLK is already held... no
checking if all interprocess locks affect threads... no
checking if POSIX sems affect threads in the same process... no
checking if SysV sems affect threads in the same process... no
checking if fcntl locks affect threads in the same process... no
checking if flock locks affect threads in the same process... no
checking for entropy source... /dev/urandom

Checking for File Info Support...
checking for struct stat.st_blocks... yes
checking for struct stat.st_atimensec... no
checking for struct stat.st_ctimensec... no
checking for struct stat.st_mtimensec... no
checking for struct stat.st_atim.tv_nsec... yes
checking for struct stat.st_ctim.tv_nsec... yes
checking for struct stat.st_mtim.tv_nsec... yes
checking for struct stat.st_atime_n... no
checking for struct stat.st_ctime_n... no
checking for struct stat.st_mtime_n... no
checking for inode member of struct dirent... d_fileno
checking for file type member of struct dirent... d_type

Checking for OS UUID Support...
checking uuid.h usability... no
checking uuid.h presence... no
checking for uuid.h... no
checking uuid/uuid.h usability... yes
checking uuid/uuid.h presence... yes
checking for uuid/uuid.h... yes
checking for library containing uuid_create... no
checking for library containing uuid_generate... -luuid
checking for uuid_create... no
checking for uuid_generate... yes
checking for os uuid usability... yes

Checking for Time Support...
checking for struct tm.tm_gmtoff... yes
checking for struct tm.__tm_gmtoff... no

Checking for Networking support...
checking for type in_addr... yes
checking if fd == socket on this platform... yes
checking style of gethostbyname_r routine... glibc2
checking 3rd argument to the gethostbyname_r routines... char
checking style of getservbyname_r routine... glibc2
checking if TCP_NODELAY setting is inherited from listening sockets... yes
checking if O_NONBLOCK setting is inherited from listening sockets... yes
checking whether TCP_NODELAY and TCP_CORK can both be enabled... (cached) yes
checking for TCP_CORK in netinet/tcp.h... yes
checking for TCP_NOPUSH in netinet/tcp.h... no
checking for SO_ACCEPTFILTER in sys/socket.h... no
checking whether SCTP is supported... no
checking for struct ip_mreq... yes
checking for set_h_errno... no

Checking for IPv6 Networking support...
checking for library containing getaddrinfo... none required
checking for library containing gai_strerror... none required
checking for library containing getnameinfo... none required
checking for gai_strerror... (cached) yes
checking for working getaddrinfo... yes
checking for negative error codes for getaddrinfo... no
checking for working getnameinfo... yes
checking for sockaddr_in6... yes
checking for sockaddr_storage... yes
checking Checking autotools environment for common misconfiguration
for working AI_ADDRCONFIG... no
checking if APR supports IPv6... yes
checking for langinfo.h... (cached) yes
checking for nl_langinfo... (cached) yes

Restore user-defined environment settings...
  restoring CPPFLAGS to ""
  setting EXTRA_CPPFLAGS to "-DLINUX=2 -D_REENTRANT -D_GNU_SOURCE"
  restoring CFLAGS to "-fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 -ggdb -feliminate-unused-debug-types"
  setting EXTRA_CFLAGS to ""
  restoring LDFLAGS to "-Wl,-O1 -Wl,--as-needed"
  setting EXTRA_LDFLAGS to ""
  restoring LIBS to ""
  setting EXTRA_LIBS to "-luuid -lrt -lcrypt  -ldl"
  restoring INCLUDES to ""
  setting EXTRA_INCLUDES to ""
configure: creating ./config.status
config.status: creating Makefile
config.status: creating include/apr.h
config.status: creating build/apr_rules.mk
config.status: creating build/pkg/pkginfo
config.status: creating apr-1-config
config.status: creating apr.pc
config.status: creating test/Makefile
config.status: creating test/internal/Makefile
config.status: creating include/arch/unix/apr_private.h
config.status: executing libtool commands
rm: cannot remove `arm-poky-linux-gnueabi-libtoolT': No such file or directory
config.status: executing default commands
NOTE: Checking autotools environment for common misconfiguration
md5 checksum matched for file://LICENSE;md5=0c35ff3c4c83b89d2f076e315caac28b
NOTE: md5 checksum matched for file://LICENSE;md5=0c35ff3c4c83b89d2f076e315caac28b
md5 checksum matched for file://include/apr_lib.h;endline=17;md5=ee42fa7575dc40580a9e01c1b75fae96
NOTE: md5 checksum matched for file://include/apr_lib.h;endline=17;md5=ee42fa7575dc40580a9e01c1b75fae96

--------------040006010103010606020801--
