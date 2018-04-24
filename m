Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FDA6E009CF; Tue, 24 Apr 2018 03:29:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE7CCE008BF
	for <poky@yoctoproject.org>; Tue, 24 Apr 2018 03:29:26 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 6635B182BB;
	Tue, 24 Apr 2018 12:29:25 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id gttTufINhDS0; Tue, 24 Apr 2018 12:29:24 +0200 (CEST)
Received: from boulder03.se.axis.com (boulder03.se.axis.com [10.0.8.17])
	by bastet.se.axis.com (Postfix) with ESMTPS id 0A0811816A;
	Tue, 24 Apr 2018 12:29:24 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id E32E61E07A;
	Tue, 24 Apr 2018 12:29:23 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id D73D61E06E;
	Tue, 24 Apr 2018 12:29:23 +0200 (CEST)
Received: from thoth.se.axis.com (unknown [10.0.2.173])
	by boulder03.se.axis.com (Postfix) with ESMTP;
	Tue, 24 Apr 2018 12:29:23 +0200 (CEST)
Received: from XBOX03.axis.com (xbox03.axis.com [10.0.5.17])
	by thoth.se.axis.com (Postfix) with ESMTP id CA6B21CF7;
	Tue, 24 Apr 2018 12:29:23 +0200 (CEST)
Received: from xbox12.axis.com (10.0.5.26) by XBOX03.axis.com (10.0.5.17) with
	Microsoft SMTP Server (TLS) id 15.0.1263.5;
	Tue, 24 Apr 2018 12:29:23 +0200
Received: from XBOX02.axis.com (10.0.5.16) by xbox12.axis.com (10.0.5.26) with
	Microsoft SMTP Server (TLS) id 15.0.1263.5;
	Tue, 24 Apr 2018 12:29:23 +0200
Received: from XBOX02.axis.com ([fe80::50c3:4d2f:4507:7776]) by
	XBOX02.axis.com ([fe80::50c3:4d2f:4507:7776%21]) with mapi id
	15.00.1263.000; Tue, 24 Apr 2018 12:29:23 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: "Vignesh Rajendran (RBEI/ECF3)" <Vignesh.Rajendran@in.bosch.com>
Thread-Topic: [poky] [PULL] package.bbclass: provide debug sources in
	externalsrc	-dbg packages
Thread-Index: AQHT15a+FXSh5FM9XEqpj9mqGqfYsKQH0BFggAeKnVCAAGGUsA==
Date: Tue, 24 Apr 2018 10:29:23 +0000
Message-ID: <c3bb6fdfae0245a899a02565ee53487f@XBOX02.axis.com>
References: <cover.1522820703.git.vignesh.rajendran@in.bosch.com>
	<e8d2f42f4a0ff11961e831d00caeb86a5efdbb13.1522820703.git.vignesh.rajendran@in.bosch.com>
	<11fded6a5f8e4927a8fb8010aa6fa6ef@XBOX02.axis.com>
	<354749242e9644759935066f4920acfd@in.bosch.com>
In-Reply-To: <354749242e9644759935066f4920acfd@in.bosch.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
X-TM-AS-GCONF: 00
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
X-List-Received-Date: Tue, 24 Apr 2018 10:29:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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


