Return-Path: <lpapp@archlinux.us>
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9EB4E01445
	for <poky@yoctoproject.org>; Wed, 11 Sep 2013 06:56:41 -0700 (PDT)
Received: by mail-pa0-f41.google.com with SMTP id bj1so9386748pad.28
	for <poky@yoctoproject.org>; Wed, 11 Sep 2013 06:56:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=7eIRKokKdjfCsqBByz8aLRKPjiFrxtp89ccZbwrh80w=;
	b=RFcoIeXHvN9WNx9j+ptbWHpp477OssTiNc13e5Dp3GN8QxQa6H8bZdEpYaDF+eEvDi
	fzdZUV1TxzdnOp9RLuF9IAGEQcwQjSpNdKKL4ZglPxFsBVjIsbAiJIiHXHzPchjdqjfM
	s2IDLM0flRvSaZEoFmqR0gp0UuOBCYuTPKlqXZ8Omj5UccWXDwvhF3ULbuhLli+UoxF0
	zJgUlEvfOGvMuXGh3d2m2xBWQHM+VUCRjrprJe7r7hM2fo9FtxumVsB/zD74MMVmalfJ
	Usp5mM1LQVkdN4IbrXrvI/3PwzcNdmJGXOD0FjHsPwZjl3iy8oZOA/g1nnIfctvJtJqC
	6GdA==
X-Gm-Message-State: ALoCoQlRj1K08PpJ7OQlqpRCo4/+cEcG8RngWP6p0heA6VHKiorKacg3BAAwYMu7BNo7LXo3MXUp
MIME-Version: 1.0
X-Received: by 10.66.118.204 with SMTP id ko12mr3153565pab.184.1378907801591; 
	Wed, 11 Sep 2013 06:56:41 -0700 (PDT)
Sender: lpapp@archlinux.us
Received: by 10.70.57.234 with HTTP; Wed, 11 Sep 2013 06:56:41 -0700 (PDT)
In-Reply-To: <1378906988-15025-1-git-send-email-ross.burton@intel.com>
References: <1378906988-15025-1-git-send-email-ross.burton@intel.com>
Date: Wed, 11 Sep 2013 14:56:41 +0100
X-Google-Sender-Auth: NSK_rkMmr1UiAwXc150LatiOIuU
Message-ID: <CAOMwXhMuBKMnWXej2VJux7ev-5cZS1hwviOs+a-ra2mq+_a0mg@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: Ross Burton <ross.burton@intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] bblayers.conf.sample: use ##OEROOT## instead of ##COREBASE##
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
X-List-Received-Date: Wed, 11 Sep 2013 13:56:44 -0000
Content-Type: multipart/alternative; boundary=e89a8ffbaa2bb136a204e61bfdfa

--e89a8ffbaa2bb136a204e61bfdfa
Content-Type: text/plain; charset=ISO-8859-1

Do you have an url where this change is explained?


On Wed, Sep 11, 2013 at 2:43 PM, Ross Burton <ross.burton@intel.com> wrote:

> The variable ##COREBASE## has been deprecated, so use ##OEROOT## instead.
>
> Signed-off-by: Ross Burton <ross.burton@intel.com>
> ---
>  meta-yocto/conf/bblayers.conf.sample |   10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/meta-yocto/conf/bblayers.conf.sample
> b/meta-yocto/conf/bblayers.conf.sample
> index 7fd755d..0eda565 100644
> --- a/meta-yocto/conf/bblayers.conf.sample
> +++ b/meta-yocto/conf/bblayers.conf.sample
> @@ -6,11 +6,11 @@ BBPATH = "${TOPDIR}"
>  BBFILES ?= ""
>
>  BBLAYERS ?= " \
> -  ##COREBASE##/meta \
> -  ##COREBASE##/meta-yocto \
> -  ##COREBASE##/meta-yocto-bsp \
> +  ##OEROOT##/meta \
> +  ##OEROOT##/meta-yocto \
> +  ##OEROOT##/meta-yocto-bsp \
>    "
>  BBLAYERS_NON_REMOVABLE ?= " \
> -  ##COREBASE##/meta \
> -  ##COREBASE##/meta-yocto \
> +  ##OEROOT##/meta \
> +  ##OEROOT##/meta-yocto \
>    "
> --
> 1.7.10.4
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--e89a8ffbaa2bb136a204e61bfdfa
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Do you have an url where this change is explained?</div><d=
iv class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed, Sep 11,=
 2013 at 2:43 PM, Ross Burton <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.=
burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wr=
ote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">The variable ##COREBASE## has been deprecate=
d, so use ##OEROOT## instead.<br>
<br>
Signed-off-by: Ross Burton &lt;<a href=3D"mailto:ross.burton@intel.com">ros=
s.burton@intel.com</a>&gt;<br>
---<br>
=A0meta-yocto/conf/bblayers.conf.sample | =A0 10 +++++-----<br>
=A01 file changed, 5 insertions(+), 5 deletions(-)<br>
<br>
diff --git a/meta-yocto/conf/bblayers.conf.sample b/meta-yocto/conf/bblayer=
s.conf.sample<br>
index 7fd755d..0eda565 100644<br>
--- a/meta-yocto/conf/bblayers.conf.sample<br>
+++ b/meta-yocto/conf/bblayers.conf.sample<br>
@@ -6,11 +6,11 @@ BBPATH =3D &quot;${TOPDIR}&quot;<br>
=A0BBFILES ?=3D &quot;&quot;<br>
<br>
=A0BBLAYERS ?=3D &quot; \<br>
- =A0##COREBASE##/meta \<br>
- =A0##COREBASE##/meta-yocto \<br>
- =A0##COREBASE##/meta-yocto-bsp \<br>
+ =A0##OEROOT##/meta \<br>
+ =A0##OEROOT##/meta-yocto \<br>
+ =A0##OEROOT##/meta-yocto-bsp \<br>
=A0 =A0&quot;<br>
=A0BBLAYERS_NON_REMOVABLE ?=3D &quot; \<br>
- =A0##COREBASE##/meta \<br>
- =A0##COREBASE##/meta-yocto \<br>
+ =A0##OEROOT##/meta \<br>
+ =A0##OEROOT##/meta-yocto \<br>
=A0 =A0&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.7.10.4<br>
<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</font></span></blockquote></div><br></div>

--e89a8ffbaa2bb136a204e61bfdfa--
