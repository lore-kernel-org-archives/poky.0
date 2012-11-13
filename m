Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A00CE00348
	for <poky@yoctoproject.org>; Tue, 13 Nov 2012 11:17:08 -0800 (PST)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Tue, 13 Nov 2012 14:17:08 -0500
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Tue, 13 Nov 2012 14:17:06 -0500
Thread-Topic: [poky] Errors attempting to build AT91SAM9x5 BSP
Thread-Index: Ac3Bx7KmQ31MKSjQRiKOzTCfW5jlgQABEOCg
Message-ID: <91586D499ADFD74FBCFB8425266A5DE4012C7CF328B4@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE4012C7CE153F8@pluto.melinkcorp.local>
	<7874249.T1W7SIhH85@helios>
	<91586D499ADFD74FBCFB8425266A5DE4012C7CF3282A@pluto.melinkcorp.local>
	<7874263.lvMpyGKaak@helios>
In-Reply-To: <7874263.lvMpyGKaak@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Tue, 13 Nov 2012 19:17:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Paul,

Thanks for the information.  From my reading of the BSP manual I'd thought =
I was supposed to increment the LCONF_VERSION each time I made a change to =
the bblayers.conf file; I appreciate the clarification.

I searched for the error message I was getting, and I think it was originat=
ing in this section of sanity.bbclass:

    # Check bblayers.conf is valid
    current_lconf =3D sanity_data.getVar('LCONF_VERSION', True)
    lconf_version =3D sanity_data.getVar('LAYER_CONF_VERSION', True)
    if current_lconf !=3D lconf_version:
        try:
            bb.build.exec_func("check_bblayers_conf", sanity_data)
            if sanity_data.getVar("SANITY_USE_EVENTS", True) =3D=3D "1":
                bb.event.fire(bb.event.SanityCheckFailed("Your conf/bblayer=
s.conf has been automatically updated. Please close and re-run."), sanity_d=
ata)
                return
            else:
                bb.note("Your conf/bblayers.conf has been automatically upd=
ated. Please re-run %s." % os.path.basename(sys.argv[0]))
                sys.exit(0)
        except Exception:
            messages =3D messages + "Your version of bblayers.conf was gene=
rated from an older version of bblayers.conf.sample and there have been upd=
ates made to this file. Please compare the two files and merge any changes =
before continuing.\nMatching the version numbers will remove this message.\=
n\"meld conf/bblayers.conf ${COREBASE}/meta*/conf/bblayers.conf.sample\" is=
 a good way to visualise the changes.\n"

Would it be helpful if the current_lconf !=3D lconf_version check changed t=
o have different messages when current_lconf > lconf_version and when curre=
nt_lcong < lconf_version?

Thanks,
Bryan

-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]=20
Sent: Tuesday, November 13, 2012 12:53 PM
To: Bryan Evenson
Cc: poky@yoctoproject.org
Subject: Re: [poky] Errors attempting to build AT91SAM9x5 BSP

On Tuesday 13 November 2012 12:46:42 Bryan Evenson wrote:
> Here is the original bblayers.conf file before I started creating my BSP:
>=20
> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
> # changes incompatibly
> LCONF_VERSION =3D "6"
>=20
> BBPATH =3D "${TOPDIR}"
> BBFILES ?=3D ""
>=20
> BBLAYERS ?=3D " \
>   /media/sda3/yocto/poky-danny-8.0/meta \
>   /media/sda3/yocto/poky-danny-8.0/meta-yocto \
>   /media/sda3/yocto/poky-danny-8.0/meta-yocto-bsp \
>   "
>=20
> And here is what it looks like after adding my BSP layer:
>=20
> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
> # changes incompatibly
> LCONF_VERSION =3D "7"
>=20
> BBPATH =3D "${TOPDIR}"
> BBFILES ?=3D ""
>=20
> BBLAYERS ?=3D " \
>   /media/sda3/yocto/poky-danny-8.0/meta \
>   /media/sda3/yocto/poky-danny-8.0/meta-yocto \
>   /media/sda3/yocto/poky-danny-8.0/meta-yocto-bsp \
>   /media/sda3/yocto/poky-danny-8.0/meta-intellihood-qemu \
>   "
>=20
> Although, I just tried building again after changing the LCONF_VERSION ba=
ck
> down to 6, and this time bitbake operates.  I know I'd tried that before
> and it hadn't worked.  The only difference that I can think of is that I'=
ve
> closed my terminal window and reopened it since my first posting and this
> one, which means I had to re-source the oe-init-build-env script.  Is it
> possible that this was causing my problems from before?

You shouldn't increase LCONF_VERSION unless LAYER_CONF_VERSION increases, a=
nd=20
certainly it shouldn't be increased beyond the value of LAYER_CONF_VERSION=
=20
(currently this is 6 in meta-yocto, 5 in OE-Core); why it would be telling =
you=20
it had updated it if you did do that I don't know, that's certainly not=20
intended behaviour.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

