Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08E45E00D60; Tue, 30 Jul 2019 07:03:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.43 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com
	[209.85.222.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D9B2E00AB4
	for <poky@yoctoproject.org>; Tue, 30 Jul 2019 07:03:55 -0700 (PDT)
Received: by mail-ua1-f43.google.com with SMTP id s4so25481637uad.7
	for <poky@yoctoproject.org>; Tue, 30 Jul 2019 07:03:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=nVosrF4pOWiCpyoMeq3N5wDI2koIX7W4GNIEtjNRuR0=;
	b=kmfv/J8GZt9YIofRIMAG6H7ShlgDIKgpORwF1gJxIYd7xTZzuQwJI/c0lOWe/n+xdn
	iErAkKnlqXNJBjv2P/25SoCvBswNxRmnDHFY0epV7MZFHUeTwqtO97ZkvRIKpZTYFziE
	2CJJeB7zMNM+Idf4ihRfz60hWEDkwjVXF3nHJpKypmzPLzji+jw5NJh6+sCRNHEAd7HQ
	q7iyew1qcUbhEvXRwlRNYVmx2Cj4sxVavw+gj+AAi1r2fdPksJ05FgN3I497qVMtaN/x
	zhzSDp/FjO5+4gWbu9WpgvnTPA0ZhdAOEtA1vHUH2uBHFNKena3pG0OreLuv8jafKQLK
	cAMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=nVosrF4pOWiCpyoMeq3N5wDI2koIX7W4GNIEtjNRuR0=;
	b=tdlgtXYDX79pKfULJcmABBLgtK4S6vKWSwqlzJ2xWOyHWdu/9hKj+TCGgXOtWXppoA
	zTgXUidJi/noWrnBPtWV/aCSs49sWM9sIC1bA+LTb/1nJy2O8F1HmZYduDl+hhfuyvnl
	EZxCSbZGZncpExCJUTjs0ZI8vyj0S+811ZzrzkiQPIpDjfxZcBye3j9EXjWDE8+5dgSZ
	BSUmTrydJDPDuxtcJySMoT9t2+jUCy25cwF78wO3OXUHYnJvbwPkRK3aJuJNGTTXibYs
	9sfvGIj44GWB2Va+3rE/mE9EbcLook2OXyyuH6QtpFXUuH5StCY7GYYmuvlFcnQTX8ZN
	5unQ==
X-Gm-Message-State: APjAAAXPbdvB3e+2u70z9TQZu7VwtlJ29ZE9k3rGZavtgq5fH1G4fzaw
	uwyh5eio39EJsNOEPxwSirPAVn35mkSAoDWihgl225TH
X-Google-Smtp-Source: APXvYqwLiJGgNkg2KAfTAMx7iH7BQJoHiRYP6RHS8LvniTFtIHDinqdHrQF1sRrO2w0krwW0S4csGrsQAZB5/Ej/X34=
X-Received: by 2002:ab0:e19:: with SMTP id g25mr20343633uak.71.1564495434489; 
	Tue, 30 Jul 2019 07:03:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190730121500.10689-1-zoltan.kuscsik@solution57.com>
In-Reply-To: <20190730121500.10689-1-zoltan.kuscsik@solution57.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 30 Jul 2019 16:03:43 +0200
Message-ID: <CANNYZj-_HJZ+O=FjxbxhaN1pwMM0VqNSwT38ST7AnX1j+3x=8g@mail.gmail.com>
To: Zoltan Kuscsik <zoltan.kuscsik@solution57.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] kmscube: update to latest revision
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
X-List-Received-Date: Tue, 30 Jul 2019 14:03:59 -0000
Content-Type: multipart/alternative; boundary="000000000000a022ba058ee67aa4"

--000000000000a022ba058ee67aa4
Content-Type: text/plain; charset="UTF-8"

This should go to the openembedded-core mailing list.

Alex

On Tue, 30 Jul 2019 at 14:16, Zoltan Kuscsik <zoltan.kuscsik@solution57.com>
wrote:

> Switch to gitlab URL, since previos location is now a mirror
>
> Signed-off-by: Zoltan Kuscsik <zoltan.kuscsik@solution57.com>
> ---
>  ...bo_map-_unmap-and-use-it-or-avoid-it.patch | 25 ++++++++++---------
>  meta/recipes-graphics/kmscube/kmscube_git.bb  |  4 +--
>  2 files changed, 15 insertions(+), 14 deletions(-)
>
> diff --git
> a/meta/recipes-graphics/kmscube/kmscube/detect-gst_bo_map-_unmap-and-use-it-or-avoid-it.patch
> b/meta/recipes-graphics/kmscube/kmscube/detect-gst_bo_map-_unmap-and-use-it-or-avoid-it.patch
> index 611e541598..a7a08f14e6 100644
> ---
> a/meta/recipes-graphics/kmscube/kmscube/detect-gst_bo_map-_unmap-and-use-it-or-avoid-it.patch
> +++
> b/meta/recipes-graphics/kmscube/kmscube/detect-gst_bo_map-_unmap-and-use-it-or-avoid-it.patch
> @@ -1,7 +1,7 @@
> -From 761bf993ca55095f46380c0238583791c1797295 Mon Sep 17 00:00:00 2001
> +From a91c588b5a4122506e7fe949c37d530621bdd997 Mon Sep 17 00:00:00 2001
>  From: =?UTF-8?q?Daniel=20D=C3=ADaz?= <daniel.diaz@linaro.org>
>  Date: Tue, 11 Jul 2017 14:50:37 -0500
> -Subject: [PATCH kmscube] Detect gst_bo_map/_unmap and use it (or avoid it)
> +Subject: [PATCH] Detect gst_bo_map/_unmap and use it (or avoid it)
>  MIME-Version: 1.0
>  Content-Type: text/plain; charset=UTF-8
>  Content-Transfer-Encoding: 8bit
> @@ -18,6 +18,7 @@ Cc: Rob Clark <robdclark@gmail.com>
>  Reviewed-by: Eric Engestrom <eric.engestrom@imgtec.com>
>
>  Upstream-Status: Submitted [
> https://lists.freedesktop.org/archives/mesa-dev/2017-July/163020.html]
> +Signed-off-by: Zoltan Kuscsik <zoltan.kuscsik@solution57.com>
>  ---
>   Makefile.am   | 5 ++++-
>   configure.ac  | 3 +++
> @@ -26,7 +27,7 @@ Upstream-Status: Submitted [
> https://lists.freedesktop.org/archives/mesa-dev/2017
>   4 files changed, 17 insertions(+), 2 deletions(-)
>
>  diff --git a/Makefile.am b/Makefile.am
> -index a36087d..ab4adbf 100644
> +index ba064e4..3a0a50b 100644
>  --- a/Makefile.am
>  +++ b/Makefile.am
>  @@ -43,7 +43,6 @@ kmscube_SOURCES = \
> @@ -37,16 +38,16 @@ index a36087d..ab4adbf 100644
>         drm-atomic.c \
>         drm-common.c \
>         drm-common.h \
> -@@ -59,3 +58,7 @@ kmscube_LDADD += $(GST_LIBS)
> - kmscube_CFLAGS += $(GST_CFLAGS)
> - kmscube_SOURCES += cube-video.c gst-decoder.c
> - endif
> +@@ -68,3 +67,7 @@ texturator_SOURCES = \
> +       drm-common.c \
> +       drm-legacy.c \
> +       texturator.c
>  +
>  +if ENABLE_GBM_MAP
>  +kmscube_SOURCES += cube-tex.c
>  +endif
>  diff --git a/configure.ac b/configure.ac
> -index 8397f7b..c7f1f4d 100644
> +index 6be6541..3d20121 100644
>  --- a/configure.ac
>  +++ b/configure.ac
>  @@ -49,5 +49,8 @@ if test "x$HAVE_GST" = "xyes"; then
> @@ -59,7 +60,7 @@ index 8397f7b..c7f1f4d 100644
>   AC_CONFIG_FILES([Makefile])
>   AC_OUTPUT
>  diff --git a/gst-decoder.c b/gst-decoder.c
> -index 2d6d581..b84980e 100644
> +index 5431014..0aa7a55 100644
>  --- a/gst-decoder.c
>  +++ b/gst-decoder.c
>  @@ -332,6 +332,7 @@ set_last_frame(struct decoder *dec, EGLImage frame,
> GstSample *samp)
> @@ -96,10 +97,10 @@ index 2d6d581..b84980e 100644
>         if (dmabuf_fd < 0) {
>                 GST_ERROR("could not obtain DMABUF FD");
>  diff --git a/kmscube.c b/kmscube.c
> -index 3a2c4dd..276dc55 100644
> +index 81803be..e93da67 100644
>  --- a/kmscube.c
>  +++ b/kmscube.c
> -@@ -148,7 +148,11 @@ int main(int argc, char *argv[])
> +@@ -166,7 +166,11 @@ int main(int argc, char *argv[])
>         else if (mode == VIDEO)
>                 egl = init_cube_video(gbm, video, samples);
>         else
> @@ -112,5 +113,5 @@ index 3a2c4dd..276dc55 100644
>         if (!egl) {
>                 printf("failed to initialize EGL\n");
>  --
> -2.7.4
> +2.22.0
>
> diff --git a/meta/recipes-graphics/kmscube/kmscube_git.bb
> b/meta/recipes-graphics/kmscube/kmscube_git.bb
> index 513148f9e0..fd90d20172 100644
> --- a/meta/recipes-graphics/kmscube/kmscube_git.bb
> +++ b/meta/recipes-graphics/kmscube/kmscube_git.bb
> @@ -6,8 +6,8 @@ DEPENDS = "virtual/libgles2 virtual/egl libdrm"
>
>  LIC_FILES_CHKSUM =
> "file://kmscube.c;beginline=1;endline=23;md5=8b309d4ee67b7315ff7381270dd631fb"
>
> -SRCREV = "485b385e966a63cecc143765d112d267b299ffe5"
> -SRC_URI = "git://
> anongit.freedesktop.org/mesa/kmscube;branch=master;protocol=git \
> +SRCREV = "e888ea1d233b2639b87a68e099d18d4e919905df"
> +SRC_URI = "git://
> gitlab.freedesktop.org/mesa/kmscube;branch=master;protocol=https \
>      file://detect-gst_bo_map-_unmap-and-use-it-or-avoid-it.patch"
>  UPSTREAM_CHECK_COMMITS = "1"
>
> --
> 2.22.0
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--000000000000a022ba058ee67aa4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This should go to the openembedded-core mailing list.=
</div><div><br></div><div>Alex<br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 30 Jul 2019 at 14:16, Zolta=
n Kuscsik &lt;<a href=3D"mailto:zoltan.kuscsik@solution57.com">zoltan.kuscs=
ik@solution57.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">Switch to gitlab URL, since previos location is now a mirr=
or<br>
<br>
Signed-off-by: Zoltan Kuscsik &lt;<a href=3D"mailto:zoltan.kuscsik@solution=
57.com" target=3D"_blank">zoltan.kuscsik@solution57.com</a>&gt;<br>
---<br>
=C2=A0...bo_map-_unmap-and-use-it-or-avoid-it.patch | 25 ++++++++++--------=
-<br>
=C2=A0meta/recipes-graphics/kmscube/<a href=3D"http://kmscube_git.bb" rel=
=3D"noreferrer" target=3D"_blank">kmscube_git.bb</a>=C2=A0 |=C2=A0 4 +--<br=
>
=C2=A02 files changed, 15 insertions(+), 14 deletions(-)<br>
<br>
diff --git a/meta/recipes-graphics/kmscube/kmscube/detect-gst_bo_map-_unmap=
-and-use-it-or-avoid-it.patch b/meta/recipes-graphics/kmscube/kmscube/detec=
t-gst_bo_map-_unmap-and-use-it-or-avoid-it.patch<br>
index 611e541598..a7a08f14e6 100644<br>
--- a/meta/recipes-graphics/kmscube/kmscube/detect-gst_bo_map-_unmap-and-us=
e-it-or-avoid-it.patch<br>
+++ b/meta/recipes-graphics/kmscube/kmscube/detect-gst_bo_map-_unmap-and-us=
e-it-or-avoid-it.patch<br>
@@ -1,7 +1,7 @@<br>
-From 761bf993ca55095f46380c0238583791c1797295 Mon Sep 17 00:00:00 2001<br>
+From a91c588b5a4122506e7fe949c37d530621bdd997 Mon Sep 17 00:00:00 2001<br>
=C2=A0From: =3D?UTF-8?q?Daniel=3D20D=3DC3=3DADaz?=3D &lt;<a href=3D"mailto:=
daniel.diaz@linaro.org" target=3D"_blank">daniel.diaz@linaro.org</a>&gt;<br=
>
=C2=A0Date: Tue, 11 Jul 2017 14:50:37 -0500<br>
-Subject: [PATCH kmscube] Detect gst_bo_map/_unmap and use it (or avoid it)=
<br>
+Subject: [PATCH] Detect gst_bo_map/_unmap and use it (or avoid it)<br>
=C2=A0MIME-Version: 1.0<br>
=C2=A0Content-Type: text/plain; charset=3DUTF-8<br>
=C2=A0Content-Transfer-Encoding: 8bit<br>
@@ -18,6 +18,7 @@ Cc: Rob Clark &lt;<a href=3D"mailto:robdclark@gmail.com" =
target=3D"_blank">robdclark@gmail.com</a>&gt;<br>
=C2=A0Reviewed-by: Eric Engestrom &lt;<a href=3D"mailto:eric.engestrom@imgt=
ec.com" target=3D"_blank">eric.engestrom@imgtec.com</a>&gt;<br>
<br>
=C2=A0Upstream-Status: Submitted [<a href=3D"https://lists.freedesktop.org/=
archives/mesa-dev/2017-July/163020.html" rel=3D"noreferrer" target=3D"_blan=
k">https://lists.freedesktop.org/archives/mesa-dev/2017-July/163020.html</a=
>]<br>
+Signed-off-by: Zoltan Kuscsik &lt;<a href=3D"mailto:zoltan.kuscsik@solutio=
n57.com" target=3D"_blank">zoltan.kuscsik@solution57.com</a>&gt;<br>
=C2=A0---<br>
=C2=A0 Makefile.am=C2=A0 =C2=A0| 5 ++++-<br>
=C2=A0 <a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"_blank"=
>configure.ac</a>=C2=A0 | 3 +++<br>
@@ -26,7 +27,7 @@ Upstream-Status: Submitted [<a href=3D"https://lists.free=
desktop.org/archives/mesa-dev/2017" rel=3D"noreferrer" target=3D"_blank">ht=
tps://lists.freedesktop.org/archives/mesa-dev/2017</a><br>
=C2=A0 4 files changed, 17 insertions(+), 2 deletions(-)<br>
<br>
=C2=A0diff --git a/Makefile.am b/Makefile.am<br>
-index a36087d..ab4adbf 100644<br>
+index ba064e4..3a0a50b 100644<br>
=C2=A0--- a/Makefile.am<br>
=C2=A0+++ b/Makefile.am<br>
=C2=A0@@ -43,7 +43,6 @@ kmscube_SOURCES =3D \<br>
@@ -37,16 +38,16 @@ index a36087d..ab4adbf 100644<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 drm-atomic.c \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 drm-common.c \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 drm-common.h \<br>
-@@ -59,3 +58,7 @@ kmscube_LDADD +=3D $(GST_LIBS)<br>
- kmscube_CFLAGS +=3D $(GST_CFLAGS)<br>
- kmscube_SOURCES +=3D cube-video.c gst-decoder.c<br>
- endif<br>
+@@ -68,3 +67,7 @@ texturator_SOURCES =3D \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0drm-common.c \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0drm-legacy.c \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0texturator.c<br>
=C2=A0+<br>
=C2=A0+if ENABLE_GBM_MAP<br>
=C2=A0+kmscube_SOURCES +=3D cube-tex.c<br>
=C2=A0+endif<br>
=C2=A0diff --git a/<a href=3D"http://configure.ac" rel=3D"noreferrer" targe=
t=3D"_blank">configure.ac</a> b/<a href=3D"http://configure.ac" rel=3D"nore=
ferrer" target=3D"_blank">configure.ac</a><br>
-index 8397f7b..c7f1f4d 100644<br>
+index 6be6541..3d20121 100644<br>
=C2=A0--- a/<a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"_b=
lank">configure.ac</a><br>
=C2=A0+++ b/<a href=3D"http://configure.ac" rel=3D"noreferrer" target=3D"_b=
lank">configure.ac</a><br>
=C2=A0@@ -49,5 +49,8 @@ if test &quot;x$HAVE_GST&quot; =3D &quot;xyes&quot;=
; then<br>
@@ -59,7 +60,7 @@ index 8397f7b..c7f1f4d 100644<br>
=C2=A0 AC_CONFIG_FILES([Makefile])<br>
=C2=A0 AC_OUTPUT<br>
=C2=A0diff --git a/gst-decoder.c b/gst-decoder.c<br>
-index 2d6d581..b84980e 100644<br>
+index 5431014..0aa7a55 100644<br>
=C2=A0--- a/gst-decoder.c<br>
=C2=A0+++ b/gst-decoder.c<br>
=C2=A0@@ -332,6 +332,7 @@ set_last_frame(struct decoder *dec, EGLImage fram=
e, GstSample *samp)<br>
@@ -96,10 +97,10 @@ index 2d6d581..b84980e 100644<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (dmabuf_fd &lt; 0) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 GST_ERROR(&quot;cou=
ld not obtain DMABUF FD&quot;);<br>
=C2=A0diff --git a/kmscube.c b/kmscube.c<br>
-index 3a2c4dd..276dc55 100644<br>
+index 81803be..e93da67 100644<br>
=C2=A0--- a/kmscube.c<br>
=C2=A0+++ b/kmscube.c<br>
-@@ -148,7 +148,11 @@ int main(int argc, char *argv[])<br>
+@@ -166,7 +166,11 @@ int main(int argc, char *argv[])<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 else if (mode =3D=3D VIDEO)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 egl =3D init_cube_v=
ideo(gbm, video, samples);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>
@@ -112,5 +113,5 @@ index 3a2c4dd..276dc55 100644<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (!egl) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 printf(&quot;failed=
 to initialize EGL\n&quot;);<br>
=C2=A0-- <br>
-2.7.4<br>
+2.22.0<br>
<br>
diff --git a/meta/recipes-graphics/kmscube/<a href=3D"http://kmscube_git.bb=
" rel=3D"noreferrer" target=3D"_blank">kmscube_git.bb</a> b/meta/recipes-gr=
aphics/kmscube/<a href=3D"http://kmscube_git.bb" rel=3D"noreferrer" target=
=3D"_blank">kmscube_git.bb</a><br>
index 513148f9e0..fd90d20172 100644<br>
--- a/meta/recipes-graphics/kmscube/<a href=3D"http://kmscube_git.bb" rel=
=3D"noreferrer" target=3D"_blank">kmscube_git.bb</a><br>
+++ b/meta/recipes-graphics/kmscube/<a href=3D"http://kmscube_git.bb" rel=
=3D"noreferrer" target=3D"_blank">kmscube_git.bb</a><br>
@@ -6,8 +6,8 @@ DEPENDS =3D &quot;virtual/libgles2 virtual/egl libdrm&quot;=
<br>
<br>
=C2=A0LIC_FILES_CHKSUM =3D &quot;file://kmscube.c;beginline=3D1;endline=3D2=
3;md5=3D8b309d4ee67b7315ff7381270dd631fb&quot;<br>
<br>
-SRCREV =3D &quot;485b385e966a63cecc143765d112d267b299ffe5&quot;<br>
-SRC_URI =3D &quot;git://<a href=3D"http://anongit.freedesktop.org/mesa/kms=
cube;branch=3Dmaster;protocol=3Dgit" rel=3D"noreferrer" target=3D"_blank">a=
nongit.freedesktop.org/mesa/kmscube;branch=3Dmaster;protocol=3Dgit</a> \<br=
>
+SRCREV =3D &quot;e888ea1d233b2639b87a68e099d18d4e919905df&quot;<br>
+SRC_URI =3D &quot;git://<a href=3D"http://gitlab.freedesktop.org/mesa/kmsc=
ube;branch=3Dmaster;protocol=3Dhttps" rel=3D"noreferrer" target=3D"_blank">=
gitlab.freedesktop.org/mesa/kmscube;branch=3Dmaster;protocol=3Dhttps</a> \<=
br>
=C2=A0 =C2=A0 =C2=A0file://detect-gst_bo_map-_unmap-and-use-it-or-avoid-it.=
patch&quot;<br>
=C2=A0UPSTREAM_CHECK_COMMITS =3D &quot;1&quot;<br>
<br>
-- <br>
2.22.0<br>
<br>
-- <br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
</blockquote></div>

--000000000000a022ba058ee67aa4--
