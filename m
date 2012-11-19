Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C643E0049F
	for <poky@yoctoproject.org>; Mon, 19 Nov 2012 08:35:54 -0800 (PST)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Mon, 19 Nov 2012 11:35:52 -0500
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>, Paul Eggleton
	<paul.eggleton@linux.intel.com>
Date: Mon, 19 Nov 2012 11:35:51 -0500
Thread-Topic: [poky] Errors attempting to build AT91SAM9x5 BSP
Thread-Index: Ac3Bx7KmQ31MKSjQRiKOzTCfW5jlgQABEOCgASlQmnA=
Message-ID: <91586D499ADFD74FBCFB8425266A5DE4012C7CFE841B@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE4012C7CE153F8@pluto.melinkcorp.local>
	<7874249.T1W7SIhH85@helios>
	<91586D499ADFD74FBCFB8425266A5DE4012C7CF3282A@pluto.melinkcorp.local>
	<7874263.lvMpyGKaak@helios>
	<91586D499ADFD74FBCFB8425266A5DE4012C7CF328B4@pluto.melinkcorp.local>
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE4012C7CF328B4@pluto.melinkcorp.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 00CA68D40036DE00CA6A21
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Errors attempting to build AT91SAM9x5 BSP
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 19 Nov 2012 16:35:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

I think I'm building an image that includes my BSP, but I can't get the ima=
ge to run under QEMU.  If I don't include my BSP in the BBLAYERS variable i=
n bblayers.conf, then the resulting built image runs under QEMU.  Here's th=
e steps I took to create a build the BSP.

1.  Downloaded and extracted the poky-danny-8.0 tarball for my Yocto Projec=
t setup.
1.  From my Source Directory, I invoked the BSP builder by calling "yocto-b=
sp create foo-qemu qemu"
2.  Selected option 3 (ARM) for the qemu architecture.
3.  Selected "y" to use the default 3.4 kernel.
4.  Selected "y" to start a new branch for this BSP.
5.  Selected "1" to base the machine on the arm-versatile-926ejs branch.
6.  Selected "y" to include SMP support.
7.  Selected "n" to indicate the BSP does not have a touchscreen.
8.  Selected "n" to indicate the BSP does not have a keyboard.
9.  Copied the configuration from tmp/sysroots/qemuarm/usr/src/kernel/arch/=
arm/configs/vexpress_defconfig as meta-foo-qemu/recipes-kernel/linux/files/=
foo-qemu.cfg.
10.  Added my new BSP to the bblayers.conf file.
11. Called "bitbake -c clean linux-yocto && bitbake core-image-minimal" to =
rebuild the image with my BSP.  My BSP shows up in the Bitbake configuratio=
n parameters.
12. Run my image by calling "runqemu qemuarm".  A few details are printed o=
ut for the QEMU setup, a new window is launched for QEMU but the QEMU windo=
w remains blank.

If I remove my new BSP from bblayers.conf and redo steps 11 and 12, then th=
e image boots just fine under QEMU.  Are there some steps I'm missing in co=
nfiguring my BSP?

Thanks,
Bryan

> -----Original Message-----
> From: poky-bounces@yoctoproject.org [mailto:poky-
> bounces@yoctoproject.org] On Behalf Of Bryan Evenson
> Sent: Tuesday, November 13, 2012 2:17 PM
> To: Paul Eggleton
> Cc: poky@yoctoproject.org
> Subject: Re: [poky] Errors attempting to build AT91SAM9x5 BSP
>=20
> Paul,
>=20
> Thanks for the information.  From my reading of the BSP manual I'd
> thought I was supposed to increment the LCONF_VERSION each time I made
> a change to the bblayers.conf file; I appreciate the clarification.
>=20
> I searched for the error message I was getting, and I think it was
> originating in this section of sanity.bbclass:
>=20
>     # Check bblayers.conf is valid
>     current_lconf =3D sanity_data.getVar('LCONF_VERSION', True)
>     lconf_version =3D sanity_data.getVar('LAYER_CONF_VERSION', True)
>     if current_lconf !=3D lconf_version:
>         try:
>             bb.build.exec_func("check_bblayers_conf", sanity_data)
>             if sanity_data.getVar("SANITY_USE_EVENTS", True) =3D=3D "1":
>                 bb.event.fire(bb.event.SanityCheckFailed("Your
> conf/bblayers.conf has been automatically updated. Please close and re-
> run."), sanity_data)
>                 return
>             else:
>                 bb.note("Your conf/bblayers.conf has been automatically
> updated. Please re-run %s." % os.path.basename(sys.argv[0]))
>                 sys.exit(0)
>         except Exception:
>             messages =3D messages + "Your version of bblayers.conf was
> generated from an older version of bblayers.conf.sample and there have
> been updates made to this file. Please compare the two files and merge
> any changes before continuing.\nMatching the version numbers will
> remove this message.\n\"meld conf/bblayers.conf
> ${COREBASE}/meta*/conf/bblayers.conf.sample\" is a good way to
> visualise the changes.\n"
>=20
> Would it be helpful if the current_lconf !=3D lconf_version check changed
> to have different messages when current_lconf > lconf_version and when
> current_lcong < lconf_version?
>=20
> Thanks,
> Bryan
>=20
> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: Tuesday, November 13, 2012 12:53 PM
> To: Bryan Evenson
> Cc: poky@yoctoproject.org
> Subject: Re: [poky] Errors attempting to build AT91SAM9x5 BSP
>=20
> On Tuesday 13 November 2012 12:46:42 Bryan Evenson wrote:
> > Here is the original bblayers.conf file before I started creating my
> BSP:
> >
> > # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
> #
> > changes incompatibly LCONF_VERSION =3D "6"
> >
> > BBPATH =3D "${TOPDIR}"
> > BBFILES ?=3D ""
> >
> > BBLAYERS ?=3D " \
> >   /media/sda3/yocto/poky-danny-8.0/meta \
> >   /media/sda3/yocto/poky-danny-8.0/meta-yocto \
> >   /media/sda3/yocto/poky-danny-8.0/meta-yocto-bsp \
> >   "
> >
> > And here is what it looks like after adding my BSP layer:
> >
> > # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
> #
> > changes incompatibly LCONF_VERSION =3D "7"
> >
> > BBPATH =3D "${TOPDIR}"
> > BBFILES ?=3D ""
> >
> > BBLAYERS ?=3D " \
> >   /media/sda3/yocto/poky-danny-8.0/meta \
> >   /media/sda3/yocto/poky-danny-8.0/meta-yocto \
> >   /media/sda3/yocto/poky-danny-8.0/meta-yocto-bsp \
> >   /media/sda3/yocto/poky-danny-8.0/meta-intellihood-qemu \
> >   "
> >
> > Although, I just tried building again after changing the
> LCONF_VERSION
> > back down to 6, and this time bitbake operates.  I know I'd tried
> that
> > before and it hadn't worked.  The only difference that I can think of
> > is that I've closed my terminal window and reopened it since my first
> > posting and this one, which means I had to re-source the
> > oe-init-build-env script.  Is it possible that this was causing my
> problems from before?
>=20
> You shouldn't increase LCONF_VERSION unless LAYER_CONF_VERSION
> increases, and certainly it shouldn't be increased beyond the value of
> LAYER_CONF_VERSION (currently this is 6 in meta-yocto, 5 in OE-Core);
> why it would be telling you it had updated it if you did do that I
> don't know, that's certainly not intended behaviour.
>=20
> Cheers,
> Paul
>=20
> --
>=20
> Paul Eggleton
> Intel Open Source Technology Centre
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

