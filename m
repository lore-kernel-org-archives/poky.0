Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5900E00C45; Thu,  3 Nov 2016 07:47:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.182 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.182 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f182.google.com (mail-qk0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40A7FE00C09
	for <poky@yoctoproject.org>; Thu,  3 Nov 2016 07:47:34 -0700 (PDT)
Received: by mail-qk0-f182.google.com with SMTP id o68so59538401qkf.3
	for <poky@yoctoproject.org>; Thu, 03 Nov 2016 07:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=4x4djigm5QfAKCAWu8JGXsO8MiKyo55RPHCcorDNzU8=;
	b=KDTQjG9/qMAfRV96rJMMBZ78+jyzrwXuqV2DMTFTCs1+nIMMy3LX49SbxV6vvO/HN1
	pq2pKvL+iMm6T/M6WQ02N/TtqmFeUG8CF/JKPudlfwfARXvzrPQIPa1h0aNqNRlRcPOp
	63Y2qNlQiUodBBHZPsu6aDxqzZ5lnyDTr5WpdX5KbydgM0HQLrSN0iD8RCvYrue2d2gg
	x9eUXMXhQeSxfLSvIw1h0/V55C7qWDLqX40DLxIY4HdcMZUgXn5XNr3mo9foeYA1gtQj
	d95DLdBhnVFxixVHPHL1N/YtrgjOn4iJJxdq+20n/xIxVjJPHHn+kviFORyj6D0xQArJ
	VWdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=4x4djigm5QfAKCAWu8JGXsO8MiKyo55RPHCcorDNzU8=;
	b=YSndEivQetzrkF6kZLS6VIY4zcii2pMZuYMjqrAkZFiS6Iw99LdonKZajQVMxxgd8Z
	kq0r3VbB2WoS9uAtpmquEQVC0xs7WEC9zrSmmPbvSnZDUSdLgBYFdPIXTWIjN+Q3c+oC
	7BHHZ5F8jQl1rkOe7UCUGAhK+GJ8tWadwyYotuirwByib8Z5cAqbZBXg4bZGn1dNzMsu
	hMVmh+WGPj+9hvydLB7vKQOBG8w5PTH3e+dvrYrnJDUKH8yBjF2KFWPBIRJGIu68MvgA
	P4ev4TFMfU3FHCKZBbrvw+yPh1G/J+1pAgpI3kHIuLFlos72KGmOeB3vw8ZMJN5wBNGS
	odrg==
X-Gm-Message-State: ABUngvcFtNBrU6jU0AHN79kob7fiMxPlD89n5Ox9kGaoLXFzlG7WPDKlZLdqTSYTO96mHZ5EyqUQ1CFdjiDNQJ/y
X-Received: by 10.55.215.6 with SMTP id m6mr7780338qki.244.1478184453930; Thu,
	03 Nov 2016 07:47:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.208 with HTTP; Thu, 3 Nov 2016 07:47:13 -0700 (PDT)
In-Reply-To: <1478157920-21764-1-git-send-email-frederik_sdun@mentor.com>
References: <1478157920-21764-1-git-send-email-frederik_sdun@mentor.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 3 Nov 2016 14:47:13 +0000
Message-ID: <CAJTo0LbY0yV73FndcYHVkt_raS5g3AqinG0yGJPwrRte_su35A@mail.gmail.com>
To: Frederik Sdun <frederik_sdun@mentor.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] kernel-module-split: use license provided by module for kernel-module-*
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
X-List-Received-Date: Thu, 03 Nov 2016 14:47:36 -0000
Content-Type: multipart/alternative; boundary=001a1149dcbc4a12a5054066a3ad

--001a1149dcbc4a12a5054066a3ad
Content-Type: text/plain; charset=UTF-8

This patch should go to openembedded-core@lists.openembedded.org, not poky@.
It's also wise to CC Bruce Ashfield to ensure he sees it.

On 3 November 2016 at 07:25, Frederik Sdun <frederik_sdun@mentor.com> wrote:

