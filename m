Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 36E254C80BD8
	for <poky@yoctoproject.org>; Tue, 28 Dec 2010 18:29:56 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 28 Dec 2010 16:29:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,242,1291622400"; d="scan'208";a="587928840"
Received: from unknown (HELO [10.255.13.220]) ([10.255.13.220])
	by orsmga002.jf.intel.com with ESMTP; 28 Dec 2010 16:29:55 -0800
Message-ID: <4D1A8103.2030501@linux.intel.com>
Date: Tue, 28 Dec 2010 16:29:55 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Library paths for Makefile based recipes
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
X-List-Received-Date: Wed, 29 Dec 2010 00:29:56 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I'm working on packaging kernelshark ("make gui" for the trace-cmd recipe
basically). It fails trying to link to -lgtk-x11-2.0. I have added gtk+
as a DEPENDS and the library does exist in the sysroots. I have also added
"inherit pkgconfig" as the project Makefile uses it extensively.

gcc trace-view-main.o trace-view.o trace-view-store.o trace-filter.o trace-compat.o trace-hash.o libtracecmd.a -rdynamic -o trace-view -pthread -lgtk-x11-2.0 -lgdk-x11-2.0 -latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lgdk_pixbuf-2.0 -lpangocairo-1.0 -lcairo -lpango-1.0 -lfreetype -lfontconfig -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lglib-2.0   -L. -ltracecmd -ldl
| /usr/bin/ld: cannot find -lgtk-x11-2.0
| collect2: ld returned 1 exit status
| make[1]: *** [trace-view] Error 1
| make[1]: *** Waiting for unfinished jobs....
| make: *** [gui] Error 2
| FATAL: oe_runmake failed
| ERROR: Task failed: ('function do_compile failed', '/vol/1/dvhart/poky.git/build/tmp/work/core2-poky-linux/kernelshark-1.0.4+git0+0d252224626bd6926324f023a65f20c165232891-r0/temp/log.do_compile.12830')
NOTE: package kernelshark-1.0.4+git0+0d252224626bd6926324f023a65f20c165232891-r0: task do_compile: Failed
ERROR: Task 8 (/home/dvhart/data/poky.git/meta/recipes-kernel/trace-cmd/kernelshark_git.bb, do_compile) failed with 1
ERROR: '/home/dvhart/data/poky.git/meta/recipes-kernel/trace-cmd/kernelshark_git.bb' failed

Without the "gui" target, trace-cmd doesn't link against anything outside of
libc and ld, so the original recipe doesn't run into this.

How does bitbake try to make the library path available to a make based
project? I've tried various incantations from other non-autotools gtk+
based recipes:

do_compile_prepend = " \
        export LDFLAGS='${LDFLAGS} `${STAGING_BINDIR_NATIVE}/pkg-config gtk+-2.0 --libs`'; \
       export CFLAGS='${CFLAGS} -I./ `${STAGING_BINDIR_NATIVE}/pkg-config gtk+-2.0 --cflags`'; "

export VERBOSE=1
CFLAGS += "-L ${STAGING_LIBDIR}"
LDFLAGS += "-L ${STAGING_LIBDIR}"
CFLAGS_prepend = "-L ${STAGING_LIBDIR}"
LDFLAGS_prepend = "-L ${STAGING_LIBDIR}"

However, these don't appear to impact the commands executed by the project
Makefile (despite the fact that it tries to import existing CFLAGS).

-- 
Darren Hart
Yocto Linux Kernel

