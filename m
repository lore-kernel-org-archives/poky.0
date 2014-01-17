Return-Path: <alexandre.belloni@free-electrons.com>
Received: from mail.free-electrons.com (top.free-electrons.com [176.31.233.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55E51E0086D
	for <poky@yoctoproject.org>; Fri, 17 Jan 2014 01:55:45 -0800 (PST)
Received: by mail.free-electrons.com (Postfix, from userid 106)
	id 01C267E7; Fri, 17 Jan 2014 10:55:48 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	mail.free-electrons.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
	shortcircuit=ham autolearn=disabled version=3.3.2
Received: from localhost (128-79-216-6.hfc.dyn.abo.bbox.fr [128.79.216.6])
	by mail.free-electrons.com (Postfix) with ESMTPSA id A86CC61B;
	Fri, 17 Jan 2014 10:55:48 +0100 (CET)
Date: Fri, 17 Jan 2014 10:55:42 +0100
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
To: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <20140117095542.GC2348@piout.net>
References: <1389067342-25262-1-git-send-email-alexandre.belloni@free-electrons.com>
	<52D8E0A0.5050107@windriver.com>
MIME-Version: 1.0
In-Reply-To: <52D8E0A0.5050107@windriver.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky@yoctoproject.org, jimwall@q.com, brian@crystalfontz.com
Subject: Re: [for-dora][PATCH] matchbox-keyboard: daemonize launch
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
X-List-Received-Date: Fri, 17 Jan 2014 09:55:46 -0000
X-Groupsio-MsgNum: 9403
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Fig2xvG2VGoz8o/s"
Content-Disposition: inline

--Fig2xvG2VGoz8o/s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 17, 2014 at 03:49:52PM +0800, Robert Yang wrote :
>=20
> Hi Alexandre,
>=20
> Sorry for the late response, I think that the master branch also has this
> problem ? If so, we need fix it on master firstly, then backport it to do=
ra.
>=20

Ok, I'll send a patch for master soon.

--=20
Alexandre Belloni, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com

--Fig2xvG2VGoz8o/s
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (GNU/Linux)

iQIcBAEBCAAGBQJS2P4dAAoJEKbNnwlvZCyzAlkQAIG5eLLPhdQ9Y2leko4yBnTA
3C6dbuJCPTbYLWZxeO77yrijhEgcw12YmdNO1MVgb3UFhXeWxB0tvw3HuniqTbx+
nrMX90aYGRexArTHE4eWdm9u5+ZUeiYGnHALAIEMfbpdUwwJKZMCvkhGdfn/l85G
cf2YKYzjDDmyceI+3VdTOr/aRhwzrI86UBV+1sc0udqk3FJ+cHi0pL5tWnVYI6t+
pLfTec+tNGRil+svhvlZWC9aQVTokadsLCqVVt6u9qamX07vr52myC5UE5xZxtaB
H9k5B/1erdVxlVDIHqugpxPVT6kg+BwW1mXzTKH7DK6CaaP+o+/bvWa06h7ee09s
5pkD2ONmMjGgpniWe84aZZL/OCL6rOEq+mdKrGEWg5xp0pA4C8hEmGe3U6C6kC45
tKkgxZ6kbD/AvmYi5uA+RMPGKybFYq1n4AmUrYVX/HnvznzTzs7bncyTqieZcfEq
+InRcLtvkVQoFDp4a5Od3Yx66fqaj2FDeUAMSzV79yyC/u5e6/i5pmfXFBmiR00f
4urQkZCA9k0wbiYNa9HdPv8N6OUVSimA4abLnrmdSlYs2yLsU7BRpmohRBVU6cCU
Qb7Ten21Ay8oSx/aPQBWVuRIhY8I3/8Rk2Q2fTHsIQ74noKIX0Ni4G88/1GNOAN2
puPtKvt7dtb30NgLZBt5
=hblU
-----END PGP SIGNATURE-----

--Fig2xvG2VGoz8o/s--
