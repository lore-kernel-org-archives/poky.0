Return-Path: <martin.jansa@gmail.com>
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2C4CE0146E
	for <poky@yoctoproject.org>; Wed, 27 Mar 2013 08:19:25 -0700 (PDT)
Received: by mail-pa0-f42.google.com with SMTP id kq13so1564944pab.29
	for <poky@yoctoproject.org>; Wed, 27 Mar 2013 08:19:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=OtTheYfzULw8upXR/2aOToDyCXG/b4iXJK6HgCrkof8=;
	b=S6pHrA6LxyCMC337qs7DCswGyBGlRiwLAmMaJ6Toy2Cvgs88MJkshDsFVXoxC6jnyF
	1fHUwduYlPH3WELeoo8+H+Xjl1qxZDubukssMwMb3bYMCAhaPAVmYQFAvyfNIM3OYDrt
	Xywpz6BkIKIrJuwSxygHlInLHKaFnSH2bVTq6zTU84fiopVa9F5q36SQeOlWsmg/GNYe
	DR3ec2UwjTarEFigJdgboxWfq3VggPgAeE3rL7JVDAWiV9dDDYXgvfdcdDBoUrFBKzh8
	/plYHHVwF6KVGxQ2Ss+wf6RKpi3lGHtvfE+RPgGdnE8p4nU0Z4XmFJAW5FYmLsUDqvUo
	Ddog==
X-Received: by 10.68.221.36 with SMTP id qb4mr30140811pbc.66.1364397565737;
	Wed, 27 Mar 2013 08:19:25 -0700 (PDT)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id tm1sm21832622pbc.11.2013.03.27.08.19.22
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 27 Mar 2013 08:19:24 -0700 (PDT)
Date: Wed, 27 Mar 2013 16:19:15 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20130327151915.GA3254@jama>
References: <1364392789-24104-1-git-send-email-ross.burton@intel.com>
	<CABcZANn9haGTBdmo1F=vwQw5G6kqGBdPKRaocDhmVc4uFp-ikQ@mail.gmail.com>
	<1364396712.28471.20.camel@ted>
MIME-Version: 1.0
In-Reply-To: <1364396712.28471.20.camel@ted>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Chris Larson <clarson@kergoth.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] poky.conf: enable Wayland DISTRO_FEATURE
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
X-List-Received-Date: Wed, 27 Mar 2013 15:19:26 -0000
X-Groupsio-MsgNum: 8818
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Kj7319i9nmIyA2yE"
Content-Disposition: inline

--Kj7319i9nmIyA2yE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 27, 2013 at 03:05:12PM +0000, Richard Purdie wrote:
> On Wed, 2013-03-27 at 07:58 -0700, Chris Larson wrote:
> >=20
> > On Wed, Mar 27, 2013 at 6:59 AM, Ross Burton <ross.burton@intel.com>
> > wrote:
> >         Without the Wayland feature you don't get the Wayland EGL
> >         platform built into
> >         Mesa, so Poky can't be used to test Wayland or Weston properly
> >         out of the box.
> >        =20
> >         Signed-off-by: Ross Burton <ross.burton@intel.com>
> >         ---
> >          meta-yocto/conf/distro/poky.conf |    2 +-
> >          1 file changed, 1 insertion(+), 1 deletion(-)
> >        =20
> >         diff --git a/meta-yocto/conf/distro/poky.conf
> >         b/meta-yocto/conf/distro/poky.conf
> >         index f146f5f..afe328b 100644
> >         --- a/meta-yocto/conf/distro/poky.conf
> >         +++ b/meta-yocto/conf/distro/poky.conf
> >         @@ -11,7 +11,7 @@ TARGET_VENDOR =3D "-poky"
> >          LOCALCONF_VERSION =3D "1"
> >          LAYER_CONF_VERSION ?=3D "6"
> >        =20
> >         -DISTRO_FEATURES_append =3D " largefile opengl multiarch"
> >         +DISTRO_FEATURES_append =3D " largefile opengl multiarch
> >         wayland"
> >=20
> > This reminds me, could we make this overridable? There are distros
> > which are based on poky, but might want to tweak the supported
> > features. Perhaps these features could be shoved into a separate
> > variable and _append that, or just use +=3D.
>=20
> Sounds fine, please send a patch. There was some good reason for using
> _append iirc.

I guess it was to use weak assignment from default-distrovars.inc
instead of replacing it with only these 3.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--Kj7319i9nmIyA2yE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlFTDfMACgkQN1Ujt2V2gBxt0QCfWXtXjQBlLREOl79NaDGlwTPd
fYQAni/Ts/hWhZsZ7mc2qNh2/fmNWrz9
=D5iy
-----END PGP SIGNATURE-----

--Kj7319i9nmIyA2yE--
