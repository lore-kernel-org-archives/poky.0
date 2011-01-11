Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id BAD664C8085F
	for <poky@yoctoproject.org>; Tue, 11 Jan 2011 06:29:56 -0600 (CST)
Received: by wwb31 with SMTP id 31so25344153wwb.11
	for <poky@yoctoproject.org>; Tue, 11 Jan 2011 04:29:55 -0800 (PST)
Received: by 10.216.68.4 with SMTP id k4mr2807851wed.63.1294748995231;
	Tue, 11 Jan 2011 04:29:55 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id c54sm9660619wer.6.2011.01.11.04.29.53
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Tue, 11 Jan 2011 04:29:53 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1294418164-5124-1-git-send-email-koen@openembedded.org>
Date: Tue, 11 Jan 2011 13:29:52 +0100
Message-Id: <B31A8A60-1500-450A-A58D-1923A98BAF8D@dominion.thruhere.net>
References: <1294418164-5124-1-git-send-email-koen@openembedded.org>
To: poky@yoctoproject.org
X-Mailer: Apple Mail (2.1082)
Subject: Re: [PATCH] wpa-supplicant 0.7: fix GNU HASH QA issue
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
X-List-Received-Date: Tue, 11 Jan 2011 12:29:57 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Ping on both wpa-supplicant patches

Op 7 jan 2011, om 17:36 heeft Koen Kooi het volgende geschreven:

> From: Koen Kooi <koen@dominion.thruhere.net>
>=20
> The recipe was unsetting LDFLAGS, resulting in:
>=20
> NOTE: QA Issue: No GNU_HASH in the elf binary: =
'/OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi=
/wpa-supplicant-0.7.3-r0/packages-split/wpa-supplicant/usr/sbin/wpa_suppli=
cant'
>=20
> Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
> ---
> .../wpa-supplicant/wpa-supplicant-0.7.inc          |    2 +-
> .../wpa-supplicant/wpa-supplicant_0.7.3.bb         |    2 +-
> 2 files changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git =
a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc =
b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc
> index 78ce914..6eda3b1 100644
> --- a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc
> +++ b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant-0.7.inc
> @@ -29,7 +29,7 @@ do_configure () {
>=20
> export EXTRA_CFLAGS =3D "${CFLAGS}"
> do_compile () {
> -	unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
> +	unset CFLAGS CPPFLAGS CXXFLAGS
> 	oe_runmake
> }
>=20
> diff --git =
a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb =
b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb
> index 2d7729c..e4ae019 100644
> --- a/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb
> +++ b/meta/recipes-connectivity/wpa-supplicant/wpa-supplicant_0.7.3.bb
> @@ -1,6 +1,6 @@
> require wpa-supplicant-0.7.inc
>=20
> -PR =3D "r0"
> +PR =3D "r1"
>=20
> SRC_URI[md5sum] =3D "f516f191384a9a546e3f5145c08addda"
> SRC_URI[sha256sum] =3D =
"d0cd50caa85346ccc376dcda5ed3c258eef19a93b3cade39d25760118ad59443"
> --=20
> 1.6.6.1
>=20


