Return-Path: <martin.jansa@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E10B4E0127A
	for <poky@yoctoproject.org>; Thu, 18 Oct 2012 10:42:55 -0700 (PDT)
Received: by mail-we0-f176.google.com with SMTP id z53so5959391wey.35
	for <poky@yoctoproject.org>; Thu, 18 Oct 2012 10:42:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=h+tPlYzAf0zzcd2dKkVZP6Xne3NU7+AJDCCjF0ipk6w=;
	b=UdE728u76FKt4nhISZ/74oP+QayWCAlmaZ3kVFOIWwxK41djHj16Tmsi3PgPNPWYm9
	Mym9y+QEnzNH4BT98GxCZFcf3isT5HFiB6LKoHFK73zMyWO85LcTS+hZ53zDM9uz1AKN
	6UtynpVWd+sglPbJKd6QkxnD07V2AzN+2HDQIh3Ku1SUOVj/28d4KBkmAD06hRszuSXm
	RpDq+Lom/dXV21l+QECXnV9TGmuJfQmHL9DJkikUDyvcqSUYEdgD21YT5KjNny3ts+9m
	mAISxgyjt2MnjsFTrxtv250cvEi1RbQ89N1WhYTteO6SaA6thBq4c1HIaDBI/1HgjgwU
	j3Rw==
Received: by 10.181.13.239 with SMTP id fb15mr12870888wid.22.1350582174603;
	Thu, 18 Oct 2012 10:42:54 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id hv8sm31159881wib.0.2012.10.18.10.42.51
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 18 Oct 2012 10:42:51 -0700 (PDT)
Date: Thu, 18 Oct 2012 19:43:01 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20121018174301.GB3087@jama.jama.net>
References: <5080305D.2060001@mlbassoc.com>
	<CAJTo0Lb7e7-OJMC1yG3c9DVSDoAri0vjD79mBm7K8MmU9sbiJg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0Lb7e7-OJMC1yG3c9DVSDoAri0vjD79mBm7K8MmU9sbiJg@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Issue with git fetcher
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
X-List-Received-Date: Thu, 18 Oct 2012 17:42:56 -0000
X-Groupsio-MsgNum: 8397
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="rJwd6BRFiFCcLxzm"
Content-Disposition: inline

--rJwd6BRFiFCcLxzm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 18, 2012 at 05:41:13PM +0100, Burton, Ross wrote:
> On 18 October 2012 17:37, Gary Thomas <gary@mlbassoc.com> wrote:
> > I ran across an issue with this with a recipe I imported from
> > meta-openembedded/meta-oe.  It contained these lines:
> >   SRCREV =3D "2fb4be9a99a2c2a9435339830e3d940171cc0d9b"
> >   SRC_URI =3D "git://git.libav.org/libav.git;protocol=3Dgit;branch=3Dre=
lease/0.8"
>=20
> Specifying a revision *and* specifying a branch doesn't make sense
> with git.  Presumably the SRCREV is the correct reference and the
> branch parameter is just causing network traffic for no reason.

It does make sense.

e.g. AUTOREV set in some .inc file.

Cheers,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--rJwd6BRFiFCcLxzm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlCAP6UACgkQN1Ujt2V2gByTQwCdFmJN+elAPH/lUHZEFpwINZls
Zk4AoII/7clGsPvlRjBqg3FsRVKK4+/B
=0Qkp
-----END PGP SIGNATURE-----

--rJwd6BRFiFCcLxzm--
