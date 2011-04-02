Return-Path: <martin.jansa@gmail.com>
Received: from mail-bw0-f48.google.com (mail-bw0-f48.google.com
	[209.85.214.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 83CBE4C800A6
	for <poky@yoctoproject.org>; Sat,  2 Apr 2011 02:47:01 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by bwz8 with SMTP id 8so4655786bwz.35
	for <poky@yoctoproject.org>; Sat, 02 Apr 2011 00:47:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=H3S56/5tDfPzyV1STiAR2DfD4aCLMmjQ6Ku1VIGAnLM=;
	b=ERrGgWgn3dH7mogLdaHlY20dwPdhLws5hi2wTC0uTDGa7yZZa/0SdbHzxXuesqtiA9
	Clk6W3qJQxPO22cXupHRYlOsH/35nzfuGtnyjvALqAFkYPGUdJj2S2HLo5IKCMS87zBX
	ROGSf7Wa6yk32HYtj8O1CHqkxmqsFmVu5bx68=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	b=ncvlNFN+Kiib1TISVofv3PRK3sV0+g1rdhzsDdGnTtrzW9oX9ffgQlMsm+k7e0mOFt
	zZu7DhYZ4kxGGUyHJWYJ/DxPrxZQTUyuy9YEw7Va7ofC1xPX/PPrITQx7HWK3MGa41g6
	nJqUoIS9SwXLrwsOyTNe8g6wXGEneqO+9B8Jw=
Received: by 10.204.20.134 with SMTP id f6mr1555481bkb.165.1301730417855;
	Sat, 02 Apr 2011 00:46:57 -0700 (PDT)
Received: from localhost (161-24.13.24.78.awnet.cz [78.24.13.161])
	by mx.google.com with ESMTPS id q24sm1811397bks.9.2011.04.02.00.46.55
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 02 Apr 2011 00:46:56 -0700 (PDT)
Date: Sat, 2 Apr 2011 09:46:49 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Yu Ke <ke.yu@intel.com>
Message-ID: <20110402074649.GA27265@jama.jama.net>
References: <AANLkTi=KYP7eC05UOX3as0A6xFZE31VQXPZL3ehrwzuh@mail.gmail.com>
	<4D96996C.7010601@intel.com>
MIME-Version: 1.0
In-Reply-To: <4D96996C.7010601@intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky@yoctoproject.org, cahoshing@gmail.com
Subject: Re: Error while trying to pull xcb with X11
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
X-List-Received-Date: Sat, 02 Apr 2011 07:47:02 -0000
X-Groupsio-MsgNum: 5038
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="4Ckj6UjgE2iN1+kY"
Content-Disposition: inline

--4Ckj6UjgE2iN1+kY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Apr 02, 2011 at 11:35:08AM +0800, Yu Ke wrote:
> on 2011-4-1 17:43, chinmaya hoshing wrote:
> > Hi,
> >
> > I am trying to get X11 with libxcb file so accordingly I changed in the
> > bb file of libx11,also I have included libxcb and xcb-utils as runtime
> > dependencies
> >
> > Initially it was in libx11 bb file :--
> > EXTRA_OECONF +=3D "--without-xcb"
> > I changed it to
> > EXTRA_OECONF +=3D "--with-xcb"
> >
> > Following is the error I get :-
> > checking for unistd.h... (cached) yes
> > | checking for sys/param.h... yes
> > | checking for getpagesize... yes
> > | checking for working mmap... yes
> > | checking for nl_langinfo... yes
> > | checking for X11... no
> > | configure: error: Package requirements (xproto >=3D 7.0.13 xextproto
> > xtrans xcb >=3D 1.1.92 kbproto inputproto) were not met:
> > |
> > | No package 'xcb' found
> > |
> > | Consider adjusting the PKG_CONFIG_PATH environment variable if you
> > | installed software in a non-standard prefix.
> > |
> > | Alternatively, you may set the environment variables X11_CFLAGS
> > | and X11_LIBS to avoid the need to call pkg-config.
> > | See the pkg-config man page for more details.
> > | FATAL: oe_runconf failed
> > | ERROR: Task failed: ('function do_configure failed',
> > '/home/laverne-4.0.1/build/tmp/work/x86_64-linux/libx11-native-1_1.3.4-=
r0/temp/log.do_configure.13755')
> > NOTE: package libx11-native-1_1.3.4-r0: task do_configure: Failed
> > ERROR: Task 3573
> > (virtual:native:/home/laverne-4.0.1/meta/recipes-graphics/xorg-lib/libx=
11_1.3.4.bb
> > <http://libx11_1.3.4.bb>, do_configure) failed with 1
> > ERROR:
> > 'virtual:native:/home/laverne-4.0.1/meta/recipes-graphics/xorg-lib/libx=
11_1.3.4.bb
> > <http://libx11_1.3.4.bb>' failed
> >
> > I have libxcb_1.6 version ,also xproto is libxproto_7.0.17
> >
> > Please can  you help me to find the solution for it.
> >
> > Chinmaya
> >
> >
>=20
> I see it is libx11-native do_configure failure, and the xcb-native is=20
> missing. that make sense because xcb recipes does not have BBCLASSEXTEND=
=20
> =3D "native nativesdk", thus xcb is not built for native.
>=20
> I have tried to add BBCLASSEXTEND =3D "native" in xcb recipe, it turn out=
=20
> requiring more dependent recipes to be built for native, which is a bit=
=20
> way too far and undesirable.
>=20
> so let's try another way, since you only care about the runtime libx11=20
> with xcb support, how about the following patches, with which only=20
> native disable xcb, and the runtime libx11 will have xcb support.

Hi,

for libx11-1.4.0 and newer --without-xcb is not an option anymore, so
better to fix it with native xcb sooner than later, for details see

d28cdb2d2e6c910afbaa14b17bd2c0003052df7d in openembedded/master
and the rest of xorg/xcb recipes in openembedded :)

Cheers,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--4Ckj6UjgE2iN1+kY
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.17 (GNU/Linux)

iEYEARECAAYFAk2W1GkACgkQN1Ujt2V2gBwVVgCfcfiPbTnp1Vs3vsZ4MGvcjcRU
q0gAoIf7jeHr0V8inqJVzoJGx5BE77XT
=VGez
-----END PGP SIGNATURE-----

--4Ckj6UjgE2iN1+kY--
