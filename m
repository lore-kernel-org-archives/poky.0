Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id D11E24C8009D
	for <poky@yoctoproject.org>; Thu, 17 Mar 2011 19:42:52 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 17 Mar 2011 17:42:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,202,1299484800"; d="scan'208";a="614419112"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga002.jf.intel.com with ESMTP; 17 Mar 2011 17:42:51 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 18 Mar 2011 08:42:02 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 18 Mar 2011 08:42:00 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Mark Hatle <mark.hatle@windriver.com>, "Zhai, Edwin" <edwin.zhai@intel.com>
Date: Fri, 18 Mar 2011 08:41:58 +0800
Thread-Topic: [poky] [PATCH 1/1] qemu: Use mesa's libGL rather than nVidia's
	to	avoid segfault of qemu
Thread-Index: AcvktIAYTFBPrX11S6O0KikQUL8M1wAT/LOQ
Message-ID: <625BA99ED14B2D499DC4E29D8138F1505834F2B2F0@shsmsx502.ccr.corp.intel.com>
References: <cover.1300352186.git.edwin.zhai@intel.com>
	<f596757000465a4b8350e16f21553a23b8bbedfa.1300352186.git.edwin.zhai@intel.com>
	<4D8222A7.8000409@windriver.com>
In-Reply-To: <4D8222A7.8000409@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] qemu: Use mesa's libGL rather than nVidia's to	avoid segfault of qemu
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
X-List-Received-Date: Fri, 18 Mar 2011 00:42:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Mark Hatle
> Sent: Thursday, March 17, 2011 11:03 PM
>=20
> I reworked the patch slightly.. It's available on poky-contrib
> mhatle/qemu-workaround.
>=20
> Specifically I changed:
> - the warning message to make clarify it a bit.
> - Changed the preload to be "libGL.so", so the rt-linker will now search =
for it
> (/usr/lib/libGL.so may be wrong on some systems where /usr/lib64 is the
> default
> library path)

Just double confirm here. You are sure that just "libGL.so" will hit /usr/l=
ib/libGL.so
instead of the nvidia proprietary one, right? I'm interesting how nvidia=20
proprietary driver is linked to qemu binary then? I can understand why Edwi=
n
originally use full path to make sure default one being used, but of course=
 it may
be wrong as you said on some system.

> - Added a second check to see if the workaround worked or not, if it didn=
't add
> a second warning message
> - To the QEMU run line, add "stty sane" in the case of a failure.  Otherw=
ise
> QEMU leaves the terminal/console in a confused state.
>=20
> Can you please verify that this still works on the Ubuntu systems and tha=
t I
> didn't miss anything/break anything else?  If so I think this is the vers=
ion we
> should go with.

Edwin is out of office in the morning, and he will confirm them once he's b=
ack.

Thanks
Kevin

>=20
> --Mark
>=20
> On 3/17/11 7:22 AM, Zhai Edwin wrote:
> > From: Zhai Edwin <edwin.zhai@intel.com>
> >
> > Proprietary nVidia driver introduce its own libGL that precede mesa's.
> > qemu has segfault if linked with it. This fix try to use mesa's libGL
> > if ldd find qemu linked with nVidia libGL.
> >
> > [YOCTO #649]
> > [YOCTO #698]
> >
> >
> > Signed-off-by: Zhai Edwin <edwin.zhai@intel.com>
> > ---
> >  scripts/poky-qemu-internal |   16 +++++++++++++++-
> >  1 files changed, 15 insertions(+), 1 deletions(-)
> >
> > diff --git a/scripts/poky-qemu-internal b/scripts/poky-qemu-internal
> > index 3638a65..1f09fe7 100755
> > --- a/scripts/poky-qemu-internal
> > +++ b/scripts/poky-qemu-internal
> > @@ -436,10 +436,24 @@ else
> >      echo "Warning: distccd not present, no distcc support loaded."
> >  fi
> >
> > +# qemu got segfault if linked with nVidia's libgl
> > +GL_LD_PRELOAD=3D$LD_PRELOAD
> > +
> > +if ldd $QEMUBIN | grep -i nvidia &> /dev/null
> > +then
> > +    echo "************** !!!Warning!!! **************
> > +    You installed nVidia's libGL.so that probably lead qemu segfault!
> > +    Pls. uninstall proprietary nVidia driver or make mesa libgl preced=
e
> nvidia's."
> > +
> > +    # To avoid segfault of qemu, skip nVidia's libGL and use mesa's in=
stead
> > +    echo "Skip nVidia's libGL!"
> > +    GL_LD_PRELOAD=3D"/usr/lib/libGL.so $LD_PRELOAD"
> > +fi
> > +
> >  echo "Running $QEMU..."
> >  # -no-reboot is a mandatory option - see bug #100
> >  echo $QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS
> -no-reboot $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT --append
> '"'$KERNCMDLINE $SCRIPT_KERNEL_OPT'"'
> > -$QEMUBIN -kernel $KERNEL $QEMUOPTIONS $SERIALOPTS -no-reboot
> $SCRIPT_QEMU_OPT $SCRIPT_QEMU_EXTRA_OPT --append "$KERNCMDLINE
> $SCRIPT_KERNEL_OPT" || /bin/true
> > +LD_PRELOAD=3D"$GL_LD_PRELOAD" $QEMUBIN -kernel $KERNEL
> $QEMUOPTIONS $SERIALOPTS -no-reboot $SCRIPT_QEMU_OPT
> $SCRIPT_QEMU_EXTRA_OPT --append "$KERNCMDLINE
> $SCRIPT_KERNEL_OPT" || /bin/true
> >
> >  cleanup
> >
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

