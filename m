Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6F71A4C804CA
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 18:39:28 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Apr 2011 16:39:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,236,1301900400"; d="scan'208";a="735276164"
Received: from unknown (HELO [10.255.13.48]) ([10.255.13.48])
	by orsmga001.jf.intel.com with ESMTP; 18 Apr 2011 16:39:23 -0700
Message-ID: <4DACCBAB.9010507@linux.intel.com>
Date: Mon, 18 Apr 2011 16:39:23 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
References: <cover.1302845703.git.dongxiao.xu@intel.com>	<51fdeef3e7bece8d6fd371b34d44d9b085681b33.1302845703.git.dongxiao.xu@intel.com>	<4DA93539.9090904@intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A507A9EBA@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A507A9EBA@shsmsx501.ccr.corp.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 08/14] alsa-utils: upgrade to version 1.0.24.2
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
X-List-Received-Date: Mon, 18 Apr 2011 23:39:28 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/17/2011 11:40 PM, Xu, Dongxiao wrote:
> Hi Saul,
>
> On which platform do you meet the compile error with this patch?
>
> I just re-checked the 4 architecture and they build all well.
>
Really, are you sure you are building the same thing?  I just rebuild 
and think I understand what's happened.  I happened to build world which 
build libsamplerate0 before alsa-utils, now there is not a direct 
dependency, but alsa-utils will configure different with and without 
libsamplerate0.

I think we want it to DEPEND on libsamplerate0 for better tooling/utils, 
this is what then causes the failure, which requires the newer version 
of libsamplerate0.

I hope that makes more sense now.

Sau!

Failre with libsamplerate0 built before alsa-utils.

  i586-poky-linux-gcc -march=i586 
--sysroot=/intel/poky2/builds/alsa/tmp/sysroots/qemux86  -O2 -pipe -g 
-feliminate-unused-debug-types -D_GNU_SOURCE  -Wl,-O1  -Wl,--as-needed 
-o alsaloop alsaloop.o pcmjob.o control.o -lm -lsamplerate -lasound -lm 
-ldl -lpthread
| pcmjob.o: In function `buf_add_src':
| 
/intel/poky2/builds/alsa/tmp/work/i586-poky-linux/alsa-utils-1.0.24.2-r0/alsa-utils-1.0.24.2/alsaloop/pcmjob.c:514: 
undefined reference to `src_int_to_float_array'
| 
/intel/poky2/builds/alsa/tmp/work/i586-poky-linux/alsa-utils-1.0.24.2-r0/alsa-utils-1.0.24.2/alsaloop/pcmjob.c:552: 
undefined reference to `src_float_to_int_array'
| collect2: ld returned 1 exit status
| make[1]: *** [alsaloop] Error 1
| make[1]: Leaving directory 
`/intel/poky2/builds/alsa/tmp/work/i586-poky-linux/alsa-utils-1.0.24.2-r0/alsa-utils-1.0.24.2/alsaloop'
| make: *** [all-recursive] Error 1
| FATAL: oe_runmake failed
| ERROR: Function 'do_compile' failed (see 
/intel/poky2/builds/alsa/tmp/work/i586-poky-linux/alsa-utils-1.0.24.2-r0/temp/log.do_compile.6135 
for further information)
NOTE: package alsa-utils-1.0.24.2-r0: task do_compile: Failed
ERROR: Task 7 
(/intel/poky2/master2/meta/recipes-multimedia/alsa/alsa-utils_1.0.24.2.bb, 
do_compile) failed with exit code '1'


