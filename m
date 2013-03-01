Return-Path: <martin.jansa@gmail.com>
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id BA045E00429
	for <poky@yoctoproject.org>; Fri,  1 Mar 2013 11:11:03 -0800 (PST)
Received: by mail-pa0-f52.google.com with SMTP id fb1so1993523pad.39
	for <poky@yoctoproject.org>; Fri, 01 Mar 2013 11:11:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=OkUcPtVgFSz/yA6Tf91p6OZIjo0DjKZAfWo7IeZYsis=;
	b=ebTQbOYAf127Z/G9ME696ahZUt/jSuvh6j92kx4s4qCz5fWDHjfo30bQ+6HXzSMAiv
	vv5F6GFKL3uOKPRMB7x3+mqCaJdH5HcGqUotvZ/8w3tLNj3F7CYXgRGwY90heNWJ/MAq
	7TwjoNsJDd+bYZoD0ibxgfVCBXUuHUC23i/MWx8ecIYFfrWfkPl4alvAHd7uoOuEPOon
	CDW9JYeYjV/U8vKPDySaurXtgc7iMo8E6XR+kETt+QaeKOie0EzfJnDBZy94/9+L7n51
	12Y5peUENt1kOgx3cnFa654fKr6+JDEO8rO/8PRCsupl4q0B8q52ITQKF3O3001EAAxL
	YzIQ==
X-Received: by 10.68.197.106 with SMTP id it10mr3180074pbc.22.1362165063509;
	Fri, 01 Mar 2013 11:11:03 -0800 (PST)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id kt5sm12894134pbc.30.2013.03.01.11.10.59
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Fri, 01 Mar 2013 11:11:02 -0800 (PST)
Date: Fri, 1 Mar 2013 20:10:53 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20130301191053.GR3279@jama>
References: <1362135473-20635-1-git-send-email-Martin.Jansa@gmail.com>
	<1362154793-10296-1-git-send-email-Martin.Jansa@gmail.com>
	<CAHUNapTo8kOO+k9aFOnDCyc6LgMtx+tRzm=hJW4q_5rjL+Nd0Q@mail.gmail.com>
	<20130301173817.GP3279@jama>
	<CAHUNapTJVB_Opb1pBpMEpWTc8S9gZBz1S+iAJAyg9ybEwao=hQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHUNapTJVB_Opb1pBpMEpWTc8S9gZBz1S+iAJAyg9ybEwao=hQ@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky@yoctoproject.org
Subject: Re: [PATCHv2] poky.conf: update SANITY_TESTED_DISTROS
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
X-List-Received-Date: Fri, 01 Mar 2013 19:11:03 -0000
X-Groupsio-MsgNum: 8724
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="TJ9V72hR/LoebVea"
Content-Disposition: inline

--TJ9V72hR/LoebVea
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 01, 2013 at 01:39:20PM -0500, Trevor Woerner wrote:
> On Fri, Mar 1, 2013 at 12:38 PM, Martin Jansa <martin.jansa@gmail.com> wr=
ote:
> > On Fri, Mar 01, 2013 at 12:15:01PM -0500, Trevor Woerner wrote:
> >> commit be248b0222bda151ae5f94be6bb8a53e192ecded on master is causing:
> >>
> >> WARNING: Host distribution "openSUSE 12.2" has not been validated with
> >> this version of the build system; you may possibly experience
> >> unexpected failures. It is recommended that you use a tested
> >> distribution.
> >
> > What's the name of LSB directory in sstate-cache?
> >
> > According to output you sent to oe-core it should be SUSE-LINUX-12.2 and
> > this warning should match that.
>=20
> Yes, there is a directory in sstate-cache named "SUSE-LINUX-12.2".
>=20
> > But it's probably read from /etc/SuSE-release in your case, I'll send
> > patch to remove /etc/SuSE-release and /etc/redhat-release reading in
> > sanity.bbclass.
>=20
> $ cat /etc/SuSE-release
> openSUSE 12.2 (x86_64)
> VERSION =3D 12.2
> CODENAME =3D Mantis
>=20
> > Please test it when you can.
>=20
> Sure, I'm happy to help.

Retry with
http://lists.linuxtogo.org/pipermail/openembedded-core/2013-March/036566.ht=
ml
https://lists.yoctoproject.org/pipermail/poky/2013-March/008820.html
applied, thanks.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--TJ9V72hR/LoebVea
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlEw/T0ACgkQN1Ujt2V2gBxXngCfZHUfoyNGqOy/EPccuAVioFg6
kBYAn3P8nCcCiWdFjxKpehWLf7Z9FFR5
=mCkK
-----END PGP SIGNATURE-----

--TJ9V72hR/LoebVea--
