Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F841E00C60; Thu,  2 Jun 2016 01:57:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CD28E00C49
	for <poky@yoctoproject.org>; Thu,  2 Jun 2016 01:57:55 -0700 (PDT)
Received: by mail-oi0-f46.google.com with SMTP id j1so67222764oih.3
	for <poky@yoctoproject.org>; Thu, 02 Jun 2016 01:57:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=q9gkj7PMNoflO1mN/SnNpofQybcw1qpcsVapWC3037U=;
	b=Qb6uT6CsNkqvp2StA3zakKex47o0WFJ+7CT0Zy2tN8iizOBq6r0dfPG5tfYf/O+hT1
	EOetF8Rb1JlSPETYAOFlU0iaWbwB2AsQCXe+ITc6ywWbckMIhdRmIUJM0aq4LYD6Ucm2
	2bCyDSI13+lSIM5VTAQ2cSClGd40GxA4bJ41RExnjlknwDYP9WUpF9g/hudN5qUQ03Ry
	97hIgvmcFPVXKDGh3IK/41Y1SBYQOF+ZOPzNtzL4BV/O4sxppYjv9tNLeGrW11aQ7FBc
	MldjnW5ZQ4UbOQLQuvC7UCFOghuTZMCs8TZrxE2pSWdG5XnHwadoz9Ud1Ntcqp83xzAe
	fiUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=q9gkj7PMNoflO1mN/SnNpofQybcw1qpcsVapWC3037U=;
	b=mvoLfRwJdKionOXAUnQ+fPn0YRcr/x59aIFXh2UBMxuIxBRQj9e0ovehuedL7cKDdn
	GWUS2q1z1I1+oCo+vbAAUsin4JHlljwq+SwpwOuXIyyjf9yMYuLjSiv1ysc+XYLwU3iv
	QlAAXPa4/12WOPTOJpkcdEPNAiKoyHhMmdisl7Bxa2oSNgfQuMT7XKLcsGbZvS/bkK1q
	SU9t+yJIIR4he0zG0oaQw+Apz0vn3gWqLOLjz2rgoqhA1XsZsNEGUSL7PChEjad9exMm
	kV0rBN8DesLICEQ20o8WJGxfMZXqRO4RqfWmbQ2H1WoF09Vw8on5rmB4RUvbnQRbVbYE
	yYPw==
X-Gm-Message-State: ALyK8tL3ZPC7SNRXthMC9JjsqzqwGdq6AR3BIFNh02kY9dNzzDW6owxzsWFpj/6+sdP+axBdOwRHe8+pIkBrgdmY
X-Received: by 10.157.40.243 with SMTP id s106mr5716385ota.62.1464857875044;
	Thu, 02 Jun 2016 01:57:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.61.5 with HTTP; Thu, 2 Jun 2016 01:57:25 -0700 (PDT)
In-Reply-To: <1464853867-111723-1-git-send-email-kexin.hao@windriver.com>
References: <1464853867-111723-1-git-send-email-kexin.hao@windriver.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Thu, 2 Jun 2016 11:57:25 +0300
Message-ID: <CAHiDW_GmskgusdR6wuGwnUtoKTwh1bQq0ZjCFyJ0c+xexei4Fw@mail.gmail.com>
To: Kevin Hao <kexin.hao@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] yocto-bsps: u-boot: Search for rootfs partitions on both SD and eMMC
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
X-List-Received-Date: Thu, 02 Jun 2016 08:57:59 -0000
Content-Type: multipart/alternative; boundary=001a113d14464a0f8d053447cdae

--001a113d14464a0f8d053447cdae
Content-Type: text/plain; charset=UTF-8

