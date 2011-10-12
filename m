Return-Path: <martin.jansa@gmail.com>
Received: from mail-bw0-f48.google.com (mail-bw0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EC91E005BB
	for <poky@yoctoproject.org>; Wed, 12 Oct 2011 00:26:34 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by bkar19 with SMTP id r19so125731bka.35
	for <poky@yoctoproject.org>; Wed, 12 Oct 2011 00:26:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=n4zqnGoPqXEZgEXKUU/hhbZsFd2axTZ8BtbSuQltXdI=;
	b=PXV8/e2PVNRM3U1t3FeHbusPsp9Y98yoh9Ct2S71IkjE4U6WM+KbvMhqPsVUdE9Esn
	dV40VvrNjqXUr3o1lHCX9aSIxCmPE/6vCfn99Pdb/JuRSL8zOPH2FVlAypAPtO8PWGXZ
	TJBz/yOXzg1+ucq8xFFH4er6Tssmqjd6Xp0ao=
Received: by 10.204.129.207 with SMTP id p15mr12007486bks.34.1318404393128;
	Wed, 12 Oct 2011 00:26:33 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id s12sm1018967bkt.4.2011.10.12.00.26.30
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 12 Oct 2011 00:26:32 -0700 (PDT)
Date: Wed, 12 Oct 2011 09:26:24 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Dexuan Cui <dexuan.cui@intel.com>
Message-ID: <20111012072624.GM27073@jama.jama.net>
References: <cover.1318403772.git.dexuan.cui@intel.com>
	<ad155bb2f7c2032a923332275d698d0787c764d2.1318403772.git.dexuan.cui@intel.com>
	<20111012072254.GL27073@jama.jama.net>
MIME-Version: 1.0
In-Reply-To: <20111012072254.GL27073@jama.jama.net>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] xserver-xf86-dri-lite: rename it to xserver-xorg
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
X-List-Received-Date: Wed, 12 Oct 2011 07:26:35 -0000
X-Groupsio-MsgNum: 7047
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="wKTlTxfx0Fr6BT7S"
Content-Disposition: inline

--wKTlTxfx0Fr6BT7S
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 12, 2011 at 09:22:54AM +0200, Martin Jansa wrote:
> On Wed, Oct 12, 2011 at 03:17:53PM +0800, Dexuan Cui wrote:
> > Recently poky's commit c09f0eb561a53b97a769dd0744076af7d904eafb
> > (xserver-xf86(-dri)-lite: rename to xserver-xorg and xserver-xorg-lite)
> > breaks BSP building.
> > This patch makes changes accordingly.
> >=20
> > Fixes bug [YOCTO #1670]
> >=20
> > Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
> > Cc: Martin Jansa <Martin.Jansa@gmail.com>
> > ---
> >  .../crosscompile.patch                             |    0
> >  .../fix_open_max_preprocessor_error.patch          |    0
> >  .../macro_tweak.patch                              |    2 +-
> >  .../nodolt.patch                                   |    0
> >  ...86-dri-lite_1.9.3.bb =3D> xserver-xorg_1.11.1.bb} |    2 +-
> >  meta-crownbay/conf/machine/crownbay-noemgd.conf    |    6 +++---
> >  meta-crownbay/conf/machine/crownbay.conf           |    8 ++++----
> >  meta-emenlow/conf/machine/emenlow.conf             |    2 +-
> >  .../xorg-xserver/xserver-psb_1.7.99.2.bb           |    2 +-
> >  meta-fishriver/conf/machine/fishriver.conf         |    6 +++---
> >  meta-fri2/conf/machine/fri2-noemgd.conf            |    6 +++---
> >  meta-fri2/conf/machine/fri2.conf                   |    8 ++++----
> >  meta-jasperforest/conf/machine/jasperforest.conf   |    6 +++---
> >  meta-n450/conf/machine/n450.conf                   |    6 +++---
> >  meta-sugarbay/conf/machine/sugarbay.conf           |    6 +++---
> >  15 files changed, 30 insertions(+), 30 deletions(-)
> >  rename common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite =3D=
> xserver-xorg}/crosscompile.patch (100%)
> >  rename common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite =3D=
> xserver-xorg}/fix_open_max_preprocessor_error.patch (100%)
> >  rename common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite =3D=
> xserver-xorg}/macro_tweak.patch (93%)
> >  rename common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite =3D=
> xserver-xorg}/nodolt.patch (100%)
> >  rename common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite_1.9=
=2E3.bb =3D> xserver-xorg_1.11.1.bb} (87%)
>=20
> just curious, why there is whole xserver-xorg_1.11.1.bb recipe and
> patches not just small .bbappend?

