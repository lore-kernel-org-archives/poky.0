Return-Path: <martin.jansa@gmail.com>
Received: from mail-ea0-f171.google.com (mail-ea0-f171.google.com
	[209.85.215.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF725E01570
	for <poky@yoctoproject.org>; Wed, 28 Aug 2013 01:53:19 -0700 (PDT)
Received: by mail-ea0-f171.google.com with SMTP id n15so2805890ead.30
	for <poky@yoctoproject.org>; Wed, 28 Aug 2013 01:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=k8QNT6f/F+tsCWqhlSkBdOwcTpDhuSPL7/BWvJNeCPY=;
	b=SY7U2v/ATGxhflVGss+OvWt2m4TM4NZa0EELu2Ef/Vex7l0xuxCKW6vG7SUcKJ+nKZ
	R761I7cr/uo1nH1EbiGq4AZJ2lQ3lyjhmgcOfheiwqkso5JAUjppz7ONBjatB5EUSvuH
	ImOZ8hn/j0vCRMsa5JwGrqnQ6hYr5r9DBcHwZpRDkPlgkXZR8hSMugfhYyy060sOgaaW
	+ei/05UTVo28n7YrcxfdvJRD++Np5ZEM2TSkcTA5EWixGwCkRT7g/2SELEGyMWb7++43
	k0cnUt1WqJhIneDxgXROxkWtPlQ0aFoKjI9gXwQfRKRKcm2pdY5CII0mbHURCDhRWlwf
	GCUQ==
X-Received: by 10.14.115.133 with SMTP id e5mr42090774eeh.27.1377679998614;
	Wed, 28 Aug 2013 01:53:18 -0700 (PDT)
Received: from localhost (ip-62-24-80-145.net.upcbroadband.cz. [62.24.80.145])
	by mx.google.com with ESMTPSA id
	b45sm35470780eef.4.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 28 Aug 2013 01:53:18 -0700 (PDT)
Date: Wed, 28 Aug 2013 10:54:29 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: kiran bobbu <kiran.bobbu@gmail.com>
Message-ID: <20130828085429.GJ3544@jama>
References: <CAO7jpqeaH9S6aXxCkzsu_B99fNnJvQbvKsGZrH4KWszFuPkbOg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAO7jpqeaH9S6aXxCkzsu_B99fNnJvQbvKsGZrH4KWszFuPkbOg@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky@yoctoproject.org
Subject: Re: how to modify compilation flags for hardfp compilation
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
X-List-Received-Date: Wed, 28 Aug 2013 08:53:21 -0000
X-Groupsio-MsgNum: 9140
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="fo1QyUNofDrBKNDB"
Content-Disposition: inline

--fo1QyUNofDrBKNDB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 28, 2013 at 01:53:43PM +0530, kiran bobbu wrote:
> Hi,
>=20
> By default  poky project builds with softfp compiler option.
> how to modify this flag   to build poky filesystem   with compiler flag as
> hardfp?

See DEFAULTTUNE values in conf/machine/

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--fo1QyUNofDrBKNDB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.21 (GNU/Linux)

iEYEARECAAYFAlIdusUACgkQN1Ujt2V2gBysWQCdHCJl3OvNwTayx/zW+IkbQM3q
DjwAnAi7rbyRR8qS6OBsV5hJleZwAF5a
=rRqf
-----END PGP SIGNATURE-----

--fo1QyUNofDrBKNDB--
