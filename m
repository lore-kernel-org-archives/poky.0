Return-Path: <martin.jansa@gmail.com>
Received: from mail-bw0-f48.google.com (mail-bw0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A1A5E005BB
	for <poky@yoctoproject.org>; Wed, 12 Oct 2011 05:20:03 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by bkar19 with SMTP id r19so401995bka.35
	for <poky@yoctoproject.org>; Wed, 12 Oct 2011 05:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=Y3xCks03UTlIqSspb7/2/In7JIZZ0YTBtz6t6wQvKJU=;
	b=wQZlqDWcipuO1KGnsljlkwEH75AHRJiS46AiZX5KGBFsYDTrXMkmeyH9Bm2VufZrmC
	ARMzJPRAdPEC9k2a3kUIkWqlfKazZ7YJovUsIXduslA4NzS8421/Rx4gV+24L80Rrs6E
	QN0ThKj23whVkTkKtOcWISx7FX1w2/RB1L5kQ=
Received: by 10.204.135.72 with SMTP id m8mr12899677bkt.101.1318421580337;
	Wed, 12 Oct 2011 05:13:00 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id rc12sm1857085bkb.10.2011.10.12.05.12.57
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 12 Oct 2011 05:12:59 -0700 (PDT)
Date: Wed, 12 Oct 2011 14:12:50 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: "Cui, Dexuan" <dexuan.cui@intel.com>
Message-ID: <20111012121249.GO27073@jama.jama.net>
References: <cover.1318403772.git.dexuan.cui@intel.com>
	<ad155bb2f7c2032a923332275d698d0787c764d2.1318403772.git.dexuan.cui@intel.com>
	<20111012072254.GL27073@jama.jama.net>
	<20111012072624.GM27073@jama.jama.net>
	<1865303E0DED764181A9D882DEF65FB6D23164EA25@shsmsx502.ccr.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <1865303E0DED764181A9D882DEF65FB6D23164EA25@shsmsx502.ccr.corp.intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Wed, 12 Oct 2011 12:20:05 -0000
X-Groupsio-MsgNum: 7052
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="oIlomvtVtXAVxSKT"
Content-Disposition: inline

--oIlomvtVtXAVxSKT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 12, 2011 at 03:34:56PM +0800, Cui, Dexuan wrote:
> Martin Jansa wrote on 2011-10-12:
> > On Wed, Oct 12, 2011 at 09:22:54AM +0200, Martin Jansa wrote:
> >> On Wed, Oct 12, 2011 at 03:17:53PM +0800, Dexuan Cui wrote:
> >>> Recently poky's commit c09f0eb561a53b97a769dd0744076af7d904eafb
> >>> (xserver-xf86(-dri)-lite: rename to xserver-xorg and
> >>> xserver-xorg-lite) breaks BSP building.
> >>> This patch makes changes accordingly.
> >>> common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite =3D>=20
> >>> xserver-xorg}/nodolt.patch (100%)  rename=20
> >>> common/recipes-graphics/xorg-xserver/{xserver-xf86-dri-lite_1.9.3.
> >>> bb
> >>> =3D> xserver-xorg_1.11.1.bb} (87%)
> >>=20
> >> just curious, why there is whole xserver-xorg_1.11.1.bb recipe and=20
> >> patches not just small .bbappend?
> Yes, it seems strange to me, too.
> I suppose Tom may know the history?=20

Maybe it's because of extra
--enable-dga which is by default disabled in xserver-xorg-common, but
maybe we can enable it by default and keep it disabled only for
xserver-xorg-lite as in attached patch (which would need PR bump too).

Regards,

=46rom b5bbb8e8860708c9e07370595176c52a57ddc18e Mon Sep 17 00:00:00 2001
=46rom: Martin Jansa <Martin.Jansa@gmail.com>
Date: Wed, 12 Oct 2011 14:10:16 +0200
Subject: [PATCH] xserver-xorg: disable DGA only in -lite version, and force
 it enabled in xserver-xorg

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 .../xorg-xserver/xserver-xorg-common.inc           |    1 -
 .../xorg-xserver/xserver-xorg-lite.inc             |    1 +
 .../recipes-graphics/xorg-xserver/xserver-xorg.inc |    1 +
 3 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/meta/recipes-graphics/xorg-xserver/xserver-xorg-common.inc b/m=
eta/recipes-graphics/xorg-xserver/xserver-xorg-common.inc
index a8c7b0a..4d82d79 100644
--- a/meta/recipes-graphics/xorg-xserver/xserver-xorg-common.inc
+++ b/meta/recipes-graphics/xorg-xserver/xserver-xorg-common.inc
@@ -98,7 +98,6 @@ EXTRA_OECONF +=3D "--with-fop=3Dno \
                  --disable-acfb \
                  --disable-ccfb \
                  --disable-mcfb \
-                 --disable-dga \
                  --disable-xinerama \
                  --disable-xf86misc \
                  --disable-xorgcfg \
diff --git a/meta/recipes-graphics/xorg-xserver/xserver-xorg-lite.inc b/met=
a/recipes-graphics/xorg-xserver/xserver-xorg-lite.inc
index be84e9e..57615f5 100644
--- a/meta/recipes-graphics/xorg-xserver/xserver-xorg-lite.inc
+++ b/meta/recipes-graphics/xorg-xserver/xserver-xorg-lite.inc
@@ -3,4 +3,5 @@ require xserver-xorg-common.inc
 EXTRA_OECONF +=3D "\
                  --disable-dri \
                  --disable-glx \
+                 --disable-dga \
 "
diff --git a/meta/recipes-graphics/xorg-xserver/xserver-xorg.inc b/meta/rec=
ipes-graphics/xorg-xserver/xserver-xorg.inc
index 01cdd68..0f34c1a 100644
--- a/meta/recipes-graphics/xorg-xserver/xserver-xorg.inc
+++ b/meta/recipes-graphics/xorg-xserver/xserver-xorg.inc
@@ -8,6 +8,7 @@ require ../mesa/glx-use-tls.inc
 EXTRA_OECONF +=3D "\
                  --enable-dri \
                  --enable-dri2 \
+                 --enable-dga \
                  --with-pic \
                  --with-int10=3Dx86emu \
 "
--=20
1.7.7

--oIlomvtVtXAVxSKT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.18 (GNU/Linux)

iEYEARECAAYFAk6VhEEACgkQN1Ujt2V2gByW/ACfTFZghO2LLNgOTZ3FLqc31sXA
GRMAnR1/shCHGXou92OBTfEtdcyQo6V1
=6qvm
-----END PGP SIGNATURE-----

--oIlomvtVtXAVxSKT--