On 2 June 2016 at 10:51, Kevin Hao <kexin.hao@windriver.com> wrote:
>
> From: Jussi Laako <jussi.laako@linux.intel.com>
>
> On BeagleBone Black, first attempt to find rootfs from microSD
> and then from eMMC if not available.
>
> Fixes: #9176
>
> Signed-off-by: Jussi Laako <jussi.laako@linux.intel.com>
> [Kevin: update to 2016.03, also add subject prefix and Upstream-Status]
> Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
> ---
> This is based on the patch [1] posted by Jussi Laako. Add the
Upstream-Status
> tag as required by Saul, also tweak the subject and u-boot version.
>
> [1] https://lists.yoctoproject.org/pipermail/poky/2016-March/010419.html
>
>  ...r-bootable-partitions-on-both-SD-and-eMMC.patch | 42
++++++++++++++++++++++
>  .../recipes-bsp/u-boot/u-boot_2016.03.bbappend     |  3 ++
>  2 files changed, 45 insertions(+)
>  create mode 100644
meta-yocto-bsp/recipes-bsp/u-boot/u-boot/0001-Search-for-bootable-partitions-on-both-SD-and-eMMC.patch
>  create mode 100644
meta-yocto-bsp/recipes-bsp/u-boot/u-boot_2016.03.bbappend
>
> diff --git
a/meta-yocto-bsp/recipes-bsp/u-boot/u-boot/0001-Search-for-bootable-partitions-on-both-SD-and-eMMC.patch
b/meta-yocto-bsp/recipes-bsp/u-boot/u-boot/0001-Search-for-bootable-partitions-on-both-SD-and-eMMC.patch
> new file mode 100644
> index 0000000..6c4c59b
> --- /dev/null
> +++
b/meta-yocto-bsp/recipes-bsp/u-boot/u-boot/0001-Search-for-bootable-partitions-on-both-SD-and-eMMC.patch
> @@ -0,0 +1,42 @@
> +From 86cc560ff9a6578326532e277d987e24661e5f04 Mon Sep 17 00:00:00 2001
> +From: Jussi Laako <jussi.laako@linux.intel.com>
> +Date: Fri, 26 Feb 2016 14:58:32 +0200
> +Subject: [PATCH] Search for bootable partitions on both SD and eMMC
> +
> +On BeagleBone Black, first attempt to boot from microSD and then from
> +eMMC if not available.
> +
> +Upstream-Status: Inappropriate [not author]
> +
> +Signed-off-by: Jussi Laako <jussi.laako@linux.intel.com>
> +[Kevin: Add the Upstream-Status tag]

I realise there are cases when upstreaming is not a good choice but ... I
don't think this was what Saul was hoping for when he recommended
upstreaming and asked for an Upstream-Status the first time this patch was
sent.

Jussi

> +Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
> +---
> + include/configs/ti_armv7_common.h | 11 ++++++++++-
> + 1 file changed, 10 insertions(+), 1 deletion(-)
> +
> +diff --git a/include/configs/ti_armv7_common.h
b/include/configs/ti_armv7_common.h
> +index 199612b..ece87ab 100644
> +--- a/include/configs/ti_armv7_common.h
> ++++ b/include/configs/ti_armv7_common.h
> +@@ -60,7 +60,16 @@
> + #define DEFAULT_MMC_TI_ARGS \
> +       "mmcdev=0\0" \
> +       "mmcrootfstype=ext4 rootwait\0" \
> +-      "finduuid=part uuid mmc 0:2 uuid\0" \
> ++      "findsduuid=part uuid mmc 0:2 sduuid\0" \
> ++      "findemmcuuid=part uuid mmc 1:2 emmcuuid\0" \
> ++      "finduuid=if run findsduuid; then "\
> ++              "echo \"Boot from microSD\"; "\
> ++              "setenv uuid ${sduuid}; " \
> ++      "else " \
> ++              "run findemmcuuid; " \
> ++              "echo \"Boot from eMMC\"; " \
> ++              "setenv uuid ${emmcuuid}; " \
> ++      "fi;\0" \
> +       "args_mmc=run finduuid;setenv bootargs console=${console} " \
> +               "${optargs} " \
> +               "root=PARTUUID=${uuid} rw " \
> +--
> +2.7.0
> +
> diff --git a/meta-yocto-bsp/recipes-bsp/u-boot/u-boot_2016.03.bbappend
b/meta-yocto-bsp/recipes-bsp/u-boot/u-boot_2016.03.bbappend
> new file mode 100644
> index 0000000..01c8e68
> --- /dev/null
> +++ b/meta-yocto-bsp/recipes-bsp/u-boot/u-boot_2016.03.bbappend
> @@ -0,0 +1,3 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +
> +SRC_URI_append = "
file://0001-Search-for-bootable-partitions-on-both-SD-and-eMMC.patch"
> --
> 2.8.1
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

