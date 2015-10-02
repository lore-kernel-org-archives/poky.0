Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D40EE00AD5; Fri,  2 Oct 2015 04:34:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.171 listed in list.dnswl.org]
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com
	[209.85.212.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C0E1E0095C
	for <poky@yoctoproject.org>; Fri,  2 Oct 2015 04:34:32 -0700 (PDT)
Received: by wicge5 with SMTP id ge5so29030442wic.0
	for <poky@yoctoproject.org>; Fri, 02 Oct 2015 04:34:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=bDkAZMUTBbzQ4dTpbuByRluu+ptBNovPrIV+zaAak1k=;
	b=FnoHZ/7bozC+e80Xnbj/pzAx6EFTe4ko5RxlIV3cbkWyttRRDDilFW/Gj1m1qJpJYQ
	7ceLEurDbC0oojaxFIWUR64P5cPHe61JxpMgUZfEVBQ+6NllD4Y9/+DoI+n1uQLTtNJx
	+/IpORBmB6k/OJgqbtPct+JjbwX/N3QTrQKPj/uPOvJ3QDpYE8k9rOss0r7GcEA7DvdM
	TW3BV7+rEstDDsz3YvNcXSTnWQf3BcKp8VfKR2YsGG1UVf/OOhUGTzSQAvmEU8CeH2pm
	DlUzJujLh6aBllEwM47GX20sBhkBo4Tgb3kF04WkdDExqF6rycfOKYHH7Tl4uzTlREYu
	2c5Q==
X-Gm-Message-State: ALoCoQkQ4aRN4geUIjo/wpJglqnViP6GeMdcZMbbOcKoDRy0O8Zhq56URhSURh3LTNYwyEIv6hUp
X-Received: by 10.194.116.197 with SMTP id jy5mr1521769wjb.86.1443785672130;
	Fri, 02 Oct 2015 04:34:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.27.77.212 with HTTP; Fri, 2 Oct 2015 04:34:02 -0700 (PDT)
In-Reply-To: <BAB71D4B-3CEA-44E3-83ED-A10DF8CEAF52@gmail.com>
References: <BAB71D4B-3CEA-44E3-83ED-A10DF8CEAF52@gmail.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Fri, 2 Oct 2015 14:34:02 +0300
Message-ID: <CAHiDW_HpMK5QfCO44TPjZSefTU8abfkm4N-udHhx-9MUnoTSxA@mail.gmail.com>
To: Jens Rehsack <rehsack@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/9] Fix "configure: error: gbm requires --enable-dri"
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
X-List-Received-Date: Fri, 02 Oct 2015 11:34:34 -0000
Content-Type: multipart/alternative; boundary=001a1130cf261ea2e705211d8c1c

--001a1130cf261ea2e705211d8c1c
Content-Type: text/plain; charset=UTF-8

On 1 October 2015 at 21:01, Jens Rehsack <rehsack@gmail.com> wrote:

>
> Signed-off-by: Jens Rehsack <sno@netbsd.org>
> ---
>  meta/recipes-graphics/mesa/mesa.inc | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/meta/recipes-graphics/mesa/mesa.inc
> b/meta/recipes-graphics/mesa/mesa.inc
> index af7a2c4..13a8b9d 100644
> --- a/meta/recipes-graphics/mesa/mesa.inc
> +++ b/meta/recipes-graphics/mesa/mesa.inc
> @@ -37,11 +37,9 @@ PACKAGECONFIG[wayland] = ",,wayland"
>  DRIDRIVERS = "swrast"
>  DRIDRIVERS_append_x86 = ",radeon,r200,nouveau,i965,i915"
>  DRIDRIVERS_append_x86-64 = ",radeon,r200,nouveau,i965,i915"
> -PACKAGECONFIG[dri] = "--enable-dri --with-dri-drivers=${DRIDRIVERS},
> --disable-dri, dri2proto libdrm"
> +PACKAGECONFIG[dri] = "--enable-dri --with-dri-drivers=${DRIDRIVERS}
> --enable-gbm, --disable-dri, dri2proto libdrm"
>  PACKAGECONFIG[dri3] = "--enable-dri3, --disable-dri3, dri3proto
> presentproto libxshmfence"
>
> -EXTRA_OECONF += "--enable-gbm"
> -
>

