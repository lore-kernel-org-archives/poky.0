Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B77A4E01385
	for <poky@yoctoproject.org>; Thu,  9 Aug 2012 06:18:18 -0700 (PDT)
Received: by wibhq12 with SMTP id hq12so261653wib.11
	for <poky@yoctoproject.org>; Thu, 09 Aug 2012 06:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=oz1PPaZR6fShpyNZBjj3PX/YkeXgA1chru2lmfNDXSU=;
	b=HLA5hnq1lDYDN4FCUYGiLKBF35BHvwc3pUje7UB+Ll8dSPieAuSmi4lE4bos60iApV
	st5Wr/RlWqXuruQeKsg/6dGAtNW1JIt5g0se2HTQdLOv0cLqO0ZvMSKrHkhjNqDezguU
	EdlJdzOJuTzUoFvuB/n3pqbgIT6EtfhA1AYDIe5wKxdO/vd96Jh2Wf8jY/9qm2R39V9Q
	i34xwSn4ENuts1ViqcV20wyW8DpKH/z6KkKxYmcPFtQeAHfghfJd3sRiC6WqeTNcULZk
	fmDiKrWf/A557QssyPZiKgmdfIk4s2XHLFFRNmdS5C/dN6OE3fmJyD1HtWb+TdSUtPje
	Xk3A==
Received: by 10.216.195.40 with SMTP id o40mr11832907wen.36.1344518297275;
	Thu, 09 Aug 2012 06:18:17 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id l5sm2572803wix.5.2012.08.09.06.18.15
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 09 Aug 2012 06:18:16 -0700 (PDT)
Date: Thu, 9 Aug 2012 15:18:16 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20120809131816.GB3273@jama.jama.net>
References: <5023B746.5020005@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <5023B746.5020005@mlbassoc.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: SSTATE_MIRRORS setup
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
X-List-Received-Date: Thu, 09 Aug 2012 13:18:19 -0000
X-Groupsio-MsgNum: 8089
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="zx4FCpZtqtKETZ7O"
Content-Disposition: inline

--zx4FCpZtqtKETZ7O
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 09, 2012 at 07:12:38AM -0600, Gary Thomas wrote:
> What pattern should I use to pick up a shared SSTATE cache, now
> that it has been split into bits?  I used to use something like this:
>    SSTATE_MIRRORS ?=3D "\
>    file://.* file:///local/my_poky/sstate-cache/"
>=20
> It looks like the manual & sample local.conf haven't caught up with
> this change yet.

Add PATH as described in
http://lists.linuxtogo.org/pipermail/openembedded-devel/2012-July/040712.ht=
ml

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--zx4FCpZtqtKETZ7O
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlAjuJgACgkQN1Ujt2V2gBw1lACeNLFiDvJzRhmQhp3wTpgKP+vP
QkkAnjLsatA7kLSMVYzGw1SENwou/Xjm
=abuK
-----END PGP SIGNATURE-----

--zx4FCpZtqtKETZ7O--
