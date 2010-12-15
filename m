Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9966E4C80048
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 10:26:59 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Dec 2010 08:26:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,349,1288594800"; d="scan'208";a="868559798"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga001.fm.intel.com with ESMTP; 15 Dec 2010 08:26:59 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.226.213) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 15 Dec 2010 08:26:59 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx601.amr.corp.intel.com ([10.22.226.213]) with mapi;
	Wed, 15 Dec 2010 08:26:58 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Khem Raj <raj.khem@gmail.com>, Wolfgang Denk <wd@denx.de>
Date: Wed, 15 Dec 2010 08:26:57 -0800
Thread-Topic: [poky] elfutils build fails on Fedroa 14
Thread-Index: AcuZIM475+LkCfQySBmVJPAg/OHPLADU9Dww
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE9404FAD617@orsmsx504.amr.corp.intel.com>
References: <20101205125755.1B42C351@gemini.denx.de>
	<20101211104711.GB10409@gmail.com>
In-Reply-To: <20101211104711.GB10409@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: elfutils build fails on Fedroa 14
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
X-List-Received-Date: Wed, 15 Dec 2010 16:26:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>=20
> On (05/12/10 13:57), Wolfgang Denk wrote:
> > Trying to build on a Fedora 14 box, elfutis fails with this error:
> >
> > ...
> > | make[2]: Entering directory `/opt/poky/build-laverne-4.0-
> kilauea/tmp/work/x86_64-linux/elfutils-native-0.148-r1/elfutils-
> 0.148/src'
> > ...
> > | ccache gcc -std=3Dgnu99 -Wall -Wshadow -Werror -Wunused -Wextra -
> fgnu89-inline -Wformat=3D2   -isystem/opt/poky/build-laverne-4.0-
> kilauea/tmp/sysroots/x86_64-linux/usr/include -O2 -Wl,-rpath-
> link,../libelf:../libdw -L/opt/poky/build-laverne-4.0-
> kilauea/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath-
> link,/opt/poky/build-laverne-4.0-kilauea/tmp/sysroots/x86_64-
> linux/usr/lib -Wl,-rpath,/opt/poky/build-laverne-4.0-
> kilauea/tmp/sysroots/x86_64-linux/usr/lib -Wl,-O1 -o objdump objdump.o
> ../libasm/libasm.so ../libebl/libebl.a ../libelf/libelf.so
> ../lib/libeu.a  -ldl
> > | ./ld: unrecognized option '--no-add-needed'
> > | Try `ld --help' or `ld --usage' for more information.
> > | collect2: ld returned 64 exit status
> > | make[2]: *** [addr2line] Error 1
> > | make[2]: *** Waiting for unfinished jobs....
> > | ./ld: unrecognized option '--no-add-needed'
> > | Try `ld --help' or `ld --usage' for more information.
> > | collect2: ld returned 64 exit status
> > | make[2]: *** [elfcmp] Error 1
> > | ./ld: unrecognized option '--no-add-needed'
> > | Try `ld --help' or `ld --usage' for more information.
> > | collect2: ld returned 64 exit status
> >
> > In Fedora 14, the following command gets generated:
> >
> > /usr/libexec/gcc/x86_64-redhat-linux/4.5.1/collect2 --build-id --no-
> add-needed --eh-frame-hdr -m elf_x86_64 --hash-style=3Dgnu -dynamic-
> linker /lib64/ld-linux-x86-64.so.2 -o objdump /usr/lib/gcc/x86_64-
> redhat-linux/4.5.1/../../../../lib64/crt1.o /usr/lib/gcc/x86_64-redhat-
> linux/4.5.1/../../../../lib64/crti.o /usr/lib/gcc/x86_64-redhat-
> linux/4.5.1/crtbegin.o -L/opt/poky/build-laverne-4.0-
> kilauea/tmp/sysroots/x86_64-linux/usr/lib -L/usr/lib/gcc/x86_64-redhat-
> linux/4.5.1 -L/usr/lib/gcc/x86_64-redhat-linux/4.5.1/../../../../lib64
> -L/lib/../lib64 -L/usr/lib/../lib64 -L/usr/lib/gcc/x86_64-redhat-
> linux/4.5.1/../../.. --add-needed -rpath-link ../libelf:../libdw -
> rpath-link /opt/poky/build-laverne-4.0-kilauea/tmp/sysroots/x86_64-
> linux/usr/lib -rpath /opt/poky/build-laverne-4.0-
> kilauea/tmp/sysroots/x86_64-linux/usr/lib -O1 objdump.o
> ../libasm/libasm.so ../libebl/libebl.a ../libelf/libelf.so
> ../lib/libeu.a -ldl -lgcc --as-needed -lgcc_s --no-as-needed -lc -lgcc
> --as-needed -lgcc_s --no-
>  as
> >  -needed /usr/lib/gcc/x86_64-redhat-linux/4.5.1/crtend.o
> /usr/lib/gcc/x86_64-redhat-linux/4.5.1/../../../../lib64/crtn.o
> > ./ld: unrecognized option '--no-add-needed'
> > Try `ld --help' or `ld --usage' for more information.
> > collect2: ld returned 64 exit status
> >
> > Unfortunately the "ld" command in elfutils-0.148 does not understand
> > the '--no-add-needed'; I've tried to find any existing fixes for
> > this, but what I found just added a "-Xlinker --add-needed" to the
> > command line, which does not help here since ./ld understands neither
> > '--no-add-needed' nor '--add-needed'.
> >
> > Any ideas?
>=20
> I think we really dont need the tools part only libelf is needed so one
> way
> is to not build everything but just do targetted make targets and avoid
> building tools as its happening
>=20
> secondly you could try to add --program-prefix=3D"elfutils-" or somesuch
> then the linker from elfutils will be called elfutils-ld but I dont
> know if
> it will work because renaming happens during the install phase you have
> to try it out.
>=20
> -Khem

Has anybody else seeing this failure? I am building on the fedora 14 x86_64=
, with latest master and I do not see this issue.

Wolfgang, Are you using any different layer or machine with this failure ?

Thanks,
Nitin