looking at
http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tree/common/recipes-gr=
aphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.bb
i don't know why it's here at all :)

>=20
> Regards,
> >=20
> > diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite=
/crosscompile.patch b/common/recipes-graphics/xorg-xserver/xserver-xorg/cro=
sscompile.patch
> > similarity index 100%
> > rename from common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/=
crosscompile.patch
> > rename to common/recipes-graphics/xorg-xserver/xserver-xorg/crosscompil=
e.patch
> > diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite=
/fix_open_max_preprocessor_error.patch b/common/recipes-graphics/xorg-xserv=
er/xserver-xorg/fix_open_max_preprocessor_error.patch
> > similarity index 100%
> > rename from common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/=
fix_open_max_preprocessor_error.patch
> > rename to common/recipes-graphics/xorg-xserver/xserver-xorg/fix_open_ma=
x_preprocessor_error.patch
> > diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite=
/macro_tweak.patch b/common/recipes-graphics/xorg-xserver/xserver-xorg/macr=
o_tweak.patch
> > similarity index 93%
> > rename from common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/=
macro_tweak.patch
> > rename to common/recipes-graphics/xorg-xserver/xserver-xorg/macro_tweak=
=2Epatch
> > index 2b75427..2b32d4e 100644
> > --- a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/macro_=
tweak.patch
> > +++ b/common/recipes-graphics/xorg-xserver/xserver-xorg/macro_tweak.pat=
ch
> > @@ -2,7 +2,7 @@ This is the revised version of files/macro_tweak.patch =
for
> >  xorg-server 1.8.99.904.
> > =20
> >  the files/macro_tweak.patch can not removed now since it is used by
> > -xserver-kdrive-1.7.99.2 and xserver-xf86-lite_1.7.99.2. Once they
> > +xserver-kdrive-1.7.99.2 and xserver-xorg(-lite). Once they
> >  are all upgraded to 1.8.99.904, the the files/macro_tweak.patch
> >  can be safely replace by this patch.
> > =20
> > diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite=
/nodolt.patch b/common/recipes-graphics/xorg-xserver/xserver-xorg/nodolt.pa=
tch
> > similarity index 100%
> > rename from common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite/=
nodolt.patch
> > rename to common/recipes-graphics/xorg-xserver/xserver-xorg/nodolt.patch
> > diff --git a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite=
_1.9.3.bb b/common/recipes-graphics/xorg-xserver/xserver-xorg_1.11.1.bb
> > similarity index 87%
> > rename from common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_=
1.9.3.bb
> > rename to common/recipes-graphics/xorg-xserver/xserver-xorg_1.11.1.bb
> > index 81d70bc..480ed6a 100644
> > --- a/common/recipes-graphics/xorg-xserver/xserver-xf86-dri-lite_1.9.3.=
bb
> > +++ b/common/recipes-graphics/xorg-xserver/xserver-xorg_1.11.1.bb
> > @@ -1,4 +1,4 @@
> > -require recipes-graphics/xorg-xserver/xserver-xf86-dri-lite.inc
> > +require recipes-graphics/xorg-xserver/xserver-xorg.inc
> > =20
> >  PROTO_DEPS +=3D "xf86driproto dri2proto"
> > =20
> > diff --git a/meta-crownbay/conf/machine/crownbay-noemgd.conf b/meta-cro=
wnbay/conf/machine/crownbay-noemgd.conf
> > index c668f4a..3b90136 100644
> > --- a/meta-crownbay/conf/machine/crownbay-noemgd.conf
> > +++ b/meta-crownbay/conf/machine/crownbay-noemgd.conf
> > @@ -17,9 +17,9 @@ PREFERRED_VERSION_linux-yocto =3D "3.0%"
> >  PREFERRED_PROVIDER_linux-libc-headers ?=3D "linux-libc-headers-yocto"
> >  PREFERRED_PROVIDER_virtual/libx11 ?=3D "libx11-trim"
> >  PREFERRED_PROVIDER_virtual/libgl  ?=3D "mesa-dri"
> > -PREFERRED_PROVIDER_virtual/xserver ?=3D "xserver-xf86-dri-lite"
> > -PREFERRED_PROVIDER_virtual/xserver-xf86 ?=3D "xserver-xf86-dri-lite"
> > -XSERVER ?=3D "xserver-xf86-dri-lite \
> > +PREFERRED_PROVIDER_virtual/xserver ?=3D "xserver-xorg"
> > +PREFERRED_PROVIDER_virtual/xserver-xf86 ?=3D "xserver-xorg"
> > +XSERVER ?=3D "xserver-xorg \
> >             xf86-input-mouse \
> >             xf86-input-keyboard \
> >             xf86-input-evdev \
> > diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/c=
onf/machine/crownbay.conf
> > index 457bdfc..e293861 100644
> > --- a/meta-crownbay/conf/machine/crownbay.conf
> > +++ b/meta-crownbay/conf/machine/crownbay.conf
> > @@ -17,9 +17,9 @@ PREFERRED_VERSION_linux-yocto =3D "3.0%"
> >  PREFERRED_PROVIDER_linux-libc-headers ?=3D "linux-libc-headers-yocto"
> >  PREFERRED_PROVIDER_virtual/libx11 ?=3D "libx11-trim"
> >  PREFERRED_PROVIDER_virtual/libgl  ?=3D "mesa-dri"
> > -PREFERRED_PROVIDER_virtual/xserver ?=3D "xserver-xf86-dri-lite"
> > -PREFERRED_PROVIDER_virtual/xserver-xf86 ?=3D "xserver-xf86-dri-lite"
> > -XSERVER ?=3D "xserver-xf86-dri-lite \
> > +PREFERRED_PROVIDER_virtual/xserver ?=3D "xserver-xorg"
> > +PREFERRED_PROVIDER_virtual/xserver-xf86 ?=3D "xserver-xorg"
> > +XSERVER ?=3D "xserver-xorg \
> >             emgd-driver-bin \
> >             xf86-input-mouse \
> >             xf86-input-keyboard \
> > @@ -27,7 +27,7 @@ XSERVER ?=3D "xserver-xf86-dri-lite \
> >             xf86-input-synaptics \
> >             xf86-video-vesa"
> > =20
> > -PREFERRED_VERSION_xserver-xf86-dri-lite ?=3D "1.9.3"
> > +PREFERRED_VERSION_xserver-xorg ?=3D "1.11.1"
> >  PREFERRED_VERSION_emgd-driver-bin ?=3D "1.8"
> > =20
> >  SERIAL_CONSOLE =3D "115200 ttyS0"
> > diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf=
/machine/emenlow.conf
> > index 9745531..dabc82d 100644
> > --- a/meta-emenlow/conf/machine/emenlow.conf
> > +++ b/meta-emenlow/conf/machine/emenlow.conf
> > @@ -21,7 +21,7 @@ PREFERRED_PROVIDER_virtual/libx11 =3D "libx11-trim"
> >  PREFERRED_PROVIDER_virtual/libgl =3D "xpsb-glx"
> >  PREFERRED_PROVIDER_virtual/xserver =3D "xserver-psb"
> >  PREFERRED_PROVIDER_virtual/xserver-xf86 =3D "xserver-psb"
> > -PREFERRED_PROVIDER_xserver-xf86-dri-lite =3D "xserver-psb"
> > +PREFERRED_PROVIDER_xserver-xorg =3D "xserver-psb"
> > =20
> >  XSERVER ?=3D "xserver-psb \
> >             xf86-input-mouse \
> > diff --git a/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb_1.7=
=2E99.2.bb b/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb_1.7.99.=
2.bb
> > index 5227faa..ccbed08 100644
> > --- a/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb_1.7.99.2.bb
> > +++ b/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb_1.7.99.2.bb
> > @@ -1,4 +1,4 @@
> > -require recipes-graphics/xorg-xserver/xserver-xf86-dri-lite.inc
> > +require recipes-graphics/xorg-xserver/xserver-xorg.inc
> > =20
> >  PR =3D "r3"
> > =20
> > diff --git a/meta-fishriver/conf/machine/fishriver.conf b/meta-fishrive=
r/conf/machine/fishriver.conf
> > index 2fe78e8..ffbc05a 100644
> > --- a/meta-fishriver/conf/machine/fishriver.conf
> > +++ b/meta-fishriver/conf/machine/fishriver.conf
> > @@ -17,9 +17,9 @@ PREFERRED_VERSION_linux-yocto ?=3D "3.0%"
> >  PREFERRED_PROVIDER_linux-libc-headers ?=3D "linux-libc-headers-yocto"
> >  PREFERRED_PROVIDER_virtual/libx11 ?=3D "libx11-trim"
> >  PREFERRED_PROVIDER_virtual/libgl  ?=3D "mesa-dri"
> > -PREFERRED_PROVIDER_virtual/xserver ?=3D "xserver-xf86-dri-lite"
> > -PREFERRED_PROVIDER_virtual/xserver-xf86 ?=3D "xserver-xf86-dri-lite"
> > -XSERVER ?=3D "xserver-xf86-dri-lite \
> > +PREFERRED_PROVIDER_virtual/xserver ?=3D "xserver-xorg"
> > +PREFERRED_PROVIDER_virtual/xserver-xf86 ?=3D "xserver-xorg"
> > +XSERVER ?=3D "xserver-xorg \
> >             xf86-input-mouse \
> >             xf86-input-keyboard \
> >             xf86-input-evdev \
> > diff --git a/meta-fri2/conf/machine/fri2-noemgd.conf b/meta-fri2/conf/m=
achine/fri2-noemgd.conf
> > index b02e037..11bb9bb 100644
> > --- a/meta-fri2/conf/machine/fri2-noemgd.conf
> > +++ b/meta-fri2/conf/machine/fri2-noemgd.conf
> > @@ -17,9 +17,9 @@ PREFERRED_VERSION_linux-yocto ?=3D "3.0%"
> >  PREFERRED_PROVIDER_linux-libc-headers ?=3D "linux-libc-headers-yocto"
> >  PREFERRED_PROVIDER_virtual/libx11 ?=3D "libx11-trim"
> >  PREFERRED_PROVIDER_virtual/libgl  ?=3D "mesa-dri"
> > -PREFERRED_PROVIDER_virtual/xserver ?=3D "xserver-xf86-dri-lite"
> > -PREFERRED_PROVIDER_virtual/xserver-xf86 ?=3D "xserver-xf86-dri-lite"
> > -XSERVER ?=3D "xserver-xf86-dri-lite \
> > +PREFERRED_PROVIDER_virtual/xserver ?=3D "xserver-xorg"
> > +PREFERRED_PROVIDER_virtual/xserver-xf86 ?=3D "xserver-xorg"
> > +XSERVER ?=3D "xserver-xorg \
> >             xf86-input-mouse \
> >             xf86-input-keyboard \
> >             xf86-input-evdev \
> > diff --git a/meta-fri2/conf/machine/fri2.conf b/meta-fri2/conf/machine/=
fri2.conf
> > index eab4b50..6ea78f4 100644
> > --- a/meta-fri2/conf/machine/fri2.conf
> > +++ b/meta-fri2/conf/machine/fri2.conf
> > @@ -17,16 +17,16 @@ PREFERRED_VERSION_linux-yocto ?=3D "3.0%"
> >  PREFERRED_PROVIDER_linux-libc-headers ?=3D "linux-libc-headers-yocto"
> >  PREFERRED_PROVIDER_virtual/libx11 ?=3D "libx11-trim"
> >  PREFERRED_PROVIDER_virtual/libgl  ?=3D "mesa-dri"
> > -PREFERRED_PROVIDER_virtual/xserver ?=3D "xserver-xf86-dri-lite"
> > -PREFERRED_PROVIDER_virtual/xserver-xf86 ?=3D "xserver-xf86-dri-lite"
> > -XSERVER ?=3D "xserver-xf86-dri-lite \
> > +PREFERRED_PROVIDER_virtual/xserver ?=3D "xserver-xorg"
> > +PREFERRED_PROVIDER_virtual/xserver-xf86 ?=3D "xserver-xorg"
> > +XSERVER ?=3D "xserver-xorg \
> >             xf86-input-mouse \
> >             xf86-input-keyboard \
> >             xf86-input-evdev \
> >             xf86-input-synaptics \
> >             emgd-driver-bin"
> > =20
> > -PREFERRED_VERSION_xserver-xf86-dri-lite ?=3D "1.9.3"
> > +PREFERRED_VERSION_xserver-xorg ?=3D "1.11.1"
> >  PREFERRED_VERSION_emgd-driver-bin ?=3D "1.8"
> > =20
> >  SERIAL_CONSOLE =3D "115200 ttyS0"
> > diff --git a/meta-jasperforest/conf/machine/jasperforest.conf b/meta-ja=
sperforest/conf/machine/jasperforest.conf
> > index 9fdb968..f117860 100644
> > --- a/meta-jasperforest/conf/machine/jasperforest.conf
> > +++ b/meta-jasperforest/conf/machine/jasperforest.conf
> > @@ -17,9 +17,9 @@ PREFERRED_VERSION_linux-yocto ?=3D "3.0%"
> >  PREFERRED_PROVIDER_linux-libc-headers ?=3D "linux-libc-headers-yocto"
> >  PREFERRED_PROVIDER_virtual/libx11 ?=3D "libx11-trim"
> >  PREFERRED_PROVIDER_virtual/libgl  ?=3D "mesa-dri"
> > -PREFERRED_PROVIDER_virtual/xserver ?=3D "xserver-xf86-dri-lite"
> > -PREFERRED_PROVIDER_virtual/xserver-xf86 ?=3D "xserver-xf86-dri-lite"
> > -XSERVER ?=3D "xserver-xf86-dri-lite \
> > +PREFERRED_PROVIDER_virtual/xserver ?=3D "xserver-xorg"
> > +PREFERRED_PROVIDER_virtual/xserver-xf86 ?=3D "xserver-xorg"
> > +XSERVER ?=3D "xserver-xorg \
> >             xf86-input-mouse \
> >             xf86-input-keyboard \
> >             xf86-input-evdev \
> > diff --git a/meta-n450/conf/machine/n450.conf b/meta-n450/conf/machine/=
n450.conf
> > index 79970d1..ed9850a 100644
> > --- a/meta-n450/conf/machine/n450.conf
> > +++ b/meta-n450/conf/machine/n450.conf
> > @@ -15,9 +15,9 @@ PREFERRED_VERSION_linux-yocto =3D "3.0%"
> >  PREFERRED_PROVIDER_linux-libc-headers ?=3D "linux-libc-headers-yocto"
> >  PREFERRED_PROVIDER_virtual/libx11 ?=3D "libx11-trim"
> >  PREFERRED_PROVIDER_virtual/libgl  ?=3D "mesa-dri"
> > -PREFERRED_PROVIDER_virtual/xserver ?=3D "xserver-xf86-dri-lite"
> > -PREFERRED_PROVIDER_virtual/xserver-xf86 ?=3D "xserver-xf86-dri-lite"
> > -XSERVER ?=3D "xserver-xf86-dri-lite \
> > +PREFERRED_PROVIDER_virtual/xserver ?=3D "xserver-xorg"
> > +PREFERRED_PROVIDER_virtual/xserver-xf86 ?=3D "xserver-xorg"
> > +XSERVER ?=3D "xserver-xorg \
> >             xf86-input-mouse \
> >             xf86-input-keyboard \
> >             xf86-input-evdev \
> > diff --git a/meta-sugarbay/conf/machine/sugarbay.conf b/meta-sugarbay/c=
onf/machine/sugarbay.conf
> > index 6277e20..5b7842a 100644
> > --- a/meta-sugarbay/conf/machine/sugarbay.conf
> > +++ b/meta-sugarbay/conf/machine/sugarbay.conf
> > @@ -17,9 +17,9 @@ PREFERRED_VERSION_linux-yocto =3D "3.0%"
> >  PREFERRED_PROVIDER_linux-libc-headers ?=3D "linux-libc-headers-yocto"
> >  PREFERRED_PROVIDER_virtual/libx11 ?=3D "libx11-trim"
> >  PREFERRED_PROVIDER_virtual/libgl  ?=3D "mesa-dri"
> > -PREFERRED_PROVIDER_virtual/xserver ?=3D "xserver-xf86-dri-lite"
> > -PREFERRED_PROVIDER_virtual/xserver-xf86 ?=3D "xserver-xf86-dri-lite"
> > -XSERVER ?=3D "xserver-xf86-dri-lite \
> > +PREFERRED_PROVIDER_virtual/xserver ?=3D "xserver-xorg"
> > +PREFERRED_PROVIDER_virtual/xserver-xf86 ?=3D "xserver-xorg"
> > +XSERVER ?=3D "xserver-xorg \
> >             xf86-input-mouse \
> >             xf86-input-keyboard \
> >             xf86-input-evdev \
> > --=20
> > 1.7.6
> >=20
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
>=20
> --=20
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com



--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--wKTlTxfx0Fr6BT7S
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.18 (GNU/Linux)

iEYEARECAAYFAk6VQSAACgkQN1Ujt2V2gBwh9gCeNGyUgshBYDRUXD0YRLL39C1S
wPAAnRfb9OzOWBNSMMol/MLuJIgqWqe1
=9VRU
-----END PGP SIGNATURE-----

--wKTlTxfx0Fr6BT7S--
