Return-Path: <Vignesh.Rajendran@in.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8959AE009E2; Thu, 19 Apr 2018 02:24:24 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF5F5E005A9
	for <poky@yoctoproject.org>; Thu, 19 Apr 2018 02:24:22 -0700 (PDT)
Received: from fe0vm1649.rbesz01.com (unknown [139.15.230.188])
	by si0vms0217.rbdmz01.com (Postfix) with ESMTPS id 40RYTc3vDDz4f3mQv;
	Thu, 19 Apr 2018 11:24:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=in.bosch.com;
	s=2015-01-21; t=1524129860;
	bh=mGJLKMhNij/j9kuoxVoRy/NBi+3tSBW4Z7Zr7GPczf4=; l=10;
	h=From:From:Reply-To:Sender;
	b=h/SXJXNFC49Kjvp3f6sfzWc4gNYDk+tLtI6/MmWkHZcei1qfuWd8hrPyRftEYGf0o
	IU9ce6E5dDXc0NWZeBHGmYG52ojSboUxwGMxokPsAimexymHfnCO/iVHYp4RHZMvU/
	XQczK49LtoTh5lT9SWAo+I5g5VHSJS6HN0r6B5XA=
Received: from si0vm2082.rbesz01.com (unknown [10.58.172.176])
	by fe0vm1649.rbesz01.com (Postfix) with ESMTPS id 40RYTc3D2mz25;
	Thu, 19 Apr 2018 11:24:20 +0200 (CEST)
X-AuditID: 0a3aad16-9c9ff70000001f9e-7d-5ad86049b9ce
Received: from si0vm1949.rbesz01.com ( [10.58.173.29])
	(using TLS with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by si0vm2082.rbesz01.com (SMG Outbound) with SMTP id
	A6.4C.08094.94068DA5; Thu, 19 Apr 2018 11:24:25 +0200 (CEST)
Received: from FE-MBX2042.de.bosch.com (fe-mbx2042.de.bosch.com [10.3.231.52])
	by si0vm1949.rbesz01.com (Postfix) with ESMTPS id 40RYTc18pxz6D44Ln; 
	Thu, 19 Apr 2018 11:24:20 +0200 (CEST)
Received: from SGPMBX2018.APAC.bosch.com (10.187.83.36) by
	FE-MBX2042.de.bosch.com (10.3.231.52) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.1.1466.3; Thu, 19 Apr 2018 11:24:19 +0200
Received: from SGPMBX2020.APAC.bosch.com (10.187.83.43) by
	SGPMBX2018.APAC.bosch.com (10.187.83.36) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.1.1415.2; Thu, 19 Apr 2018 17:24:16 +0800
Received: from SGPMBX2020.APAC.bosch.com ([fe80::b526:b737:7eb9:3a96]) by
	SGPMBX2020.APAC.bosch.com ([fe80::b526:b737:7eb9:3a96%6]) with mapi id
	15.01.1415.002; Thu, 19 Apr 2018 17:24:16 +0800
From: "Vignesh Rajendran (RBEI/ECF3)" <Vignesh.Rajendran@in.bosch.com>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Thread-Topic: [poky] [PULL] package.bbclass: provide debug sources in
	externalsrc	-dbg packages
Thread-Index: AQHT16/gXmUhu6os0EG6ATH3PszRdaQH0BFg
Date: Thu, 19 Apr 2018 09:24:16 +0000
Message-ID: <819d55f2722140a998702ec8c5f22770@in.bosch.com>
References: <cover.1522820703.git.vignesh.rajendran@in.bosch.com>
	<e8d2f42f4a0ff11961e831d00caeb86a5efdbb13.1522820703.git.vignesh.rajendran@in.bosch.com>
	<11fded6a5f8e4927a8fb8010aa6fa6ef@XBOX02.axis.com>
In-Reply-To: <11fded6a5f8e4927a8fb8010aa6fa6ef@XBOX02.axis.com>
Accept-Language: en-US, en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.187.56.213]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA21TYUwbZRjma0t7NL15XCm8VKhyDDNn7Fp0hoFRMuOCiTO4TI394TjkbJvR
	FnulwsIPYA4HIwSQZrUBxmZp3KgswVqJ21jsiIyBQ3HYsk0TZTHCMM4RilUsXrmy9od/vjz3
	Ps/zPu/33h0mJD2YEjOabYzVTFdTYqlIWvxp7pMvVYR0mqmuR4pmfjstLjoZ9UpKBWXB4fKy
	D652iMsFOumzVUy10c5Ydz1XITVsjGhq7qvrGv92SBrRZEEbSsOAeBrmPF0ohknCKYC+RUMb
	knJ4DMH5Y0fjxD0Et5oO8sQKgvCPnRL+YRzBSN+8KKYSE/tgqKdZEMMZXNtLy1PiGBYS78GH
	LTPCGJYTFbDa5UO8hobjJ67G9YXgb3VvYhFRAE3OyKYeJ0qgMXgB8WHfIZg4Fdo0pxHPQzjS
	KolhROTCmfluER+WBTfvnBLwdyPAfZEPBkIBiwvRVB7nwc/OHwS8Xg0hR0980CfAc/puPDgd
	Jj+6I+pE4Epq60qyuJIsriTLABKdQwrWqLGbCjVFhWprJcMe0WjVb1tMI4h/cZmjaKD/9QAi
	METJ8LIDIR2ZStvZelMA7cYElAKfKQnqyG2Vlqp6A80aDllrqxmWUuIoJSWFlD8os7WVJiPL
	Gi3mAAJMSGXgWd9wPryKrj/CWC28LYAexkRUFt5e1aAjCT1tYw4zTA1j3WJLMIwCvOgQN0O6
	ldEzde8Yq21bNJXLZ2YmM8mxAiwtgJ7CZFz24ltcC5ytoU2sUR+3Z/N2cquasF5DL2DLLe3t
	QlJktpgZZRa+HPMTMaWh1vxgAmUO/vjROR2pSCISXZbQPOJ2KMePxeaXcf9HIhvwUXnvm2R6
	vJgwFQ5yHuLCNuidDiLoH13lPu7weCoMt8ymwuyXLgl0b1ySwI1/FiTQFmlNg2+jczL45O6G
	DPw33ASM/htJh/bWITnHTmbAT7+2ZILr+2uZ0O+9DdDddjwbvPccSpheuaKEz9eGcmDd90UO
	eCNXuKP3hApuDnBHpMepgr/cURVcdqzlgXN8iIKLv3Tkg69pKh+is57tS9xiBdxiNds3F2uj
	bf+z2Hg1cTtlI3pxb/H7Z3PNL5+07wjv7Twn6yr/ShF6ZUG1i57zFv+R/czYYvPa8Mf+lWD3
	wet7wmzBjsHXSk3UHpXjs9vF79Y1163Xa6f1irO/5034hlf99r6B9cmdj72qi+6/5bveP6j2
	z/ce0JaGzj8Uzp/4OtLgvj/2hrjjT7328KN5DUue3ZczKBFroLU7hVaW/g+CSezHuQQAAA==
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
X-List-Received-Date: Thu, 19 Apr 2018 09:24:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Peter,

