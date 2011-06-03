Return-Path: <martin.jansa@gmail.com>
Received: from mail-bw0-f48.google.com (mail-bw0-f48.google.com
	[209.85.214.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1B9084C80485
	for <poky@yoctoproject.org>; Fri,  3 Jun 2011 04:34:44 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by bwz8 with SMTP id 8so2838443bwz.35
	for <poky@yoctoproject.org>; Fri, 03 Jun 2011 02:34:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=638exx5Fc+fe40IitvuBL9JmNXPMFDl/dnoyESv46Ug=;
	b=Vk8k5GU+8YVP7riiZ9ya1fZq0y20/doBxCsKCja9dMuy8APXbLvKq7PjL2AkXi3qq7
	SSV8Oi3ul/+0dTSY275lD5DbraU3reVoj4CV7fCUBUngXSWhbYTBYunShPssGmDZv5I9
	J+Hk0aE9VZU3MIraUPKUsNWoSSQVob3Q4vms0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	b=kZdrMhS4lDdrNdRfLz/IvHJevaS4XuaJrOCtGgNlJQzGXLv33xlTJc4VtL0XItMz/6
	4EmlsA3TcynjpRs3foqhs174A3nVevszwa+kbBXpSZADR4cIVM7ACzhDEaIvNOdcVe/m
	GKANBL1ia76QHLsGxcDMBSLTjkoPyFn0cL+Mo=
Received: by 10.204.133.27 with SMTP id d27mr1743836bkt.69.1307093683349;
	Fri, 03 Jun 2011 02:34:43 -0700 (PDT)
Received: from localhost ([94.230.152.115])
	by mx.google.com with ESMTPS id x6sm1124200bkv.12.2011.06.03.02.34.41
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 03 Jun 2011 02:34:42 -0700 (PDT)
Date: Fri, 3 Jun 2011 11:34:40 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Kang Kai <Kai.Kang@windriver.com>
Message-ID: <20110603093440.GL3281@jama.jama.net>
References: <4DE8A68E.9010205@windriver.com>
MIME-Version: 1.0
In-Reply-To: <4DE8A68E.9010205@windriver.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: build gnutls failed on mpc8315
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
X-List-Received-Date: Fri, 03 Jun 2011 09:34:45 -0000
X-Groupsio-MsgNum: 6492
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="tfmLD+Hxjexp/STe"
Content-Disposition: inline

--tfmLD+Hxjexp/STe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 03, 2011 at 05:17:02PM +0800, Kang Kai wrote:
> Hi All,
>=20
> My local repository is 484c4e73245c93a08413cd204513bf5c5698b994, and set=
=20
> MACHINE ?=3D "mpc8315e-rdb".
>=20
> When build gnutls, it fails. But when I build it for arm, it succeeds.
> Do anyone meets that before, thanks!

Yes on arm:
http://lists.linuxtogo.org/pipermail/openembedded-core/2011-June/003591.html

patch was merged, but without PR bump so please try to -c clean it
before rebuilding to run configure again.

another gnutls patch with changed PR was sent to list yesterday so
manual clean won't be needed after it.

Regards,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--tfmLD+Hxjexp/STe
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.17 (GNU/Linux)

iEYEARECAAYFAk3oqrAACgkQN1Ujt2V2gByINwCeO928FuBVIdbODrdKas0Q1nmC
te4AoLJpJWPCeyswH7Tt59E6669p9Y1C
=2QIe
-----END PGP SIGNATURE-----

--tfmLD+Hxjexp/STe--
