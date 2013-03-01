Return-Path: <martin.jansa@gmail.com>
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 583CDE0146C
	for <poky@yoctoproject.org>; Fri,  1 Mar 2013 09:38:26 -0800 (PST)
Received: by mail-pa0-f50.google.com with SMTP id fa11so1931334pad.9
	for <poky@yoctoproject.org>; Fri, 01 Mar 2013 09:38:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=wae5ZNNEPXcubTqZIiba4Kioea36iaeInKEOa9FqqDI=;
	b=IDcSE54XaNcsQ4FArH7x0X/jvF3656bcTrnbSrx6pQiPD9dBa9TWL21n4470b2EJG3
	wwumpJgeKP1Ih9RV5BCmk7mXhe8dlWFHhfq9skDxcdZA8zAk0Pw7TfIlKKOXjUmJxvBS
	F4OA4qkWEjw9JhyFeZr571ySP+OzH2hwyd+lCSYx8TgAOuAVnMB4HdS+Yj3saBMkb2JX
	Z2usqskZzor2KHB8N5ByQ8Dbwogl70NUcJrijti2VQUbJBVD7WvpShXCt9/igDe9LOjO
	Nn95V5WqRDB878sOgcMvbdOeEV0k7QJkoMLGsaX2/UTgrqDbmHTA2EjeyOR6AjEwBYfw
	hMww==
X-Received: by 10.66.122.74 with SMTP id lq10mr19717404pab.189.1362159506079; 
	Fri, 01 Mar 2013 09:38:26 -0800 (PST)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id
	td10sm12690131pbb.25.2013.03.01.09.38.23
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Fri, 01 Mar 2013 09:38:24 -0800 (PST)
Date: Fri, 1 Mar 2013 18:38:17 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20130301173817.GP3279@jama>
References: <1362135473-20635-1-git-send-email-Martin.Jansa@gmail.com>
	<1362154793-10296-1-git-send-email-Martin.Jansa@gmail.com>
	<CAHUNapTo8kOO+k9aFOnDCyc6LgMtx+tRzm=hJW4q_5rjL+Nd0Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHUNapTo8kOO+k9aFOnDCyc6LgMtx+tRzm=hJW4q_5rjL+Nd0Q@mail.gmail.com>
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
X-List-Received-Date: Fri, 01 Mar 2013 17:38:26 -0000
X-Groupsio-MsgNum: 8719
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="y2MHPAl/EzyWgzIZ"
Content-Disposition: inline

--y2MHPAl/EzyWgzIZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 01, 2013 at 12:15:01PM -0500, Trevor Woerner wrote:
> commit be248b0222bda151ae5f94be6bb8a53e192ecded on master is causing:
>=20
> WARNING: Host distribution "openSUSE 12.2" has not been validated with
> this version of the build system; you may possibly experience
> unexpected failures. It is recommended that you use a tested
> distribution.

What's the name of LSB directory in sstate-cache?

According to output you sent to oe-core it should be SUSE-LINUX-12.2 and
this warning should match that.

But it's probably read from /etc/SuSE-release in your case, I'll send
patch to remove /etc/SuSE-release and /etc/redhat-release reading in
sanity.bbclass. Please test it when you can.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--y2MHPAl/EzyWgzIZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlEw54kACgkQN1Ujt2V2gBztHQCfYZpKhmJ6xqhniN/C6QvgOS71
uTkAnjNwaBtyC4lWGrl1oqUzgOOXzpNP
=il2O
-----END PGP SIGNATURE-----

--y2MHPAl/EzyWgzIZ--
