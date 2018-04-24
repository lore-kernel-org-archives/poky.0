Return-Path: <Vignesh.Rajendran@in.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D46FE009BC; Mon, 23 Apr 2018 21:38:56 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 608FBE008D7
	for <poky@yoctoproject.org>; Mon, 23 Apr 2018 21:38:54 -0700 (PDT)
Received: from fe0vm1650.rbesz01.com (unknown [139.15.230.188])
	by si0vms0217.rbdmz01.com (Postfix) with ESMTPS id 40VVvw1smzz4f3lMd;
	Tue, 24 Apr 2018 06:38:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=in.bosch.com;
	s=2015-01-21; t=1524544732;
	bh=z77tYUWRX71dTH1ts5MLVAe6ysNJNzf364ITRE04HnA=; l=10;
	h=From:From:Reply-To:Sender;
	b=YouoK5vrUG2/J0Mfezj03Jmjik+geX9D7y17Lq0hI3kbHCTASmxEmwoom4oSWkJnf
	ZU+WFgUq4RiOg25Y/aKCdYFsbJFBwOZFcJ1MEYDZlVp9LQX6tDBoiTWzik9H33kicy
	dcg2j4ia0gJh49sZZ/xh57d7d17+5MrcfZHpbG/o=
Received: from si0vm2082.rbesz01.com (unknown [10.58.172.176])
	by fe0vm1650.rbesz01.com (Postfix) with ESMTPS id 40VVvw1VBxz1C7;
	Tue, 24 Apr 2018 06:38:52 +0200 (CEST)
