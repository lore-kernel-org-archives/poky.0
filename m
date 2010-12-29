Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 797F64C810B6
	for <poky@yoctoproject.org>; Tue, 28 Dec 2010 18:58:06 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 28 Dec 2010 16:58:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,242,1291622400"; d="scan'208";a="641255169"
Received: from unknown (HELO [10.255.13.220]) ([10.255.13.220])
	by fmsmga002.fm.intel.com with ESMTP; 28 Dec 2010 16:58:06 -0800
Message-ID: <4D1A879E.6060702@linux.intel.com>
Date: Tue, 28 Dec 2010 16:58:06 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Chris Larson <clarson@kergoth.com>
References: <4D1A8103.2030501@linux.intel.com>
	<AANLkTinj7sVzHzDX9b09H+BQy4HDUvs-5kt8gehhOiZ2@mail.gmail.com>
In-Reply-To: <AANLkTinj7sVzHzDX9b09H+BQy4HDUvs-5kt8gehhOiZ2@mail.gmail.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Library paths for Makefile based recipes
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
X-List-Received-Date: Wed, 29 Dec 2010 00:58:06 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/28/2010 04:41 PM, Chris Larson wrote:
> On Tue, Dec 28, 2010 at 5:29 PM, Darren Hart<dvhart@linux.intel.com>  wrote:
>> I'm working on packaging kernelshark ("make gui" for the trace-cmd recipe
>> basically). It fails trying to link to -lgtk-x11-2.0. I have added gtk+
>> as a DEPENDS and the library does exist in the sysroots. I have also added
>> "inherit pkgconfig" as the project Makefile uses it extensively.
>>
>> gcc trace-view-main.o trace-view.o trace-view-store.o trace-filter.o trace-compat.o trace-hash.o libtracecmd.a -rdynamic -o trace-view -pthread -lgtk-x11-2.0 -lgdk-x11-2.0 -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lgdk_pixbuf-2.0 -lpangocairo-1.0 -lcairo -lpango-1.0 -lfreetype -lfontconfig -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lglib-2.0   -L. -ltracecmd -ldl
>> | /usr/bin/ld: cannot find -lgtk-x11-2.0
>> | collect2: ld returned 1 exit status
>> | make[1]: *** [trace-view] Error 1
>> | make[1]: *** Waiting for unfinished jobs....
>> | make: *** [gui] Error 2
>> | FATAL: oe_runmake failed
>> | ERROR: Task failed: ('function do_compile failed', '/vol/1/dvhart/poky.git/build/tmp/work/core2-poky-linux/kernelshark-1.0.4+git0+0d252224626bd6926324f023a65f20c165232891-r0/temp/log.do_compile.12830')
>> NOTE: package kernelshark-1.0.4+git0+0d252224626bd6926324f023a65f20c165232891-r0: task do_compile: Failed
>> ERROR: Task 8 (/home/dvhart/data/poky.git/meta/recipes-kernel/trace-cmd/kernelshark_git.bb, do_compile) failed with 1
>> ERROR: '/home/dvhart/data/poky.git/meta/recipes-kernel/trace-cmd/kernelshark_git.bb' failed
>>
>> Without the "gui" target, trace-cmd doesn't link against anything outside of
>> libc and ld, so the original recipe doesn't run into this.
>>
>> How does bitbake try to make the library path available to a make based
>> project? I've tried various incantations from other non-autotools gtk+
>> based recipes:
>>
>> do_compile_prepend = " \
>>         export LDFLAGS='${LDFLAGS} `${STAGING_BINDIR_NATIVE}/pkg-config gtk+-2.0 --libs`'; \
>>        export CFLAGS='${CFLAGS} -I./ `${STAGING_BINDIR_NATIVE}/pkg-config gtk+-2.0 --cflags`'; "
>

Turns out the project Makefile is doing this:

CC = $(CROSS_COMPILE)gcc
AR = $(CROSS_COMPILE)ar

Removing those lines from the Makefile allows the project to build.


> This will only work if EXTRA_OEMAKE is default, by the way.  The
> default EXTRA_OEMAKE is "-e MAKEFLAGS=", which means "override all
> makefile variables with the values from the environment, if they
> exist, and don't pass the -e flag into submakes".
>
> In my opinion, the better bet is to be explicit -- pass variables into
> the make execution explicitly, rather than relying on exports and the
> environment to do so, e.g.:
>
> EXTRA_OEMAKE = "\
>      'CC=${CC}' \
>      'CFLAGS=${CFLAGS}' \
>      'LFLAGS=${LDFLAGS}' \
> "

The Makefile ignores LDFLAGS, but that doesn't appear to be necessary if
you actually use the right compiler :) Leaving the Makefile alone and 
trying something like the above works for me.

I'll be taking a closer look at the Makefile, it's a rather complex 
beast and I suspect more dragons are lurking.

Thanks!

-- 
Darren Hart
Yocto Linux Kernel

