Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id B9C9E4C804D4
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 11:17:37 -0500 (CDT)
Received: by wwd20 with SMTP id 20so1048562wwd.11
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 09:17:36 -0700 (PDT)
Received: by 10.216.245.4 with SMTP id n4mr976209wer.83.1303316256417;
	Wed, 20 Apr 2011 09:17:36 -0700 (PDT)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id y29sm662407wbd.55.2011.04.20.09.17.35
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 20 Apr 2011 09:17:35 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1303312153.23006.5.camel@doubt>
Date: Wed, 20 Apr 2011 18:17:34 +0200
Message-Id: <B83D70C3-A6F2-4318-8678-5E50929C072B@dominion.thruhere.net>
References: <cover.1302845703.git.dongxiao.xu@intel.com>
	<1303312153.23006.5.camel@doubt>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1084)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 00/14][PULL] connectivity/multimedia recipe upgrade, Dongxiao, 2011/04/15
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
X-List-Received-Date: Wed, 20 Apr 2011 16:17:38 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 20 apr 2011, om 17:09 heeft Darren Hart het volgende geschreven:

> On Fri, 2011-04-15 at 13:36 +0800, Dongxiao Xu wrote:
>> From: Dongxiao Xu <dongxiao.xu@intel.com>
>>=20
>> Hi Saul,
>>=20
>> This pull request upgrades some connectivity and multimedia recipes, =
please help to review and pull.
>=20
> How have these upgrades been tested? In particular, has rygel from
> meta-demo been shown to work using the updated libraries?

There was a new rygel release today, a nice opportunity to test the =
updates :)