--001a113d14464a0f8d053447cdae
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 2 June 2016 at 10:51, Kevin Hao &lt;<a href=3D"mailto:k=
exin.hao@windriver.com">kexin.hao@windriver.com</a>&gt; wrote:<br>&gt;<br>&=
gt; From: Jussi Laako &lt;<a href=3D"mailto:jussi.laako@linux.intel.com">ju=
ssi.laako@linux.intel.com</a>&gt;<br>&gt;<br>&gt; On BeagleBone Black, firs=
t attempt to find rootfs from microSD<br>&gt; and then from eMMC if not ava=
ilable.<br>&gt;<br>&gt; Fixes: #9176<br>&gt;<br>&gt; Signed-off-by: Jussi L=
aako &lt;<a href=3D"mailto:jussi.laako@linux.intel.com">jussi.laako@linux.i=
ntel.com</a>&gt;<br>&gt; [Kevin: update to 2016.03, also add subject prefix=
 and Upstream-Status]<br>&gt; Signed-off-by: Kevin Hao &lt;<a href=3D"mailt=
o:kexin.hao@windriver.com">kexin.hao@windriver.com</a>&gt;<br>&gt; ---<br>&=
gt; This is based on the patch [1] posted by Jussi Laako. Add the Upstream-=
Status<br>&gt; tag as required by Saul, also tweak the subject and u-boot v=
ersion.<br>&gt;<br>&gt; [1] <a href=3D"https://lists.yoctoproject.org/piper=
mail/poky/2016-March/010419.html">https://lists.yoctoproject.org/pipermail/=
poky/2016-March/010419.html</a><br>&gt;<br>&gt; =C2=A0...r-bootable-partiti=
ons-on-both-SD-and-eMMC.patch | 42 ++++++++++++++++++++++<br>&gt; =C2=A0...=
/recipes-bsp/u-boot/u-boot_2016.03.bbappend =C2=A0 =C2=A0 | =C2=A03 ++<br>&=
gt; =C2=A02 files changed, 45 insertions(+)<br>&gt; =C2=A0create mode 10064=
4 meta-yocto-bsp/recipes-bsp/u-boot/u-boot/0001-Search-for-bootable-partiti=
ons-on-both-SD-and-eMMC.patch<br>&gt; =C2=A0create mode 100644 meta-yocto-b=
sp/recipes-bsp/u-boot/u-boot_2016.03.bbappend<br>&gt;<br>&gt; diff --git a/=
meta-yocto-bsp/recipes-bsp/u-boot/u-boot/0001-Search-for-bootable-partition=
s-on-both-SD-and-eMMC.patch b/meta-yocto-bsp/recipes-bsp/u-boot/u-boot/0001=
-Search-for-bootable-partitions-on-both-SD-and-eMMC.patch<br>&gt; new file =
mode 100644<br>&gt; index 0000000..6c4c59b<br>&gt; --- /dev/null<br>&gt; ++=
+ b/meta-yocto-bsp/recipes-bsp/u-boot/u-boot/0001-Search-for-bootable-parti=
tions-on-both-SD-and-eMMC.patch<br>&gt; @@ -0,0 +1,42 @@<br>&gt; +From 86cc=
560ff9a6578326532e277d987e24661e5f04 Mon Sep 17 00:00:00 2001<br>&gt; +From=
: Jussi Laako &lt;<a href=3D"mailto:jussi.laako@linux.intel.com">jussi.laak=
o@linux.intel.com</a>&gt;<br>&gt; +Date: Fri, 26 Feb 2016 14:58:32 +0200<br=
>&gt; +Subject: [PATCH] Search for bootable partitions on both SD and eMMC<=
br>&gt; +<br>&gt; +On BeagleBone Black, first attempt to boot from microSD =
and then from<br>&gt; +eMMC if not available.<br>&gt; +<br>&gt; +Upstream-S=
tatus: Inappropriate [not author]<br>&gt; +<br>&gt; +Signed-off-by: Jussi L=
aako &lt;<a href=3D"mailto:jussi.laako@linux.intel.com">jussi.laako@linux.i=
ntel.com</a>&gt;<br>&gt; +[Kevin: Add the Upstream-Status tag]<br><br>I rea=
lise there are cases when upstreaming is not a good choice but ... I don&#3=
9;t think this was what Saul was hoping for when he recommended upstreaming=
 and asked for an Upstream-Status the first time this patch was sent.<br><b=
