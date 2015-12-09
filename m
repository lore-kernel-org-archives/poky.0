Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0412DE00AB9; Wed,  9 Dec 2015 07:46:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D077E00404
	for <poky@yoctoproject.org>; Wed,  9 Dec 2015 07:45:56 -0800 (PST)
Received: by wmec201 with SMTP id c201so267039901wme.0
	for <poky@yoctoproject.org>; Wed, 09 Dec 2015 07:45:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=KL03g1kjiYiMfSAyGjLPXKw0wFMyIrqDH+/b10+kdl4=;
	b=WXoUNYtBQimzxuX9Q5nbpBLSmbCqloJBYSdGr3V+eoJmzzZPD33EtCuFABo8Or1u2U
	Zx5ZtBae5Me+Z933zcT6ndTy5XKppOvUxlZUySyBkeLppY51EQJXahbmru6fUyuLgQKS
	xZaLpgDHso9rOJdjLnFEDJY9tfIaToqaS/2gPeyJIbxv2Ww7hkNMYfMXcmWX68T8OnOR
	1OLyhaKwVcAIGVJb7l8vX7jlKzLcIyf7REjIJNzJJqFFwrAh83C9ns3/Dc0+9QI7AZMZ
	aturVjzKhNI1020brGYGRuLk33MF6alj9lKP5FqcpkrAn/0CT3/D6kdcOd8MBNfVKFGH
	l+wQ==
X-Received: by 10.28.147.129 with SMTP id v123mr12282454wmd.98.1449675955191; 
	Wed, 09 Dec 2015 07:45:55 -0800 (PST)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id 67sm26851214wmm.6.2015.12.09.07.45.54
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 09 Dec 2015 07:45:54 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Wed, 9 Dec 2015 16:47:37 +0100
To: Cristian Bercaru <cristian.bercaru@windriver.com>
Message-ID: <20151209154737.GD2246@jama>
References: <cover.1449248342.git.cristian.bercaru@windriver.com>
	<4db530774858b05a405f392b34ab11345871fbb9.1449248342.git.cristian.bercaru@windriver.com>
MIME-Version: 1.0
In-Reply-To: <4db530774858b05a405f392b34ab11345871fbb9.1449248342.git.cristian.bercaru@windriver.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Daniel Dragomir <daniel.dragomir@windriver.com>, poky@yoctoproject.org
Subject: Re: [PATCH] add tunings for 32-bit ARMv8-a
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
X-List-Received-Date: Wed, 09 Dec 2015 15:46:00 -0000
X-Groupsio-MsgNum: 10189
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="G6nVm6DDWH/FONJq"
Content-Disposition: inline

--G6nVm6DDWH/FONJq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 04, 2015 at 07:20:42PM +0200, Cristian Bercaru wrote:
> This patch adds tunes for 32-bit armv8 platforms. The used can select
> the vector floating-point instruction set: vfpv3, vfpv4 or fp-armv8
> and the Neon, crc and crypto extensions.

Wrong ML, it belongs to oe-core ML.

Please check this patchset:
http://git.openembedded.org/openembedded-core-contrib/log/?h=3Djansa/tune3
and test script provided in:
http://git.openembedded.org/openembedded-core-contrib/log/?h=3Djansa/tune2-=
test

It was sent couple months ago, you can find the discussion in various
threads, e.g.:
http://lists.openembedded.org/pipermail/openembedded-core/2015-October/1113=
18.html
http://lists.openembedded.org/pipermail/openembedded-core/2015-November/112=
907.html

It fixes some of these issues and simplifies implementing the rest.

