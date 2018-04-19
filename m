Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DEFFE00C4F; Thu, 19 Apr 2018 00:35:01 -0700 (PDT)
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
X-Greylist: delayed 475 seconds by postgrey-1.32 at yocto-www;
	Thu, 19 Apr 2018 00:34:59 PDT
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE4CEE00756
	for <poky@yoctoproject.org>; Thu, 19 Apr 2018 00:34:59 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id D842118450;
	Thu, 19 Apr 2018 09:27:02 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id Put_g8I4ck2o; Thu, 19 Apr 2018 09:26:59 +0200 (CEST)
Received: from boulder02.se.axis.com (boulder02.se.axis.com [10.0.8.16])
	by bastet.se.axis.com (Postfix) with ESMTPS id 9ADD818477;
	Thu, 19 Apr 2018 09:26:59 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 86B4E1A096;
	Thu, 19 Apr 2018 09:26:59 +0200 (CEST)
Received: from boulder02.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 79E261A093;
	Thu, 19 Apr 2018 09:26:59 +0200 (CEST)
Received: from seth.se.axis.com (unknown [10.0.2.172])
	by boulder02.se.axis.com (Postfix) with ESMTP;
	Thu, 19 Apr 2018 09:26:59 +0200 (CEST)
Received: from XBOX01.axis.com (xbox01.axis.com [10.0.5.15])
	by seth.se.axis.com (Postfix) with ESMTP id 6DE86176;
	Thu, 19 Apr 2018 09:26:59 +0200 (CEST)
Received: from XBOX02.axis.com (10.0.5.16) by XBOX01.axis.com (10.0.5.15) with
	Microsoft SMTP Server (TLS) id 15.0.1263.5;
	Thu, 19 Apr 2018 09:26:59 +0200
Received: from XBOX02.axis.com ([fe80::50c3:4d2f:4507:7776]) by
	XBOX02.axis.com ([fe80::50c3:4d2f:4507:7776%21]) with mapi id
	15.00.1263.000; Thu, 19 Apr 2018 09:26:59 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: Vignesh Rajendran <vignesh.rajendran@in.bosch.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky] [PULL] package.bbclass: provide debug sources in
	externalsrc	-dbg packages
Thread-Index: AQHT15a+FXSh5FM9XEqpj9mqGqfYsKQHr4rQ
Date: Thu, 19 Apr 2018 07:26:59 +0000
Message-ID: <11fded6a5f8e4927a8fb8010aa6fa6ef@XBOX02.axis.com>
References: <cover.1522820703.git.vignesh.rajendran@in.bosch.com>
	<e8d2f42f4a0ff11961e831d00caeb86a5efdbb13.1522820703.git.vignesh.rajendran@in.bosch.com>
In-Reply-To: <e8d2f42f4a0ff11961e831d00caeb86a5efdbb13.1522820703.git.vignesh.rajendran@in.bosch.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
X-TM-AS-GCONF: 00
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
X-List-Received-Date: Thu, 19 Apr 2018 07:35:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: poky-bounces@yoctoproject.org [mailto:poky-
> bounces@yoctoproject.org] On Behalf Of Vignesh Rajendran
> Sent: den 19 april 2018 06:27
> To: poky@yoctoproject.org
> Subject: [poky] [PULL] package.bbclass: provide debug sources in external=
src -dbg packages
>=20
> The recipes which are using externalsrc method doesn't contain the
> debug sources in their -dbg packages.
>=20
> Add a handling in copydebugsources function to copy the debugsources for
> externalsrc -dbg packages.
>=20
> Signed-off-by: Vignesh Rajendran <vignesh.rajendran@in.bosch.com>
> ---
>  meta/classes/externalsrc.bbclass |  3 +++
>  meta/classes/package.bbclass     | 14 +++++++++++---
>  2 files changed, 14 insertions(+), 3 deletions(-)
>=20
> diff --git a/meta/classes/externalsrc.bbclass b/meta/classes/externalsrc.=
bbclass
> index 3f1d396..042f935 100644
> --- a/meta/classes/externalsrc.bbclass
> +++ b/meta/classes/externalsrc.bbclass
> @@ -126,6 +126,9 @@ python () {
>              d.setVar('CONFIGURESTAMPFILE', configstamp)
>              d.setVar('STAMP', '${STAMPS_DIR}/work-shared/${PN}/${EXTENDP=
E}${PV}-${PR}')
>              d.setVar('STAMPCLEAN', '${STAMPS_DIR}/work-shared/${PN}/*-*'=
)
> +
> +	# set DEBUG_PREFIX_MAP to external source path
> +	d.appendVar("DEBUG_PREFIX_MAP", "-fdebug-prefix-map=3D${EXTERNALSRC}=3D=
/usr/src/debug/${PN}/${EXTENDPE}${PV}-${PR}")
>  }
>=20
>  python externalsrc_configure_prefunc() {
> diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
> index 504c023..9466a4b 100644
> --- a/meta/classes/package.bbclass
> +++ b/meta/classes/package.bbclass
> @@ -414,6 +414,7 @@ def copydebugsources(debugsrcdir, d):
>          workdir =3D d.getVar("WORKDIR")
>          workparentdir =3D os.path.dirname(os.path.dirname(workdir))
>          workbasedir =3D os.path.basename(os.path.dirname(workdir)) + "/"=
 + os.path.basename(workdir)
> +	externalsrc =3D d.getVar('EXTERNALSRC', True)

Change the tab to spaces.

>=20
>          # If build path exists in sourcefile, it means toolchain did not=
 use
>          # -fdebug-prefix-map to compile
> @@ -438,10 +439,17 @@ def copydebugsources(debugsrcdir, d):
>          processdebugsrc +=3D "fgrep -zw '%s' | "
>          # Remove prefix in the source paths
>          processdebugsrc +=3D "sed 's#%s##g' | "
> -        processdebugsrc +=3D "(cd '%s' ; cpio -pd0mlL --no-preserve-owne=
r '%s%s' 2>/dev/null)"
> +        # handle external sources to provide sources in -dbg packages
> +        if externalsrc:
> +            localsrc_prefix =3D "/usr/src/debug/"
> +            processdebugsrc +=3D "sed 's#%s/##g' | "
> +            processdebugsrc +=3D "(cd '%s' ; cpio -pd0mlL --no-preserve-=
owner '%s%s/%s' 2>/dev/null)"
> +            cmd =3D processdebugsrc % (sourcefile, workbasedir, localsrc=
_prefix, workbasedir, externalsrc, dvar, debugsrcdir, workbasedir)
> +        else:
> +            processdebugsrc +=3D "(cd '%s' ; cpio -pd0mlL --no-preserve-=
owner '%s%s' 2>/dev/null)"
> +            cmd =3D processdebugsrc % (sourcefile, workbasedir, localsrc=
_prefix, workparentdir, dvar, debugsrcdir)
>=20
> -        cmd =3D processdebugsrc % (sourcefile, workbasedir, localsrc_pre=
fix, workparentdir, dvar, debugsrcdir)
> -        (retval, output) =3D oe.utils.getstatusoutput(cmd)
> +	(retval, output) =3D oe.utils.getstatusoutput(cmd)

Change the tab to spaces.

>          # Can "fail" if internal headers/transient sources are attempted
>          #if retval:
>          #    bb.fatal("debug source copy failed with exit code %s (cmd w=
as %s)" % (retval, cmd))
> --
> 2.7.4

//Peter