r>Jussi<br>=C2=A0<br>&gt; +Signed-off-by: Kevin Hao &lt;<a href=3D"mailto:k=
exin.hao@windriver.com">kexin.hao@windriver.com</a>&gt;<br>&gt; +---<br>&gt=
; + include/configs/ti_armv7_common.h | 11 ++++++++++-<br>&gt; + 1 file cha=
nged, 10 insertions(+), 1 deletion(-)<br>&gt; +<br>&gt; +diff --git a/inclu=
de/configs/ti_armv7_common.h b/include/configs/ti_armv7_common.h<br>&gt; +i=
ndex 199612b..ece87ab 100644<br>&gt; +--- a/include/configs/ti_armv7_common=
.h<br>&gt; ++++ b/include/configs/ti_armv7_common.h<br>&gt; +@@ -60,7 +60,1=
6 @@<br>&gt; + #define DEFAULT_MMC_TI_ARGS \<br>&gt; + =C2=A0 =C2=A0 =C2=A0=
 &quot;mmcdev=3D0\0&quot; \<br>&gt; + =C2=A0 =C2=A0 =C2=A0 &quot;mmcrootfst=
ype=3Dext4 rootwait\0&quot; \<br>&gt; +- =C2=A0 =C2=A0 =C2=A0&quot;finduuid=
=3Dpart uuid mmc 0:2 uuid\0&quot; \<br>&gt; ++ =C2=A0 =C2=A0 =C2=A0&quot;fi=
ndsduuid=3Dpart uuid mmc 0:2 sduuid\0&quot; \<br>&gt; ++ =C2=A0 =C2=A0 =C2=
=A0&quot;findemmcuuid=3Dpart uuid mmc 1:2 emmcuuid\0&quot; \<br>&gt; ++ =C2=
=A0 =C2=A0 =C2=A0&quot;finduuid=3Dif run findsduuid; then &quot;\<br>&gt; +=
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;echo \&quot;Boot fr=
om microSD\&quot;; &quot;\<br>&gt; ++ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0&quot;setenv uuid ${sduuid}; &quot; \<br>&gt; ++ =C2=A0 =C2=A0=
 =C2=A0&quot;else &quot; \<br>&gt; ++ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0&quot;run findemmcuuid; &quot; \<br>&gt; ++ =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;echo \&quot;Boot from eMMC\&quot;; &qu=
ot; \<br>&gt; ++ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;sete=
nv uuid ${emmcuuid}; &quot; \<br>&gt; ++ =C2=A0 =C2=A0 =C2=A0&quot;fi;\0&qu=
ot; \<br>&gt; + =C2=A0 =C2=A0 =C2=A0 &quot;args_mmc=3Drun finduuid;setenv b=
ootargs console=3D${console} &quot; \<br>&gt; + =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 &quot;${optargs} &quot; \<br>&gt; + =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;root=3DPARTUUID=3D${uuid} rw &quot; \=
<br>&gt; +--<br>&gt; +2.7.0<br>&gt; +<br>&gt; diff --git a/meta-yocto-bsp/r=
ecipes-bsp/u-boot/u-boot_2016.03.bbappend b/meta-yocto-bsp/recipes-bsp/u-bo=
ot/u-boot_2016.03.bbappend<br>&gt; new file mode 100644<br>&gt; index 00000=
00..01c8e68<br>&gt; --- /dev/null<br>&gt; +++ b/meta-yocto-bsp/recipes-bsp/=
u-boot/u-boot_2016.03.bbappend<br>&gt; @@ -0,0 +1,3 @@<br>&gt; +FILESEXTRAP=
ATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>&gt; +<br>&gt; +SRC_URI_=
append =3D &quot; file://0001-Search-for-bootable-partitions-on-both-SD-and=
-eMMC.patch&quot;<br>&gt; --<br>&gt; 2.8.1<br>&gt;<br>&gt; --<br>&gt; _____=
__________________________________________<br>&gt; poky mailing list<br>&gt=
; <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>&gt=
; <a href=3D"https://lists.yoctoproject.org/listinfo/poky">https://lists.yo=
ctoproject.org/listinfo/poky</a></div>

--001a113d14464a0f8d053447cdae--
