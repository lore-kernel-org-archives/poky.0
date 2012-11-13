Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D323BE00348
	for <poky@yoctoproject.org>; Tue, 13 Nov 2012 09:46:44 -0800 (PST)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Tue, 13 Nov 2012 12:46:44 -0500
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Tue, 13 Nov 2012 12:46:42 -0500
Thread-Topic: [poky] Errors attempting to build AT91SAM9x5 BSP
Thread-Index: Ac3BwdUULjI4QcKPRaGMwM5XSrUxrgAA3/HQ
Message-ID: <91586D499ADFD74FBCFB8425266A5DE4012C7CF3282A@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE4012C7CE153F8@pluto.melinkcorp.local>
	<91586D499ADFD74FBCFB8425266A5DE4012C7CF327A4@pluto.melinkcorp.local>
	<7874249.T1W7SIhH85@helios>
In-Reply-To: <7874249.T1W7SIhH85@helios>
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
X-List-Received-Date: Tue, 13 Nov 2012 17:46:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Here is the original bblayers.conf file before I started creating my BSP:

# LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
# changes incompatibly
LCONF_VERSION =3D "6"

BBPATH =3D "${TOPDIR}"
BBFILES ?=3D ""

BBLAYERS ?=3D " \
  /media/sda3/yocto/poky-danny-8.0/meta \
  /media/sda3/yocto/poky-danny-8.0/meta-yocto \
  /media/sda3/yocto/poky-danny-8.0/meta-yocto-bsp \
  "

And here is what it looks like after adding my BSP layer:

# LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
# changes incompatibly
LCONF_VERSION =3D "7"

BBPATH =3D "${TOPDIR}"
BBFILES ?=3D ""

BBLAYERS ?=3D " \
  /media/sda3/yocto/poky-danny-8.0/meta \
  /media/sda3/yocto/poky-danny-8.0/meta-yocto \
  /media/sda3/yocto/poky-danny-8.0/meta-yocto-bsp \
  /media/sda3/yocto/poky-danny-8.0/meta-intellihood-qemu \
  "

Although, I just tried building again after changing the LCONF_VERSION back=
 down to 6, and this time bitbake operates.  I know I'd tried that before a=
nd it hadn't worked.  The only difference that I can think of is that I've =
closed my terminal window and reopened it since my first posting and this o=
ne, which means I had to re-source the oe-init-build-env script.  Is it pos=
sible that this was causing my problems from before?

Thanks,
Bryan

-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]=20
Sent: Tuesday, November 13, 2012 12:11 PM
To: Bryan Evenson
Cc: poky@yoctoproject.org
Subject: Re: [poky] Errors attempting to build AT91SAM9x5 BSP

On Tuesday 13 November 2012 11:26:08 Bryan Evenson wrote:
> I decided to start over with the stable danny tarball instead of using=20
> the Git repository.  I've been able to build a core-image-minimal QEMU=20
> image and run it in QEMU.  After that I created my new BSP using the=20
> yocto-bsp script and added my new BSP to the build/conf/bblayers.conf=20
> file as directed in the BSP Guide.  However, now whenever I try to use=20
> bitbake for anything I get the error message "NOTE: Your=20
> conf/bblayers.conf has been automatically updated. Please re-run=20
> bitbake."  I've tried incrementing the LCONF_VERSION variable in=20
> conf/bblayers.conf and incrementing the CONF_VERSION in=20
> conf/local.conf.  I've also tried issuing "bitbake -f -c clean=20
> core-image-minimal" and I get the same error.  The only way I've been=20
> able to use bitbake again is to remove the line for my new BSP from the B=
BLAYERS variable in conf/bblayers.conf.

What value was LCONF_VERSION at before you removed it? Also, could you send=
 your bblayers.conf file?

Thanks,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

