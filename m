Return-Path: <martin.jansa@gmail.com>
Received: from mail-da0-f46.google.com (mail-da0-f46.google.com
	[209.85.210.46]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 3D249E01458
	for <poky@yoctoproject.org>; Fri,  1 Mar 2013 13:38:56 -0800 (PST)
Received: by mail-da0-f46.google.com with SMTP id z8so1595658dad.19
	for <poky@yoctoproject.org>; Fri, 01 Mar 2013 13:38:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=mBw5EPM0yoEiEua52gotFdM1JaFG3TD7AxrrPTOxJU0=;
	b=H2AGaSKWBRi188a8bp7a7sB5l29NSMbVpidPlneM00JtNGXT7mkxU89INGCMJeoHzH
	D/fzr0rJxkJDXGZsOUpvjbrG5fHunaMVHryeGUtpr2FR3JyjSe5FLHNVoGurTq/ZIwcp
	VHbWMGiWk9c9w1RlXb1Wiws1ebDBkbTVb4t1AvqYjGoJ+uiFqLLH9aLm/uykVRyqdpQq
	ktE+bB/RYCHqFHYi/UKqd7ThpDvYhOs12/MEZ8L26iJbdSj2BoOurGhNB7axdOzORut1
	e2jZg2Fcpvh/uZLJov2IKxWRX7n6xl1ChwZWCwvDD4pmb2o3YLQ5CwJiWBf3RnvCxMIR
	GPew==
X-Received: by 10.66.40.238 with SMTP id a14mr20380736pal.209.1362173935958;
	Fri, 01 Mar 2013 13:38:55 -0800 (PST)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id ri1sm13218410pbc.16.2013.03.01.13.38.52
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Fri, 01 Mar 2013 13:38:54 -0800 (PST)
Date: Fri, 1 Mar 2013 22:38:42 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20130301213842.GT3279@jama>
References: <1362135473-20635-1-git-send-email-Martin.Jansa@gmail.com>
	<1362154793-10296-1-git-send-email-Martin.Jansa@gmail.com>
	<CAHUNapTo8kOO+k9aFOnDCyc6LgMtx+tRzm=hJW4q_5rjL+Nd0Q@mail.gmail.com>
	<20130301173817.GP3279@jama>
	<CAHUNapTJVB_Opb1pBpMEpWTc8S9gZBz1S+iAJAyg9ybEwao=hQ@mail.gmail.com>
	<20130301191053.GR3279@jama>
	<CAHUNapTnV7mCppOBC=-JuXp-7Tc6KquyN2=KJWRh0rPOPY1WaA@mail.gmail.com>
	<20130301212012.GS3279@jama>
	<CAHUNapSQW42ShgSNHws0uZ_coJQLi_wzbiCix4cvONSfDCnKRQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHUNapSQW42ShgSNHws0uZ_coJQLi_wzbiCix4cvONSfDCnKRQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 01 Mar 2013 21:38:56 -0000
X-Groupsio-MsgNum: 8729
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="v7CWsE/Dy737oYst"
Content-Disposition: inline

--v7CWsE/Dy737oYst
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 01, 2013 at 04:29:43PM -0500, Trevor Woerner wrote:
> On Fri, Mar 1, 2013 at 4:20 PM, Martin Jansa <martin.jansa@gmail.com> wro=
te:
> > This line shouldn't be needed with this patch for oe-core:
> >
> http://lists.linuxtogo.org/pipermail/openembedded-core/2013-March/036566.=
html
>=20
> Sorry :-(
>=20
> Applying that patch to master's HEAD:

Do you also have this one?
https://lists.yoctoproject.org/pipermail/poky/2013-March/008824.html

>=20
>     8c3550cc16b8382b005550f71ae0df6e7916b8e9 sanity.bbclass: always use
> oe.lsb.distro_identifier method
>     8264863ea0674f6cb105f5f7301861408fdc409b Add KERNEL_EXTRA_ARGS parame=
ter
>     86d6ec51f0e1a4f5335d72928ef14ea1335d49b0 module.bbclass: Create a new
> depmodwrapper to assist cross-installs
>     be248b0222bda151ae5f94be6bb8a53e192ecded poky.conf: update
> SANITY_TESTED_DISTROS
>     e5f3b992d7edc7b5e2467865a9fad738fbeaf40f sanity: use lsb
> distro_identifier
>     ....
>=20
> still produces the problem:
>=20
>     WARNING: Host distribution "SUSE-LINUX-12.2" has not been validated
> with this version of the build system; you may possibly experience
> unexpected failures. It is recommended that you use a tested distribution.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--v7CWsE/Dy737oYst
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlExH+IACgkQN1Ujt2V2gByv9gCfSsz3jVhdxEqIhc47v+1pfqbm
XGUAoK4iHl1nnLPJyqykTSXMv3wKSVgs
=Iec2
-----END PGP SIGNATURE-----

--v7CWsE/Dy737oYst--
