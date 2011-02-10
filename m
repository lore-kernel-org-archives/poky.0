Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 65B554C80053
	for <poky@yoctoproject.org>; Wed,  9 Feb 2011 19:19:44 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Feb 2011 17:19:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,448,1291622400"; d="scan'208";a="601151646"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 09 Feb 2011 17:19:43 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx604.amr.corp.intel.com ([10.250.113.17]) with mapi;
	Wed, 9 Feb 2011 17:19:43 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>, "Zhang, Jessica"
	<jessica.zhang@intel.com>, Gary Thomas <gary@mlbassoc.com>
Date: Wed, 9 Feb 2011 17:19:43 -0800
Thread-Topic: [poky] build failures for eglibc_2.12 on FC14.x86_64 machine
Thread-Index: AcvIrLbQuZzxGR++RD+fm7atUv29+gAALKCgAAQFqZAAAMCVoA==
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE9412177249@orsmsx504.amr.corp.intel.com>
References: <9AFCD584B0B67B48AE8D8585BE30BA950DB0AA11@orsmsx504.amr.corp.intel.com>
	<4D531BCD.9020609@mlbassoc.com>
	<9AFCD584B0B67B48AE8D8585BE30BA950DB0AA46@orsmsx504.amr.corp.intel.com>
	<9DA5872FEF993D41B7173F58FCF6BE9412177205@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9DA5872FEF993D41B7173F58FCF6BE9412177205@orsmsx504.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: build failures for eglibc_2.12 on FC14.x86_64 machine
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
X-List-Received-Date: Thu, 10 Feb 2011 01:19:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: poky-bounces@yoctoproject.org [mailto:poky-
> bounces@yoctoproject.org] On Behalf Of Kamble, Nitin A
> Sent: Wednesday, February 09, 2011 5:00 PM
> To: Zhang, Jessica; Gary Thomas
> Cc: poky@yoctoproject.org
> Subject: Re: [poky] build failures for eglibc_2.12 on FC14.x86_64
> machine
>=20
> Jessica,
>=20
> I just tried this on my f13.64 box
> MACHINE=3Dqemuarm bitbake eglibc
>=20
> And it passed the compile phase and doing the install now.
>=20
> Next I will try it on a F14.64 box.
>=20
> Thanks,
> Nitin

Also it worked fine on my f14.64 system. So I did not see the issue with la=
test master.
Nitin


