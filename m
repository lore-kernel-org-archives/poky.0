Return-Path: <Vignesh.Rajendran@in.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12FAFE00B01; Tue, 24 Apr 2018 22:36:12 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91BB4E00AD8
	for <poky@yoctoproject.org>; Tue, 24 Apr 2018 22:36:09 -0700 (PDT)
Received: from si0vm1948.rbesz01.com (unknown [139.15.230.188])
	by fe0vms0187.rbdmz01.com (Postfix) with ESMTPS id 40W87X0kqYz1XLFZG;
	Wed, 25 Apr 2018 07:36:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=in.bosch.com;
	s=2015-01-21; t=1524634568;
	bh=mGJLKMhNij/j9kuoxVoRy/NBi+3tSBW4Z7Zr7GPczf4=; l=10;
	h=From:From:Reply-To:Sender;
	b=IRpyEVera4hmAe7aDELtZr7+VTjb8SBBbgADM3RpdDoJVg0tuG0ymp+M8oktWjNan
	Lfxq+gPJhe6Gync8tTk2hw/UqmdR9bLKn/esI9z4QeOWZQnFmB8x264agWiIRDsIb3
	Tm4wia1RL13sIsPHqINGQM32fpCqc5rQBbmkIjZk=
Received: from fe0vm1740.rbesz01.com (unknown [10.58.172.176])
	by si0vm1948.rbesz01.com (Postfix) with ESMTPS id 40W87X0LGHz1SC;
	Wed, 25 Apr 2018 07:36:08 +0200 (CEST)
X-AuditID: 0a3aad14-061ff70000002cdc-89-5ae013cbdf6a
Received: from si0vm1950.rbesz01.com ( [10.58.173.29])
	(using TLS with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by fe0vm1740.rbesz01.com (SMG Outbound) with SMTP id
	86.3A.11484.BC310EA5; Wed, 25 Apr 2018 07:36:11 +0200 (CEST)
Received: from FE-MBX2022.de.bosch.com (fe-mbx2022.de.bosch.com [10.3.231.32])
	by si0vm1950.rbesz01.com (Postfix) with ESMTPS id 40W87W5JpKzCpP9;
	Wed, 25 Apr 2018 07:36:07 +0200 (CEST)
Received: from SGPMBX2020.APAC.bosch.com (10.187.83.43) by
	FE-MBX2022.de.bosch.com (10.3.231.32) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.1.1466.3; Wed, 25 Apr 2018 07:36:07 +0200
Received: from SGPMBX2020.APAC.bosch.com (10.187.83.43) by
	SGPMBX2020.APAC.bosch.com (10.187.83.43) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.1.1415.2; Wed, 25 Apr 2018 13:36:04 +0800
Received: from SGPMBX2020.APAC.bosch.com ([fe80::b526:b737:7eb9:3a96]) by
	SGPMBX2020.APAC.bosch.com ([fe80::b526:b737:7eb9:3a96%6]) with mapi id
	15.01.1415.002; Wed, 25 Apr 2018 13:36:04 +0800
From: "Vignesh Rajendran (RBEI/ECF3)" <Vignesh.Rajendran@in.bosch.com>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Thread-Topic: [poky] [PULL] package.bbclass: provide debug sources in
	externalsrc	-dbg packages
Thread-Index: AQHT16/gXmUhu6os0EG6ATH3PszRdaQH0BFggAeKnVD//94PgIABxIOw
Date: Wed, 25 Apr 2018 05:36:04 +0000
Message-ID: <75d2165150c64b62937d261b91d33dff@in.bosch.com>
References: <cover.1522820703.git.vignesh.rajendran@in.bosch.com>
	<e8d2f42f4a0ff11961e831d00caeb86a5efdbb13.1522820703.git.vignesh.rajendran@in.bosch.com>
	<11fded6a5f8e4927a8fb8010aa6fa6ef@XBOX02.axis.com>
	<354749242e9644759935066f4920acfd@in.bosch.com>
	<c3bb6fdfae0245a899a02565ee53487f@XBOX02.axis.com>
In-Reply-To: <c3bb6fdfae0245a899a02565ee53487f@XBOX02.axis.com>
Accept-Language: en-US, en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.187.56.218]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA22TbUxTZxTHeW5v29vaq7e3UA6dLFmXsWQvyNsCEyPLTIwZX8ziPthk01u5
	0Ga0Zb2lAWI2NhnyUp1WOqA6pkwcKuMDEVMrZE3BRGwTCUOBDRgRdEyazMnYqM6yW26x/bBv
	5znn/zv/85znXkJEdxMawmi2sVYzU66VyHH59h/S3wyo5nRZJ+vSCm4vnpMUtEZ6pO9geyZ6
	9+45evO4ZC+mk+8oYcuNdta6bedBueH0nRBWcerdqvtdo6gWreQ1IRkBVB4sLRzHmpCcoKk2
	DPr+8CLhMIBguHYIFw6PELQcaZcKh2UE442RGDOMwDXaK4k2k1C74XLLF1g0TuYbD4YC63kR
	lQueQBiPxirqIKycvIIEDQMNzTdj+t3g9U2KozFOvQIP7o+tsyRVCL7+6zHnaxhcHHHyIoKQ
	UUXwYz0Z1SAqHTqnnLjglQo/L3yLCZej4PzAbZEQp8Dv8xGxEL8EQ1M+JOgzYdLVEpvzdbhw
	bkkk+CphpH0BP4HAndDWnYC4ExB3AnIW4ZdQSimbZTdl5+dlZVr1LFeTlZ15yGLqQ8LTJXtQ
	d+ADP6IIpFWQ1+g5HS1m7Fy1yY/eIjBtCtmK/aqjN+stJdUGhjMcsFaWs5xWQ6KkpCRa9TzN
	VepNRo4zWsx+BIRIm0wOvjiro8kSprqGtVoEzI9eIHBtKukoOayjqTLGxn7MshWsdaNaSBBa
	IC9FZ1Ba2TK2qtRYbtsoa9MFT3ViJdEWI2R+lEsoeG8j/zXSJFfBmDhjWQxPE3B6IxtHb6Fd
	RKje4RDRuNliZjWp5KEoT0WVhkrz8wk0W8mgcUZHpyQU4l0eoinE71BFhqLzK/g/JO4NpEd1
	Zj+tjCXjUE4Xz1DX1XAmOIGgw7OCYPquF4OGzhUcfvl7WAy99WNiWJ17LIExr1sKzrVBKYw/
	nZfCqu+IDJrCjTJwNs/JoSMyL4crM6c2gWv2hgJGI3cU0L20poDOmSckXB0/T0H42DdK8DwL
	K+Fi/280OBovq/gGI8kw+6BeDe6fbqkhMnAjFTp6pgGcTQ1p0PPIpYHg8pDmIb9YjF8so1xf
	rI2x/c9iY9n47TS1KCeE//V1cPOTkU92PTsQOmyv0vT7HNt36uV1GY/f7gu8p9+XO/4qdm9i
	YAvuzvinq3ex5sPPWi+0thU3H8spzM99+V7RCcti8fLnTqmnPbw1o/j9f9XYBNQ9bcs3lXZ9
	Om3aJK3Z3x9MKvLuuyob/u7PtTfO1n5lL2j43vXlRwu+LZOrWpwzMNmviawc8x9xhdYOuwQA
	AA==
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
X-List-Received-Date: Wed, 25 Apr 2018 05:36:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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


