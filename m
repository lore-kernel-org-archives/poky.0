Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 55D564C811E5
	for <poky@yoctoproject.org>; Tue, 28 Dec 2010 18:43:26 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 28 Dec 2010 16:43:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,242,1291622400"; d="scan'208";a="587931671"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 28 Dec 2010 16:43:25 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 29 Dec 2010 08:43:10 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Wed, 29 Dec 2010 08:43:09 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Darren Hart <dvhart@linux.intel.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Wed, 29 Dec 2010 08:43:07 +0800
Thread-Topic: [poky] Library paths for Makefile based recipes
Thread-Index: Acum76iK8Y2SvyQWRk+gowYlit3vJAAAKSow
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D64C30DB7@shsmsx502.ccr.corp.intel.com>
References: <4D1A8103.2030501@linux.intel.com>
In-Reply-To: <4D1A8103.2030501@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
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
X-List-Received-Date: Wed, 29 Dec 2010 00:43:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Darren Hart
>Sent: Wednesday, December 29, 2010 8:30 AM
>
>I'm working on packaging kernelshark ("make gui" for the trace-cmd recipe
>basically). It fails trying to link to -lgtk-x11-2.0. I have added gtk+
>as a DEPENDS and the library does exist in the sysroots. I have also added
>"inherit pkgconfig" as the project Makefile uses it extensively.
>
>gcc trace-view-main.o trace-view.o trace-view-store.o trace-filter.o trace=
-compat.o
>trace-hash.o libtracecmd.a -rdynamic -o trace-view -pthread -lgtk-x11-2.0 =
-lgdk-x11-2.0
>-latk-1.0 -lgio-2.0 -lpangoft2-1.0 -lgdk_pixbuf-2.0 -lpangocairo-1.0 -lcai=
ro -lpango-1.0
>-lfreetype -lfontconfig -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lg=
lib-2.0   -L.
>-ltracecmd -ldl
>| /usr/bin/ld: cannot find -lgtk-x11-2.0

it looks that native gcc/binutils are used here, instead of the cross one. =
Or else gcc=20
should have a target prefix like i568-poky-linux-gcc, and ld should come fr=
om your=20
native sysroot...

>| collect2: ld returned 1 exit status
>| make[1]: *** [trace-view] Error 1
>| make[1]: *** Waiting for unfinished jobs....
>| make: *** [gui] Error 2
>| FATAL: oe_runmake failed
>| ERROR: Task failed: ('function do_compile failed',
>'/vol/1/dvhart/poky.git/build/tmp/work/core2-poky-linux/kernelshark-1.0.4+=
git0+0d2522
>24626bd6926324f023a65f20c165232891-r0/temp/log.do_compile.12830')
>NOTE: package
>kernelshark-1.0.4+git0+0d252224626bd6926324f023a65f20c165232891-r0: task
>do_compile: Failed
>ERROR: Task 8
>(/home/dvhart/data/poky.git/meta/recipes-kernel/trace-cmd/kernelshark_git.=
bb,
>do_compile) failed with 1
>ERROR: '/home/dvhart/data/poky.git/meta/recipes-kernel/trace-cmd/kernelsha=
rk_git.bb'
>failed
>
>Without the "gui" target, trace-cmd doesn't link against anything outside =
of
>libc and ld, so the original recipe doesn't run into this.

given earlier confusion, I'm worried whether original trace-cmd does work a=
s expected,
e.g. whether it runs on a non-x86 target?

>
>How does bitbake try to make the library path available to a make based
>project? I've tried various incantations from other non-autotools gtk+
>based recipes:
>
>do_compile_prepend =3D " \
>        export LDFLAGS=3D'${LDFLAGS} `${STAGING_BINDIR_NATIVE}/pkg-config
>gtk+-2.0 --libs`'; \
>       export CFLAGS=3D'${CFLAGS} -I./ `${STAGING_BINDIR_NATIVE}/pkg-confi=
g
>gtk+-2.0 --cflags`'; "
>
>export VERBOSE=3D1
>CFLAGS +=3D "-L ${STAGING_LIBDIR}"
>LDFLAGS +=3D "-L ${STAGING_LIBDIR}"
>CFLAGS_prepend =3D "-L ${STAGING_LIBDIR}"
>LDFLAGS_prepend =3D "-L ${STAGING_LIBDIR}"
>
>However, these don't appear to impact the commands executed by the project
>Makefile (despite the fact that it tries to import existing CFLAGS).
>

No idea here. You may need check the Makefile carefully whether there's any
tricky lines breaking things here... At least you may change Makefile direc=
tly first. :-)

Thanks
Kevin