X-AuditID: 0a3aad16-9e1ff70000001f9e-c0-5adeb4e1ca1f
Received: from si0vm1950.rbesz01.com ( [10.58.173.29])
	(using TLS with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by si0vm2082.rbesz01.com (SMG Outbound) with SMTP id
	5B.3F.08094.1E4BEDA5; Tue, 24 Apr 2018 06:38:57 +0200 (CEST)
Received: from FE-MBX2010.de.bosch.com (fe-mbx2010.de.bosch.com [10.3.231.16])
	by si0vm1950.rbesz01.com (Postfix) with ESMTPS id 40VVvv6CtpzCpP6;
	Tue, 24 Apr 2018 06:38:51 +0200 (CEST)
Received: from SGPMBX2018.APAC.bosch.com (10.187.83.36) by
	FE-MBX2010.de.bosch.com (10.3.231.16) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.1.1466.3; Tue, 24 Apr 2018 06:38:51 +0200
Received: from SGPMBX2020.APAC.bosch.com (10.187.83.43) by
	SGPMBX2018.APAC.bosch.com (10.187.83.36) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.1.1415.2; Tue, 24 Apr 2018 12:38:49 +0800
Received: from SGPMBX2020.APAC.bosch.com ([fe80::b526:b737:7eb9:3a96]) by
	SGPMBX2020.APAC.bosch.com ([fe80::b526:b737:7eb9:3a96%6]) with mapi id
	15.01.1415.002; Tue, 24 Apr 2018 12:38:49 +0800
From: "Vignesh Rajendran (RBEI/ECF3)" <Vignesh.Rajendran@in.bosch.com>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Thread-Topic: [poky] [PULL] package.bbclass: provide debug sources in
	externalsrc	-dbg packages
Thread-Index: AQHT16/gXmUhu6os0EG6ATH3PszRdaQH0BFggAeKnVA=
Date: Tue, 24 Apr 2018 04:38:49 +0000
Message-ID: <354749242e9644759935066f4920acfd@in.bosch.com>
References: <cover.1522820703.git.vignesh.rajendran@in.bosch.com>
	<e8d2f42f4a0ff11961e831d00caeb86a5efdbb13.1522820703.git.vignesh.rajendran@in.bosch.com>
	<11fded6a5f8e4927a8fb8010aa6fa6ef@XBOX02.axis.com> 
Accept-Language: en-US, en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.187.56.218]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA21TbWwTdRjfv9eXW+mZ23Vdn5Xt1CMmRKQre4kTiJIQGVE+8AlDjYGbO9aG
	td3uujf0wwI6y1YER4ezlDlk6GbLglKkkC3BDg0vC5gNxCEs0da3MZKRZS+dWLzzOtoPfvnn
	d8/ze3n+z93hGHUUN+F2p5vjnWwNo9YqtWtPFa7+JTxhtRz5dmX5jT+Pq8s/ToY0GxSbbw9s
	3fzB5Q/VWxVW7foqrsbewPFFL+/U2s72vKesDZU1xR8ENC2oZVUbysaBLIXhE++r25AWp8gu
	BYxHOjGpQZGDCDpOvCjjaQQDM8tl0gyCr0aOaeSHSwgWYl0qiaUmN0HQt1ch4VzRdmjqmlrC
	GFkCkWsJpYT15E6Y/SiMZA4LnvbLKf5aiHq8GgkryefgwHl5CoJcBw+uB5EcNoqg/2HHf0aI
	LITPxmWMkUa4E/9UId+HhN7BG5iMDfBXLKmS8bMwPH4RyXwz/NTpSw23Cj4/fj8VlgNXPokr
	DyGjP8PWnyHxZ0j8GZIepPwSGQS7pcFRbCkvNvOVnLDHssb8tsvxNZLfVl4E9XRviyISR4yO
	aD81YaVUbIPQ7IiiMlzBGIiSg2LpqUpXVbONFWw7+PoaTmBMBMrKyqL0T8pCfaXDLgh2lzOK
	AMeYXGKIFnVEFdu8h+NdsiyKluNKxkh4q961UmQ16+Z2c1wtxy911+E4A0SF+PVQOTxXzTXt
	ste4l9pMoZyZl9nJjFXg2VFUguvE7JWSBSHUsg7BXp2S58tyaqmall5FG/GpVq8Xo5ROl5Mz
	GYnOM6KelJi2eueTCUwFxIj9npUyZDTSLpNoHIk71BNlUrhO/CnS2UBE9IHtVE6qmBYVnxQ1
	ZJyEwMhtBN2RWQQ/z11SwUDrqApGL/g10PF4SAM3/45poC2xPxu6kzEthO8dXgY/JG/poO/+
	Yx18c7OXhMg/iRzw7g/qRd6VXJj4vTUP/GNX8yA5+J0RukN3ATraPPkQmu40wcjMsAnOzgcL
	4FH4XAGEEsPiEWin4U6PeCR8XTQcOvojDX0HH9Kw0JukJ8XFKsTFevLvSot1s+7/WWyqmr6d
	qQU16ukVK/qv79tobS1dxKJ9/UV9q1/bZ2E2TM2OJfE/uN/i5vnzr88d9u+OEI3+py/seIHZ
	Pvfr6SPTYw0Fhib3Gzq751Vm0ztbdtHPvBmbHDs2v2VZQJtt3lt35kC73udsDLxSOv1987k6
	9SP1rS9eCtfzi771bxUFK05X1C0s0pMXGaVgY9c8j/EC+y8P1zo7rgQAAA==
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
X-List-Received-Date: Tue, 24 Apr 2018 04:38:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Peter,=20

I couldn't see my changes not merged to poky-contrib  master yet.
http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=3Dvrajendran/exter=
nalsrc-debugsrc

As an  external developer, I am unaware of Yocto QA process to intake chang=
es to master branch.

Do I missing something from my end?

Mit freundlichen Gr=FC=DFen / Best regards

Rajendran Vignesh
RBEI/ECF33 =20

Tel. +91 422 67-65103=20


-----Original Message-----
From: Vignesh Rajendran (RBEI/ECF3)=20
Sent: Thursday, April 19, 2018 2:54 PM
To: 'Peter Kjellerstedt' <peter.kjellerstedt@axis.com>
Cc: poky@yoctoproject.org; Vignesh Rajendran (RBEI/ECF3) (Vignesh.Rajendran=
@in.bosch.com) <Vignesh.Rajendran@in.bosch.com>
Subject: RE: [poky] [PULL] package.bbclass: provide debug sources in extern=
alsrc -dbg packages

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