> Thanks,
> Dongxiao
>
>> -----Original Message-----
>> From: Wold, Saul
>> Sent: Saturday, April 16, 2011 2:21 PM
>> To: Xu, Dongxiao
>> Cc: poky@yoctoproject.org
>> Subject: Re: [poky] [PATCH 08/14] alsa-utils: upgrade to version 1.0.24.2
>>
>>
>> There seems to be a problem with this patch, I was not able to compile it
>> correctly, it had undefined functions that I tracked to a newer version of
>> libsamplerate0.  Please correct this issue.
>>
>> Thanks
>> 	Sau!
>>
>>
>> On 04/14/2011 10:36 PM, Dongxiao Xu wrote:
>>> From: Dongxiao Xu<dongxiao.xu@intel.com>
>>>
>>> Signed-off-by: Dongxiao Xu<dongxiao.xu@intel.com>
>>> ---
>>>    .../ncursesfix.patch                               |   22
>> ++++++++++---------
>>>    ...alsa-utils_1.0.23.bb =>   alsa-utils_1.0.24.2.bb} |    4 +-
>>>    2 files changed, 14 insertions(+), 12 deletions(-)
>>>    rename meta/recipes-multimedia/alsa/{alsa-utils-1.0.23 =>
>> alsa-utils-1.0.24.2}/ncursesfix.patch (70%)
>>>    rename meta/recipes-multimedia/alsa/{alsa-utils_1.0.23.bb =>
>>> alsa-utils_1.0.24.2.bb} (95%)
>>>
>>> diff --git
>>> a/meta/recipes-multimedia/alsa/alsa-utils-1.0.23/ncursesfix.patch
>>> b/meta/recipes-multimedia/alsa/alsa-utils-1.0.24.2/ncursesfix.patch
>>> similarity index 70%
>>> rename from
>>> meta/recipes-multimedia/alsa/alsa-utils-1.0.23/ncursesfix.patch
>>> rename to
>>> meta/recipes-multimedia/alsa/alsa-utils-1.0.24.2/ncursesfix.patch
>>> index 0009c1a..9936ded 100644
>>> --- a/meta/recipes-multimedia/alsa/alsa-utils-1.0.23/ncursesfix.patch
>>> +++ b/meta/recipes-multimedia/alsa/alsa-utils-1.0.24.2/ncursesfix.patc
>>> +++ h
>>> @@ -1,11 +1,13 @@
>>> -# alsa-utils: Fix ncurses build failures -# Richard
>>> Purdie<rpurdie@linux.intel.com>  -# Rebased to 1.0.23, Dongxiao
>>> Xu<dongxiao.xu@intel.com>
>>> +Rebase the patch to fit 1.0.24.2
>>>
>>> -diff -ruN alsa-utils-1.0.23-orig/configure.in alsa-utils-1.0.23/configure.in
>>> ---- alsa-utils-1.0.23-orig/configure.in	2010-04-16 19:19:12.000000000 +0800
>>> -+++ alsa-utils-1.0.23/configure.in	2010-06-22 15:22:06.731202478 +0800
>>> -@@ -109,34 +109,16 @@
>>> +Upstream-Status: Inappropriate [configuration]
>>> +
>>> +Signed-off-by: Dongxiao Xu<dongxiao.xu@intel.com>
>>> +
>>> +diff -ruN alsa-utils-1.0.24.2-orig//configure.in alsa-utils-1.0.24.2/configure.in
>>> +--- alsa-utils-1.0.24.2-orig//configure.in	2011-04-13 13:51:20.337665010
>> +0800
>>> ++++ alsa-utils-1.0.24.2/configure.in	2011-04-13 13:51:54.437664986 +0800
>>> +@@ -127,34 +127,16 @@
>>>       NCURSESLIBSUFFIX=""
>>>       CURSES_NLS="no"
>>>       if test "$curseslib" = "ncursesw" -o \( "$curseslib" = "auto" -a
>>> "$USE_NLS" = "yes" \); then @@ -17,7 +19,7 @@ diff -ruN
>> alsa-utils-1.0.23-orig/configure.in alsa-utils-1.0.23/configure.in
>>>    -      CURSES_CFLAGS=`ncursesw5-config --cflags`
>>>    -      curseslib="ncursesw"
>>>    -    else
>>> -       AC_CHECK_LIB(ncursesw, initscr,
>>> +       AC_CHECK_LIB(ncursesw, initscr,
>>>                      [ CURSESINC='<ncurses.h>';
>> CURSESLIB='-lncursesw'; curseslib="ncursesw"])
>>>    -    fi
>>>         if test -n "$CURSESINC"; then
>>> @@ -34,9 +36,9 @@ diff -ruN alsa-utils-1.0.23-orig/configure.in
>> alsa-utils-1.0.23/configure.in
>>>    -      CURSES_CFLAGS=`ncurses5-config --cflags`
>>>    -      curseslib="ncurses"
>>>    -    else
>>> -       AC_CHECK_LIB(ncurses, initscr,
>>> +       AC_CHECK_LIB(ncurses, initscr,
>>>                      [ CURSESINC='<ncurses.h>'; CURSESLIB='-lncurses';
>> curseslib="ncurses"])
>>>    -    fi
>>>       fi
>>>       if test "$curseslib" = "curses" -o "$curseslib" = "auto"; then
>>> -     AC_CHECK_LIB(curses, initscr,
>>> +     AC_CHECK_LIB(curses, initscr,
>>> diff --git a/meta/recipes-multimedia/alsa/alsa-utils_1.0.23.bb
>>> b/meta/recipes-multimedia/alsa/alsa-utils_1.0.24.2.bb
>>> similarity index 95%
>>> rename from meta/recipes-multimedia/alsa/alsa-utils_1.0.23.bb
>>> rename to meta/recipes-multimedia/alsa/alsa-utils_1.0.24.2.bb
>>> index 46283cc..953a3ac 100644
>>> --- a/meta/recipes-multimedia/alsa/alsa-utils_1.0.23.bb
>>> +++ b/meta/recipes-multimedia/alsa/alsa-utils_1.0.24.2.bb
>>> @@ -11,8 +11,8 @@ PR = "r0"
>>>    SRC_URI = "ftp://ftp.alsa-project.org/pub/utils/alsa-utils-${PV}.tar.bz2 \
>>>               file://ncursesfix.patch;patch=1 "
>>>
>>> -SRC_URI[md5sum] = "cb0cf46029ac9549cf3a31bff6a4f4e1"
>>> -SRC_URI[sha256sum] =
>> "b7d05e915e25f8540ad151c6dd558cf0fc1e9bb0ee23052d531c983666a1f7b0"
>>> +SRC_URI[md5sum] = "8238cd57cb301d1c36bcf0ecb59ce6b2"
>>> +SRC_URI[sha256sum] =
>> "95127f740291086486c06c28118cabca0814bde48fd14dac041a9812a5ac1be2"
>>>
>>>    # lazy hack. needs proper fixing in gettext.m4, see
>>>    # http://bugs.openembedded.org/show_bug.cgi?id=2348
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


