Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6BF3E0123F
	for <poky@yoctoproject.org>; Thu, 12 Jan 2012 05:37:52 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by eekb15 with SMTP id b15so812294eek.35
	for <poky@yoctoproject.org>; Thu, 12 Jan 2012 05:37:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=MLDIHZbpzbfmpiy58RDkSCD42hmdfdpXaZQOG7Jlots=;
	b=MXH+sUxotaf/okeEDTVTwvEByeLEAqpsXs/uWPtzRC/j0WBHD0ojhn+BJ25/VzDGaP
	KAGrXUKoWwS6iMLSJvUDgO4/h2OAlP12PK+dIwpGhdQLbeUp2WjJh87M71xkpn73r/+u
	lr+cqhZMxU4XHMf2iVd9vPcZn4sKHRfyzcM40=
Received: by 10.14.126.80 with SMTP id a56mr1378192eei.121.1326375471550;
	Thu, 12 Jan 2012 05:37:51 -0800 (PST)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id b49sm19567143eec.9.2012.01.12.05.37.50
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 12 Jan 2012 05:37:50 -0800 (PST)
Date: Thu, 12 Jan 2012 14:37:49 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20120112133749.GD3452@jama.jama.net>
References: <4F0EAE81.8030800@mlbassoc.com>
	<20120112131352.GC3452@jama.jama.net>
	<4F0EE095.1090709@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <4F0EE095.1090709@mlbassoc.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: sstate info
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
X-List-Received-Date: Thu, 12 Jan 2012 13:37:53 -0000
X-Groupsio-MsgNum: 7353
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="VMt1DrMGOVs3KQwf"
Content-Disposition: inline

--VMt1DrMGOVs3KQwf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 12, 2012 at 06:31:01AM -0700, Gary Thomas wrote:
> On 2012-01-12 06:13, Martin Jansa wrote:
> > On Thu, Jan 12, 2012 at 02:57:21AM -0700, Gary Thomas wrote:
> >> I'm trying to understand why sstate sometimes [most times in my case]
> >> is not reusable.  Comparing some of the .siginfo files gives me some
> >> info, e.g.
> >>
> >> $ bitbake-diffsigs p60_poky/sstate-cache/sstate-pseudo-native-i686-lin=
ux-1.2-r4-i686-2-66ad8e10f260d506d065831a738c04a3_populate-sysroot.tgz.sigi=
nfo
> >> p60_test_pass1/sstate-cache/sstate-pseudo-native-i686-linux-1.2-r4-i68=
6-2-c7e01d52b467bbe3af0556a43806521a_populate-sysroot.tgz.siginfo
> >> Hash for dependent task virtual:nativepseudo_1.2.bb.do_install changed=
 from 9edd41e331b29f08941225709c325a0d to 9865df7c4aa84fdb288c06faecf63426
> >>
> >> How do I figure out what went into the hash(es) that changed?
> >
> > Try to look in stamps directory
> >
> > something like:
> > tmp-eglibc/stamps/x86_64-linux/pseudo-native-1.2-r4.do_install.sigdata.=
504f9aac443e1f135aa2d1cbcf84c614
>=20
> How can I interpret the contents of that file?

find file for virtual:nativepseudo_1.2.bb.do_install
with checksum 9edd41e331b29f08941225709c325a0d and=20
with checksum 9865df7c4aa84fdb288c06faecf63426 and
then compare them with bitbake-diffsigs again

or use bitbake-diffsigs for one sigdata file

Cheers,
--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--VMt1DrMGOVs3KQwf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.18 (GNU/Linux)

iEYEARECAAYFAk8O4i0ACgkQN1Ujt2V2gByljACgjTXv/IeGqqY2MEIsHkUBB0lT
1uQAniQ6Rz+ehLRtV4qpxnHJQRSLBcVr
=Me8/
-----END PGP SIGNATURE-----

--VMt1DrMGOVs3KQwf--
