Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38DE4E011C1
	for <poky@yoctoproject.org>; Fri, 26 Aug 2011 11:52:25 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 26 Aug 2011 11:52:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,286,1312182000"; d="scan'208";a="45437451"
Received: from unknown (HELO [10.255.13.251]) ([10.255.13.251])
	by fmsmga001.fm.intel.com with ESMTP; 26 Aug 2011 11:52:24 -0700
Message-ID: <4E57EB68.1030502@linux.intel.com>
Date: Fri, 26 Aug 2011 11:52:24 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:5.0) Gecko/20110707 Thunderbird/5.0
MIME-Version: 1.0
To: v sailaja <vsailub4u@gmail.com>
References: <CAFt-cow0ydmqp576rY+ArxqTZRm3Pf46_ku_6eGOYLwxFjqTCg@mail.gmail.com>
In-Reply-To: <CAFt-cow0ydmqp576rY+ArxqTZRm3Pf46_ku_6eGOYLwxFjqTCg@mail.gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: Configuration error while pulling krb5 package
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
X-List-Received-Date: Fri, 26 Aug 2011 18:52:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/26/2011 12:46 AM, v sailaja wrote:
> Hi,
>
> I am pulling krb5 package from openembedded to poky.
> I am building the poky source on "remotes/origin/1.1_M3"  branch for
> "sugarbay" machine.
>
> I am facing an error in configuration.
>
It might be helpful to also get your config.log from with in the 
krb5-1.6.3-r6 directory.

Thanks
	Sau!

>
>
> -------------
>
> ERROR: Function 'do_configure' failed (see
> /home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/work/x86_64-poky-linux/krb5-1.6.3-r6/temp/log.do_configure.6813
> for further information)
> ERROR: Logfile of failure stored in:
> /home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/work/x86_64-poky-linux/krb5-1.6.3-r6/temp/log.do_configure.6813
> Log data follows:
> | automake (GNU automake) 1.11.1
> | Copyright (C) 2009 Free Software Foundation, Inc.
> | License GPLv2+: GNU GPL version 2 or later
> <http://gnu.org/licenses/gpl-2.0.html>
> | This is free software: you are free to change and redistribute it.
> | There is NO WARRANTY, to the extent permitted by law.
> |
> | Written by Tom Tromey <tromey@redhat.com <mailto:tromey@redhat.com>>
> |        and Alexandre Duret-Lutz <adl@gnu.org <mailto:adl@gnu.org>>.
> | AUTOV is 1.11
> | NOTE: Executing autoreconf --verbose --install --force
> --exclude=autopoint -I
> /home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/work/x86_64-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src/util/
> -I/home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11
> -I
> /home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/work/x86_64-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src//aclocal-copy/
> | autoreconf: Entering directory `.'
> | autoreconf: configure.in <http://configure.in>: not using Gettext
> | autoreconf: running: aclocal -I
> /home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/work/x86_64-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src/util/
> -I
> /home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11
> -I
> /home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/work/x86_64-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src//aclocal-copy/
> -I
> /home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/work/x86_64-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src/util/
> -I
> /home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11
> -I
> /home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/work/x86_64-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src//aclocal-copy/
> --force --warnings=cross
> | aclocal: unknown warning category `cross'
> | configure.in:15 <http://configure.in:15>: */error: AC_LANG_COMPILER:
> unknown language: _AC_LANG/*
> | ../../lib/autoconf/lang.m4:330: AC_LANG_COMPILER_REQUIRE is expanded
> from...
> | ../../lib/autoconf/lang.m4:373: AC_LANG_PREPROC_REQUIRE is expanded
> from...
> | ../../lib/autoconf/lang.m4:382: AC_REQUIRE_CPP is expanded from...
> | configure.in:15 <http://configure.in:15>: the top level
> | autom4te:
> /home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/sysroots/x86_64-linux/usr/bin/m4
> failed with exit status: 1
> | aclocal:
> /home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/sysroots/x86_64-linux/usr/bin/autom4te
> failed with exit status: 1
> | autoreconf: aclocal failed with exit status: 1
> | ERROR: autoreconf execution failed.
> | ERROR: Function 'do_configure' failed (see
> /home/sailaja/poky/gigabyte/yocto-sugarbay/poky/build/tmp/work/x86_64-poky-linux/krb5-1.6.3-r6/temp/log.do_configure.6813
> for further information)
> NOTE: package krb5-1.6.3-r6: task do_configure: Failed
> ERROR: Task 863
> (/home/sailaja/poky/gigabyte/yocto-sugarbay/poky/meta/recipes-support/krb/krb5_1.6.3.bb
> <http://krb5_1.6.3.bb>, do_configure) failed with exit code '1'
>
>
>
>
> I am sending the /krb5_1.6.3.bb <http://krb5_1.6.3.bb/> ,
> log.do_configure /and/ run.do_configure files./
> Please find the attached files.
>
> Can anyone please tell me how to track this error and what is the reason
> for this error??
>
>
> --
> Thanks & Regards,
> SAI
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

