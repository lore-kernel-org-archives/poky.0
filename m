Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id A14324C81065
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 09:02:15 -0600 (CST)
Received: by eyz10 with SMTP id 10so3198427eyz.35
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 07:02:14 -0800 (PST)
Received: by 10.216.29.71 with SMTP id h49mr4732026wea.46.1295362684047;
	Tue, 18 Jan 2011 06:58:04 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id
	f52sm3027446wes.35.2011.01.18.06.58.02
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Tue, 18 Jan 2011 06:58:03 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4e63a8f3d0e84e21436318a5b0e020154cc490b4.1295359004.git.dexuan.cui@intel.com>
Date: Tue, 18 Jan 2011 15:58:02 +0100
Message-Id: <A6B4656D-BF89-4CCC-8D5E-F44CDC3DA6BC@dominion.thruhere.net>
References: <cover.1295359004.git.dexuan.cui@intel.com>
	<4e63a8f3d0e84e21436318a5b0e020154cc490b4.1295359004.git.dexuan.cui@intel.com>
To: Dexuan Cui <dexuan.cui@intel.com>
X-Mailer: Apple Mail (2.1082)
Cc: poky@yoctoproject.org
Subject: Re: [RFC: enhance toolchain bootstrap process: v3: 3/7] gcc-cross-initial, gcc-crosssdk-initial: change CROSS_TARGET_SYS_DIR and insall into new locations
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
X-List-Received-Date: Tue, 18 Jan 2011 15:02:16 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Seeing all those PR bumps, would something like =
http://cgit.openembedded.org/cgit.cgi/meta-openembedded/commit/?id=3D6f164=
7aa (ignore the sysroot patch) be usefull for yocto?

Op 18 jan 2011, om 14:57 heeft Dexuan Cui het volgende geschreven:

> Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
> ---
> meta/recipes-devtools/gcc/gcc-cross-initial.inc    |    2 ++
> .../gcc/gcc-cross-initial_4.3.3.bb                 |    2 +-
> .../gcc/gcc-cross-initial_4.5.1.bb                 |    2 +-
> .../gcc/gcc-crosssdk-initial_4.3.3.bb              |    2 +-
> .../gcc/gcc-crosssdk-initial_4.5.1.bb              |    2 +-
> 5 files changed, 6 insertions(+), 4 deletions(-)
>=20
> diff --git a/meta/recipes-devtools/gcc/gcc-cross-initial.inc =
b/meta/recipes-devtools/gcc/gcc-cross-initial.inc
> index f582de9..4e2e343 100644
> --- a/meta/recipes-devtools/gcc/gcc-cross-initial.inc
> +++ b/meta/recipes-devtools/gcc/gcc-cross-initial.inc
> @@ -2,6 +2,8 @@ DEPENDS =3D "virtual/${TARGET_PREFIX}binutils =
gettext-native ${NATIVEDEPS}"
> PROVIDES =3D "virtual/${TARGET_PREFIX}gcc-initial"
> PACKAGES =3D ""
>=20
> +CROSS_TARGET_SYS_DIR_append =3D ".${PN}"
> +
> # This is intended to be a -very- basic config
> # sysroot is needed in case we use libc-initial
> EXTRA_OECONF =3D =
"--with-local-prefix=3D${STAGING_DIR_TARGET}${target_prefix} \
> diff --git a/meta/recipes-devtools/gcc/gcc-cross-initial_4.3.3.bb =
b/meta/recipes-devtools/gcc/gcc-cross-initial_4.3.3.bb
> index 081b7d6..28ac1ab 100644
> --- a/meta/recipes-devtools/gcc/gcc-cross-initial_4.3.3.bb
> +++ b/meta/recipes-devtools/gcc/gcc-cross-initial_4.3.3.bb
> @@ -1,5 +1,5 @@
> require gcc-cross_${PV}.bb
> require gcc-cross-initial.inc
>=20
> -PR =3D "r4"
> +PR =3D "r5"
>=20
> diff --git a/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb =
b/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb
> index a121782..b2c257d 100644
> --- a/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb
> +++ b/meta/recipes-devtools/gcc/gcc-cross-initial_4.5.1.bb
> @@ -1,5 +1,5 @@
> require gcc-cross_${PV}.bb
> require gcc-cross-initial.inc
>=20
> -PR =3D "r1"
> +PR =3D "r2"
>=20
> diff --git a/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.3.3.bb =
b/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.3.3.bb
> index 5daa31b..b42de47 100644
> --- a/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.3.3.bb
> +++ b/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.3.3.bb
> @@ -1,3 +1,3 @@
> require gcc-cross-initial_${PV}.bb
> require gcc-crosssdk-initial.inc
> -PR =3D "r5"
> +PR =3D "r6"
> diff --git a/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb =
b/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb
> index 0fc5faa..240caf5 100644
> --- a/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb
> +++ b/meta/recipes-devtools/gcc/gcc-crosssdk-initial_4.5.1.bb
> @@ -1,4 +1,4 @@
> require gcc-cross-initial_${PV}.bb
> require gcc-crosssdk-initial.inc
>=20
> -PR =3D "r1"
> +PR =3D "r2"
> --=20
> 1.7.2
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


