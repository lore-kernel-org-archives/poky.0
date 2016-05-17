Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31EE3E00DB1; Tue, 17 May 2016 03:47:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E20FE00D0C
	for <poky@yoctoproject.org>; Tue, 17 May 2016 03:47:38 -0700 (PDT)
Received: by mail-ig0-f169.google.com with SMTP id c3so10591067igl.0
	for <poky@yoctoproject.org>; Tue, 17 May 2016 03:47:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=PEQfip293ZlfCtk1Ypm4gEfWY5gFcBkJF9290dYOkgk=;
	b=g60xK0vRKEuytX5ZehVyrUbdlo1jnFwPlVVSp+cQ6Om6sDbbL4Qaos1jSoaGqR1p76
	d/yio+XCu58ppSEn7OKlqmuUQV1v7fH9JCTZubchWZOrv269oSIcTxA68KCkA2QOhrXN
	ckccJEsG9D9b/n89/3eV1FFIZKPwSwYFFYpXYPfch4zmcZiQImyTAihiDfAkIWSrOE9W
	LRXiWVAvxKX1t+0x7mYNgU/DKCeLp1hzUex7X5d4v6rqQtAlb3Fe1Q9Lg8LOGziDfF0k
	nQ9hOTJyX7K78VcToja5m5Rbvd3aH45uH64Pzw4ud43T2b0Q3nSLY02kYgkLtxVJXBeH
	D0bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=PEQfip293ZlfCtk1Ypm4gEfWY5gFcBkJF9290dYOkgk=;
	b=j2bflQbvGCNldYK66k6IyuJ9aCxdTOIxZUQFSF6tUTaI9nq+QA1NFKS3E9n+BTdOFk
	e3uO1/KPQWKPhMeUqlfauZqfaoPcZcDRcmvGNB6R2UJJAIrx8A4OG/lNw4S+1lK+iX0f
	EDhwg2KIcQoQj5g9IkFLlSOL8D12k3C83RYd4+62EeKOY8xFzVH3PACYFWetbqb0DZTg
	SODV8+T/DsCrywKSP6qYEJcz/THrGe+9UYuvvDFB+VtL5SmAMhrosuNQhEkz7n06TGyV
	zUId0WFlIYfwbueFAF8jkB0MMAE0G20IwPayjSipKvsNdO9ZPuoUI09zTGThcKNWaE5G
	Fh2A==
X-Gm-Message-State: AOPr4FVwSiYRPJPOLSa+2HTf3gdY+4LtuuFdpgnFzgLvhrb0eugnCk05WZn27706ZS6ueD5wMFj81i8/6RB8punr
X-Received: by 10.50.60.132 with SMTP id h4mr13464324igr.78.1463482058316;
	Tue, 17 May 2016 03:47:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Tue, 17 May 2016 03:47:18 -0700 (PDT)
In-Reply-To: <8759c4fa3b364ca6966f81155185b602@Win2012-02.gin-domain.local>
References: <8759c4fa3b364ca6966f81155185b602@Win2012-02.gin-domain.local>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 17 May 2016 11:47:18 +0100
Message-ID: <CAJTo0LYURNP+KnHrKMCqZvQdgpM94_tOS7DBL+1MtUCd3m0pEA@mail.gmail.com>
To: "Klauer, Daniel" <Daniel.Klauer@gin.de>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] smartpm: Don't ignore error if RPM transaction fails without problems
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
X-List-Received-Date: Tue, 17 May 2016 10:47:42 -0000
Content-Type: multipart/alternative; boundary=bcaec5015c9b38b81f05330778f6

--bcaec5015c9b38b81f05330778f6
Content-Type: text/plain; charset=UTF-8

Good catch but patches that are actually for openembedded-core should go to
openembedded-core@lists.openembedded.org, can you resend it?

Cheers,
Ross

On 12 May 2016 at 09:01, Klauer, Daniel <Daniel.Klauer@gin.de> wrote:

