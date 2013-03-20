Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6634E00740
	for <poky@yoctoproject.org>; Wed, 20 Mar 2013 12:37:31 -0700 (PDT)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Wed, 20 Mar 2013 15:37:31 -0400
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 20 Mar 2013 15:35:54 -0400
Thread-Topic: [poky] Building custom Linux kernel with own layer
Thread-Index: Ac4ljKy12KYQ7hFhTE6lwBBoQ8t+/AAFHGjA
Message-ID: <91586D499ADFD74FBCFB8425266A5DE40139F932D6B2@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE40139F932D55A@pluto.melinkcorp.local>
	<CADkTA4MkS3ChZJF8Z+bO9UFF7LOneO6RsZAqHSVyjgnVQw9tQw@mail.gmail.com>
In-Reply-To: <CADkTA4MkS3ChZJF8Z+bO9UFF7LOneO6RsZAqHSVyjgnVQw9tQw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 01C2C5D6003F3201C2C723
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Building custom Linux kernel with own layer
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
X-List-Received-Date: Wed, 20 Mar 2013 19:37:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@gmail.com]
> Sent: Wednesday, March 20, 2013 1:02 PM
> To: Bryan Evenson
> Cc: poky@yoctoproject.org
> Subject: Re: [poky] Building custom Linux kernel with own layer
>=20
> On Wed, Mar 20, 2013 at 11:59 AM, Bryan Evenson
> <bevenson@melinkcorp.com> wrote:
> > I have an Atmel AT91SAM9G25 based board and have been using the
> Classic OpenEmbedded development tree for my device.  I am working on
> switching to using the Poky distribution.  I found a Yocto layer that
> someone else had started here: https://github.com/baseapp/meta-
> atmel/tree/yocto.  I would like to use this layer as a starting point
> and go from there.  The layer looks to be setup to build kernel 2.6.39
> (as that is the kernel I am currently using), but that's not what's
> happening on my system.  I would like some help in figuring out what
> needs to change with the layer or my setup to build the 2.6.39 kernel.
> >
> > I am using the stable poky-danny-8.0 release (downloaded tarball).
> Under the poky-danny-8.0 folder, I cloned the meta-atmel layer that I
> referred to above.  I changed my bblayers.conf to include the meta-
> atmel layer.  When I bitbake linux-yocto, here's what I see for my
> build configuration:
> >
> > Build Configuration:
> > BB_VERSION        =3D "1.16.0"
> > TARGET_ARCH       =3D "arm"
> > TARGET_OS         =3D "linux-gnueabi"
> > MACHINE           =3D "qemuarm"
> > DISTRO            =3D "poky"
> > DISTRO_VERSION    =3D "1.3"
> > TUNE_FEATURES     =3D "armv5 dsp thumb arm926ejs"
> > TARGET_FPU        =3D "soft"
> > meta
> > meta-yocto
> > meta-yocto-bsp    =3D "<unknown>:<unknown>"
> > meta-atmel        =3D "yocto:80336b72180283bfd5cf5f674e8c1081deede72a"
> >
> > and it builds
> 3.4.11+git1+a201268353c030d9fafe00f2041976f7437d9386_1+8ee53c3b82ada3cd
> fd7d25f07d3975834ac9a9b2-r4.3.  From looking at the meta-atmel layer, I
> think it should be overriding the linux-yocto settings from the other
> layers.   What am I missing?
>=20
> You need to set the preferred provider for your BSP to be your linux-
> custom recipe (or whatever you call it, you don't need to leave it
> called 'linux-yocto-custom').
> If you've done that, and are still seeing 3.4.x in the version number,
> chances are the recipe simply isn't overriding the right variables ..
> and a peek at the recipe would figure that out quickly.
>=20
> Bruce

Bruce,

The preferred provider was setup for the BSP already.  But, with the pointe=
rs I tracked down the problems.  First, with the way everything was named i=
n the layer I needed to call "bitbake linux-yocto-custom", not "bitbake lin=
ux-yocto".  Then I'd made a mistake in specifying the MACHINE in my local.c=
onf file.  The machine I'm using from the meta-atmel layer is the at91sam9g=
25ek machine.  I'd correctly put the line "MACHINE ?=3D at91sam9g25ek" in m=
y local.conf file.  However, I forgot to comment out the line earlier in th=
e file that was setting the machine to qemuarm.  Once I got those two fixes=
 sorted out, it's now building a 2.6.39 kernel like I wanted.

Thanks,
Bryan

>=20
> >
> > Thanks,
> > Bryan
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
>=20
>=20
>=20
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end"

