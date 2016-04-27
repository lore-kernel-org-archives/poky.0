Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9A0DE00D84; Wed, 27 Apr 2016 03:51:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61248E00D7E
	for <poky@yoctoproject.org>; Wed, 27 Apr 2016 03:51:08 -0700 (PDT)
Received: by mail-io0-f170.google.com with SMTP id f89so42360888ioi.0
	for <poky@yoctoproject.org>; Wed, 27 Apr 2016 03:51:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=HMRanuNm/J9KACG3UedxkSVahz8YHDxbRFP8yNqkU6g=;
	b=Wzwq/ViLKkl5g/vXE11WiDJJtZdQF0/XatcyftGFko/FX/xMP9oolkfyYsfF/qxi+V
	hqAIKBvrh3jfEw+V4f96AwhTUKpE98wcpJxAnkcfIa/8/eUo7WojFM++PTlXy96N0b9W
	qT7NUpkqCpAX7TUVqAUKSqYK4RZUAQz6Xvy9Qcrd7AC8OSyasPdI6M7qUhjAEUF3hzXl
	UC5JOpT/aju024ZDz8Uqot7HJmZSsa2APaR3QN7ESXm1yGPajbsK8aIrZRQu0FQdKvkQ
	2Lxd+fUF0yE9k3DAS4NInsLNy++BBphSIHoSbYVjG5WOWV55o+G5y0GIa9M5qMqIQCzY
	vFTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=HMRanuNm/J9KACG3UedxkSVahz8YHDxbRFP8yNqkU6g=;
	b=TOIzk6GF5FjUCmVy04ov2o16jiq4Uzjz+EgrYUYrBbCJwNMTf+w5116gtiECXs0IGK
	2Lwk5P0qX/qgspSxLvXcgImqPpyz64Hk0XSstDYw8L4SalfrE9T7m5LrfY439ubGvvd2
	v1rGyJRSSUBSKYov+S51t5mkNakvxRr6Se81D+uYvUgbqT7+FELkc+qz1FZiweizAp40
	jZ2CFdSzjC3F282JC3Z3/3TikJZYVaHcOsxJF3buPKZmrnVSNk8cGoiIvsQnXBVFlqrF
	P1unAehnUEq6YftR324QlrgheOZBdakx50AxpiejO6ol1/1Xd2hQbOE/3VtEG7SQACHj
	jSzg==
X-Gm-Message-State: AOPr4FV9m8hota39Ts/YG6I9o/0wEaA/2yvg/5d4HwgICwt8oMq3kuPZHmWimEu9vmtI+o4/e8hAVv/YnbniVVyV
X-Received: by 10.107.135.211 with SMTP id r80mr10027088ioi.133.1461754268220; 
	Wed, 27 Apr 2016 03:51:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.106 with HTTP; Wed, 27 Apr 2016 03:50:48 -0700 (PDT)
In-Reply-To: <1461750017-14514-1-git-send-email-martyn.welch@collabora.co.uk>
References: <1461750017-14514-1-git-send-email-martyn.welch@collabora.co.uk>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 27 Apr 2016 11:50:48 +0100
Message-ID: <CAJTo0LYLc2Yt03c7fkeLd9z+NaFDEKszEhEXyjPpF2up6AY25A@mail.gmail.com>
To: Martyn Welch <martyn.welch@collabora.co.uk>
Cc: Jussi Kukkonen <jussi.jukkonen@intel.com>,
	Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] [jethro] glew: Correct version in autotooling patches
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
X-List-Received-Date: Wed, 27 Apr 2016 10:51:11 -0000
Content-Type: multipart/alternative; boundary=001a113ed20ae819cb0531752f9d

--001a113ed20ae819cb0531752f9d
Content-Type: text/plain; charset=UTF-8

Hi Martyn,

Patches for oe-core should go to openembedded-core@lists.openembedded.org,
not poky@.

Cheers,
Ross


