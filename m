Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 972844C800B3
	for <poky@yoctoproject.org>; Thu, 16 Jun 2011 04:48:04 -0500 (CDT)
Received: by wyb40 with SMTP id 40so1388911wyb.35
	for <poky@yoctoproject.org>; Thu, 16 Jun 2011 02:48:03 -0700 (PDT)
Received: by 10.227.36.212 with SMTP id u20mr699293wbd.35.1308217683268;
	Thu, 16 Jun 2011 02:48:03 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id fl19sm41659wbb.66.2011.06.16.02.48.01
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 16 Jun 2011 02:48:02 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1308216069-25022-1-git-send-email-dongxiao.xu@intel.com>
Date: Thu, 16 Jun 2011 11:48:00 +0200
Message-Id: <DD75A5DE-D7A8-435E-A20B-1F676F80DCA8@dominion.thruhere.net>
References: <1308216069-25022-1-git-send-email-dongxiao.xu@intel.com>
To: Dongxiao Xu <dongxiao.xu@intel.com>
X-Mailer: Apple Mail (2.1084)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] meta-fishriver/linux-yocto: Auto load cdc-acm and cdc-wdm modules
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
X-List-Received-Date: Thu, 16 Jun 2011 09:48:05 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 16 jun 2011, om 11:21 heeft Dongxiao Xu het volgende geschreven:

> Automatically load cdc-acm.ko and cdc-wdm.ko to support 3G module.

Is USB broken in that kernel that it doesn't load the correct driver =
when plugging in the dongle?

>=20
> Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
> ---
> .../linux/linux-yocto_2.6.37.bbappend              |    3 +++
> 1 files changed, 3 insertions(+), 0 deletions(-)
>=20
> diff --git =
a/meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.37.bbappend =
b/meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
> index b767109..5f8b8ca 100644
> --- a/meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
> +++ b/meta-fishriver/recipes-kernel/linux/linux-yocto_2.6.37.bbappend
> @@ -4,3 +4,6 @@ KMACHINE_fishriver  =3D "yocto/standard/fishriver"
>=20
> SRCREV_machine_pn-linux-yocto_fishriver ?=3D =
"697d84759be192403a8a87ab269196c67a0c2c88"
> SRCREV_meta_pn-linux-yocto_fishriver ?=3D =
"f1dc3722d45cdcc92c84ebfecf4ce616d2efed26"
> +
> +module_autoload_cdc-acm =3D "cdc-acm"
> +module_autoload_cdc-wdm =3D "cdc-wdm"
> --=20
> 1.7.0.4
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