Martins generic comments apply but on top of that: Please add a short
explanation. I would have expected gbm to get enabled from
PACKAGECONFIG[egl] but possibly I don't understand the whole context: are
there EGL users who do not want GBM?. Also, if you use --enable-gdm
conditionally, you should --disable-gbm in the other case: otherwise mesa
autodetects and that might be non-deterministic (now or in future).

Jussi


>  PACKAGECONFIG[gles] = "--enable-gles1 --enable-gles2, --disable-gles1
> --disable-gles2"
>
>  EGL_PLATFORMS  = "drm"
> --
> 1.9.1
>
> --
> Jens Rehsack - rehsack@gmail.com
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--001a1130cf261ea2e705211d8c1c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On 1 October 2015 at 21:01, Jens Rehsack <span dir=3D"ltr">&lt;<a href=
=3D"mailto:rehsack@gmail.com" target=3D"_blank">rehsack@gmail.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><br>
Signed-off-by: Jens Rehsack &lt;<a href=3D"mailto:sno@netbsd.org">sno@netbs=
d.org</a>&gt;<br>
---<br>
=C2=A0meta/recipes-graphics/mesa/mesa.inc | 4 +---<br>
=C2=A01 file changed, 1 insertion(+), 3 deletions(-)<br>
<br>
diff --git a/meta/recipes-graphics/mesa/mesa.inc b/meta/recipes-graphics/me=
sa/mesa.inc<br>
index af7a2c4..13a8b9d 100644<br>
--- a/meta/recipes-graphics/mesa/mesa.inc<br>
+++ b/meta/recipes-graphics/mesa/mesa.inc<br>
@@ -37,11 +37,9 @@ PACKAGECONFIG[wayland] =3D &quot;,,wayland&quot;<br>
=C2=A0DRIDRIVERS =3D &quot;swrast&quot;<br>
=C2=A0DRIDRIVERS_append_x86 =3D &quot;,radeon,r200,nouveau,i965,i915&quot;<=
br>
=C2=A0DRIDRIVERS_append_x86-64 =3D &quot;,radeon,r200,nouveau,i965,i915&quo=
t;<br>
-PACKAGECONFIG[dri] =3D &quot;--enable-dri --with-dri-drivers=3D${DRIDRIVER=
S}, --disable-dri, dri2proto libdrm&quot;<br>
+PACKAGECONFIG[dri] =3D &quot;--enable-dri --with-dri-drivers=3D${DRIDRIVER=
S} --enable-gbm, --disable-dri, dri2proto libdrm&quot;<br>
=C2=A0PACKAGECONFIG[dri3] =3D &quot;--enable-dri3, --disable-dri3, dri3prot=
o presentproto libxshmfence&quot;<br>
<br>
-EXTRA_OECONF +=3D &quot;--enable-gbm&quot;<br>
-<br>
</blockquote><div><br></div><div>Martins generic comments apply but on top =
of that: Please add a short explanation. I would have expected gbm to get e=
nabled from PACKAGECONFIG[egl] but possibly I don&#39;t understand the whol=
e context: are there EGL users who do not want GBM?. Also, if you use --ena=
ble-gdm conditionally, you should --disable-gbm in the other case: otherwis=
e mesa autodetects and that might be non-deterministic (now or in future).<=
/div><div><br></div><div>Jussi</div><div>=C2=A0</div><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">=C2=A0PACKAGECONFIG[gles] =3D &quot;--enable-gles1 --enable-gles2,=
 --disable-gles1 --disable-gles2&quot;<br>
<br>
=C2=A0EGL_PLATFORMS=C2=A0 =3D &quot;drm&quot;<br>
--<br>
1.9.1<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
Jens Rehsack - <a href=3D"mailto:rehsack@gmail.com">rehsack@gmail.com</a><b=
r>
<br>
--<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
</font></span></blockquote></div><br></div></div>

--001a1130cf261ea2e705211d8c1c--