On 27 April 2016 at 10:40, Martyn Welch <martyn.welch@collabora.co.uk>
wrote:

> The additional autotooling patched into glew claims the version is 1.9.0
> whilst we are building 1.12.0. The version in the autotooling is used to
> set the version number in the pkgconfig file, this results in the
> configuration of packages which depend on glew > 1.9.0 failing.
>
> This patch updates the version number used in the patches to match that of
> the version being built.
>
> Signed-off-by: Martyn Welch <martyn.welch@collabora.co.uk>
> ---
>  meta/recipes-graphics/glew/glew/autotools.patch           | 4 ++--
>  meta/recipes-graphics/glew/glew/fix-glew.pc-install.patch | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/meta/recipes-graphics/glew/glew/autotools.patch
> b/meta/recipes-graphics/glew/glew/autotools.patch
> index 7dfe087..81a1343 100644
> --- a/meta/recipes-graphics/glew/glew/autotools.patch
> +++ b/meta/recipes-graphics/glew/glew/autotools.patch
> @@ -20,7 +20,7 @@ Index: glew/configure.ac
>  +# Process this file with autoconf to produce a configure script.
>  +
>  +AC_PREREQ([2.62])
> -+AC_INIT([glew], [1.9.0], [BUG-REPORT-ADDRESS])
> ++AC_INIT([glew], [1.12.0], [BUG-REPORT-ADDRESS])
>  +AC_CONFIG_SRCDIR([src/glew.c])
>  +AC_CONFIG_HEADERS([config.h])
>  +AM_INIT_AUTOMAKE([-Wall -Werror foreign])
> @@ -77,7 +77,7 @@ Index: glew/configure.ac
>  +# for now we use the same version as the package, but that should be
> avoided
>  +# in the future
>  +
> -+AC_SUBST([LIBGLEW_SO_VERSION], [1:9:0])
> ++AC_SUBST([LIBGLEW_SO_VERSION], [1:12:0])
>  +
>  +AC_CONFIG_FILES([Makefile
>  +                 include/Makefile
> diff --git a/meta/recipes-graphics/glew/glew/fix-glew.pc-install.patch
> b/meta/recipes-graphics/glew/glew/fix-glew.pc-install.patch
> index 70a99ae..baab9ff 100644
> --- a/meta/recipes-graphics/glew/glew/fix-glew.pc-install.patch
> +++ b/meta/recipes-graphics/glew/glew/fix-glew.pc-install.patch
> @@ -20,7 +20,7 @@ Index: glew-1.11.0/configure.ac
>  ===================================================================
>  --- glew-1.11.0.orig/configure.ac
>  +++ glew-1.11.0/configure.ac
> -@@ -66,5 +66,6 @@ AC_SUBST([LIBGLEW_SO_VERSION], [1:9:0])
> +@@ -66,5 +66,6 @@ AC_SUBST([LIBGLEW_SO_VERSION], [1:12:0])
>
>   AC_CONFIG_FILES([Makefile
>                    include/Makefile
> --
> 1.8.3.1
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--001a113ed20ae819cb0531752f9d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Martyn,<div><br></div><div>Patches for oe-core should g=
o to <a href=3D"mailto:openembedded-core@lists.openembedded.org">openembedd=
ed-core@lists.openembedded.org</a>, not poky@.<div><br></div><div>Cheers,</=
div><div>Ross</div><div><br></div></div></div><div class=3D"gmail_extra"><b=
r><div class=3D"gmail_quote">On 27 April 2016 at 10:40, Martyn Welch <span =
dir=3D"ltr">&lt;<a href=3D"mailto:martyn.welch@collabora.co.uk" target=3D"_=
blank">martyn.welch@collabora.co.uk</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">The additional autotooling patched into glew claims the ve=
rsion is 1.9.0<br>
whilst we are building 1.12.0. The version in the autotooling is used to<br=
>
set the version number in the pkgconfig file, this results in the<br>
configuration of packages which depend on glew &gt; 1.9.0 failing.<br>
<br>
This patch updates the version number used in the patches to match that of<=
br>
the version being built.<br>
<br>
Signed-off-by: Martyn Welch &lt;<a href=3D"mailto:martyn.welch@collabora.co=
.uk">martyn.welch@collabora.co.uk</a>&gt;<br>
---<br>
=C2=A0meta/recipes-graphics/glew/glew/autotools.patch=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0| 4 ++--<br>
=C2=A0meta/recipes-graphics/glew/glew/fix-glew.pc-install.patch | 2 +-<br>
=C2=A02 files changed, 3 insertions(+), 3 deletions(-)<br>
<br>
diff --git a/meta/recipes-graphics/glew/glew/autotools.patch b/meta/recipes=
-graphics/glew/glew/autotools.patch<br>
index 7dfe087..81a1343 100644<br>
--- a/meta/recipes-graphics/glew/glew/autotools.patch<br>
+++ b/meta/recipes-graphics/glew/glew/autotools.patch<br>
@@ -20,7 +20,7 @@ Index: glew/<a href=3D"http://configure.ac" rel=3D"norefe=
rrer" target=3D"_blank">configure.ac</a><br>
=C2=A0+# Process this file with autoconf to produce a configure script.<br>
=C2=A0+<br>
=C2=A0+AC_PREREQ([2.62])<br>
-+AC_INIT([glew], [1.9.0], [BUG-REPORT-ADDRESS])<br>
++AC_INIT([glew], [1.12.0], [BUG-REPORT-ADDRESS])<br>
=C2=A0+AC_CONFIG_SRCDIR([src/glew.c])<br>
=C2=A0+AC_CONFIG_HEADERS([config.h])<br>
=C2=A0+AM_INIT_AUTOMAKE([-Wall -Werror foreign])<br>
@@ -77,7 +77,7 @@ Index: glew/<a href=3D"http://configure.ac" rel=3D"norefe=
rrer" target=3D"_blank">configure.ac</a><br>
=C2=A0+# for now we use the same version as the package, but that should be=
 avoided<br>
=C2=A0+# in the future<br>
=C2=A0+<br>
-+AC_SUBST([LIBGLEW_SO_VERSION], [1:9:0])<br>
++AC_SUBST([LIBGLEW_SO_VERSION], [1:12:0])<br>
=C2=A0+<br>
=C2=A0+AC_CONFIG_FILES([Makefile<br>
=C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0includ=
e/Makefile<br>
diff --git a/meta/recipes-graphics/glew/glew/fix-glew.pc-install.patch b/me=
ta/recipes-graphics/glew/glew/fix-glew.pc-install.patch<br>
index 70a99ae..baab9ff 100644<br>
--- a/meta/recipes-graphics/glew/glew/fix-glew.pc-install.patch<br>
+++ b/meta/recipes-graphics/glew/glew/fix-glew.pc-install.patch<br>
@@ -20,7 +20,7 @@ Index: glew-1.11.0/<a href=3D"http://configure.ac" rel=3D=
"noreferrer" target=3D"_blank">configure.ac</a><br>
=C2=A0=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
=C2=A0--- glew-1.11.0.orig/<a href=3D"http://configure.ac" rel=3D"noreferre=
r" target=3D"_blank">configure.ac</a><br>
=C2=A0+++ glew-1.11.0/<a href=3D"http://configure.ac" rel=3D"noreferrer" ta=
rget=3D"_blank">configure.ac</a><br>
-@@ -66,5 +66,6 @@ AC_SUBST([LIBGLEW_SO_VERSION], [1:9:0])<br>
+@@ -66,5 +66,6 @@ AC_SUBST([LIBGLEW_SO_VERSION], [1:12:0])<br>
<br>
=C2=A0 AC_CONFIG_FILES([Makefile<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0includ=
e/Makefile<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.8.3.1<br>
<br>
--<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
</font></span></blockquote></div><br></div>

--001a113ed20ae819cb0531752f9d--