> Signed-off-by: Cristian Bercaru <cristian.bercaru@windriver.com>
> ---
>  meta/conf/machine/include/arm/arch-armv7a.inc      |    1 -
>  meta/conf/machine/include/arm/arch-armv8a.inc      |   65 ++++++++++++++=
++++++
>  meta/conf/machine/include/arm/feature-arm-neon.inc |    3 -
>  meta/conf/machine/include/arm/feature-arm-vfp.inc  |   59 ++++++++++++++=
----
>  4 files changed, 112 insertions(+), 16 deletions(-)
>  create mode 100644 meta/conf/machine/include/arm/arch-armv8a.inc
>  delete mode 100644 meta/conf/machine/include/arm/feature-arm-neon.inc
>=20
> diff --git a/meta/conf/machine/include/arm/arch-armv7a.inc b/meta/conf/ma=
chine/include/arm/arch-armv7a.inc
> index d3b6f64..ac85fda 100644
> --- a/meta/conf/machine/include/arm/arch-armv7a.inc
> +++ b/meta/conf/machine/include/arm/arch-armv7a.inc
> @@ -6,7 +6,6 @@ TUNE_CCARGS .=3D "${@bb.utils.contains("TUNE_FEATURES", "=
armv7a", " -march=3Darmv7-a
>  MACHINEOVERRIDES =3D. "${@bb.utils.contains("TUNE_FEATURES", "armv7a", "=
armv7a:", "" ,d)}"
> =20
>  require conf/machine/include/arm/arch-armv6.inc
> -require conf/machine/include/arm/feature-arm-neon.inc
> =20
>  # Little Endian base configs
>  AVAILTUNES +=3D "armv7a armv7at armv7a-vfpv3d16 armv7at-vfpv3d16 armv7a-=
vfpv3 armv7at-vfpv3 armv7a-neon armv7at-neon"
> diff --git a/meta/conf/machine/include/arm/arch-armv8a.inc b/meta/conf/ma=
chine/include/arm/arch-armv8a.inc
> new file mode 100644
> index 0000000..1b062b8
> --- /dev/null
> +++ b/meta/conf/machine/include/arm/arch-armv8a.inc
> @@ -0,0 +1,65 @@
> +DEFAULTTUNE ?=3D "armv8a"
> +
> +TUNEVALID[armv8a] =3D "Enable instructions for ARMv8-a"
> +TUNEVALID[crc] =3D "Enable CRC instrucitons for ARMv8-a"
> +TUNECONFLICTS[armv8a] =3D "armv4 armv5 armv6 armv7 armv7a"
> +TUNE_CCARGS .=3D "${@bb.utils.contains("TUNE_FEATURES", "armv8a", " -mar=
ch=3Darmv8-a", "", d)}"
> +TUNE_CCARGS .=3D "${@bb.utils.contains("TUNE_FEATURES", "crc", "+crc", "=
", d)}"
> +MACHINEOVERRIDES =3D. "${@bb.utils.contains("TUNE_FEATURES", "armv8a", "=
armv8a:", "" ,d)}"
> +
> +require conf/machine/include/arm/arch-armv7a.inc
> +
> +# Little Endian base configs
> +AVAILTUNES +=3D "armv8a armv8a-vfpv3 armv8a-neon armv8a-vfpv4 armv8a-neo=
n-vfpv4 armv8a-fp-armv8 armv8a-neon-fp-armv8 armv8a-crypto-neon-fp-armv8"
> +ARMPKGARCH_tune-armv8a ?=3D "armv8a"
> +ARMPKGARCH_tune-armv8a-vfpv3 ?=3D "armv8a"
> +ARMPKGARCH_tune-armv8a-neon ?=3D "armv8a"
> +ARMPKGARCH_tune-armv8a-vfpv4 ?=3D "armv8a"
> +ARMPKGARCH_tune-armv8a-neon-vfpv4 ?=3D "armv8a"
> +ARMPKGARCH_tune-armv8a-fp-armv8 ?=3D "armv8a"
> +ARMPKGARCH_tune-armv8a-neon-fp-armv8 ?=3D "armv8a"
> +ARMPKGARCH_tune-armv8a-crypto-neon-fp-armv8 ?=3D "armv8a"
> +TUNE_FEATURES_tune-armv8a ?=3D "arm armv8a vfp"
> +TUNE_FEATURES_tune-armv8a-vfpv3 ?=3D "${TUNE_FEATURES_tune-armv8a} vfpv3"
> +TUNE_FEATURES_tune-armv8a-neon ?=3D "${TUNE_FEATURES_tune-armv8a} neon"
> +TUNE_FEATURES_tune-armv8a-vfpv4 ?=3D "${TUNE_FEATURES_tune-armv8a} vfpv4"
> +TUNE_FEATURES_tune-armv8a-neon-vfpv4 ?=3D "${TUNE_FEATURES_tune-armv8a} =
neon vfpv4"
> +TUNE_FEATURES_tune-armv8a-fp-armv8 ?=3D "${TUNE_FEATURES_tune-armv8a} fp=
-armv8"
> +TUNE_FEATURES_tune-armv8a-neon-fp-armv8 ?=3D "${TUNE_FEATURES_tune-armv8=
a} neon fp-armv8"
> +TUNE_FEATURES_tune-armv8a-crypto-neon-fp-armv8 ?=3D "${TUNE_FEATURES_tun=
e-armv8a} crypto neon fp-armv8"
> +PACKAGE_EXTRA_ARCHS_tune-armv8a =3D "${PACKAGE_EXTRA_ARCHS_tune-armv7a} =
armv8a armv8a-vfp"
> +PACKAGE_EXTRA_ARCHS_tune-armv8a-vfpv3 =3D "${PACKAGE_EXTRA_ARCHS_tune-ar=
mv8a} armv8a-vfp-vfpv3"
> +PACKAGE_EXTRA_ARCHS_tune-armv8a-neon =3D "${PACKAGE_EXTRA_ARCHS_tune-arm=
v8a-vfpv3} armv8a-vfp-neon"
> +PACKAGE_EXTRA_ARCHS_tune-armv8a-vfpv4 =3D "${PACKAGE_EXTRA_ARCHS_tune-ar=
mv8a-vfpv3} armv8a-vfp-vfpv4"
> +PACKAGE_EXTRA_ARCHS_tune-armv8a-neon-vfpv4 =3D "${PACKAGE_EXTRA_ARCHS_tu=
ne-armv8a-vfpv4} armv8a-vfp-neon armv8a-vfp-neon-vfpv4"
> +PACKAGE_EXTRA_ARCHS_tune-armv8a-fp-armv8 =3D "${PACKAGE_EXTRA_ARCHS_tune=
-armv8a} armv8a-vfp-fp-armv8"
> +PACKAGE_EXTRA_ARCHS_tune-armv8a-neon-fp-armv8 =3D "${PACKAGE_EXTRA_ARCHS=
_tune-armv8a-fp-armv8} armv8a-vfp-neon-fp-armv8"
> +PACKAGE_EXTRA_ARCHS_tune-armv8a-crypto-neon-fp-armv8 =3D "${PACKAGE_EXTR=
A_ARCHS_tune-armv8a-neon-fp-armv8} armv8a-vfp-crypto-neon-fp-armv8"
> +
> +# CRC configs
> +AVAILTUNES +=3D "armv8a-crc armv8a-crc-vfpv3 armv8a-crc-neon armv8a-crc-=
vfpv4 armv8a-crc-neon-vfpv4 armv8a-crc-fp-armv8 armv8a-crc-neon-fp-armv8 ar=
mv8a-crc-crypto-neon-fp-armv8"
> +ARMPKGARCH_tune-armv8a-crc ?=3D "armv8a"
> +ARMPKGARCH_tune-armv8a-crc-vfpv3 ?=3D "armv8a"
> +ARMPKGARCH_tune-armv8a-crc-neon ?=3D "armv8a"
> +ARMPKGARCH_tune-armv8a-crc-vfpv4 ?=3D "armv8a"
> +ARMPKGARCH_tune-armv8a-crc-neon-vfpv4 ?=3D "armv8a"
> +ARMPKGARCH_tune-armv8a-crc-fp-armv8 ?=3D "armv8a"
> +ARMPKGARCH_tune-armv8a-crc-neon-fp-armv8 ?=3D "armv8a"
> +ARMPKGARCH_tune-armv8a-crc-crypto-neon-fp-armv8 ?=3D "armv8a"
> +TUNE_FEATURES_tune-armv8a-crc ?=3D "${TUNE_FEATURES_tune-armv8a} crc"
> +TUNE_FEATURES_tune-armv8a-crc-vfpv3 ?=3D "${TUNE_FEATURES_tune-armv8a-vf=
pv3} crc"
> +TUNE_FEATURES_tune-armv8a-crc-neon ?=3D "${TUNE_FEATURES_tune-armv8a-neo=
n} crc"
> +TUNE_FEATURES_tune-armv8a-crc-vfpv4 ?=3D "${TUNE_FEATURES_tune-armv8a-vf=
pv4} crc"
> +TUNE_FEATURES_tune-armv8a-crc-neon-vfpv4 ?=3D "${TUNE_FEATURES_tune-armv=
8a-neon-vfpv4} crc"
> +TUNE_FEATURES_tune-armv8a-crc-fp-armv8 ?=3D "${TUNE_FEATURES_tune-armv8a=
-fp-armv8} crc"
> +TUNE_FEATURES_tune-armv8a-crc-neon-fp-armv8 ?=3D "${TUNE_FEATURES_tune-a=
rmv8a-neon-fp-armv8} crc"
> +TUNE_FEATURES_tune-armv8a-crc-crypto-neon-fp-armv8 ?=3D "${TUNE_FEATURES=
_tune-armv8a-crypto-neon-fp-armv8} crc"
> +PACKAGE_EXTRA_ARCHS_tune-armv8a-crc =3D "${PACKAGE_EXTRA_ARCHS_tune-armv=
8a} armv8a-crc-vfp"
> +PACKAGE_EXTRA_ARCHS_tune-armv8a-crc-vfpv3 =3D "${PACKAGE_EXTRA_ARCHS_tun=
e-armv8a-crc} armv8a-vfp-vfpv3 armv8a-crc-vfp-vfpv3"
> +PACKAGE_EXTRA_ARCHS_tune-armv8a-crc-neon =3D "${PACKAGE_EXTRA_ARCHS_tune=
-armv8a-crc-vfpv3} armv8a-vfp-neon armv8a-crc-vfp-neon"
> +PACKAGE_EXTRA_ARCHS_tune-armv8a-crc-vfpv4 =3D "${PACKAGE_EXTRA_ARCHS_tun=
e-armv8a-crc-vfpv3} armv8a-vfp-vfpv4 armv8a-crc-vfp-vfpv4"
> +PACKAGE_EXTRA_ARCHS_tune-armv8a-crc-neon-vfpv4 =3D "${PACKAGE_EXTRA_ARCH=
S_tune-armv8a-crc-vfpv4} armv8a-vfp-neon armv8a-crc-vfp-neon armv8a-vfp-neo=
n-vfpv4 armv8a-crc-vfp-neon-vfpv4"
> +PACKAGE_EXTRA_ARCHS_tune-armv8a-crc-fp-armv8 =3D "${PACKAGE_EXTRA_ARCHS_=
tune-armv8a-crc} armv8a-vfp-fp-armv8 armv8a-vfp-fp-crc-armv8"
> +PACKAGE_EXTRA_ARCHS_tune-armv8a-crc-neon-fp-armv8 =3D "${PACKAGE_EXTRA_A=
RCHS_tune-armv8a-crc-fp-armv8} armv8a-vfp-neon-fp-armv8 armv8a-crc-vfp-neon=
-fp-armv8"
> +PACKAGE_EXTRA_ARCHS_tune-armv8a-crc-crypto-neon-fp-armv8 =3D "${PACKAGE_=
EXTRA_ARCHS_tune-armv8a-crc-neon-fp-armv8} armv8a-vfp-crypto-neon-fp-armv8 =
armv8a-crc-vfp-crypto-neon-fp-armv8"
> +
> diff --git a/meta/conf/machine/include/arm/feature-arm-neon.inc b/meta/co=
nf/machine/include/arm/feature-arm-neon.inc
> deleted file mode 100644
> index e8b2b85..0000000
> --- a/meta/conf/machine/include/arm/feature-arm-neon.inc
> +++ /dev/null
> @@ -1,3 +0,0 @@
> -TUNEVALID[neon] =3D "Enable Neon SIMD accelerator unit."
> -TUNE_CCARGS .=3D "${@bb.utils.contains("TUNE_FEATURES", "neon", bb.utils=
=2Econtains("TUNE_FEATURES", "vfpv4", " -mfpu=3Dneon-vfpv4", " -mfpu=3Dneon=
", d), "" , d)}"
> -ARMPKGSFX_FPU .=3D "${@bb.utils.contains("TUNE_FEATURES", "neon", "-neon=
", "", d)}"
> diff --git a/meta/conf/machine/include/arm/feature-arm-vfp.inc b/meta/con=
f/machine/include/arm/feature-arm-vfp.inc
> index 3dfbeac..12a4e81 100644
> --- a/meta/conf/machine/include/arm/feature-arm-vfp.inc
> +++ b/meta/conf/machine/include/arm/feature-arm-vfp.inc
> @@ -1,17 +1,52 @@
>  TUNEVALID[vfp] =3D "Enable Vector Floating Point (vfp) unit."
> -ARMPKGSFX_FPU .=3D "${@bb.utils.contains("TUNE_FEATURES", "vfp", "-vfp",=
 "" ,d)}"