I have removed the tabs and applied spaces in the mentioned lines.

Please see the changes here,
http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=3Dvrajendran/ex=
ternalsrc-debugsrc&id=3Dd835e41e35160941debaad4beff80b322ff60664

Patch:
package.bbclass: copydebugsources: remove tabs and apply spacevrajendran/ex=
ternalsrc-debugsrc
Signed-off-by: Vignesh Rajendran <vignesh.rajendran@in.bosch.com>
Diffstat
-rw-r--r--	meta/classes/package.bbclass	4=09
	=09
1 files changed, 2 insertions, 2 deletions
diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
index 9466a4b..c76f6e4 100644
--- a/meta/classes/package.bbclass
+++ b/meta/classes/package.bbclass
@@ -414,7 +414,7 @@ def copydebugsources(debugsrcdir, d):
         workdir =3D d.getVar("WORKDIR")
         workparentdir =3D os.path.dirname(os.path.dirname(workdir))
         workbasedir =3D os.path.basename(os.path.dirname(workdir)) + "/" +=
 os.path.basename(workdir)
-	externalsrc =3D d.getVar('EXTERNALSRC', True)
+        externalsrc =3D d.getVar('EXTERNALSRC', True)
=20
         # If build path exists in sourcefile, it means toolchain did not u=
se
         # -fdebug-prefix-map to compile
@@ -449,7 +449,7 @@ def copydebugsources(debugsrcdir, d):
             processdebugsrc +=3D "(cd '%s' ; cpio -pd0mlL --no-preserve-ow=
ner '%s%s' 2>/dev/null)"
             cmd =3D processdebugsrc % (sourcefile, workbasedir, localsrc_p=
refix, workparentdir, dvar, debugsrcdir)
=20
-	(retval, output) =3D oe.utils.getstatusoutput(cmd)
+        (retval, output) =3D oe.utils.getstatusoutput(cmd)
         # Can "fail" if internal headers/transient sources are attempted
         #if retval:
         #    bb.fatal("debug source copy failed with exit code %s (cmd was=
 %s)" % (retval, cmd))

Thank You.

Mit freundlichen Gr=FC=DFen / Best regards

Rajendran Vignesh
RBEI/ECF33 =20

Tel. +91 422 67-65103=20


-----Original Message-----
From: Peter Kjellerstedt [mailto:peter.kjellerstedt@axis.com]=20
Sent: Thursday, April 19, 2018 12:57 PM
To: Vignesh Rajendran (RBEI/ECF3) <Vignesh.Rajendran@in.bosch.com>; poky@yo=
ctoproject.org
Subject: RE: [poky] [PULL] package.bbclass: provide debug sources in extern=
alsrc -dbg packages

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


