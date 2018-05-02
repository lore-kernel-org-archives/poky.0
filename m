Return-Path: <Vignesh.Rajendran@in.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FFECE009AC; Tue,  1 May 2018 23:27:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from de-out1.bosch-org.com (de-out1.bosch-org.com [139.15.230.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7E75E007F2
	for <poky@yoctoproject.org>; Tue,  1 May 2018 23:27:53 -0700 (PDT)
Received: from si0vm1947.rbesz01.com (unknown [139.15.230.188])
	by fe0vms0186.rbdmz01.com (Postfix) with ESMTPS id 40bSy00xNXz1XLJq2;
	Wed,  2 May 2018 08:27:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=in.bosch.com;
	s=2015-01-21; t=1525242472;
	bh=hciRlAROHXWGzkoMafmTOnMghaZMO/d8ISYLoHudX38=; l=10;
	h=From:From:Reply-To:Sender;
	b=NJbKaTSo/sC2CC4d36CrviXOF/+oIjuac/KEG2YkgLsnr3RbW9Edh2oexPtq66RYG
	bw0oAKhuGj6CP39ZniI3IzcyTSyElWNxbNXkXB0560/8zvMkf/bQMiIhQBGWGK4FVD
	wEvKmm97edH8jWLNrueIjHLyNf2eWirUZB+Cs9+g=
Received: from si0vm4642.rbesz01.com (unknown [10.58.172.176])
	by si0vm1947.rbesz01.com (Postfix) with ESMTPS id 40bSy00XLbz6CjR3Q;
	Wed,  2 May 2018 08:27:52 +0200 (CEST)
X-AuditID: 0a3aad12-ef5ff70000016568-b1-5ae95a677bf0
Received: from si0vm1950.rbesz01.com ( [10.58.173.29])
	(using TLS with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by si0vm4642.rbesz01.com (SMG Outbound) with SMTP id
	35.0A.25960.76A59EA5; Wed,  2 May 2018 08:27:51 +0200 (CEST)
Received: from FE-MBX2009.de.bosch.com (fe-mbx2009.de.bosch.com [10.3.231.15])
	by si0vm1950.rbesz01.com (Postfix) with ESMTPS id 40bSxz5K1wzCpP6;
	Wed,  2 May 2018 08:27:51 +0200 (CEST)
Received: from SGPMBX2018.APAC.bosch.com (10.187.83.36) by
	FE-MBX2009.de.bosch.com (10.3.231.15) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.1.1466.3; Wed, 2 May 2018 08:27:51 +0200
Received: from SGPMBX2020.APAC.bosch.com (10.187.83.43) by
	SGPMBX2018.APAC.bosch.com (10.187.83.36) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.1.1415.2; Wed, 2 May 2018 14:27:42 +0800
Received: from SGPMBX2020.APAC.bosch.com ([fe80::b526:b737:7eb9:3a96]) by
	SGPMBX2020.APAC.bosch.com ([fe80::b526:b737:7eb9:3a96%6]) with mapi id
	15.01.1415.002; Wed, 2 May 2018 14:27:42 +0800
From: "Vignesh Rajendran (RBEI/ECF3)" <Vignesh.Rajendran@in.bosch.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>
Thread-Topic: [poky] [PULL] package.bbclass: provide debug sources in
	externalsrc	-dbg packages
Thread-Index: AQHT16/gXmUhu6os0EG6ATH3PszRdaQH0BFggAeKnVD//94PgIABxIOwgAsPqbA=
Date: Wed, 2 May 2018 06:27:42 +0000
Message-ID: <b6a73324a44a4077bf4eb2212635e8d5@in.bosch.com>
References: <cover.1522820703.git.vignesh.rajendran@in.bosch.com>
	<e8d2f42f4a0ff11961e831d00caeb86a5efdbb13.1522820703.git.vignesh.rajendran@in.bosch.com>
	<11fded6a5f8e4927a8fb8010aa6fa6ef@XBOX02.axis.com>
	<354749242e9644759935066f4920acfd@in.bosch.com>
	<c3bb6fdfae0245a899a02565ee53487f@XBOX02.axis.com>
	<75d2165150c64b62937d261b91d33dff@in.bosch.com>
In-Reply-To: <75d2165150c64b62937d261b91d33dff@in.bosch.com>
Accept-Language: en-US, en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.187.56.211]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA22Tf0wbZRjHedtre609vV4pfahiYrP9oVPklwsCMZsmiokbS7bErEa363q2
	VdqSXiFjccniD+xaRhyCg4ZVIczAQGI22MjsstmBAs5AEGXIj8GoHZTpJgiCzNYrV9b+4X/f
	9/k+n+f7vs/lcCH1Na7BzVYHY7fSxVqxDJPlfZX2jFE3r8uomiFyB+caxbmnwu2S3NXgSdEO
	YeFox57CK6fbJYUf91WJ9wh1sgIDU2wuY+zPvnBQZurq+UFSsv7q4cnQqPgYGsp3IRwHMgfa
	BiUuJMUpsk4An323w4VknPYh6L23hPjDXQQX+/4Q84dFBNdufhhzriGY/rYeRXkx+TK01bwv
	iOpkche0NtdhUS0kjXAhEBFFtZI8CMsnOxHfQ4PT3Rfr3w1TKw0b98DILXDdNyOMaoLMh1Oh
	vzA+LCSAuZHQBiwlC+DKRd8GjMg0aBqrjoWp4dfA5xt1IElo9g0Kea2C+dmwiH/zE9DYmcq3
	p8ON2hoxr7fBl40LsVwF9NcHsE8QeBKmehIQTwLiSUC+QNhZpGLNGWWWnO05Wel2PcMeychM
	P2SznEP8J6S6kfuM3o9IHGnlxErRvI4S0WVsucWPnsMFWhVxdhdXelhvM5SbaNZ0wF5azLBa
	DYGSkpIo5YMyW6q3mFnWbLP6EeBCbTLR6gzqKMJAlx9h7DYe86NHcUyrJioN7+ko0kg7mHcZ
	poSxb7r5OK4FInM/F6iwM0bm8NvmYsemrU3jM1MSncRYAS71o2xczmWnRUcQbAltYc3GGJ7K
	49RmNY4OoJfwOxWVlUIKs9qsjEZN7IzyZLTTVGp9cAPNY8TcK5yhSjDiU0JoDHE7VBKvR2E5
	96fEs4HoVjbspxSxYhzKOsMxZIcaGq6PIhiuDSDwdi8jmPjlkgCcTcsYjK/0iKCjYlgEq9OL
	Yhi+5JFAdeSyBEbWZyWwevUDKbjWjkuh2j0tA294Vgadk58+BLVTvXIYCv8sh8jMXTm0LETk
	0DT5DwEXRppJWDtxWgHd/64poLXrNgWVx9uU3JT+ZJgKVqSA56eBFAj7etXgbZ8AqHY5U0Pc
	YgXcYpeWb0cX66Ad/7PYWDX+Os0xJNw65v673fSj+ui45vfJ0ZZb+qedhn24FM3uvMFmL1gp
	zUdVT/ZHTvzZU1voU6K9t0Le+wckA9l9h8bn5s8zZLDotTvb8yZaFt0FWVd3b0l+C/vm8YVz
	9/yBIVVd0npe/tKLz7/B1gS8j9ys3xosOk+2/Ob+vuvy/al3xnuOlr+5Ta/FWBOd+ZTQztL/
	AcW74rnDBAAA
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PULL] package.bbclass: provide debug sources in externalsrc	-dbg packages
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
X-List-Received-Date: Wed, 02 May 2018 06:27:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

@Richard Purdie:
Do I have to split my changes in externalsrc.bbclass to submit to OE-core?
http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=3Dvrajendran/ex=
ternalsrc-debugsrc&id=3De8d2f42f4a0ff11961e831d00caeb86a5efdbb13

As I don't have any update on merging, I want to know if anything messed-up=
 from my end.

Sorry for any inconvenience.

Mit freundlichen Gr=FC=DFen / Best regards

Rajendran Vignesh
RBEI/ECF33 =20

Tel. +91 422 67-65103=20



-----Original Message-----
From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of Vignesh Rajendran (RBEI/ECF3)
Sent: Wednesday, April 25, 2018 11:06 AM
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: poky@yoctoproject.org
Subject: Re: [poky] [PULL] package.bbclass: provide debug sources in extern=
alsrc -dbg packages

Hi Peter,

Oh, Sorry for asking you.
Thanks for the information anyway.

I hope it will take some time for merging :-(

Mit freundlichen Gr=FC=DFen / Best regards

Rajendran Vignesh
RBEI/ECF33 =20

Tel. +91 422 67-65103=20



-----Original Message-----
From: Peter Kjellerstedt [mailto:peter.kjellerstedt@axis.com]=20
Sent: Tuesday, April 24, 2018 3:59 PM
To: Vignesh Rajendran (RBEI/ECF3) <Vignesh.Rajendran@in.bosch.com>
Cc: poky@yoctoproject.org
Subject: RE: [poky] [PULL] package.bbclass: provide debug sources in extern=
alsrc -dbg packages

I am in no way responsible for integrating anything to Poky. That=20
will be handled by the maintainers. However, OE-Core (and thus=20
Poky) is currently near its next release and because of that=20
integrations are limited to a bare minimum.=20

Additionally, this patch belongs on the=20
openembedded-core@lists.openembedded.org list as it modifies a=20
file in OE-Core.

//Peter

> -----Original Message-----
> From: Vignesh Rajendran (RBEI/ECF3)
> [mailto:Vignesh.Rajendran@in.bosch.com]
> Sent: den 24 april 2018 06:39
> To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> Cc: poky@yoctoproject.org
> Subject: RE: [poky] [PULL] package.bbclass: provide debug sources in
> externalsrc -dbg packages
>=20
> Hi Peter,
>=20
> I couldn't see my changes not merged to poky-contrib  master yet.
> http://git.yoctoproject.org/cgit.cgi/poky-
> contrib/log/?h=3Dvrajendran/externalsrc-debugsrc
>=20
> As an  external developer, I am unaware of Yocto QA process to intake
> changes to master branch.
>=20
> Do I missing something from my end?
>=20
> Mit freundlichen Gr=FC=DFen / Best regards
>=20
> Rajendran Vignesh
> RBEI/ECF33
>=20
> Tel. +91 422 67-65103
>=20
>=20
> -----Original Message-----
> From: Vignesh Rajendran (RBEI/ECF3)
> Sent: Thursday, April 19, 2018 2:54 PM
> To: 'Peter Kjellerstedt' <peter.kjellerstedt@axis.com>
> Cc: poky@yoctoproject.org; Vignesh Rajendran (RBEI/ECF3)
> (Vignesh.Rajendran@in.bosch.com) <Vignesh.Rajendran@in.bosch.com>
> Subject: RE: [poky] [PULL] package.bbclass: provide debug sources in
> externalsrc -dbg packages
>=20
> Hi Peter,
>=20
> I have removed the tabs and applied spaces in the mentioned lines.
>=20
> Please see the changes here,
> http://git.yoctoproject.org/cgit.cgi/poky-
> contrib/commit/?h=3Dvrajendran/externalsrc-
> debugsrc&id=3Dd835e41e35160941debaad4beff80b322ff60664
>=20
> Patch:
> package.bbclass: copydebugsources: remove tabs and apply
> spacevrajendran/externalsrc-debugsrc
> Signed-off-by: Vignesh Rajendran <vignesh.rajendran@in.bosch.com>
> Diffstat
> -rw-r--r--	meta/classes/package.bbclass	4
>=20
> 1 files changed, 2 insertions, 2 deletions
> diff --git a/meta/classes/package.bbclass
> b/meta/classes/package.bbclass
> index 9466a4b..c76f6e4 100644
> --- a/meta/classes/package.bbclass
> +++ b/meta/classes/package.bbclass
> @@ -414,7 +414,7 @@ def copydebugsources(debugsrcdir, d):
>          workdir =3D d.getVar("WORKDIR")
>          workparentdir =3D os.path.dirname(os.path.dirname(workdir))
>          workbasedir =3D os.path.basename(os.path.dirname(workdir)) + "/"
> + os.path.basename(workdir)
> -	externalsrc =3D d.getVar('EXTERNALSRC', True)
> +        externalsrc =3D d.getVar('EXTERNALSRC', True)
>=20
>          # If build path exists in sourcefile, it means toolchain did
> not use
>          # -fdebug-prefix-map to compile
> @@ -449,7 +449,7 @@ def copydebugsources(debugsrcdir, d):
>              processdebugsrc +=3D "(cd '%s' ; cpio -pd0mlL --no-preserve-
> owner '%s%s' 2>/dev/null)"
>              cmd =3D processdebugsrc % (sourcefile, workbasedir,
> localsrc_prefix, workparentdir, dvar, debugsrcdir)
>=20
> -	(retval, output) =3D oe.utils.getstatusoutput(cmd)
> +        (retval, output) =3D oe.utils.getstatusoutput(cmd)
>          # Can "fail" if internal headers/transient sources are
> attempted
>          #if retval:
>          #    bb.fatal("debug source copy failed with exit code %s (cmd
> was %s)" % (retval, cmd))
>=20
> Thank You.
>=20
> Mit freundlichen Gr=FC=DFen / Best regards
>=20
> Rajendran Vignesh
> RBEI/ECF33
>=20
> Tel. +91 422 67-65103
>=20
>=20
> -----Original Message-----
> From: Peter Kjellerstedt [mailto:peter.kjellerstedt@axis.com]
> Sent: Thursday, April 19, 2018 12:57 PM
> To: Vignesh Rajendran (RBEI/ECF3) <Vignesh.Rajendran@in.bosch.com>;
> poky@yoctoproject.org
> Subject: RE: [poky] [PULL] package.bbclass: provide debug sources in
> externalsrc -dbg packages
>=20
> > -----Original Message-----
> > From: poky-bounces@yoctoproject.org [mailto:poky-
> > bounces@yoctoproject.org] On Behalf Of Vignesh Rajendran
> > Sent: den 19 april 2018 06:27
> > To: poky@yoctoproject.org
> > Subject: [poky] [PULL] package.bbclass: provide debug sources in
> externalsrc -dbg packages
> >
> > The recipes which are using externalsrc method doesn't contain the
> > debug sources in their -dbg packages.
> >
> > Add a handling in copydebugsources function to copy the debugsources
> for
> > externalsrc -dbg packages.
> >
> > Signed-off-by: Vignesh Rajendran <vignesh.rajendran@in.bosch.com>
> > ---
> >  meta/classes/externalsrc.bbclass |  3 +++
> >  meta/classes/package.bbclass     | 14 +++++++++++---
> >  2 files changed, 14 insertions(+), 3 deletions(-)
> >
> > diff --git a/meta/classes/externalsrc.bbclass
> b/meta/classes/externalsrc.bbclass
> > index 3f1d396..042f935 100644
> > --- a/meta/classes/externalsrc.bbclass
> > +++ b/meta/classes/externalsrc.bbclass
> > @@ -126,6 +126,9 @@ python () {
> >              d.setVar('CONFIGURESTAMPFILE', configstamp)
> >              d.setVar('STAMP', '${STAMPS_DIR}/work-
> shared/${PN}/${EXTENDPE}${PV}-${PR}')
> >              d.setVar('STAMPCLEAN', '${STAMPS_DIR}/work-
> shared/${PN}/*-*')
> > +
> > +	# set DEBUG_PREFIX_MAP to external source path
> > +	d.appendVar("DEBUG_PREFIX_MAP", "-fdebug-prefix-
> map=3D${EXTERNALSRC}=3D/usr/src/debug/${PN}/${EXTENDPE}${PV}-${PR}")
> >  }
> >
> >  python externalsrc_configure_prefunc() {
> > diff --git a/meta/classes/package.bbclass
> b/meta/classes/package.bbclass
> > index 504c023..9466a4b 100644
> > --- a/meta/classes/package.bbclass
> > +++ b/meta/classes/package.bbclass
> > @@ -414,6 +414,7 @@ def copydebugsources(debugsrcdir, d):
> >          workdir =3D d.getVar("WORKDIR")
> >          workparentdir =3D os.path.dirname(os.path.dirname(workdir))
> >          workbasedir =3D os.path.basename(os.path.dirname(workdir)) +
> "/" + os.path.basename(workdir)
> > +	externalsrc =3D d.getVar('EXTERNALSRC', True)
>=20
> Change the tab to spaces.
>=20
> >
> >          # If build path exists in sourcefile, it means toolchain did
> not use
> >          # -fdebug-prefix-map to compile
> > @@ -438,10 +439,17 @@ def copydebugsources(debugsrcdir, d):
> >          processdebugsrc +=3D "fgrep -zw '%s' | "
> >          # Remove prefix in the source paths
> >          processdebugsrc +=3D "sed 's#%s##g' | "
> > -        processdebugsrc +=3D "(cd '%s' ; cpio -pd0mlL --no-preserve-
> owner '%s%s' 2>/dev/null)"
> > +        # handle external sources to provide sources in -dbg
> packages
> > +        if externalsrc:
> > +            localsrc_prefix =3D "/usr/src/debug/"
> > +            processdebugsrc +=3D "sed 's#%s/##g' | "
> > +            processdebugsrc +=3D "(cd '%s' ; cpio -pd0mlL --no-
> preserve-owner '%s%s/%s' 2>/dev/null)"
> > +            cmd =3D processdebugsrc % (sourcefile, workbasedir,
> localsrc_prefix, workbasedir, externalsrc, dvar, debugsrcdir,
> workbasedir)
> > +        else:
> > +            processdebugsrc +=3D "(cd '%s' ; cpio -pd0mlL --no-
> preserve-owner '%s%s' 2>/dev/null)"
> > +            cmd =3D processdebugsrc % (sourcefile, workbasedir,
> localsrc_prefix, workparentdir, dvar, debugsrcdir)
> >
> > -        cmd =3D processdebugsrc % (sourcefile, workbasedir,
> localsrc_prefix, workparentdir, dvar, debugsrcdir)
> > -        (retval, output) =3D oe.utils.getstatusoutput(cmd)
> > +	(retval, output) =3D oe.utils.getstatusoutput(cmd)
>=20
> Change the tab to spaces.
>=20
> >          # Can "fail" if internal headers/transient sources are
> attempted
> >          #if retval:
> >          #    bb.fatal("debug source copy failed with exit code %s
> (cmd was %s)" % (retval, cmd))
> > --
> > 2.7.4
>=20
> //Peter

--=20
_______________________________________________
poky mailing list
poky@yoctoproject.org
https://lists.yoctoproject.org/listinfo/poky

