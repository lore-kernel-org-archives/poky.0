Return-Path: <martin.jansa@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id E2CB04C80050
	for <poky@yoctoproject.org>; Mon,  4 Apr 2011 16:20:48 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywo32 with SMTP id 32so3041475ywo.35
	for <poky@yoctoproject.org>; Mon, 04 Apr 2011 14:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=eZYUP41eRxRgSkmtofJ6YiWMnIODb5sYb3BHkjz3Z5M=;
	b=D7Q888lI7YVnt2RqEJNNQhtSx4gF9LkOJQoMDMdNDH+sozLTEoGpV2Q6oNvE8GpsK8
	Kfu/HL3GcRlXchCHSMzgZ43HxQRzkuXyBsrG3ob2pILIGwBxNHQaRBy/n+XlGqutTp9m
	erLZoHsuyZ6XHOmR5tBvG14X4CbHgN1saav+4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=sn/wdGaDsJimdX2bFQmF8dr4OKEYw9M573K9k/64w3F1C6nK+r/oNeqITqUKB4rqc3
	nRyrJDAKVK2dmwdzj4VHivyxOXiN08TqR1RH4086PhBV9fFcon4uTjURBcJvYgjy1tuu
	t6c7tNf97i/jOMIPL8qmd5J+16N3cCfP5zzOA=
MIME-Version: 1.0
Received: by 10.150.175.21 with SMTP id x21mr3419113ybe.334.1301952048112;
	Mon, 04 Apr 2011 14:20:48 -0700 (PDT)
Received: by 10.147.171.12 with HTTP; Mon, 4 Apr 2011 14:20:48 -0700 (PDT)
In-Reply-To: <ffbf4efad14a7793d55747fa1272a24c58b3a7fc.1301664697.git.josh@linux.intel.com>
References: <cover.1301664697.git.josh@linux.intel.com>
	<ffbf4efad14a7793d55747fa1272a24c58b3a7fc.1301664697.git.josh@linux.intel.com>
Date: Mon, 4 Apr 2011 23:20:48 +0200
Message-ID: <BANLkTikY1C=3PKVtfwp2E+H2tz+keskjAw@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
To: Joshua Lock <josh@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 4/7] xorg-[lib-common|proto-common]: disable use of fop document generation
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
X-List-Received-Date: Mon, 04 Apr 2011 21:20:49 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 1, 2011 at 3:38 PM, Joshua Lock <josh@linux.intel.com> wrote:
> From: Joshua Lock <josh@linux.intel.com>
>
> On Fedora 15 I see a huge Java backtrace when document generation runs fo=
r
> some xorg libs. As fop is automatically detected, with the possibility of
> detecting fop on the host whilst doing target builds, the safest bet is t=
o
> explicitly disable fop for document generation.
>
> Signed-off-by: Joshua Lock <josh@linux.intel.com>
> ---
> =A0meta/recipes-graphics/xorg-lib/xorg-lib-common.inc | =A0 =A02 +-
> =A0.../xorg-proto/xorg-proto-common.inc =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0=
 =A01 +
> =A02 files changed, 2 insertions(+), 1 deletions(-)
>
> diff --git a/meta/recipes-graphics/xorg-lib/xorg-lib-common.inc b/meta/re=
cipes-graphics/xorg-lib/xorg-lib-common.inc
> index 4ed8c86..d843d65 100644
> --- a/meta/recipes-graphics/xorg-lib/xorg-lib-common.inc
> +++ b/meta/recipes-graphics/xorg-lib/xorg-lib-common.inc
> @@ -13,4 +13,4 @@ S =3D "${WORKDIR}/${XORG_PN}-${PV}"
>
> =A0inherit autotools pkgconfig
>
> -EXTRA_OECONF =3D "--enable-malloc0returnsnull"
> +EXTRA_OECONF =3D "--enable-malloc0returnsnull --with-fop=3Dno"
> diff --git a/meta/recipes-graphics/xorg-proto/xorg-proto-common.inc b/met=
a/recipes-graphics/xorg-proto/xorg-proto-common.inc
> index 92aa1fe..ab1af28 100644
> --- a/meta/recipes-graphics/xorg-proto/xorg-proto-common.inc
> +++ b/meta/recipes-graphics/xorg-proto/xorg-proto-common.inc
> @@ -14,6 +14,7 @@ S =3D "${WORKDIR}/${XORG_PN}-${PV}"
> =A0DEPENDS =3D "util-macros"
>
> =A0inherit autotools pkgconfig
> +EXTRA_OECONF =3D "--with-fop=3Dno"

after this I get

| checking for xmlto... no
| configure: WARNING: xmlto not found - documentation targets will be skipp=
ed
| configure: error: --with-fop expects 'yes' or 'no'
| FATAL: oe_runconf failed
| ERROR: Function 'do_configure' failed (see
/OE/shr-core/tmp/work/x86_64-linux/xproto-native-1_7.0.20-r0/temp/log.do_co=
nfigure.29076
for further information)
NOTE: package xproto-native-1_7.0.20-r0: task do_configure: Failed
ERROR: Task 957
(virtual:native:/OE/shr-core/openembedded-core/meta/recipes-graphics/xorg-p=
roto/xproto_7.0.20.bb,
do_configure) failed with exit code '1'

because there is
--with-fop=3Dno--enable-specs=3Dno

so you had to put space after no, or before this

OE nokia900@shr ~/shr-core $ grep OECONF
openembedded-core/meta/recipes-graphics/xorg-proto/xproto_7.0.20.bb
EXTRA_OECONF_append =3D "--enable-specs=3Dno"

>
> =A0# ${PN} is empty so we need to tweak -dev and -dbg package dependencie=
s
> =A0RDEPENDS_${PN}-dev =3D ""
> --
> 1.7.4.1
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