>=20
>=20
>=20
> > -----Original Message-----
> > From: poky-bounces@yoctoproject.org [mailto:poky-
> > bounces@yoctoproject.org] On Behalf Of Zhang, Jessica
> > Sent: Wednesday, February 09, 2011 3:05 PM
> > To: Gary Thomas
> > Cc: poky@yoctoproject.org
> > Subject: Re: [poky] build failures for eglibc_2.12 on FC14.x86_64
> > machine
> >
> > Gary Thomas wrote:
> > > On 02/09/2011 03:47 PM, Zhang, Jessica wrote:
> > >> Hi,
> > >> My meta-toolchain build on my FC14.x86_64 machine consistently
> > failed
> > >> with below errors. This is against latest Poky master and build
> from
> > >> scratch for arm arch. Anyone has seen this or have any idea?
> > >
> > > BTW, which MACHINE?  There are a couple of ARM targets and they use
> > > different compiler (options/versions).
> >
> > In my local.conf, the MACHINE is set to "qemuarm"...
> >
> >
> >
> > >
> > >> #
> > >> make[2]: Leaving directory
> > >>
> > `/home/yocto/test_arm/tmp/work/x86_64-nativesdk-pokysdk-linux/eglibc-
> > natives
> > dk-2.12-r13/eglibc-2_12/libc/stdio-common'
> > >> #
> > >> make[2]: Entering directory
> > >>
> > `/home/yocto/test_arm/tmp/work/x86_64-nativesdk-pokysdk-linux/eglibc-
> > natives
> > dk-2.12-r13/eglibc-2_12/libc/stdio-common'
> > >> #
> > >> ccache x86_64-pokysdk-linux-gcc
> > >>
> > --sysroot=3D/home/yocto/test_arm/tmp/sysroots/x86_64-nativesdk-pokysdk-
> > linux-t
> > cbootstrap
> > >> vfscanf.c -c -std=3Dgnu99 -fgnu89-inline -O2 -Wall -Winline
> > >> -Wwrite-strings -fmerge-all-constants -fno-unwind-tables
> > >>
> > -isystem/home/yocto/test_arm/tmp/sysroots/x86_64-nativesdk-pokysdk-
> > linux/opt
> > /poky/0.9+snapshot/sysroots/x86_64-pokysdk-linux/usr/include
> > >> -Wstrict-prototypes -fexceptions
> > >> -I../include
> > >>
> > -I/home/yocto/test_arm/tmp/work/x86_64-nativesdk-pokysdk-
> linux/eglibc-
> > native
> > sdk-2.12-r13/build-x86_64-pokysdk-linux/stdio-common
> > >>
> > @/home/yocto/test_arm/tmp/work/x86_64-nativesdk-pokysdk-linux/eglibc-
> > natives
> > dk-2.12-r13/build-x86_64-pokysdk-linux/includes
> > >> -I.. -I../libio -I. -D_LIBC_REENTRANT -include
> > >> ../include/libc-symbols.h -D_IO_MTSAFE_IO -o
> > >>
> > /home/yocto/test_arm/tmp/work/x86_64-nativesdk-pokysdk-linux/eglibc-
> > nativesd
> > k-2.12-r13/build-x86_64-pokysdk-linux/stdio-common/vfscanf.o
> > >> -MD -MP -MF
> > >>
> > /home/yocto/test_arm/tmp/work/x86_64-nativesdk-pokysdk-linux/eglibc-
> > nativesd
> > k-2.12-r13/build-x86_64-pokysdk-linux/stdio-common/vfscanf.o.dt
> > >> -MT
> > >>
> > /home/yocto/test_arm/tmp/work/x86_64-nativesdk-pokysdk-linux/eglibc-
> > nativesd
> > k-2.12-r13/build-x86_64-pokysdk-linux/stdio-common/vfscanf.o
> > >> #
> > >> ccache x86_64-pokysdk-linux-gcc
> > >>
> > --sysroot=3D/home/yocto/test_arm/tmp/sysroots/x86_64-nativesdk-pokysdk-
> > linux-t
> > cbootstrap
> > >> vfwscanf.c -c -std=3Dgnu99 -fgnu89-inline -O2 -Wall -Winline
> > >> -Wwrite-strings -fmerge-all-constants -fno-unwind-tables
> > >>
> > -isystem/home/yocto/test_arm/tmp/sysroots/x86_64-nativesdk-pokysdk-
> > linux/opt
> > /poky/0.9+snapshot/sysroots/x86_64-pokysdk-linux/usr/include
> > >> -Wstrict-prototypes -fPIC -fexceptions -I../include
> > >>
> > -I/home/yocto/test_arm/tmp/work/x86_64-nativesdk-pokysdk-
> linux/eglibc-
> > native
> > sdk-2.12-r13/build-x86_64-pokysdk-linux/stdio-common
> > >>
> > @/home/yocto/test_arm/tmp/work/x86_64-nativesdk-pokysdk-linux/eglibc-
> > natives
> > dk-2.12-r13/build-x86_64-pokysdk-linux/includes
> > >> -I.. -I../libio -I. -D_LIBC_REENTRANT -include
> > >> ../include/libc-symbols.h -DPIC -DSHARED -D_IO_MTSAFE_IO -o
> > >>
> > /home/yocto/test_arm/tmp/work/x86_64-nativesdk-pokysdk-linux/eglibc-
> > nativesd
> > k-2.12-r13/build-x86_64-pokysdk-linux/stdio-common/vfwscanf.os
> > >> -MD -MP -MF
> > >>
> > /home/yocto/test_arm/tmp/work/x86_64-nativesdk-pokysdk-linux/eglibc-
> > nativesd
> > k-2.12-r13/build-x86_64-pokysdk-linux/stdio-common/vfwscanf.os.dt
> > >> -MT
> > >>
> > /home/yocto/test_arm/tmp/work/x86_64-nativesdk-pokysdk-linux/eglibc-
> > nativesd
> > k-2.12-r13/build-x86_64-pokysdk-linux/stdio-common/vfwscanf.os
> > >> # /tmp/ccicvOVI.s: Assembler messages: # /tmp/ccicvOVI.s:2957:
> > >> Error: junk `ff' after expression # /tmp/ccicvOVI.s:2957: Error:
> > >> 8-byte relocation cannot be applied to 4-byte field #
> > >> make[2]: ***
> > >>
> > [/home/yocto/test_arm/tmp/work/x86_64-nativesdk-pokysdk-linux/eglibc-
> > natives
> > dk-2.12-r13/build-x86_64-pokysdk-linux/stdio-common/vfwscanf.os]
> > >> Error 1 #
> > >> make[2]: *** Waiting for unfinished jobs....
> > >>
> > >>
> > >>
> > >> _______________________________________________
> > >> poky mailing list
> > >> poky@yoctoproject.org
> > >> https://lists.yoctoproject.org/listinfo/poky
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

