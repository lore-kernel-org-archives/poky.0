Return-Path: <martin.jansa@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA569E00747
	for <poky@yoctoproject.org>; Fri,  8 Jun 2012 08:14:32 -0700 (PDT)
Received: by weyr3 with SMTP id r3so848991wey.35
	for <poky@yoctoproject.org>; Fri, 08 Jun 2012 08:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=9qKQDomAh+Jj0Ggaa0Dl5T4Fb4ABYbg5Y2geEXgM5RI=;
	b=w54Ij/cr/V2CyG3HsPJCZofdp4EpYY0zZRx8kplBqiZ7GFgH5EKvGXBQVBDLnGwl+6
	u/oViW56PUhseiqhsv9fbskYw7kgfOTglR+uXOV+QUO9ANJaCCiQrXRSp/BttVPbb5gd
	yoSNsZV8CAPsGg6kDp9mnIK0XznFNS2/5UirobUO84Yj6bTCPuQXLL6KFv5U3ca4U2XR
	aeEsRfHa9jSAbyl+9vEmu6iKDurOmVr7RnN9Y2ymsj3dv1QkcvGr/HcyWbK+Ygb2LAuy
	k5H0IN+rMRmKqJA9H6hs4PknKHSqb69ACzIhLk5cwwVuGMOh6J9JXOn/LUiLrETQE3rm
	XnKA==
Received: by 10.180.93.99 with SMTP id ct3mr1226376wib.13.1339168471517;
	Fri, 08 Jun 2012 08:14:31 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id ez4sm1745588wid.3.2012.06.08.08.14.29
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 08 Jun 2012 08:14:30 -0700 (PDT)
Date: Fri, 8 Jun 2012 17:14:48 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Message-ID: <20120608151448.GJ3140@jama.jama.net>
References: <cover.1338538332.git.liezhi.yang@windriver.com>
	<abb5651cbd1e4851b0b766d44ae10984429ca3d9.1338538332.git.liezhi.yang@windriver.com>
	<4FD2158B.8070102@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <4FD2158B.8070102@linux.intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] kernel.py: replace os.popen with subprocess.Popen
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
X-List-Received-Date: Fri, 08 Jun 2012 15:14:33 -0000
X-Groupsio-MsgNum: 7827
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ZG+WKzXzVby2T9Ro"
Content-Disposition: inline

--ZG+WKzXzVby2T9Ro
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 08, 2012 at 08:08:59AM -0700, Darren Hart wrote:
>=20
>=20
> On 06/01/2012 01:51 AM, Robert Yang wrote:
> > Replace os.popen with subprocess.Popen since the older function would
> > fail (more or less) silently if the executed program cannot be found
> >=20
> > More info:
> > http://docs.python.org/library/subprocess.html#subprocess-replacements
> >=20
> > [YOCTO #2454]
> >=20
> > Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
> > ---
> >  scripts/lib/bsp/kernel.py |    5 +++--
> >  1 files changed, 3 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/scripts/lib/bsp/kernel.py b/scripts/lib/bsp/kernel.py
> > index 8b3aa72..7c6da4e 100644
> > --- a/scripts/lib/bsp/kernel.py
> > +++ b/scripts/lib/bsp/kernel.py
> > @@ -31,6 +31,7 @@ import os
> >  import shutil
> >  from tags import *
> >  import glob
> > +import subprocess
> > =20
> > =20
> >  def find_bblayers(scripts_path):
> > @@ -678,7 +679,7 @@ def base_branches(context):
> >      print "Getting branches from remote repo %s..." % giturl
> > =20
> >      gitcmd =3D "git ls-remote %s *heads* 2>&1" % (giturl)
> > -    tmp =3D os.popen(gitcmd).read()
> > +    tmp =3D subprocess.Popen(gitcmd, shell=3DTrue, stdout=3Dsubprocess=
=2EPIPE).stdout.read()
>=20
> Subprocess is right module to use here, but I believe the recommended
> method would be:
>=20
> subprocess.call(gitcmd...
>=20
> According to:
> http://docs.python.org/library/subprocess.html
>=20
> > =20
> >      branches =3D []
> > =20
> > @@ -708,7 +709,7 @@ def all_branches(context):
> >      print "Getting branches from remote repo %s..." % giturl
> > =20
> >      gitcmd =3D "git ls-remote %s *heads* 2>&1" % (giturl)
> > -    tmp =3D os.popen(gitcmd).read()
> > +    tmp =3D subprocess.Popen(gitcmd, shell=3DTrue, stdout=3Dsubprocess=
=2EPIPE).stdout.read()
> > =20
> >      branches =3D []
> > =20
>=20
> And here I think subprocess.check_output(...) is preferred.

That's only in python 2.7 and newer, are distros with python-2.6
unsupported now?

I did the same mistake in opkg-utils (patch for it is on yocto ML).
https://lists.yoctoproject.org/pipermail/yocto/2012-May/009182.html

Cheers,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--ZG+WKzXzVby2T9Ro
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAk/SFugACgkQN1Ujt2V2gBwmMwCgnNxwGCnsD0koCLwbx63z6z1+
Du8An1kbKF3eOKptCW1NI5tW0G6cc4At
=bbiD
-----END PGP SIGNATURE-----

--ZG+WKzXzVby2T9Ro--
