Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76420E00DFE; Fri, 21 Oct 2016 05:50:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f49.google.com (mail-vk0-f49.google.com
	[209.85.213.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 235D7E006D2
	for <poky@yoctoproject.org>; Fri, 21 Oct 2016 05:50:16 -0700 (PDT)
Received: by mail-vk0-f49.google.com with SMTP id 83so114684555vkd.0
	for <poky@yoctoproject.org>; Fri, 21 Oct 2016 05:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=LOdI4Ps4siVifzzaG2Eonp4bpm8rwBe9oYEMiyel3sI=;
	b=u7sThUAjC+6kSjydn5wHBindVznUD+i1ieuOdkqwSCMskiIyvRJyMsh63i80Hhkg0j
	N/UjQTdssh0Xx9Y7YFr8cx9i8Vo3kLiIBFPx4NWLUlcdMmzg4Aqk3LKA3t4N78tHW0sY
	C6v7au5gimCQKhgCC32xEqVyJ+SOdAp2OsmP7f9yc61u+xlQcRzJYIY1ccU2Jk4sTT7/
	aSak4jvas5IIElmKcQehPZ0alJMT7/FQ9sCbITrHhDKwP6rQFctvczXT1pKeGjaf9zK9
	3Lj3VdmrTD3cvmi91Q7wjSHMmUP9HxOCaTmkYinUKuR9jTmVgX3mmBAX8kxb1JKZpucf
	lsAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=LOdI4Ps4siVifzzaG2Eonp4bpm8rwBe9oYEMiyel3sI=;
	b=SINgyU1BJSmUOspCXbupUeGhqfubkZw+uTO43EA1GwluvMgNIMqtRtV7PaZAM5ZVI6
	+VGo8Gf0uyROkzuQLNby4Q0YLdVwAZc6dh0aY/QsIftNgtipNIzg3Blp3krarzlNjUQk
	uyQi/buZiiwy/uwBYF/yr+tRH8ceAMGPfJLW4aLuiIz+Ey7tJahwCvTtjBkUdRuzPGM/
	1sB96mfwF9AiBJ5knXVYi9gsnk28p5YaKP/VEi3Iu3Tms2Pk3tfC1/u+Ln3muIRDw5vL
	ahlFFpG+VIbVb2D9W+2iXhtVufyjCD/fP8wCetLd78pTypnjZ0e002GZ7/CiIXKxSW2U
	mK8Q==
X-Gm-Message-State: ABUngvfz5H5tyWCdbQYmEA+J8jyJfrmu4myfs4tXG33ZyvZF3WARlwIzC6y9yiuA/7/CllaCjaHEJFn33YSP9I1u
X-Received: by 10.31.238.74 with SMTP id m71mr633709vkh.27.1477054215847; Fri,
	21 Oct 2016 05:50:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.74.195 with HTTP; Fri, 21 Oct 2016 05:49:45 -0700 (PDT)
In-Reply-To: <1477054000-3399-1-git-send-email-jussi.kukkonen@intel.com>
References: <1477054000-3399-1-git-send-email-jussi.kukkonen@intel.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Fri, 21 Oct 2016 15:49:45 +0300
Message-ID: <CAHiDW_HnMrdMCAw7=N0tXChfSPS-=BWRpUkx3tsr=meaQ-r27Q@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Re: [PATCH] conf: Remove legacy X input drivers
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
X-List-Received-Date: Fri, 21 Oct 2016 12:50:20 -0000
Content-Type: multipart/alternative; boundary=94eb2c062a38d99348053f5f7b43

--94eb2c062a38d99348053f5f7b43
Content-Type: text/plain; charset=UTF-8

On 21 October 2016 at 15:46, Jussi Kukkonen <jussi.kukkonen@intel.com>
wrote:

> xf86-input-libinput is RRECOMMENDed by xserver-xorg, these
> legacy drivers are not needed.
>
> Signed-off-by: Jussi Kukkonen <jussi.kukkonen@intel.com>
> ---
>

This commit message assumes the oe-core patch "conf: Use
xf86-input-libinput by default".



>  meta-yocto-bsp/conf/machine/beaglebone.conf   | 4 +---
>  meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf | 1 -
>  2 files changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/meta-yocto-bsp/conf/machine/beaglebone.conf
> b/meta-yocto-bsp/conf/machine/beaglebone.conf
> index c487bd8..7a19d1f 100644
> --- a/meta-yocto-bsp/conf/machine/beaglebone.conf
> +++ b/meta-yocto-bsp/conf/machine/beaglebone.conf
> @@ -4,10 +4,8 @@
>
>  PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
>  XSERVER ?= "xserver-xorg \
> -           xf86-input-evdev \
> -           xf86-input-mouse \
>             xf86-video-modesetting \
> -           xf86-input-keyboard"
> +           "
>
>  MACHINE_EXTRA_RRECOMMENDS = " kernel-modules kernel-devicetree"
>
> diff --git a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
> b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
> index a2ff07c..99182dc 100644
> --- a/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
> +++ b/meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf
> @@ -19,7 +19,6 @@ PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
>
>  PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
>  XSERVER ?= "xserver-xorg \
> -            xf86-input-evdev \
>              xf86-video-fbdev"
>
>  UBOOT_ENTRYPOINT = "0x00000000"
> --
> 2.1.4
>
>

--94eb2c062a38d99348053f5f7b43
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 2=
1 October 2016 at 15:46, Jussi Kukkonen <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:jussi.kukkonen@intel.com" target=3D"_blank">jussi.kukkonen@intel.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">x=
f86-input-libinput is RRECOMMENDed by xserver-xorg, these<br>
legacy drivers are not needed.<br>
<br>
Signed-off-by: Jussi Kukkonen &lt;<a href=3D"mailto:jussi.kukkonen@intel.co=
m">jussi.kukkonen@intel.com</a>&gt;<br>
---<br>
</blockquote><div><br></div><div>This commit message assumes the oe-core pa=
tch &quot;conf: Use xf86-input-libinput by default&quot;.<br></div><div><br=
></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
=C2=A0meta-yocto-bsp/conf/machine/<wbr>beaglebone.conf=C2=A0 =C2=A0| 4 +---=
<br>
=C2=A0meta-yocto-bsp/conf/machine/<wbr>mpc8315e-rdb.conf | 1 -<br>
=C2=A02 files changed, 1 insertion(+), 4 deletions(-)<br>
<br>
diff --git a/meta-yocto-bsp/conf/machine/<wbr>beaglebone.conf b/meta-yocto-=
bsp/conf/machine/<wbr>beaglebone.conf<br>
index c487bd8..7a19d1f 100644<br>
--- a/meta-yocto-bsp/conf/machine/<wbr>beaglebone.conf<br>
+++ b/meta-yocto-bsp/conf/machine/<wbr>beaglebone.conf<br>
@@ -4,10 +4,8 @@<br>
<br>
=C2=A0PREFERRED_PROVIDER_virtual/<wbr>xserver ?=3D &quot;xserver-xorg&quot;=
<br>
=C2=A0XSERVER ?=3D &quot;xserver-xorg \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0xf86-input-evdev \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0xf86-input-mouse \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 xf86-video-modesetting \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0xf86-input-keyboard&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
<br>
=C2=A0MACHINE_EXTRA_RRECOMMENDS =3D &quot; kernel-modules kernel-devicetree=
&quot;<br>
<br>
diff --git a/meta-yocto-bsp/conf/machine/<wbr>mpc8315e-rdb.conf b/meta-yoct=
o-bsp/conf/machine/<wbr>mpc8315e-rdb.conf<br>
index a2ff07c..99182dc 100644<br>
--- a/meta-yocto-bsp/conf/machine/<wbr>mpc8315e-rdb.conf<br>
+++ b/meta-yocto-bsp/conf/machine/<wbr>mpc8315e-rdb.conf<br>
@@ -19,7 +19,6 @@ PREFERRED_PROVIDER_virtual/<wbr>kernel =3D &quot;linux-yo=
cto&quot;<br>
<br>
=C2=A0PREFERRED_PROVIDER_virtual/<wbr>xserver ?=3D &quot;xserver-xorg&quot;=
<br>
=C2=A0XSERVER ?=3D &quot;xserver-xorg \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 xf86-input-evdev \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0xf86-video-fbdev&quot;<br>
<br>
=C2=A0UBOOT_ENTRYPOINT =3D &quot;0x00000000&quot;<br>
<span class=3D"gmail-HOEnZb"><font color=3D"#888888">--<br>
2.1.4<br>
<br>
</font></span></blockquote></div><br></div></div>

--94eb2c062a38d99348053f5f7b43--
