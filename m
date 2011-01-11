Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2F69E4C80050;
	Mon, 10 Jan 2011 22:54:43 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so21758505iyb.35
	for <multiple recipients>; Mon, 10 Jan 2011 20:54:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=895hPF/15hSAFSoRvDh1CyY3dxdVwyZmxu79uU4RRko=;
	b=EwFbpQNS0V2TrCZVQIAslx6Nv93JHvEzgHsdSs0r+Xm8uuZVza7F/Y7UaaSyo1qP87
	ZGJNkcSOetAI2x6BGjuGILD8PBUXxarnaN/g1gE/Q0psHrBBGYR2S6/NgsKNmmChfmhs
	wf5G0V3jpkB2io2KEuMgoxkTNmISO3aoO7SFw=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=BCfngNgC1IBJX92pxbXsQjmBHRBrfZRsNTOtPwzVEReGNzlfaY05tDsfuDcNENxMNZ
	YoThQkAZsb7xw0z15RGzOF1o/VBbuT9b46f8MtFb3caJ04BU+TNlac0npNX/6CH/I123
	Uy1tbktLTDn4U7t/OZnEInT3IovKeFtEQp3E0=
MIME-Version: 1.0
Received: by 10.231.207.84 with SMTP id fx20mr29430765ibb.62.1294721681065;
	Mon, 10 Jan 2011 20:54:41 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Mon, 10 Jan 2011 20:54:41 -0800 (PST)
In-Reply-To: <1865303E0DED764181A9D882DEF65FB685AFA1B319@shsmsx502.ccr.corp.intel.com>
References: <cover.1294680187.git.bruce.ashfield@windriver.com>
	<38d72bcb177222eba77eb3d7c483d55cbfb7f2e8.1294680187.git.bruce.ashfield@windriver.com>
	<1865303E0DED764181A9D882DEF65FB685AFA1B319@shsmsx502.ccr.corp.intel.com>
Date: Mon, 10 Jan 2011 23:54:41 -0500
Message-ID: <AANLkTikSSGjwH61YgsAQQ3qAQzgaq+RBzdC2r_=A5K9S@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: "Cui, Dexuan" <dexuan.cui@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: [PATCH 4/5] kern-tools: create generic variables for platform/board/kernel
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 11 Jan 2011 04:54:43 -0000
Content-Type: text/plain; charset=GB2312
Content-Transfer-Encoding: quoted-printable

2011/1/10 Cui, Dexuan <dexuan.cui@intel.com>:
> hmmm, looks this commit was not tested?

It was definitely tested. Built for every board. Feel free to revert as
required.

Bruce

>
> With poky.git's latest 4b055ed, "bitbake  kern-tools-native -c fetch" fai=
ls because in http://git.pokylinux.org/cgit/cgit.cgi/wr-kernel-tools/, the =
latest commit is still a494ddaf1c9151af8af8050e8427c9958440ec4c.
>
> Thanks,
> -- Dexuan
>
> -----Original Message-----
> From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org=
] On Behalf Of Bruce Ashfield
> Sent: 2011=C4=EA1=D4=C211=C8=D5 1:31
> To: rpurdie@linux.intel.com
> Cc: yocto@yoctoproject.org; poky@yoctoproject.org; Wold, Saul
> Subject: [poky] [PATCH 4/5] kern-tools: create generic variables for plat=
form/board/kernel
>
> Update the SRCREV to pickup changes to update the use of
> WRS_* to be K* to provide more generic names for the
> platform/board/kernel configuration options.
>
> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> ---
>  .../conf/distro/include/poky-default-revisions.inc |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/c=
onf/distro/include/poky-default-revisions.inc
> index fc20ce4..65681cc 100644
> --- a/meta/conf/distro/include/poky-default-revisions.inc
> +++ b/meta/conf/distro/include/poky-default-revisions.inc
> @@ -57,7 +57,7 @@ SRCREV_pn-gypsy ??=3D "147"
>  SRCREV_pn-inputproto ??=3D "7203036522ba9d4b224d282d6afc2d0b947711ee"
>  SRCREV_pn-inputproto-native ??=3D "7203036522ba9d4b224d282d6afc2d0b94771=
1ee"
>  SRCREV_pn-inputproto-nativesdk ??=3D "7203036522ba9d4b224d282d6afc2d0b94=
7711ee"
> -SRCREV_pn-kern-tools-native ??=3D "a494ddaf1c9151af8af8050e8427c9958440e=
c4c"
> +SRCREV_pn-kern-tools-native ??=3D "f553af044615ba75c2b4b7ef1f382e6f75087=
213"
>  SRCREV_pn-libdrm ??=3D "3f3c5be6f908272199ccf53f108b1124bfe0a00e"
>  SRCREV_pn-libfakekey ??=3D "2031"
>  SRCREV_pn-libgdbus ??=3D "aeab6e3c0185b271ca343b439470491b99cc587f"
> @@ -105,7 +105,7 @@ SRCREV_machine_pn-linux-yocto_atom-pc =3D "6635864790=
ac23db856147fcbc4e8ebbfd30a0b
>  SRCREV_machine_pn-linux-yocto_routerstationpro =3D "cc1d802228803e0ebf27=
f3d3772de3620159d195"
>  SRCREV_machine_pn-linux-yocto_mpc8315e-rdb =3D "be26676bf67b0c4b5f36b57f=
e9e46f8bfd2a67c9"
>  SRCREV_machine_pn-linux-yocto_beagleboard =3D "6635864790ac23db856147fcb=
c4e8ebbfd30a0ba"
> -SRCREV_meta_pn-linux-yocto ?=3D "653fa2338c46a3f940eadf42e1f95019ef43f64=
a"
> +SRCREV_meta_pn-linux-yocto ?=3D "7102097a25c7658e0f4d4dc71844e0ff6c446b2=
5"
>  SRCREV_pn-linux-libc-headers-yocto ??=3D "6635864790ac23db856147fcbc4e8e=
bbfd30a0ba"
>  SRCREV_pn-matchbox-config-gtk ??=3D "2081"
>  SRCREV_pn-matchbox-desktop-sato ??=3D "76"
> --
> 1.7.0.4
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

