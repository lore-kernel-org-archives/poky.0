Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D45CE00710; Tue,  2 May 2017 03:07:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.18 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D02C9E00546
	for <poky@yoctoproject.org>; Tue,  2 May 2017 03:07:02 -0700 (PDT)
Received: from [62.225.157.196] by 3capp-gmx-bs49.server.lan (via HTTP);
	Tue, 2 May 2017 12:06:51 +0200
MIME-Version: 1.0
Message-ID: <trinity-eae6d646-630d-4bb9-8464-6b557d1fd33e-1493719611703@3capp-gmx-bs49>
From: "Arno Steffens" <star@gmx.li>
To: "Wold, Saul" <saul.wold@intel.com>
Date: Tue, 2 May 2017 12:06:51 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <1493382620.10199.3.camel@intel.com>
References: <trinity-1c5fd78a-c6ca-41a1-8dea-dcfe8bf1ff35-1493125020120@3capp-gmx-bs23>
	<29aeb088-beb1-7fa2-b95a-c534f853b374@linux.intel.com>
	<trinity-040eafa5-27ea-4b5a-9493-1dedc3b445c8-1493185325827@3capp-gmx-bs77>
	<d69a7c4a-03e0-7447-c956-231244fda704@linux.intel.com>
	<trinity-0305ba43-e510-46b7-a11d-a31e69a15283-1493211120829@3capp-gmx-bs77>
	<26682ce6-84e6-8477-4323-ab0979afe89d@linux.intel.com>
	<trinity-847348e3-eb40-41b0-8cf4-a93cdd046688-1493364663957@3capp-gmx-bs03>
	<CAHiDW_FWzvCn7t0qzmrzSMpcbkqPRABNqgqA+gy-dWMW9U9sWA@mail.gmail.com>,
	<1493382620.10199.3.camel@intel.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:vYTZOZ9qW9stCu0m63reJu7qnslqV/3vfdY9ZSs5clE
	g6nct32Rd9nmvnbCKW94ClEMT4AcxHPDzFydg10vNasinq1HQZ
	1CVmaJOT7jFfilCjndUJPxrk2E60+AaPK9Wxq3dHx5DVrYZDf0
	aPV2+FQVC4+SmW4Bu1ROb/Gk2Dr3f+nkTlS38TTA4cc2SzXyRz
	ZX4qk2QwrrDYlnx/1gZsXWCHcYhsx0fqFAtTQrS7YeN1GnkfQj
	vfWEDE8/CfbA4zn9SuTk6KpIMpETZeuKi3e0JAVTggGVRNMkEU qw11Ug=
X-UI-Out-Filterresults: notjunk:1;V01:K0:xIttbYDuFSs=:Gs4Hw9y9ff4aJAdOCM+7k/
	qLt6DKK/qKvLeZighV8mdVIOLr1nmQZxriR7AtPQKF43097ga/ngbA4sH920kYdr5mEZW7PXY
	W6dpbucTdhLgs828xG6jZKd4/sxmqWp+69OC18JLBCKTe3x5ue2I3JtaZDkPxTlKrkyhNdvIv
	MP9hyahpUy4lXqM+bwHj0qK9XAQW7kc56EDT5Hm2uHvZ+4V9mNRiD61mFJgJ8yai6xpZhd3st
	nB//0jHJgpfht6YFNDKbwpiTjwAAjEQ8aejXE2dmcVvJqlleL/ejuXmh9MWk4OXkTOOJw4BZu
	xpjBtLpeJ+dCrP/mNnhg44mp0o57aaRIFbUPBfzCCgfoWPRGsfvDYF01Z5pvUFzmZSxaZx4hI
	BQxluVJ0kOEnTIo9jHDt3mynWe5u1cDKcKd0N5r7GcQnSvE2RQ15RxMhpSXquWZZw6E4xUXvN
	gq9OiTsvKw==
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: gnupg strip down
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
X-List-Received-Date: Tue, 02 May 2017 10:07:04 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



> Gesendet: Freitag, 28=2E April 2017 um 14:30 Uhr
> Von: "Wold, Saul" <saul=2Ewold@intel=2Ecom>
> An: "star@gmx=2Eli" <star@gmx=2Eli>, "Kukkonen, Jussi" <jussi=2Ekukkonen=
@intel=2Ecom>
> Cc: "poky@yoctoproject=2Eorg" <poky@yoctoproject=2Eorg>, "alexander=2Eka=
navin@linux=2Eintel=2Ecom" <alexander=2Ekanavin@linux=2Eintel=2Ecom>
> Betreff: Re: [poky] gnupg strip down
>
> On Fri, 2017-04-28 at 11:35 +0300, Jussi Kukkonen wrote:
> > On 28 April 2017 at 10:31, Arno Steffens <star@gmx=2Eli> wrote:
> > > I did as advised, created a bbappend for gnupg, like that:
> > >=20
> > > do_install_append() {
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/gpgv
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/gpgsm
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/gpg-connect-agent
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/dirmngr-client
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/gpgscm
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/watchgnupg
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/gpgparsemail
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/gpgconf
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/dirmngr
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/gpgtar
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/gpgv2
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/gpg-agent
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}${bindir}/kbxutil
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}/usr/sbin/*
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 rmdir ${D}/usr/sbin
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}/usr/share/gnupg/help*
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}/usr/libexec/gpg-*
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm ${D}/usr/libexec/scdaemon
> > > =C2=A0 =C2=A0 =C2=A0 =C2=A0 rmdir ${D}/usr/libexec
> > > }
> > >=20
> > > First I get errors, cleaning files and leave directory, but than I
> > > get it, that I have to remove empty folders too=2E Ok, that could be
> > > done smarter=2E So just gpg and few small files left=2E
> > >=20
> > > But I don't have an idea howto remove the libs, that seems to be
> > > required only by the removed binaries,
> > > like libgnutils=2Eso, libgmp=2Eso - which are rather big =2E=2E=2E=
=C2=A0
> >=20
> > I don't see evidence that the binaries you mentioned would depend on
> > those libraries (at least with current sysroot behaviour -- it might
> > happen by mistake on older releases)=2E But there is this line in the
> > recipe:
> > RDEPENDS_${PN} =3D "gnutls"
> >=20
> > Saul, do you happen to remember why that was added (more than two
> > years ago in poky 31059be9)=2E
> >=20
> Sorry no, too long ago, but looking at the patch it seems that the
> dirmngr_LDADD had LIBGNUTLS before and after the change so possibly
> that showed it should have been available=2E
>=20
> If something has changed with dirmngr than maybe that can be removed=2E
>=20
>=20
> > =C2=A0- Jussi

How would you avoid installation of this gnutls in this case? So what do I=
 have to add in my bbappend (see above)? To my shame: my skill are rather l=
imited in handling this=2E

