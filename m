Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F8BBE00559; Wed, 30 Jul 2014 01:13:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.171 listed in list.dnswl.org]
Received: from mail-we0-f171.google.com (mail-we0-f171.google.com
	[74.125.82.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9989E003FA
	for <poky@yoctoproject.org>; Wed, 30 Jul 2014 01:13:15 -0700 (PDT)
Received: by mail-we0-f171.google.com with SMTP id p10so816034wes.2
	for <poky@yoctoproject.org>; Wed, 30 Jul 2014 01:13:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=V0h4qm0NVG9Hp7DBvNylbKpQygCruWRjYVIJMZgjwcU=;
	b=wO02psBNrq7mx2kuHdrEK7Grw2awX5tQu8FU8wBmQj1hd8CcDV8OyqY6gxuBb1rnjY
	18LJv9/O8+mXsrZoA0w1K5wErOmxUq0gzj/sxw+OVDww8U1ReCez+TVWhi/QOtue7/wV
	YXDusKFIrdB7cdOjXIjoySJ4b4FvBJq4hGZDn8sgcXvmofZ6V1Z0RWfgMFX32wFwlRc8
	XqpKCeetXnUorrvJIX4jqDdwv7TWkxvg0GOaopfGoeWvqp+hazpiHqTqBlLeub5K6CB9
	lCn4t9Y7oC9aEA5aLB7+CWlqf4sCTdZwpxWqiAszIHmw62FGiBZ4GC5TbzgLFlys/qUY
	ykzA==
X-Received: by 10.180.75.230 with SMTP id f6mr4656904wiw.5.1406707994212;
	Wed, 30 Jul 2014 01:13:14 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	b9sm41204736wic.23.2014.07.30.01.13.12 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 30 Jul 2014 01:13:12 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Wed, 30 Jul 2014 10:13:36 +0200
To: Saul Wold <sgw@linux.intel.com>
Message-ID: <20140730081336.GJ16445@jama>
References: <1406699656.22364.4.camel@localhost.localdomain>
	<53D8A01F.9020305@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <53D8A01F.9020305@linux.intel.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] Add patch 0001-Typo-in-fuser-makes-M-on-all-the-time.patch
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
X-List-Received-Date: Wed, 30 Jul 2014 08:13:27 -0000
X-Groupsio-MsgNum: 9716
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="1X+6QtwRodzgDPAC"
Content-Disposition: inline

--1X+6QtwRodzgDPAC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 30, 2014 at 12:34:55AM -0700, Saul Wold wrote:
>=20
> This patch should be sent to openembedded-core@

and with better subject, something like

psmisc: fix fuser -M

> On 07/29/2014 10:54 PM, Patrice B wrote:
> > This patch fixes a major bug in fuser that makes it behave as if -M
> > option is always used ( http://bugs.debian.org/740275 ). Hoping the
> > patches is correctly done...
> >
> > Signed-off-by: Patrice Bouchand <pbfwdlist at gmail.com>
> >
> > ---
> >   ...001-Typo-in-fuser-makes-M-on-all-the-time.patch | 44 +++++++++++++=
+++++++++
> >   meta/recipes-extended/psmisc/psmisc_22.21.bb       |  2 +
> >   2 files changed, 46 insertions(+)
> >   create mode 100644 meta/recipes-extended/psmisc/files/0001-Typo-in-fu=
ser-makes-M-on-all-the-time.patch
> >
> > diff --git a/meta/recipes-extended/psmisc/files/0001-Typo-in-fuser-make=
s-M-on-all-the-time.patch b/meta/recipes-extended/psmisc/files/0001-Typo-in=
-fuser-makes-M-on-all-the-time.patch
> > new file mode 100644
> > index 0000000..3a4c9a9
> > --- /dev/null
> > +++ b/meta/recipes-extended/psmisc/files/0001-Typo-in-fuser-makes-M-on-=
all-the-time.patch
> > @@ -0,0 +1,44 @@
> > +From 3638cc55b4d08851faba46635d737b24d016665b Mon Sep 17 00:00:00 2001
> > +From: Brad Jorsch <anomie@users.sourceforge.net>
> > +Date: Fri, 28 Feb 2014 21:55:02 +1100
> > +Subject: [PATCH] Typo in fuser makes -M on all the time
> > +
> > +Brad found that fuser had the -M option on all the time.
> > +A simple but significant typo caused this, thanks the the patch.
> > +
> > +Bug-Debian: http://bugs.debian.org/740275
> > +
> > +Signed-off-by: Craig Small <csmall@enc.com.au>
>=20
> This needs an Upstream-Status: Backport?
> > +---
> > + ChangeLog   | 4 ++++
> > + src/fuser.c | 2 +-
> > + 2 files changed, 5 insertions(+), 1 deletion(-)
> > +
> > +diff --git a/ChangeLog b/ChangeLog
> > +index fd1cccf..e5f784c 100644
> > +--- a/ChangeLog
> > ++++ b/ChangeLog
> > +@@ -1,3 +1,7 @@
> > ++Changes in 22.22
> > ++=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > ++	* Fixed typo in fuser which has -M on Debian #740275
> > ++
> > + Changes in 22.21
> > + =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > + 	* Missing comma in fuser(1) added Debian #702391
> > +diff --git a/src/fuser.c b/src/fuser.c
> > +index b485f65..389b302 100644
> > +--- a/src/fuser.c
> > ++++ b/src/fuser.c
> > +@@ -1174,7 +1174,7 @@ int main(int argc, char *argv[])
> > + 		usage(_("No process specification given"));
> > +
> > + 	/* Check if -M flag was used and if so check mounts */
> > +-	if (opts * OPT_ISMOUNTPOINT) {
> > ++	if (opts & OPT_ISMOUNTPOINT) {
> > + 	    check_mountpoints(&mounts, &names_head, &names_tail);
> > + 	}
> > +
> > +--
> > +1.8.4.2
> > +
> > diff --git a/meta/recipes-extended/psmisc/psmisc_22.21.bb b/meta/recipe=
s-extended/psmisc/psmisc_22.21.bb
> > index 22f65c5..9f328bb 100644
> > --- a/meta/recipes-extended/psmisc/psmisc_22.21.bb
> > +++ b/meta/recipes-extended/psmisc/psmisc_22.21.bb
> > @@ -4,3 +4,5 @@ LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D0636e73ff021=
5e8d672dc4c32c317bb3"
> >
> >   SRC_URI[md5sum] =3D "935c0fd6eb208288262b385fa656f1bf"
> >   SRC_URI[sha256sum] =3D "97323cad619210845b696d7d722c383852b2acb5c49b5=
b0852c4f29c77a8145a"
> > +
> > +SRC_URI +=3D "file://0001-Typo-in-fuser-makes-M-on-all-the-time.patch"
> >
> --=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--1X+6QtwRodzgDPAC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlPYqTAACgkQN1Ujt2V2gBzcWwCeKtzltAzjaiATS3KhtrpqCNYL
VPsAn0RNBqJSO12zarq1W5jglyNjEbYh
=/mEI
-----END PGP SIGNATURE-----

--1X+6QtwRodzgDPAC--