> -
>  TUNEVALID[vfpv3d16] =3D "Enable Vector Floating Point Version 3 with 16 =
registers (vfpv3-d16) unit."
> -TUNE_CCARGS .=3D "${@bb.utils.contains("TUNE_FEATURES", "vfpv3d16", " -m=
fpu=3Dvfpv3-d16", "", d)}"
> -ARMPKGSFX_FPU .=3D "${@bb.utils.contains("TUNE_FEATURES", "vfpv3d16", "-=
vfpv3d16", "" ,d)}"
> -
>  TUNEVALID[vfpv3] =3D "Enable Vector Floating Point Version 3 with 32 reg=
isters (vfpv3) unit."
> -TUNE_CCARGS .=3D "${@bb.utils.contains("TUNE_FEATURES", "vfpv3", " -mfpu=
=3Dvfpv3", "", d)}"
> -ARMPKGSFX_FPU .=3D "${@bb.utils.contains("TUNE_FEATURES", "vfpv3", "-vfp=
v3", "" ,d)}"
> -
>  TUNEVALID[vfpv4] =3D "Enable Vector Floating Point Version 4 (vfpv4) uni=
t."
> -ARMPKGSFX_FPU .=3D "${@bb.utils.contains("TUNE_FEATURES", "vfpv4", "-vfp=
v4", "" ,d)}"
> -
> +TUNEVALID[fp-armv8] =3D "Enable ARMv8 Vector Floating Point unit."
> +TUNEVALID[neon] =3D "Enable vfpv3 and Neon SIMD accelerator unit."
> +TUNEVALID[crypto] =3D "Enable ARMv8 crypto extension."

