Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2490E00781; Wed, 30 Jul 2014 07:31:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48F49E006B7
	for <poky@yoctoproject.org>; Wed, 30 Jul 2014 07:31:14 -0700 (PDT)
Received: by mail-wg0-f44.google.com with SMTP id m15so1275351wgh.27
	for <poky@yoctoproject.org>; Wed, 30 Jul 2014 07:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=+Ijj0RgB8f34ZgL8acQysfvWvBqaT1KKAvGGR3qb7D4=;
	b=lAUvmMBt2Di2sW49qB1EBgXkAUgQg8YVE1+8UvFJdUZesUt+8XgOZ0B6RcoShfq2Ct
	PSmJ7qMOeyq8J/6CKoiTrX8cgSPww9U6QDfCxSGt19XO6uEeBs1794vqeVhfwulEDFQZ
	7KeLOYZkBLkHlANxpwhCarhf/PPaSOyZx0xbZTO2zKld1jlisd89wlCgnRso4f/587Xz
	9mEanYqLDMjpzE6oOOxUDSzIinTk/0Wnq7aLIBmO32Cbr9WWsEfCJpF3VAEHYfsgsiZ7
	rfyNbZakblUBYqHpYxng7yzWjpMI94INR0lffOcyWhnzqZGJ5/YitRwst7C3Ob5TCcwo
	trew==
X-Received: by 10.194.84.69 with SMTP id w5mr7157907wjy.0.1406730671111;
	Wed, 30 Jul 2014 07:31:11 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	eh10sm10293031wic.0.2014.07.30.07.31.09 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 30 Jul 2014 07:31:09 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Wed, 30 Jul 2014 16:31:32 +0200
To: Andreas Schultz <aschultz@tpip.net>
Message-ID: <20140730143132.GR16445@jama>
References: <1733425688.6639.1406728610529.JavaMail.zimbra@tpip.net>
	<551317585.6654.1406729428858.JavaMail.zimbra@tpip.net>
MIME-Version: 1.0
In-Reply-To: <551317585.6654.1406729428858.JavaMail.zimbra@tpip.net>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: poky@yoctoproject.org
Subject: Re: how to detect unstable builds
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
X-List-Received-Date: Wed, 30 Jul 2014 14:31:19 -0000
X-Groupsio-MsgNum: 9720
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="dLXnlYbDJNCwF3YM"
Content-Disposition: inline

--dLXnlYbDJNCwF3YM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 30, 2014 at 02:10:28PM +0000, Andreas Schultz wrote:
> Hi,
>=20
> Unstable might be not the right term, but I couldn't think of another.
>=20
> The issue is that two builds on exactly the same build host, produce
> packages that have different runtime dependencies and also different
> behaviors.
>=20
> I encountered this problem with readline, but other package might have
> it as well.
>=20
> I try to build an image that contains systemd and (an modified) bind. The
> declared dependencies of systemd contain readline, those of my version of
> bind do not. With multiple parallel task, build order is not guaranteed
> and bind might be build before or after readline.
>=20
> bind's autoconf does check for readline and will link bind to it if
> it finds it.
>=20
> The outcome is that some builds contain a bind linked against readline,
> while other contain a bind that is not linked against readline.
>=20
> ** QA hell breaks loose **
>=20
> Is there a way to detect and/or prevent situations like this?

see test-dependencies.sh script in oe-core or reports from it on oe-core
ML, latest is
http://lists.openembedded.org/pipermail/openembedded-core/2014-July/094924.=
html

buildhistory is also great to compare builds, but e.g.
files-in-image.txt report has a lot of noise from slightly different
binaries, see
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5866

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--dLXnlYbDJNCwF3YM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlPZAcQACgkQN1Ujt2V2gBwygACfS3VWCN/PPvYBqGS1fdu3Jp6j
skEAoK69GipF5D7nBH2I/Bi+4jbMLA+q
=rWSM
-----END PGP SIGNATURE-----

--dLXnlYbDJNCwF3YM--