> ---
>  meta/classes/kernel-module-split.bbclass | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/meta/classes/kernel-module-split.bbclass
> b/meta/classes/kernel-module-split.bbclass
> index 08d2262..8d2aaea 100644
> --- a/meta/classes/kernel-module-split.bbclass
> +++ b/meta/classes/kernel-module-split.bbclass
> @@ -29,6 +29,12 @@ do_install_append() {
>  PACKAGESPLITFUNCS_prepend = "split_kernel_module_packages "
>
>  KERNEL_MODULES_META_PACKAGE ?= "kernel-modules"
> +KERNEL_MODULE_LICENSE_MAP[GPL] = "GPL-2.0"
> +KERNEL_MODULE_LICENSE_MAP[GPL_v2] = "GPL-2.0"
> +KERNEL_MODULE_LICENSE_MAP[GPL_and_additional_rights] = "GPL-2.0"
> +KERNEL_MODULE_LICENSE_MAP[Dual_BSD_GPL] = "BSD|GPL-2.0"
> +KERNEL_MODULE_LICENSE_MAP[Dual_MIT_GPL] = "MIT|GPL-2.0"
> +KERNEL_MODULE_LICENSE_MAP[Dual_MPL_GPL] = "MPL|GPL-2.0


license.bbclass has some mapping functions already, maybe this should
extend and use that instead?

Ross

--001a1149dcbc4a12a5054066a3ad
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This patch should go to <a href=3D"mailto:openembedded-cor=
e@lists.openembedded.org">openembedded-core@lists.openembedded.org</a>, not=
 poky@.=C2=A0 It&#39;s also wise to CC Bruce Ashfield to ensure he sees it.=
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 3 November 201=
6 at 07:25, Frederik Sdun <span dir=3D"ltr">&lt;<a href=3D"mailto:frederik_=
sdun@mentor.com" target=3D"_blank">frederik_sdun@mentor.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">---<br>
=C2=A0meta/classes/kernel-module-<wbr>split.bbclass | 10 ++++++++++<br>
=C2=A01 file changed, 10 insertions(+)<br>
<br>
diff --git a/meta/classes/kernel-module-<wbr>split.bbclass b/meta/classes/k=
ernel-module-<wbr>split.bbclass<br>
index 08d2262..8d2aaea 100644<br>
--- a/meta/classes/kernel-module-<wbr>split.bbclass<br>
+++ b/meta/classes/kernel-module-<wbr>split.bbclass<br>
@@ -29,6 +29,12 @@ do_install_append() {<br>
=C2=A0PACKAGESPLITFUNCS_prepend =3D &quot;split_kernel_module_packages &quo=
t;<br>
<br>
=C2=A0KERNEL_MODULES_META_PACKAGE ?=3D &quot;kernel-modules&quot;<br>
+KERNEL_MODULE_LICENSE_MAP[<wbr>GPL] =3D &quot;GPL-2.0&quot;<br>
+KERNEL_MODULE_LICENSE_MAP[<wbr>GPL_v2] =3D &quot;GPL-2.0&quot;<br>
+KERNEL_MODULE_LICENSE_MAP[<wbr>GPL_and_additional_rights] =3D &quot;GPL-2.=
0&quot;<br>
+KERNEL_MODULE_LICENSE_MAP[<wbr>Dual_BSD_GPL] =3D &quot;BSD|GPL-2.0&quot;<b=
r>
+KERNEL_MODULE_LICENSE_MAP[<wbr>Dual_MIT_GPL] =3D &quot;MIT|GPL-2.0&quot;<b=
r>
+KERNEL_MODULE_LICENSE_MAP[<wbr>Dual_MPL_GPL] =3D &quot;MPL|GPL-2.0</blockq=
uote><div><br></div><div>license.bbclass has some mapping functions already=
, maybe this should extend and use that instead?</div><div><br></div><div>R=
oss</div></div></div></div>

--001a1149dcbc4a12a5054066a3ad--