feature-arm-vfp.inc is included in armv5.inc, so it makes a lot of these
features added to TUNEVALID actually invalid for armv[56] MACHINEs.

>  TUNEVALID[callconvention-hard] =3D "Enable EABI hard float call conventi=
on, requires VFP."
> -TUNE_CCARGS .=3D "${@bb.utils.contains("TUNE_FEATURES", "vfp", bb.utils.=
contains("TUNE_FEATURES", "callconvention-hard", " -mfloat-abi=3Dhard", " -=
mfloat-abi=3Dsoftfp", d), "" ,d)}"
> -ARMPKGSFX_EABI .=3D "${@bb.utils.contains("TUNE_FEATURES", [ "callconven=
tion-hard", "vfp" ], "hf", "", d)}"
> +
> +python () {
> +	if bb.utils.contains("TUNE_FEATURES", "crc", True, False, d):
> +		d.appendVar("ARMPKGSFX_FPU", "-crc")
> +
> +	if bb.utils.contains("TUNE_FEATURES", "vfp", True, False, d):
> +		d.appendVar("ARMPKGSFX_FPU", "-vfp")
> +
> +	if bb.utils.contains("TUNE_FEATURES", "vfpv3d16", True, False, d):
> +		d.appendVar("TUNE_CCARGS", " -mfpu=3Dvfpv3-d16")
> +		d.appendVar("ARMPKGSFX_FPU", "-vfpv3d16")
> +
> +	if bb.utils.contains("TUNE_FEATURES", "vfpv3", True, False, d):
> +			d.appendVar("TUNE_CCARGS", " -mfpu=3Dvfpv3")
> +			d.appendVar("ARMPKGSFX_FPU", "-vfpv3")
> +	elif bb.utils.contains("TUNE_FEATURES", "vfpv4", True, False, d):
> +		if bb.utils.contains("TUNE_FEATURES", "neon", True, False, d):
> +			d.appendVar("TUNE_CCARGS", " -mfpu=3Dneon-vfpv4")
> +			d.appendVar("ARMPKGSFX_FPU", "-neon-vfpv4")
> +		else:
> +			d.appendVar("TUNE_CCARGS", " -mfpu=3Dvfpv4")
> +			d.appendVar("ARMPKGSFX_FPU", "-vfpv4")
> +	elif bb.utils.contains("TUNE_FEATURES", "fp-armv8", True, False, d):
> +		if bb.utils.contains("TUNE_FEATURES", "neon", True, False, d):
> +			if bb.utils.contains("TUNE_FEATURES", "crypto", True, False, d):
> +				d.appendVar("TUNE_CCARGS", " -mfpu=3Dcrypto-neon-fp-armv8")
> +				d.appendVar("ARMPKGSFX_FPU", "-crypto-neon-fp-armv8")
> +			else:
> +				d.appendVar("TUNE_CCARGS", " -mfpu=3Dneon-fp-armv8")
> +				d.appendVar("ARMPKGSFX_FPU", "-neon-fp-armv8")
> +		else:
> +			d.appendVar("TUNE_CCARGS", " -mfpu=3Dfp-armv8")
> +			d.appendVar("ARMPKGSFX_FPU", "-fp-armv8")
> +	elif bb.utils.contains("TUNE_FEATURES", "neon", True, False, d):
> +		d.appendVar("TUNE_CCARGS", " -mfpu=3Dneon")
> +		d.appendVar("ARMPKGSFX_FPU", "-neon")
> +
> +	if bb.utils.contains("TUNE_FEATURES", "callconvention-hard", True, Fals=
e, d):
> +		d.appendVar("TUNE_CCARGS", " -mfloat-abi=3Dhard")
> +	else:
> +		d.appendVar("TUNE_CCARGS", " -mfloat-abi=3Dsoftfp")
> +	if bb.utils.contains("TUNE_FEATURES", [ "vfp", "callconvention-hard" ],=
 True, False, d):
> +		d.appendVar("ARMPKGSFX_EABI", "hf")
> +}
> --=20
> 1.7.9.5
>=20
> --=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--G6nVm6DDWH/FONJq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlZoTRkACgkQN1Ujt2V2gBwVMQCgpOklv50ApQBv1+6xoX+WXq4T
uXUAn2KFUIEh1V8k61gSYzmMJwgaYGuj
=0Duo
-----END PGP SIGNATURE-----

--G6nVm6DDWH/FONJq--
