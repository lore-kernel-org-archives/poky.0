Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8598CE00CC8; Thu,  7 Sep 2017 09:20:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.47 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.47 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f47.google.com (mail-it0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A226DE00C62
	for <poky@yoctoproject.org>; Thu,  7 Sep 2017 09:20:16 -0700 (PDT)
Received: by mail-it0-f47.google.com with SMTP id v19so325411ite.0
	for <poky@yoctoproject.org>; Thu, 07 Sep 2017 09:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=e6MHiO4La3gbK/AYuP6JvpG/iv4dyT5C47qBGt6EUJM=;
	b=WLRR6ZYXZXrMPR8xR5JFWZu7zYW1NRfvFHgJXIN4jrib0LEomw8vrIVsCXO2nMQ+W4
	+OqkpIGbweG4FY8oP0UBCOyWMlnDuAW3oOV8DgnB+wBNMO+Q+8CMWG0uNF+qAqUDJuoH
	0TC+kW8ZGDZsvoPoeqJR1LM3TjnZ86L76XXtMw9MEDdy7uy88gcqR/P3SwO8D/LKEvBx
	btd3qc8pceJTp5HAUI3z+RplwbYtAWUu/XVe/n9em/acy0Kb5hNBOhxZ+bkI0BubsxlQ
	zMhSHhJjf5EzA3cXAAFd7Hj6VQRnyPIsPjPWdymdByyYuIidvhVOc+GC6laxLX3n5aZ+
	pcSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=e6MHiO4La3gbK/AYuP6JvpG/iv4dyT5C47qBGt6EUJM=;
	b=gFQejCWqUbDRrvX7N+NX5ExeNYFUBQd6a1iO1L0hB2AHOxLHHuwlQThOeoSIEkF7lv
	6A4x0QHPWtwpdm06/3Q6ZTmW23fd0XDr8D8bA+zTVAjYbYPqy6IdEi85kbqH4GMsyUAa
	yRYz2+lKVUsfaSM7G/LSsrecDUQQmpafpH5xqvtJf118hxhr/YSAkqDzcAO8e/feEIFx
	duozCeh+XGW9Y1XExgK/Uqgql40yiELxXwMTcc82PSbRBTrECvIUlC6F87PBkFv4eBBu
	yo7USUEucjXgbtpNCwJxJcw/3YFSydg7ObpTmrVuoxcSZCVD2/Nc/oFs9ytYCokR4jr3
	LGqw==
X-Gm-Message-State: AHPjjUhi12vGWzOKZIWgKU4EON9EdGoE+3C/1MYvJI61YcZl9hkWlVOm
	5G9EwNyJLX+vcUZxjDpdpIbM3E+7NLN+
X-Google-Smtp-Source: ADKCNb683xsvcALb8G2CvloOPznwRde+ZwFvvb5eKpIZOops7nvCOUJ0c4dIPamf5H7cG9vCFYF2+wNTi7qMfhNMhkY=
X-Received: by 10.36.90.205 with SMTP id v196mr1391123ita.70.1504801216053;
	Thu, 07 Sep 2017 09:20:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.33.83 with HTTP; Thu, 7 Sep 2017 09:19:55 -0700 (PDT)
In-Reply-To: <20170905220812.1852-1-alejandro.hernandez@linux.intel.com>
References: <20170905220812.1852-1-alejandro.hernandez@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 7 Sep 2017 17:19:55 +0100
Message-ID: <CAJTo0LYXvZRTHVp3bubbMK0r_dCwmYR4=a+tTZnaidw3NnDW2w@mail.gmail.com>
To: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] qemu conf: Fix kernel module autoloading for uvesafb on genericx86
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
X-List-Received-Date: Thu, 07 Sep 2017 16:20:17 -0000
Content-Type: multipart/alternative; boundary="001a1145c7eef0dee305589bd5d3"

--001a1145c7eef0dee305589bd5d3
Content-Type: text/plain; charset="UTF-8"

I think this is causing the failures I'm seeing on the autobuilder with
generix86 machine:

ERROR: linux-yocto-4.12.7+gitAUTOINC+42965d664f_d09f2ce584-r0 do_package:
Please ensure module uvesafb is listed in KERNEL_MODULE_PROBECONF since
module_conf_uvesafb is set

Ross

On 5 September 2017 at 23:08, Alejandro Hernandez <
alejandro.hernandez@linux.intel.com> wrote:

> After commit e8b1c653946ef921b65d47e52aea0dc530ef4286, we started seeing
> errors like the following during boot on genericx86 machines:
>
> uvesafb: failed to execute /sbin/v86d
> uvesafb: probe of uvesafb.0 failed with error -22
> uvesafb: vbe_init() failed with -22
> uvesafb: Getting VBE info block failed (eax=0x4f00, err=-2)
>
> These were caused because the uvesa module was being loaded during boot,
> when it is only meant to be loaded on qemu according to:
> 6af89812e8a9931ffed63768ed85367519bf7aef
>
> Since genericx86-common.inc includes qemuboot-x86, the module also tries
> to be loaded on genericx86 machines, this patch removes the instruction
> from
> qemuboot-x86 and adds it in specific to both qemux86 machines confs so
> it is correctly loaded only on those.
>
> [YOCTO #11879]
>
> Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
> ---
>  meta/conf/machine/include/qemuboot-x86.inc | 2 --
>  meta/conf/machine/qemux86-64.conf          | 3 +++
>  meta/conf/machine/qemux86.conf             | 3 +++
>  3 files changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/meta/conf/machine/include/qemuboot-x86.inc
> b/meta/conf/machine/include/qemuboot-x86.inc
> index 0596e2ed3fb..100d0ccfd1f 100644
> --- a/meta/conf/machine/include/qemuboot-x86.inc
> +++ b/meta/conf/machine/include/qemuboot-x86.inc
> @@ -14,7 +14,5 @@ QB_KERNEL_CMDLINE_APPEND = "vga=0
> uvesafb.mode_option=${UVESA_MODE} oprofile.tim
>  # Add the 'virtio-rng-pci' device otherwise the guest may run out of
> entropy
>  QB_OPT_APPEND = "-vga vmware -show-cursor -usb -device usb-tablet -device
> virtio-rng-pci"
>
> -KERNEL_MODULE_AUTOLOAD += "uvesafb"
> -KERNEL_MODULE_PROBECONF += "uvesafb"
>  UVESA_MODE ?= "640x480-32"
>  module_conf_uvesafb = "options uvesafb mode_option=${UVESA_MODE}"
> diff --git a/meta/conf/machine/qemux86-64.conf
> b/meta/conf/machine/qemux86-64.conf
> index ff6e5491bbc..a270d6698f3 100644
> --- a/meta/conf/machine/qemux86-64.conf
> +++ b/meta/conf/machine/qemux86-64.conf
> @@ -29,5 +29,8 @@ MACHINE_FEATURES += "x86 pci"
>
>  MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "v86d"
>
> +KERNEL_MODULE_AUTOLOAD += "uvesafb"
> +KERNEL_MODULE_PROBECONF += "uvesafb"
> +
>  WKS_FILE ?= "directdisk.wks"
>  do_image_wic[depends] += "syslinux:do_populate_sysroot
> syslinux-native:do_populate_sysroot mtools-native:do_populate_sysroot
> dosfstools-native:do_populate_sysroot"
> diff --git a/meta/conf/machine/qemux86.conf b/meta/conf/machine/qemux86.
> conf
> index f8b09c37f29..5c6539b95f3 100644
> --- a/meta/conf/machine/qemux86.conf
> +++ b/meta/conf/machine/qemux86.conf
> @@ -28,5 +28,8 @@ MACHINE_FEATURES += "x86 pci"
>
>  MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "v86d"
>
> +KERNEL_MODULE_AUTOLOAD += "uvesafb"
> +KERNEL_MODULE_PROBECONF += "uvesafb"
> +
>  WKS_FILE ?= "directdisk.wks"
>  do_image_wic[depends] += "syslinux:do_populate_sysroot
> syslinux-native:do_populate_sysroot mtools-native:do_populate_sysroot
> dosfstools-native:do_populate_sysroot"
> --
> 2.12.3
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--001a1145c7eef0dee305589bd5d3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I think this is causing the failures I&#39;m seeing on the=
 autobuilder with generix86 machine:<br><br>ERROR: linux-yocto-4.12.7+gitAU=
TOINC+42965d664f_d09f2ce584-r0 do_package: Please ensure module uvesafb is =
listed in KERNEL_MODULE_PROBECONF since module_conf_uvesafb is set<div><br>=
</div><div>Ross</div></div><div class=3D"gmail_extra"><br><div class=3D"gma=
il_quote">On 5 September 2017 at 23:08, Alejandro Hernandez <span dir=3D"lt=
r">&lt;<a href=3D"mailto:alejandro.hernandez@linux.intel.com" target=3D"_bl=
ank">alejandro.hernandez@linux.intel.com</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">After commit e8b1c653946ef921b65d47e52aea0d<wbr>c530e=
f4286, we started seeing<br>
errors like the following during boot on genericx86 machines:<br>
<br>
uvesafb: failed to execute /sbin/v86d<br>
uvesafb: probe of uvesafb.0 failed with error -22<br>
uvesafb: vbe_init() failed with -22<br>
uvesafb: Getting VBE info block failed (eax=3D0x4f00, err=3D-2)<br>
<br>
These were caused because the uvesa module was being loaded during boot,<br=
>
when it is only meant to be loaded on qemu according to:<br>
6af89812e8a9931ffed63768ed8536<wbr>7519bf7aef<br>
<br>
Since genericx86-common.inc includes qemuboot-x86, the module also tries<br=
>
to be loaded on genericx86 machines, this patch removes the instruction fro=
m<br>
qemuboot-x86 and adds it in specific to both qemux86 machines confs so<br>
it is correctly loaded only on those.<br>
<br>
[YOCTO #11879]<br>
<br>
Signed-off-by: Alejandro Hernandez &lt;<a href=3D"mailto:alejandro.hernande=
z@linux.intel.com">alejandro.hernandez@linux.<wbr>intel.com</a>&gt;<br>
---<br>
=C2=A0meta/conf/machine/include/<wbr>qemuboot-x86.inc | 2 --<br>
=C2=A0meta/conf/machine/qemux86-64.<wbr>conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 | 3 +++<br>
=C2=A0meta/conf/machine/qemux86.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0| 3 +++<br>
=C2=A03 files changed, 6 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/meta/conf/machine/include/<wbr>qemuboot-x86.inc b/meta/conf/ma=
chine/include/<wbr>qemuboot-x86.inc<br>
index 0596e2ed3fb..100d0ccfd1f 100644<br>
--- a/meta/conf/machine/include/<wbr>qemuboot-x86.inc<br>
+++ b/meta/conf/machine/include/<wbr>qemuboot-x86.inc<br>
@@ -14,7 +14,5 @@ QB_KERNEL_CMDLINE_APPEND =3D &quot;vga=3D0 uvesafb.mode_o=
ption=3D${UVESA_<wbr>MODE} oprofile.tim<br>
=C2=A0# Add the &#39;virtio-rng-pci&#39; device otherwise the guest may run=
 out of entropy<br>
=C2=A0QB_OPT_APPEND =3D &quot;-vga vmware -show-cursor -usb -device usb-tab=
let -device virtio-rng-pci&quot;<br>
<br>
-KERNEL_MODULE_AUTOLOAD +=3D &quot;uvesafb&quot;<br>
-KERNEL_MODULE_PROBECONF +=3D &quot;uvesafb&quot;<br>
=C2=A0UVESA_MODE ?=3D &quot;640x480-32&quot;<br>
=C2=A0module_conf_uvesafb =3D &quot;options uvesafb mode_option=3D${UVESA_M=
ODE}&quot;<br>
diff --git a/meta/conf/machine/qemux86-<wbr>64.conf b/meta/conf/machine/qem=
ux86-<wbr>64.conf<br>
index ff6e5491bbc..a270d6698f3 100644<br>
--- a/meta/conf/machine/qemux86-<wbr>64.conf<br>
+++ b/meta/conf/machine/qemux86-<wbr>64.conf<br>
@@ -29,5 +29,8 @@ MACHINE_FEATURES +=3D &quot;x86 pci&quot;<br>
<br>
=C2=A0MACHINE_ESSENTIAL_EXTRA_<wbr>RDEPENDS +=3D &quot;v86d&quot;<br>
<br>
+KERNEL_MODULE_AUTOLOAD +=3D &quot;uvesafb&quot;<br>
+KERNEL_MODULE_PROBECONF +=3D &quot;uvesafb&quot;<br>
+<br>
=C2=A0WKS_FILE ?=3D &quot;directdisk.wks&quot;<br>
=C2=A0do_image_wic[depends] +=3D &quot;syslinux:do_populate_sysroot syslinu=
x-native:do_populate_<wbr>sysroot mtools-native:do_populate_<wbr>sysroot do=
sfstools-native:do_populate_<wbr>sysroot&quot;<br>
diff --git a/meta/conf/machine/qemux86.<wbr>conf b/meta/conf/machine/qemux8=
6.<wbr>conf<br>
index f8b09c37f29..5c6539b95f3 100644<br>
--- a/meta/conf/machine/qemux86.<wbr>conf<br>
+++ b/meta/conf/machine/qemux86.<wbr>conf<br>
@@ -28,5 +28,8 @@ MACHINE_FEATURES +=3D &quot;x86 pci&quot;<br>
<br>
=C2=A0MACHINE_ESSENTIAL_EXTRA_<wbr>RDEPENDS +=3D &quot;v86d&quot;<br>
<br>
+KERNEL_MODULE_AUTOLOAD +=3D &quot;uvesafb&quot;<br>
+KERNEL_MODULE_PROBECONF +=3D &quot;uvesafb&quot;<br>
+<br>
=C2=A0WKS_FILE ?=3D &quot;directdisk.wks&quot;<br>
=C2=A0do_image_wic[depends] +=3D &quot;syslinux:do_populate_sysroot syslinu=
x-native:do_populate_<wbr>sysroot mtools-native:do_populate_<wbr>sysroot do=
sfstools-native:do_populate_<wbr>sysroot&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.12.3<br>
<br>
--<br>
______________________________<wbr>_________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/poky</a><br=
>
</font></span></blockquote></div><br></div>

--001a1145c7eef0dee305589bd5d3--