> SmartPM could misinterpret RPM transaction error as success,
> if ts.run() (RPM Python API) returns an empty problems list.
>
> This could happen for example if the RPM database is partially corrupted
> such that the transaction does not have any problems like conflicts or
> missing dependencies, but still can't be committed.
>
> The added patch fixes the problem in the upstream sources;
> one of the existing patches has to be adjusted to still apply.
>
> Signed-off-by: Daniel Klauer <daniel.klauer@gin.de>
> ---
>  ...gnore-transaction-error-with-empty-proble.patch | 57
> ++++++++++++++++++++++
>  .../python/python-smartpm/smart-attempt.patch      |  6 +--
>  meta/recipes-devtools/python/python-smartpm_git.bb |  1 +
>  3 files changed, 61 insertions(+), 3 deletions(-)
>  create mode 100644
> meta/recipes-devtools/python/python-smartpm/0001-rpm-Don-t-ignore-transaction-error-with-empty-proble.patch
>
> diff --git
> a/meta/recipes-devtools/python/python-smartpm/0001-rpm-Don-t-ignore-transaction-error-with-empty-proble.patch
> b/meta/recipes-devtools/python/python-smartpm/0001-rpm-Don-t-ignore-transaction-error-with-empty-proble.patch
> new file mode 100644
> index 0000000..a740ddd
> --- /dev/null
> +++
> b/meta/recipes-devtools/python/python-smartpm/0001-rpm-Don-t-ignore-transaction-error-with-empty-proble.patch
> @@ -0,0 +1,57 @@
> +From 0c55d7e18f40465e95e8e4bf22af01f5d4477d3c Mon Sep 17 00:00:00 2001
> +From: Daniel Klauer <daniel.klauer@gin.de>
> +Date: Wed, 11 May 2016 17:22:49 +0200
> +Subject: [PATCH] rpm: Don't ignore transaction error with empty problems
> list
> +
> +SmartPM could misinterpret RPM transaction error as success,
> +if ts.run() (RPM Python API) returns an empty problems list,
> +because of incorrect check for None which treated empty list
> +to be the same as None when it has different meaning.
> +
> +ts.run() returns:
> +* None in case of success
> +* problems list in case of error, may be empty
> +(look at rpmts_Run() in rpm-5.4.14/python/rpmts-py.c [1])
> +
> +"if mylist" is not good enough to check for error here, because it will
> +treat an empty list as "false" because its len() == 0 [2].
> +
> +ts.check() seems to be different (it's ok for it to return an empty list),
> +but for consistency it should be made clear that it can return either
> None,
> +an empty list or a non-empty list.
> +
> +[1] http://rpm5.org/cvs/fileview?f=rpm/python/rpmts-py.c&v=1.111.2.3
> +[2] https://docs.python.org/2/library/stdtypes.html#truth-value-testing
> +
> +Upstream-Status: Pending
> +
> +Signed-off-by: Daniel Klauer <daniel.klauer@gin.de>
> +---
> + smart/backends/rpm/pm.py | 4 ++--
> + 1 file changed, 2 insertions(+), 2 deletions(-)
> +
> +diff --git a/smart/backends/rpm/pm.py b/smart/backends/rpm/pm.py
> +index 9bbd952..635f726 100644
> +--- a/smart/backends/rpm/pm.py
> ++++ b/smart/backends/rpm/pm.py
> +@@ -208,7 +208,7 @@ class RPMPackageManager(PackageManager):
> +         force = sysconf.get("rpm-force", False)
> +         if not force:
> +             probs = ts.check()
> +-            if probs:
> ++            if (probs is not None) and (len(probs) != 0):
> +                 problines = []
> +                 for prob in probs:
> +                     name1 = "%s-%s-%s" % prob[0]
> +@@ -247,7 +247,7 @@ class RPMPackageManager(PackageManager):
> +             del getTS.ts
> +             cb.grabOutput(False)
> +             prog.setDone()
> +-            if probs:
> ++            if probs is not None:
> +                 raise Error, "\n".join([x[0] for x in probs])
> +             prog.stop()
> +
> +--
> +1.9.1
> +
> diff --git
> a/meta/recipes-devtools/python/python-smartpm/smart-attempt.patch
> b/meta/recipes-devtools/python/python-smartpm/smart-attempt.patch
> index ec98e03..5aedc88 100644
> --- a/meta/recipes-devtools/python/python-smartpm/smart-attempt.patch
> +++ b/meta/recipes-devtools/python/python-smartpm/smart-attempt.patch
> @@ -36,7 +36,7 @@ index 9bbd952..ba6405a 100644
>           finally:
>               del getTS.ts
>               cb.grabOutput(False)
> -+            if probs and sysconf.has("attempt-install", soft=True):
> ++            if (probs is not None) and sysconf.has("attempt-install",
> soft=True):
>  +                def remove_conflict(pkgNEVR):
>  +                    for key in changeset.keys():
>  +                        if pkgNEVR == str(key):
> @@ -67,8 +67,8 @@ index 9bbd952..ba6405a 100644
>  +                        retry = 0
>  +
>               prog.setDone()
> --            if probs:
> -+            if probs and (not retry):
> +-            if probs is not None:
> ++            if (probs is not None) and (not retry):
>                   raise Error, "\n".join([x[0] for x in probs])
>               prog.stop()
>  +            if retry and len(changeset):
> diff --git a/meta/recipes-devtools/python/python-smartpm_git.bb
> b/meta/recipes-devtools/python/python-smartpm_git.bb
> index d6c378b..95b7e09 100644
> --- a/meta/recipes-devtools/python/python-smartpm_git.bb
> +++ b/meta/recipes-devtools/python/python-smartpm_git.bb
> @@ -17,6 +17,7 @@ SRC_URI = "\
>            file://smart-recommends.patch \
>            file://smart-improve-error-reporting.patch \
>            file://smart-channelsdir.patch \
> +
> file://0001-rpm-Don-t-ignore-transaction-error-with-empty-proble.patch \
>            file://smart-attempt.patch \
>            file://smart-attempt-fix.patch \
>            file://smart-rpm4-fixes.patch \
> --
> 1.9.1
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--bcaec5015c9b38b81f05330778f6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good catch but patches that are actually for openembedded-=
core should go to <a href=3D"mailto:openembedded-core@lists.openembedded.or=
g">openembedded-core@lists.openembedded.org</a>, can you resend it?<div><br=
></div><div>Cheers,</div><div>Ross</div></div><div class=3D"gmail_extra"><b=
r><div class=3D"gmail_quote">On 12 May 2016 at 09:01, Klauer, Daniel <span =
dir=3D"ltr">&lt;<a href=3D"mailto:Daniel.Klauer@gin.de" target=3D"_blank">D=
aniel.Klauer@gin.de</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>SmartPM could misinterpret RPM transaction error as success,<br>
if ts.run() (RPM Python API) returns an empty problems list.<br>
<br>
This could happen for example if the RPM database is partially corrupted<br=
>
such that the transaction does not have any problems like conflicts or<br>
missing dependencies, but still can&#39;t be committed.<br>
<br>
The added patch fixes the problem in the upstream sources;<br>
one of the existing patches has to be adjusted to still apply.<br>
<br>
Signed-off-by: Daniel Klauer &lt;<a href=3D"mailto:daniel.klauer@gin.de">da=
niel.klauer@gin.de</a>&gt;<br>
---<br>
=C2=A0...gnore-transaction-error-with-empty-proble.patch | 57 +++++++++++++=
+++++++++<br>
=C2=A0.../python/python-smartpm/smart-attempt.patch=C2=A0 =C2=A0 =C2=A0 |=
=C2=A0 6 +--<br>
=C2=A0meta/recipes-devtools/python/<a href=3D"http://python-smartpm_git.bb"=
 rel=3D"noreferrer" target=3D"_blank">python-smartpm_git.bb</a> |=C2=A0 1 +=
<br>
=C2=A03 files changed, 61 insertions(+), 3 deletions(-)<br>
=C2=A0create mode 100644 meta/recipes-devtools/python/python-smartpm/0001-r=
pm-Don-t-ignore-transaction-error-with-empty-proble.patch<br>
<br>
diff --git a/meta/recipes-devtools/python/python-smartpm/0001-rpm-Don-t-ign=
ore-transaction-error-with-empty-proble.patch b/meta/recipes-devtools/pytho=
n/python-smartpm/0001-rpm-Don-t-ignore-transaction-error-with-empty-proble.=
patch<br>
new file mode 100644<br>
index 0000000..a740ddd<br>
--- /dev/null<br>
+++ b/meta/recipes-devtools/python/python-smartpm/0001-rpm-Don-t-ignore-tra=
nsaction-error-with-empty-proble.patch<br>
@@ -0,0 +1,57 @@<br>
+From 0c55d7e18f40465e95e8e4bf22af01f5d4477d3c Mon Sep 17 00:00:00 2001<br>
+From: Daniel Klauer &lt;<a href=3D"mailto:daniel.klauer@gin.de">daniel.kla=
uer@gin.de</a>&gt;<br>
+Date: Wed, 11 May 2016 17:22:49 +0200<br>
+Subject: [PATCH] rpm: Don&#39;t ignore transaction error with empty proble=
ms list<br>
+<br>
+SmartPM could misinterpret RPM transaction error as success,<br>
+if ts.run() (RPM Python API) returns an empty problems list,<br>
+because of incorrect check for None which treated empty list<br>
+to be the same as None when it has different meaning.<br>
+<br>
+ts.run() returns:<br>
+* None in case of success<br>
+* problems list in case of error, may be empty<br>
+(look at rpmts_Run() in rpm-5.4.14/python/rpmts-py.c [1])<br>
+<br>
+&quot;if mylist&quot; is not good enough to check for error here, because =
it will<br>
+treat an empty list as &quot;false&quot; because its len() =3D=3D 0 [2].<b=
r>
+<br>
+ts.check() seems to be different (it&#39;s ok for it to return an empty li=
st),<br>
+but for consistency it should be made clear that it can return either None=
,<br>
+an empty list or a non-empty list.<br>
+<br>
+[1] <a href=3D"http://rpm5.org/cvs/fileview?f=3Drpm/python/rpmts-py.c&amp;=
v=3D1.111.2.3" rel=3D"noreferrer" target=3D"_blank">http://rpm5.org/cvs/fil=
eview?f=3Drpm/python/rpmts-py.c&amp;v=3D1.111.2.3</a><br>
+[2] <a href=3D"https://docs.python.org/2/library/stdtypes.html#truth-value=
-testing" rel=3D"noreferrer" target=3D"_blank">https://docs.python.org/2/li=
brary/stdtypes.html#truth-value-testing</a><br>
+<br>
+Upstream-Status: Pending<br>
+<br>
+Signed-off-by: Daniel Klauer &lt;<a href=3D"mailto:daniel.klauer@gin.de">d=
aniel.klauer@gin.de</a>&gt;<br>
+---<br>
+ smart/backends/rpm/pm.py | 4 ++--<br>
+ 1 file changed, 2 insertions(+), 2 deletions(-)<br>
+<br>
+diff --git a/smart/backends/rpm/pm.py b/smart/backends/rpm/pm.py<br>
+index 9bbd952..635f726 100644<br>
+--- a/smart/backends/rpm/pm.py<br>
++++ b/smart/backends/rpm/pm.py<br>
+@@ -208,7 +208,7 @@ class RPMPackageManager(PackageManager):<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0force =3D sysconf.get(&quot;rpm-force&qu=
ot;, False)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if not force:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0probs =3D ts.check()<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if probs:<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (probs is not None) and (len=
(probs) !=3D 0):<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0problines =
=3D []<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0for prob in =
probs:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0name1 =3D &quot;%s-%s-%s&quot; % prob[0]<br>
+@@ -247,7 +247,7 @@ class RPMPackageManager(PackageManager):<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0del getTS.ts<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cb.grabOutput(False)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0prog.setDone()<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if probs:<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if probs is not None:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0raise Error,=
 &quot;\n&quot;.join([x[0] for x in probs])<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0prog.stop()<br>
+<br>
+--<br>
+1.9.1<br>
+<br>
diff --git a/meta/recipes-devtools/python/python-smartpm/smart-attempt.patc=
h b/meta/recipes-devtools/python/python-smartpm/smart-attempt.patch<br>
index ec98e03..5aedc88 100644<br>
--- a/meta/recipes-devtools/python/python-smartpm/smart-attempt.patch<br>
+++ b/meta/recipes-devtools/python/python-smartpm/smart-attempt.patch<br>
@@ -36,7 +36,7 @@ index 9bbd952..ba6405a 100644<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 finally:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 del getTS.ts<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cb.grabOutput(False)<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if probs and sysconf.has(&quot;=
attempt-install&quot;, soft=3DTrue):<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (probs is not None) and sysc=
onf.has(&quot;attempt-install&quot;, soft=3DTrue):<br>
=C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 def remove_c=
onflict(pkgNEVR):<br>
=C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 for key in changeset.keys():<br>
=C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 if pkgNEVR =3D=3D str(key):<br>
@@ -67,8 +67,8 @@ index 9bbd952..ba6405a 100644<br>
=C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 retry =3D 0<br>
=C2=A0+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 prog.setDone()<br>
--=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if probs:<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if probs and (not retry):<br>
+-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if probs is not None:<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (probs is not None) and (not=
 retry):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 raise Error,=
 &quot;\n&quot;.join([x[0] for x in probs])<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 prog.stop()<br>
=C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if retry and len(changeset=
):<br>
diff --git a/meta/recipes-devtools/python/<a href=3D"http://python-smartpm_=
git.bb" rel=3D"noreferrer" target=3D"_blank">python-smartpm_git.bb</a> b/me=
ta/recipes-devtools/python/<a href=3D"http://python-smartpm_git.bb" rel=3D"=
noreferrer" target=3D"_blank">python-smartpm_git.bb</a><br>
index d6c378b..95b7e09 100644<br>
--- a/meta/recipes-devtools/python/<a href=3D"http://python-smartpm_git.bb"=
 rel=3D"noreferrer" target=3D"_blank">python-smartpm_git.bb</a><br>
+++ b/meta/recipes-devtools/python/<a href=3D"http://python-smartpm_git.bb"=
 rel=3D"noreferrer" target=3D"_blank">python-smartpm_git.bb</a><br>
@@ -17,6 +17,7 @@ SRC_URI =3D &quot;\<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://smart-recommends.patch \<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://smart-improve-error-reporti=
ng.patch \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://smart-channelsdir.patch \<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0001-rpm-Don-t-ignore-transactio=
n-error-with-empty-proble.patch \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://smart-attempt.patch \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://smart-attempt-fix.patch \<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://smart-rpm4-fixes.patch \<br=
>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.9.1<br>
--<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
</font></span></blockquote></div><br></div>

--bcaec5015c9b38b81f05330778f6--