>=20
> --
> Darren
>=20
>>=20
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>>  Branch: dxu4/upgrade
>>  Browse: =
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Ddxu4/upgrade
>>=20
>> Thanks,
>>    Dongxiao Xu <dongxiao.xu@intel.com>
>> ---
>>=20
>>=20
>> Dongxiao Xu (14):
>>  gstreamer: upgrade to vesion 0.10.32
>>  gst-plugins-base: upgrade to version 0.10.32
>>  gst-plugins-good: upgrade to version 0.10.28
>>  gst-plugins-bad: upgrade to version 0.10.21
>>  gst-plugins-ugly: upgrade to version 0.10.17
>>  ofono: upgrade to version 0.45
>>  alsa-lib: upgrade to version 1.0.24.1
>>  alsa-utils: upgrade to version 1.0.24.2
>>  telepathy-glib: upgrade to version 0.14.3
>>  telepathy-idle: upgrade to version 0.1.8
>>  telepathy-mission-control: upgrade to version 5.7.9
>>  gssdp: upgrade to version 0.10.0
>>  gupnp: upgrade to version 0.16.0
>>  distro_tracking_fields: update for gstreamer, gupnp, telepathy-glib,
>>    etc
>>=20
>> .../conf/distro/include/distro_tracking_fields.inc |  106 =
++++++++++----------
>> .../{files =3D> gssdp-0.10.0}/introspection.patch    |    5 +-
>> .../gupnp/{gssdp_0.9.0.bb =3D> gssdp_0.10.0.bb}      |    4 +-
>> .../gupnp/{gupnp_0.14.0.bb =3D> gupnp_0.16.0.bb}     |    7 +-
>> meta/recipes-connectivity/ofono/ofono_0.37.bb      |    9 --
>> meta/recipes-connectivity/ofono/ofono_0.45.bb      |    9 ++
>> ...thy-glib_0.13.6.bb =3D> telepathy-glib_0.14.3.bb} |    4 +-
>> ...pathy-idle_0.1.7.bb =3D> telepathy-idle_0.1.8.bb} |    4 +-
>> ...5.7.1.bb =3D> telepathy-mission-control_5.7.9.bb} |    4 +-
>> .../fix-tstamp-declaration.patch                   |    2 +
>> .../unbreak_plugindir.patch                        |    2 +
>> .../{alsa-lib_1.0.23.bb =3D> alsa-lib_1.0.24.1.bb}   |    4 +-
>> .../ncursesfix.patch                               |   22 ++--
>> ...alsa-utils_1.0.23.bb =3D> alsa-utils_1.0.24.2.bb} |    4 +-
>> ...s-bad_0.10.20.bb =3D> gst-plugins-bad_0.10.21.bb} |    6 +-
>> .../gst-plugins-base-tremor.patch                  |    2 +
>> ...base_0.10.31.bb =3D> gst-plugins-base_0.10.32.bb} |    6 +-
>> ...good_0.10.26.bb =3D> gst-plugins-good_0.10.28.bb} |    6 +-
>> ...ugly_0.10.16.bb =3D> gst-plugins-ugly_0.10.17.bb} |    3 +
>> .../check_fix.patch                                |    2 +
>> .../gst-inspect-check-error.patch                  |    2 +
>> .../gstregistrybinary.c                            |    0
>> .../gstregistrybinary.h                            |    0
>> .../{gstreamer_0.10.31.bb =3D> gstreamer_0.10.32.bb} |    4 +-
>> 24 files changed, 116 insertions(+), 101 deletions(-)
>> rename meta/recipes-connectivity/gupnp/{files =3D> =
gssdp-0.10.0}/introspection.patch (97%)
>> rename meta/recipes-connectivity/gupnp/{gssdp_0.9.0.bb =3D> =
gssdp_0.10.0.bb} (83%)
>> rename meta/recipes-connectivity/gupnp/{gupnp_0.14.0.bb =3D> =
gupnp_0.16.0.bb} (85%)
>> delete mode 100644 meta/recipes-connectivity/ofono/ofono_0.37.bb
>> create mode 100644 meta/recipes-connectivity/ofono/ofono_0.45.bb
>> rename meta/recipes-connectivity/telepathy/{telepathy-glib_0.13.6.bb =
=3D> telepathy-glib_0.14.3.bb} (80%)
>> rename meta/recipes-connectivity/telepathy/{telepathy-idle_0.1.7.bb =
=3D> telepathy-idle_0.1.8.bb} (81%)
>> rename =
meta/recipes-connectivity/telepathy/{telepathy-mission-control_5.7.1.bb =
=3D> telepathy-mission-control_5.7.9.bb} (92%)
>> rename meta/recipes-multimedia/alsa/{alsa-lib-1.0.23 =3D> =
alsa-lib-1.0.24.1}/fix-tstamp-declaration.patch (95%)
>> rename meta/recipes-multimedia/alsa/{alsa-lib-1.0.23 =3D> =
alsa-lib-1.0.24.1}/unbreak_plugindir.patch (91%)
>> rename meta/recipes-multimedia/alsa/{alsa-lib_1.0.23.bb =3D> =
alsa-lib_1.0.24.1.bb} (91%)
>> rename meta/recipes-multimedia/alsa/{alsa-utils-1.0.23 =3D> =
alsa-utils-1.0.24.2}/ncursesfix.patch (70%)
>> rename meta/recipes-multimedia/alsa/{alsa-utils_1.0.23.bb =3D> =
alsa-utils_1.0.24.2.bb} (95%)
>> rename meta/recipes-multimedia/gstreamer/{gst-plugins-bad_0.10.20.bb =
=3D> gst-plugins-bad_0.10.21.bb} (86%)
>> rename meta/recipes-multimedia/gstreamer/{gst-plugins-base-0.10.31 =3D>=
 gst-plugins-base-0.10.32}/gst-plugins-base-tremor.patch (94%)
>> rename meta/recipes-multimedia/gstreamer/{gst-plugins-base_0.10.31.bb =
=3D> gst-plugins-base_0.10.32.bb} (86%)
>> rename meta/recipes-multimedia/gstreamer/{gst-plugins-good_0.10.26.bb =
=3D> gst-plugins-good_0.10.28.bb} (82%)
>> rename meta/recipes-multimedia/gstreamer/{gst-plugins-ugly_0.10.16.bb =
=3D> gst-plugins-ugly_0.10.17.bb} (85%)
>> rename meta/recipes-multimedia/gstreamer/{gstreamer-0.10.31 =3D> =
gstreamer-0.10.32}/check_fix.patch (93%)
>> rename meta/recipes-multimedia/gstreamer/{gstreamer-0.10.31 =3D> =
gstreamer-0.10.32}/gst-inspect-check-error.patch (96%)
>> rename meta/recipes-multimedia/gstreamer/{gstreamer-0.10.31 =3D> =
gstreamer-0.10.32}/gstregistrybinary.c (100%)
>> rename meta/recipes-multimedia/gstreamer/{gstreamer-0.10.31 =3D> =
gstreamer-0.10.32}/gstregistrybinary.h (100%)
>> rename meta/recipes-multimedia/gstreamer/{gstreamer_0.10.31.bb =3D> =
gstreamer_0.10.32.bb} (91%)
>>=20
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>=20
> --=20
> Darren Hart
> Yocto Linux Kernel
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


