Return-Path: <John_Mehaffey@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88926E00C47
	for <poky@yoctoproject.org>; Mon, 31 Mar 2014 15:16:02 -0700 (PDT)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1WUkUq-0006SK-HU from John_Mehaffey@mentor.com ;
	Mon, 31 Mar 2014 15:16:00 -0700
Received: from SVR-ORW-FEM-03.mgc.mentorg.com ([147.34.97.39]) by
	svr-orw-fem-01.mgc.mentorg.com over TLS secured channel with
	Microsoft SMTPSVC(6.0.3790.4675); Mon, 31 Mar 2014 15:16:00 -0700
Received: from NA-MBX-03.mgc.mentorg.com ([fe80::9a:1569:df57:45b8]) by
	SVR-ORW-FEM-03.mgc.mentorg.com ([147.34.97.39]) with mapi id
	14.02.0247.003; Mon, 31 Mar 2014 15:16:00 -0700
From: "Mehaffey, John" <John_Mehaffey@mentor.com>
To: Holger Hans Peter Freyther <holger@freyther.de>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Thread-Topic: [poky] ARM /proc/cpu/alignment with systemd images in dora
Thread-Index: AQHPTSPGc26fPLgvN06ZUOg1kpksgJr7viVA
Date: Mon, 31 Mar 2014 22:15:58 +0000
Message-ID: <371E240E6FC1D44DA5E51EE9DCDCB784DD534E29@NA-MBX-03.mgc.mentorg.com>
References: <20140331205817.GA4987@xiaoyu.lan>
In-Reply-To: <20140331205817.GA4987@xiaoyu.lan>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [147.34.91.1]
MIME-Version: 1.0
X-OriginalArrivalTime: 31 Mar 2014 22:16:00.0421 (UTC)
	FILETIME=[CC0C0D50:01CF4D2E]
Subject: Re: ARM /proc/cpu/alignment with systemd images in dora
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
X-List-Received-Date: Mon, 31 Mar 2014 22:16:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org=
] On Behalf Of Holger Hans Peter Freyther
> Sent: Monday, March 31, 2014 1:58 PM
> To: poky@yoctoproject.org
> Subject: [poky] ARM /proc/cpu/alignment with systemd images in dora
>=20
> Good Evening,
>=20
> I noticed that the "alignment.sh" is not ran on my systemd images. I thin=
k I opened a bug about systemd ignoring ".sh" scripts but that was fixed an=
d also not the main issue here. After looking at src/core/service.c of syst=
emd the rcS.d is not looked at.
>=20
> Can something like the below be included? This will start the alignment i=
n runlevel2 too and will then be executed by systemd. Alternatively one cou=
ld add a proper symlink for the alignment target inside the systemd recipe?
>=20
> Comments?
>=20
> diff --git a/meta/recipes-core/initscripts/initscripts_1.0.bb b/meta/reci=
pes-core/initscripts/initscripts_1.0.bb
> index 50ebb1c..08539a2 100644
> --- a/meta/recipes-core/initscripts/initscripts_1.0.bb
> +++ b/meta/recipes-core/initscripts/initscripts_1.0.bb
> @@ -124,7 +124,7 @@ do_install () {
>         update-rc.d -r ${D} read-only-rootfs-hook.sh start 29 S .
>         update-rc.d -r ${D} devpts.sh start 38 S .
>         if [ "${TARGET_ARCH}" =3D "arm" ]; then
> -               update-rc.d -r ${D} alignment.sh start 06 S .
> +               update-rc.d -r ${D} alignment.sh start 06 S 2 .
>         fi
>         # We wish to have /var/log ready at this stage so execute this af=
ter
>         # populate-volatile.sh

Hi Holger,

The proper way to integrate this into systemd is to create a unit file. Wha=
t must be run before alignment.sh? what things depend on it?
Then depend on it from the proper targets.=20

The workaround you suggest runs the risk of incorrect ordering as things mi=
grate from SysV init.

-mehaf



