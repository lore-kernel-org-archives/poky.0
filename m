Return-Path: <yann.cardaillac@balena.io>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97741D6B085
	for <webhook@archiver.kernel.org>; Thu, 29 Jan 2026 16:02:40 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.18225.1769702558232318442
 for <poky@lists.yoctoproject.org>;
 Thu, 29 Jan 2026 08:02:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@balena.io header.s=google header.b=nsPtG3Ug;
 spf=pass (domain: balena.io, ip: 209.85.218.49, mailfrom: yann.cardaillac@balena.io)
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b872f1c31f1so157638066b.0
        for <poky@lists.yoctoproject.org>; Thu, 29 Jan 2026 08:02:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769702556; cv=none;
        d=google.com; s=arc-20240605;
        b=AykjrkUX471Bn57REjN5DDbCnseg/TsUVKqpe0HO1BAQl0y/hp657t8mCTyQJv74oM
         lmplGnnProR97CW2Vyx9EbciyOXCLRDDsTX2nHp1QDXU8EhtG7GnHO+UbwzC0m9OhCde
         T6+nV5ZoqFXc5/rc0WCqH/cyAjksM8muBQwykGjIN/oam/PQQyubCAfxBO0iwUtB5Ek9
         mQkLKhifQkEhB5eFtQYXdZwTMyB/yO2lDPbn1J6rV+W3tAZPxfB8f3SXhD9o3aYtO2EH
         0d1K4t2UV9A9qFEvHa2yVpew3EnzYlf6MMW83UJtaR2wteXCYFyWVnjeCZ9U7ryiiOnK
         3OQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oO0RpepYx0PNsa9U3waj13X8kCCGKmxglKFI46SxA6o=;
        fh=BovAbnmYYhgLsYXrJpkE+EFV76kYImzfrPgqrCd35Is=;
        b=eGS155Jdv1b2fu+0wVnjEAlMQb+TQlExlfanr2Q+lfaMsJAqMqgNNJX29Bdnex8BTd
         uObOC9ZEMQ1xgPJrf8WZyEAHVbMkDb0fu5KkoTUDgaBeedsA7qrnEyAJM9WHqO1ndyx0
         HOBeKZgexgoGtXDKgUdt1JzU62Y/pGoBoStxz0ndHNRKgxBih1WzOiW5exfhvpHOow3V
         ArPld1VkDE5FYqEefyyibhM+M7EWFEeMQVqJC9kPIF1f12U1pOcAPmbD3Zq+EmYGPQbB
         Yjefqhu71Y37C3ud4qBSosWS5jI7OGWNbhcLdeaFEWFJjGwdqc4WjzV/rrkXH0j28/84
         8CSA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=balena.io; s=google; t=1769702556; x=1770307356; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oO0RpepYx0PNsa9U3waj13X8kCCGKmxglKFI46SxA6o=;
        b=nsPtG3Ugve/zNjv4NiRmVXsDYuJMTxaatVyhF/NQYKZfdICz24qObqyGSVtVg/odoZ
         sONaBwX1gibP7T2WM8hSrnfHoeYvVw2wRUWB0rn+W9d+kPs7FKamE2TZDycaPFbrcIsl
         IlSjnOCWgv2W0w8CbXAuG/iMfNKUu1cx2bI/txG5WRBPSYcJegKbvusIkRoVmUmtz0J6
         ueAdzfkt0ed0TZf2tJNFcI6MEeITLeObi7GQMqeEL56ZtwmpYYRyMo2Luro7DNwkm/ax
         LN5PdIk/8A8om+ZFNWHvurKcF5pmCfWp3xI+G2VKqIm0Epswx454EcMH8sY/BM7gwvVx
         QypQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769702556; x=1770307356;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oO0RpepYx0PNsa9U3waj13X8kCCGKmxglKFI46SxA6o=;
        b=JYcSXxlu+5qBuAdRSjIOmEIl1dNGvsE+IVywrhr0siXIQLLtmtOF6yH/QRyx6Dy8tl
         9R/3Exf5R40HJZJD9EnfWhhq7Xa4ZDpr+YCL0TS2wlYlc7JNdnj5DdX/d6XJztKIKoDn
         fJRNo5EuAs7HQvtSDfeO0upkmWlivohb9XUhqXZyxHUooby4PgJH+8CGZSqc/rUMekjF
         Rivlfcc/nk3r08o+Fak/pd8kAokP1KuR+mcLdRi66N10TQGOf2Y01pk3pi2hmTbIvYaN
         qAAHQf/3ax7GKDNZhymBlbVHmQGky1kuZUAlGbMabMP2kk47jMz3edxEbdYF6ym9303J
         cB8Q==
X-Gm-Message-State: AOJu0YxyDoa832Sg2LhpDtvxrfi/lfytHNbJqTHyOkGZyM++QSVTQrM5
	4wZKkNRwHMdNTnU/nrTQB4q4KQKsmkzlnwzADMx0prS3cRvmzQQcn2Y1imbV2j5b6GPhmu3rLYr
	7ai8sIV18pAdvdLaD+MdKvgdih13QErvIvQ3XBfHyaw==
X-Gm-Gg: AZuq6aI7xwN6R375xIEqp55vBNzwGuivncKF8v+/C6n+3GtaCddYpB7XcL8CBHWGqKA
	1EKS0LfihSIZMnrKf1ATaq6UVu+l7x1LmJTnXeyGdoBNptMXwZuo5Eh+HiIDAhfVWHoQwM5javk
	Na3n4AHPfVf4sEdhyuGiM5HUwBP1p+CcMxQoEdthnz2ei1s4eqOgtnDMpUKlz9NLPT1gtekXy6k
	0XRPjj0daoakzf4fz+qdDcObKjyJi0kbnnUATDRApHC30cwCvahi0tu2usJ/BCxocXnbWXppOlp
	Gtq9C2d8+vQ=
X-Received: by 2002:a17:907:6e87:b0:b74:984c:a3de with SMTP id
 a640c23a62f3a-b8dab1cf961mr600567466b.28.1769702556092; Thu, 29 Jan 2026
 08:02:36 -0800 (PST)
MIME-Version: 1.0
References: <188F3EFDE7E356AD.3408700@lists.yoctoproject.org>
In-Reply-To: <188F3EFDE7E356AD.3408700@lists.yoctoproject.org>
From: Yann Cardaillac <yann.cardaillac@balena.io>
Date: Thu, 29 Jan 2026 17:02:25 +0100
X-Gm-Features: AZwV_QgPelhaUtBgw4_x5gvf-7ogQmVbcIQwupo0wOUh7xgAWkuDez3oW6fQWRk
Message-ID: <CACuRGzC3PPszvChH19hpF64m5838vomShhObDM7hOBS5SAJ9eg@mail.gmail.com>
Subject: Re: [poky] [PATCH] Clearing empty linux firmware packages
To: yann.cardaillac@balena.io
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000036e0ba064988fc90"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 29 Jan 2026 16:02:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13830

--00000000000036e0ba064988fc90
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

We've been cleaning up the linux-firmware package a bit, we found some
empty packages and removed them.
These packages couldn't be installed beforehand and could trigger errors.

Bests,

Yann

On Thu, Jan 29, 2026 at 5:00=E2=80=AFPM Yann Cardaillac via lists.yoctoproj=
ect.org
<yann.cardaillac=3Dbalena.io@lists.yoctoproject.org> wrote:

> Removing packages:
> - ${PN}-wl1251 as it's already shipped in linux-firmware-wl12xx
> - Removing old ${PN}-iwlwifi-3160-* as only the version
> ${PN}-iwlwifi-3160-17 is now shipped
> - Removing ${PN}-iwlwifi-6000g2b-5 and ${PN}-iwlwifi-6000g2a-5 as they ar=
e
> replaced by versions 6
> - Removing ${PN}-iwlwifi-6050-4 as it's replaced by ${PN}-iwlwifi-6050-5
>
> Signed-off-by: Yann CARDAILLAC <yann.cardaillac@balena.io>
> ---
>  .../linux-firmware/linux-firmware_20240909.bb | 56 ++-----------------
>  1 file changed, 4 insertions(+), 52 deletions(-)
>
> diff --git a/meta/recipes-kernel/linux-firmware/linux-firmware_20240909.b=
b
> b/meta/recipes-kernel/linux-firmware/linux-firmware_20240909.bb
> index 30c47d7720..2a0f8049ce 100644
> --- a/meta/recipes-kernel/linux-firmware/linux-firmware_20240909.bb
> +++ b/meta/recipes-kernel/linux-firmware/linux-firmware_20240909.bb
> @@ -71,7 +71,6 @@ LICENSE =3D "\
>      & Firmware-ti-keystone \
>      & Firmware-ueagle-atm4-firmware \
>      & Firmware-via_vt6656 \
> -    & Firmware-wl1251 \
>      & Firmware-xc4000 \
>      & Firmware-xc5000 \
>      & Firmware-xc5000c \
> @@ -224,7 +223,6 @@ NO_GENERIC_LICENSE[Firmware-ti-connectivity] =3D
> "LICENCE.ti-connectivity"
>  NO_GENERIC_LICENSE[Firmware-ti-keystone] =3D "LICENCE.ti-keystone"
>  NO_GENERIC_LICENSE[Firmware-ueagle-atm4-firmware] =3D
> "LICENCE.ueagle-atm4-firmware"
>  NO_GENERIC_LICENSE[Firmware-via_vt6656] =3D "LICENCE.via_vt6656"
> -NO_GENERIC_LICENSE[Firmware-wl1251] =3D "LICENCE.wl1251"
>  NO_GENERIC_LICENSE[Firmware-xc4000] =3D "LICENCE.xc4000"
>  NO_GENERIC_LICENSE[Firmware-xc5000] =3D "LICENCE.xc5000"
>  NO_GENERIC_LICENSE[Firmware-xc5000c] =3D "LICENCE.xc5000c"
> @@ -327,13 +325,11 @@ PACKAGES =3D+ "${PN}-amphion-vpu-license
> ${PN}-amphion-vpu \
>               ${PN}-imx-sdma-license ${PN}-imx-sdma-imx6q
> ${PN}-imx-sdma-imx7d \
>               \
>               ${PN}-iwlwifi-license ${PN}-iwlwifi \
> +             ${PN}-iwlwifi-3160-17 \
>               ${PN}-iwlwifi-135-6 \
> -             ${PN}-iwlwifi-3160-7 ${PN}-iwlwifi-3160-8
> ${PN}-iwlwifi-3160-9 \
> -             ${PN}-iwlwifi-3160-10 ${PN}-iwlwifi-3160-12
> ${PN}-iwlwifi-3160-13 \
> -             ${PN}-iwlwifi-3160-16 ${PN}-iwlwifi-3160-17 \
> -             ${PN}-iwlwifi-6000-4 ${PN}-iwlwifi-6000g2a-5
> ${PN}-iwlwifi-6000g2a-6 \
> -             ${PN}-iwlwifi-6000g2b-5 ${PN}-iwlwifi-6000g2b-6 \
> -             ${PN}-iwlwifi-6050-4 ${PN}-iwlwifi-6050-5 \
> +             ${PN}-iwlwifi-6000-4 ${PN}-iwlwifi-6000g2a-6 \
> +             ${PN}-iwlwifi-6000g2b-6 \
> +             ${PN}-iwlwifi-6050-5 \
>               ${PN}-iwlwifi-7260 \
>               ${PN}-iwlwifi-7265 \
>               ${PN}-iwlwifi-7265d ${PN}-iwlwifi-8000c ${PN}-iwlwifi-8265 =
\
> @@ -398,7 +394,6 @@ PACKAGES =3D+ "${PN}-amphion-vpu-license
> ${PN}-amphion-vpu \
>               ${PN}-amlogic-vdec-license ${PN}-amlogic-vdec \
>               ${PN}-lt9611uxc ${PN}-lontium-license \
>               ${PN}-whence-license \
> -             ${PN}-wl1251-license ${PN}-wl1251 \
>               ${PN}-xc4000-license ${PN}-xc4000 \
>               ${PN}-xc5000-license ${PN}-xc5000 \
>               ${PN}-xc5000c-license ${PN}-xc5000c \
> @@ -877,18 +872,6 @@ RDEPENDS:${PN}-rtl8822 +=3D "${PN}-rtl-license"
>  RDEPENDS:${PN}-rtl8168 +=3D "${PN}-whence-license"
>  RDEPENDS:${PN}-rtl-nic +=3D "${PN}-whence-license"
>
> -# For TI wl1251
> -LICENSE:${PN}-wl1251 =3D "Firmware-wl1251"
> -LICENSE:${PN}-wl1251-license =3D "Firmware-wl1251"
> -
> -FILES:${PN}-wl1251 =3D " \
> -  ${nonarch_base_libdir}/firmware/ti-connectivity/wl1251-fw.bin         =
\
> -  ${nonarch_base_libdir}/firmware/ti-connectivity/wl1251-nvs.bin        =
\
> -"
> -FILES:${PN}-wl1251-license =3D
> "${nonarch_base_libdir}/firmware/LICENCE.wl1251"
> -
> -RDEPENDS:${PN}-wl1251 +=3D "${PN}-wl1251-license"
> -
>  # For ti-connectivity
>  LICENSE:${PN}-wlcommon =3D "Firmware-ti-connectivity"
>  LICENSE:${PN}-wl12xx =3D "Firmware-ti-connectivity"
> @@ -1174,20 +1157,10 @@ RDEPENDS:${PN}-imx-sdma-imx7d +=3D
> "${PN}-imx-sdma-license"
>  # For iwlwifi
>  LICENSE:${PN}-iwlwifi           =3D "Firmware-iwlwifi_firmware"
>  LICENSE:${PN}-iwlwifi-135-6     =3D "Firmware-iwlwifi_firmware"
> -LICENSE:${PN}-iwlwifi-3160-7    =3D "Firmware-iwlwifi_firmware"
> -LICENSE:${PN}-iwlwifi-3160-8    =3D "Firmware-iwlwifi_firmware"
> -LICENSE:${PN}-iwlwifi-3160-9    =3D "Firmware-iwlwifi_firmware"
> -LICENSE:${PN}-iwlwifi-3160-10   =3D "Firmware-iwlwifi_firmware"
> -LICENSE:${PN}-iwlwifi-3160-12   =3D "Firmware-iwlwifi_firmware"
> -LICENSE:${PN}-iwlwifi-3160-13   =3D "Firmware-iwlwifi_firmware"
> -LICENSE:${PN}-iwlwifi-3160-16   =3D "Firmware-iwlwifi_firmware"
>  LICENSE:${PN}-iwlwifi-3160-17   =3D "Firmware-iwlwifi_firmware"
>  LICENSE:${PN}-iwlwifi-6000-4    =3D "Firmware-iwlwifi_firmware"
> -LICENSE:${PN}-iwlwifi-6000g2a-5 =3D "Firmware-iwlwifi_firmware"
>  LICENSE:${PN}-iwlwifi-6000g2a-6 =3D "Firmware-iwlwifi_firmware"
> -LICENSE:${PN}-iwlwifi-6000g2b-5 =3D "Firmware-iwlwifi_firmware"
>  LICENSE:${PN}-iwlwifi-6000g2b-6 =3D "Firmware-iwlwifi_firmware"
> -LICENSE:${PN}-iwlwifi-6050-4    =3D "Firmware-iwlwifi_firmware"
>  LICENSE:${PN}-iwlwifi-6050-5    =3D "Firmware-iwlwifi_firmware"
>  LICENSE:${PN}-iwlwifi-7260      =3D "Firmware-iwlwifi_firmware"
>  LICENSE:${PN}-iwlwifi-7265      =3D "Firmware-iwlwifi_firmware"
> @@ -1202,20 +1175,10 @@ LICENSE:${PN}-iwlwifi-license   =3D
> "Firmware-iwlwifi_firmware"
>
>  FILES:${PN}-iwlwifi-license =3D
> "${nonarch_base_libdir}/firmware/LICENCE.iwlwifi_firmware"
>  FILES:${PN}-iwlwifi-135-6 =3D
> "${nonarch_base_libdir}/firmware/iwlwifi-135-6.ucode"
> -FILES:${PN}-iwlwifi-3160-7 =3D
> "${nonarch_base_libdir}/firmware/iwlwifi-3160-7.ucode"
> -FILES:${PN}-iwlwifi-3160-8 =3D
> "${nonarch_base_libdir}/firmware/iwlwifi-3160-8.ucode"
> -FILES:${PN}-iwlwifi-3160-9 =3D
> "${nonarch_base_libdir}/firmware/iwlwifi-3160-9.ucode"
> -FILES:${PN}-iwlwifi-3160-10 =3D
> "${nonarch_base_libdir}/firmware/iwlwifi-3160-10.ucode"
> -FILES:${PN}-iwlwifi-3160-12 =3D
> "${nonarch_base_libdir}/firmware/iwlwifi-3160-12.ucode"
> -FILES:${PN}-iwlwifi-3160-13 =3D
> "${nonarch_base_libdir}/firmware/iwlwifi-3160-13.ucode"
> -FILES:${PN}-iwlwifi-3160-16 =3D
> "${nonarch_base_libdir}/firmware/iwlwifi-3160-16.ucode"
>  FILES:${PN}-iwlwifi-3160-17 =3D
> "${nonarch_base_libdir}/firmware/iwlwifi-3160-17.ucode"
>  FILES:${PN}-iwlwifi-6000-4 =3D
> "${nonarch_base_libdir}/firmware/iwlwifi-6000-4.ucode"
> -FILES:${PN}-iwlwifi-6000g2a-5 =3D
> "${nonarch_base_libdir}/firmware/iwlwifi-6000g2a-5.ucode"
>  FILES:${PN}-iwlwifi-6000g2a-6 =3D
> "${nonarch_base_libdir}/firmware/iwlwifi-6000g2a-6.ucode"
> -FILES:${PN}-iwlwifi-6000g2b-5 =3D
> "${nonarch_base_libdir}/firmware/iwlwifi-6000g2b-5.ucode"
>  FILES:${PN}-iwlwifi-6000g2b-6 =3D
> "${nonarch_base_libdir}/firmware/iwlwifi-6000g2b-6.ucode"
> -FILES:${PN}-iwlwifi-6050-4 =3D
> "${nonarch_base_libdir}/firmware/iwlwifi-6050-4.ucode"
>  FILES:${PN}-iwlwifi-6050-5 =3D
> "${nonarch_base_libdir}/firmware/iwlwifi-6050-5.ucode"
>  FILES:${PN}-iwlwifi-7260   =3D
> "${nonarch_base_libdir}/firmware/iwlwifi-7260-*.ucode"
>  FILES:${PN}-iwlwifi-7265   =3D
> "${nonarch_base_libdir}/firmware/iwlwifi-7265-*.ucode"
> @@ -1230,20 +1193,10 @@ FILES:${PN}-iwlwifi-misc   =3D " \
>  "
>
>  RDEPENDS:${PN}-iwlwifi-135-6     =3D "${PN}-iwlwifi-license"
> -RDEPENDS:${PN}-iwlwifi-3160-7    =3D "${PN}-iwlwifi-license"
> -RDEPENDS:${PN}-iwlwifi-3160-8    =3D "${PN}-iwlwifi-license"
> -RDEPENDS:${PN}-iwlwifi-3160-9    =3D "${PN}-iwlwifi-license"
> -RDEPENDS:${PN}-iwlwifi-3160-10   =3D "${PN}-iwlwifi-license"
> -RDEPENDS:${PN}-iwlwifi-3160-12   =3D "${PN}-iwlwifi-license"
> -RDEPENDS:${PN}-iwlwifi-3160-13   =3D "${PN}-iwlwifi-license"
> -RDEPENDS:${PN}-iwlwifi-3160-16   =3D "${PN}-iwlwifi-license"
>  RDEPENDS:${PN}-iwlwifi-3160-17   =3D "${PN}-iwlwifi-license"
>  RDEPENDS:${PN}-iwlwifi-6000-4    =3D "${PN}-iwlwifi-license"
> -RDEPENDS:${PN}-iwlwifi-6000g2a-5 =3D "${PN}-iwlwifi-license"
>  RDEPENDS:${PN}-iwlwifi-6000g2a-6 =3D "${PN}-iwlwifi-license"
> -RDEPENDS:${PN}-iwlwifi-6000g2b-5 =3D "${PN}-iwlwifi-license"
>  RDEPENDS:${PN}-iwlwifi-6000g2b-6 =3D "${PN}-iwlwifi-license"
> -RDEPENDS:${PN}-iwlwifi-6050-4    =3D "${PN}-iwlwifi-license"
>  RDEPENDS:${PN}-iwlwifi-6050-5    =3D "${PN}-iwlwifi-license"
>  RDEPENDS:${PN}-iwlwifi-7260      =3D "${PN}-iwlwifi-license"
>  RDEPENDS:${PN}-iwlwifi-7265      =3D "${PN}-iwlwifi-license"
> @@ -1552,7 +1505,6 @@ LICENSE:${PN} =3D "\
>      & Firmware-ti-connectivity \
>      & Firmware-ti-keystone \
>      & Firmware-ueagle-atm4-firmware \
> -    & Firmware-wl1251 \
>      & Firmware-xc4000 \
>      & Firmware-xc5000 \
>      & Firmware-xc5000c \
> --
> 2.43.0
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13829):
> https://lists.yoctoproject.org/g/poky/message/13829
> Mute This Topic: https://lists.yoctoproject.org/mt/117528186/10242448
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> yann.cardaillac@balena.io]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000036e0ba064988fc90
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>We&#39;ve been cleani=
ng up the linux-firmware package a bit, we found some empty packages and re=
moved them.</div><div>These packages couldn&#39;t be installed beforehand a=
nd could trigger errors.</div><div><br></div><div>Bests,</div><div><br></di=
v><div>Yann</div></div><br><div class=3D"gmail_quote gmail_quote_container"=
><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 29, 2026 at 5:00=E2=80=
=AFPM Yann Cardaillac via <a href=3D"http://lists.yoctoproject.org">lists.y=
octoproject.org</a> &lt;yann.cardaillac=3D<a href=3D"mailto:balena.io@lists=
.yoctoproject.org">balena.io@lists.yoctoproject.org</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">Removing packages:<br>
- ${PN}-wl1251 as it&#39;s already shipped in linux-firmware-wl12xx<br>
- Removing old ${PN}-iwlwifi-3160-* as only the version ${PN}-iwlwifi-3160-=
17 is now shipped<br>
- Removing ${PN}-iwlwifi-6000g2b-5 and ${PN}-iwlwifi-6000g2a-5 as they are =
replaced by versions 6<br>
- Removing ${PN}-iwlwifi-6050-4 as it&#39;s replaced by ${PN}-iwlwifi-6050-=
5<br>
<br>
Signed-off-by: Yann CARDAILLAC &lt;<a href=3D"mailto:yann.cardaillac@balena=
.io" target=3D"_blank">yann.cardaillac@balena.io</a>&gt;<br>
---<br>
=C2=A0.../linux-firmware/<a href=3D"http://linux-firmware_20240909.bb" rel=
=3D"noreferrer" target=3D"_blank">linux-firmware_20240909.bb</a> | 56 ++---=
--------------<br>
=C2=A01 file changed, 4 insertions(+), 52 deletions(-)<br>
<br>
diff --git a/meta/recipes-kernel/linux-firmware/<a href=3D"http://linux-fir=
mware_20240909.bb" rel=3D"noreferrer" target=3D"_blank">linux-firmware_2024=
0909.bb</a> b/meta/recipes-kernel/linux-firmware/<a href=3D"http://linux-fi=
rmware_20240909.bb" rel=3D"noreferrer" target=3D"_blank">linux-firmware_202=
40909.bb</a><br>
index 30c47d7720..2a0f8049ce 100644<br>
--- a/meta/recipes-kernel/linux-firmware/<a href=3D"http://linux-firmware_2=
0240909.bb" rel=3D"noreferrer" target=3D"_blank">linux-firmware_20240909.bb=
</a><br>
+++ b/meta/recipes-kernel/linux-firmware/<a href=3D"http://linux-firmware_2=
0240909.bb" rel=3D"noreferrer" target=3D"_blank">linux-firmware_20240909.bb=
</a><br>
@@ -71,7 +71,6 @@ LICENSE =3D &quot;\<br>
=C2=A0 =C2=A0 =C2=A0&amp; Firmware-ti-keystone \<br>
=C2=A0 =C2=A0 =C2=A0&amp; Firmware-ueagle-atm4-firmware \<br>
=C2=A0 =C2=A0 =C2=A0&amp; Firmware-via_vt6656 \<br>
-=C2=A0 =C2=A0 &amp; Firmware-wl1251 \<br>
=C2=A0 =C2=A0 =C2=A0&amp; Firmware-xc4000 \<br>
=C2=A0 =C2=A0 =C2=A0&amp; Firmware-xc5000 \<br>
=C2=A0 =C2=A0 =C2=A0&amp; Firmware-xc5000c \<br>
@@ -224,7 +223,6 @@ NO_GENERIC_LICENSE[Firmware-ti-connectivity] =3D &quot;=
LICENCE.ti-connectivity&quot;<br>
=C2=A0NO_GENERIC_LICENSE[Firmware-ti-keystone] =3D &quot;LICENCE.ti-keyston=
e&quot;<br>
=C2=A0NO_GENERIC_LICENSE[Firmware-ueagle-atm4-firmware] =3D &quot;LICENCE.u=
eagle-atm4-firmware&quot;<br>
=C2=A0NO_GENERIC_LICENSE[Firmware-via_vt6656] =3D &quot;LICENCE.via_vt6656&=
quot;<br>
-NO_GENERIC_LICENSE[Firmware-wl1251] =3D &quot;LICENCE.wl1251&quot;<br>
=C2=A0NO_GENERIC_LICENSE[Firmware-xc4000] =3D &quot;LICENCE.xc4000&quot;<br=
>
=C2=A0NO_GENERIC_LICENSE[Firmware-xc5000] =3D &quot;LICENCE.xc5000&quot;<br=
>
=C2=A0NO_GENERIC_LICENSE[Firmware-xc5000c] =3D &quot;LICENCE.xc5000c&quot;<=
br>
@@ -327,13 +325,11 @@ PACKAGES =3D+ &quot;${PN}-amphion-vpu-license ${PN}-a=
mphion-vpu \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${PN}-imx-sdma-license ${P=
N}-imx-sdma-imx6q ${PN}-imx-sdma-imx7d \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${PN}-iwlwifi-license ${PN=
}-iwlwifi \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PN}-iwlwifi-3160-17 \<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${PN}-iwlwifi-135-6 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PN}-iwlwifi-3160-7 ${PN}=
-iwlwifi-3160-8 ${PN}-iwlwifi-3160-9 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PN}-iwlwifi-3160-10 ${PN=
}-iwlwifi-3160-12 ${PN}-iwlwifi-3160-13 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PN}-iwlwifi-3160-16 ${PN=
}-iwlwifi-3160-17 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PN}-iwlwifi-6000-4 ${PN}=
-iwlwifi-6000g2a-5 ${PN}-iwlwifi-6000g2a-6 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PN}-iwlwifi-6000g2b-5 ${=
PN}-iwlwifi-6000g2b-6 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PN}-iwlwifi-6050-4 ${PN}=
-iwlwifi-6050-5 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PN}-iwlwifi-6000-4 ${PN}=
-iwlwifi-6000g2a-6 \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PN}-iwlwifi-6000g2b-6 \<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PN}-iwlwifi-6050-5 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${PN}-iwlwifi-7260 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${PN}-iwlwifi-7265 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${PN}-iwlwifi-7265d ${PN}-=
iwlwifi-8000c ${PN}-iwlwifi-8265 \<br>
@@ -398,7 +394,6 @@ PACKAGES =3D+ &quot;${PN}-amphion-vpu-license ${PN}-amp=
hion-vpu \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${PN}-amlogic-vdec-license=
 ${PN}-amlogic-vdec \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${PN}-lt9611uxc ${PN}-lont=
ium-license \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${PN}-whence-license \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${PN}-wl1251-license ${PN}=
-wl1251 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${PN}-xc4000-license ${PN}=
-xc4000 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${PN}-xc5000-license ${PN}=
-xc5000 \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${PN}-xc5000c-license ${PN=
}-xc5000c \<br>
@@ -877,18 +872,6 @@ RDEPENDS:${PN}-rtl8822 +=3D &quot;${PN}-rtl-license&qu=
ot;<br>
=C2=A0RDEPENDS:${PN}-rtl8168 +=3D &quot;${PN}-whence-license&quot;<br>
=C2=A0RDEPENDS:${PN}-rtl-nic +=3D &quot;${PN}-whence-license&quot;<br>
<br>
-# For TI wl1251<br>
-LICENSE:${PN}-wl1251 =3D &quot;Firmware-wl1251&quot;<br>
-LICENSE:${PN}-wl1251-license =3D &quot;Firmware-wl1251&quot;<br>
-<br>
-FILES:${PN}-wl1251 =3D &quot; \<br>
-=C2=A0 ${nonarch_base_libdir}/firmware/ti-connectivity/wl1251-fw.bin=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0\<br>
-=C2=A0 ${nonarch_base_libdir}/firmware/ti-connectivity/wl1251-nvs.bin=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 \<br>
-&quot;<br>
-FILES:${PN}-wl1251-license =3D &quot;${nonarch_base_libdir}/firmware/LICEN=
CE.wl1251&quot;<br>
-<br>
-RDEPENDS:${PN}-wl1251 +=3D &quot;${PN}-wl1251-license&quot;<br>
-<br>
=C2=A0# For ti-connectivity<br>
=C2=A0LICENSE:${PN}-wlcommon =3D &quot;Firmware-ti-connectivity&quot;<br>
=C2=A0LICENSE:${PN}-wl12xx =3D &quot;Firmware-ti-connectivity&quot;<br>
@@ -1174,20 +1157,10 @@ RDEPENDS:${PN}-imx-sdma-imx7d +=3D &quot;${PN}-imx-=
sdma-license&quot;<br>
=C2=A0# For iwlwifi<br>
=C2=A0LICENSE:${PN}-iwlwifi=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &qu=
ot;Firmware-iwlwifi_firmware&quot;<br>
=C2=A0LICENSE:${PN}-iwlwifi-135-6=C2=A0 =C2=A0 =C2=A0=3D &quot;Firmware-iwl=
wifi_firmware&quot;<br>
-LICENSE:${PN}-iwlwifi-3160-7=C2=A0 =C2=A0 =3D &quot;Firmware-iwlwifi_firmw=
are&quot;<br>
-LICENSE:${PN}-iwlwifi-3160-8=C2=A0 =C2=A0 =3D &quot;Firmware-iwlwifi_firmw=
are&quot;<br>
-LICENSE:${PN}-iwlwifi-3160-9=C2=A0 =C2=A0 =3D &quot;Firmware-iwlwifi_firmw=
are&quot;<br>
-LICENSE:${PN}-iwlwifi-3160-10=C2=A0 =C2=A0=3D &quot;Firmware-iwlwifi_firmw=
are&quot;<br>
-LICENSE:${PN}-iwlwifi-3160-12=C2=A0 =C2=A0=3D &quot;Firmware-iwlwifi_firmw=
are&quot;<br>
-LICENSE:${PN}-iwlwifi-3160-13=C2=A0 =C2=A0=3D &quot;Firmware-iwlwifi_firmw=
are&quot;<br>
-LICENSE:${PN}-iwlwifi-3160-16=C2=A0 =C2=A0=3D &quot;Firmware-iwlwifi_firmw=
are&quot;<br>
=C2=A0LICENSE:${PN}-iwlwifi-3160-17=C2=A0 =C2=A0=3D &quot;Firmware-iwlwifi_=
firmware&quot;<br>
=C2=A0LICENSE:${PN}-iwlwifi-6000-4=C2=A0 =C2=A0 =3D &quot;Firmware-iwlwifi_=
firmware&quot;<br>
-LICENSE:${PN}-iwlwifi-6000g2a-5 =3D &quot;Firmware-iwlwifi_firmware&quot;<=
br>
=C2=A0LICENSE:${PN}-iwlwifi-6000g2a-6 =3D &quot;Firmware-iwlwifi_firmware&q=
uot;<br>
-LICENSE:${PN}-iwlwifi-6000g2b-5 =3D &quot;Firmware-iwlwifi_firmware&quot;<=
br>
=C2=A0LICENSE:${PN}-iwlwifi-6000g2b-6 =3D &quot;Firmware-iwlwifi_firmware&q=
uot;<br>
-LICENSE:${PN}-iwlwifi-6050-4=C2=A0 =C2=A0 =3D &quot;Firmware-iwlwifi_firmw=
are&quot;<br>
=C2=A0LICENSE:${PN}-iwlwifi-6050-5=C2=A0 =C2=A0 =3D &quot;Firmware-iwlwifi_=
firmware&quot;<br>
=C2=A0LICENSE:${PN}-iwlwifi-7260=C2=A0 =C2=A0 =C2=A0 =3D &quot;Firmware-iwl=
wifi_firmware&quot;<br>
=C2=A0LICENSE:${PN}-iwlwifi-7265=C2=A0 =C2=A0 =C2=A0 =3D &quot;Firmware-iwl=
wifi_firmware&quot;<br>
@@ -1202,20 +1175,10 @@ LICENSE:${PN}-iwlwifi-license=C2=A0 =C2=A0=3D &quot=
;Firmware-iwlwifi_firmware&quot;<br>
<br>
=C2=A0FILES:${PN}-iwlwifi-license =3D &quot;${nonarch_base_libdir}/firmware=
/LICENCE.iwlwifi_firmware&quot;<br>
=C2=A0FILES:${PN}-iwlwifi-135-6 =3D &quot;${nonarch_base_libdir}/firmware/i=
wlwifi-135-6.ucode&quot;<br>
-FILES:${PN}-iwlwifi-3160-7 =3D &quot;${nonarch_base_libdir}/firmware/iwlwi=
fi-3160-7.ucode&quot;<br>
-FILES:${PN}-iwlwifi-3160-8 =3D &quot;${nonarch_base_libdir}/firmware/iwlwi=
fi-3160-8.ucode&quot;<br>
-FILES:${PN}-iwlwifi-3160-9 =3D &quot;${nonarch_base_libdir}/firmware/iwlwi=
fi-3160-9.ucode&quot;<br>
-FILES:${PN}-iwlwifi-3160-10 =3D &quot;${nonarch_base_libdir}/firmware/iwlw=
ifi-3160-10.ucode&quot;<br>
-FILES:${PN}-iwlwifi-3160-12 =3D &quot;${nonarch_base_libdir}/firmware/iwlw=
ifi-3160-12.ucode&quot;<br>
-FILES:${PN}-iwlwifi-3160-13 =3D &quot;${nonarch_base_libdir}/firmware/iwlw=
ifi-3160-13.ucode&quot;<br>
-FILES:${PN}-iwlwifi-3160-16 =3D &quot;${nonarch_base_libdir}/firmware/iwlw=
ifi-3160-16.ucode&quot;<br>
=C2=A0FILES:${PN}-iwlwifi-3160-17 =3D &quot;${nonarch_base_libdir}/firmware=
/iwlwifi-3160-17.ucode&quot;<br>
=C2=A0FILES:${PN}-iwlwifi-6000-4 =3D &quot;${nonarch_base_libdir}/firmware/=
iwlwifi-6000-4.ucode&quot;<br>
-FILES:${PN}-iwlwifi-6000g2a-5 =3D &quot;${nonarch_base_libdir}/firmware/iw=
lwifi-6000g2a-5.ucode&quot;<br>
=C2=A0FILES:${PN}-iwlwifi-6000g2a-6 =3D &quot;${nonarch_base_libdir}/firmwa=
re/iwlwifi-6000g2a-6.ucode&quot;<br>
-FILES:${PN}-iwlwifi-6000g2b-5 =3D &quot;${nonarch_base_libdir}/firmware/iw=
lwifi-6000g2b-5.ucode&quot;<br>
=C2=A0FILES:${PN}-iwlwifi-6000g2b-6 =3D &quot;${nonarch_base_libdir}/firmwa=
re/iwlwifi-6000g2b-6.ucode&quot;<br>
-FILES:${PN}-iwlwifi-6050-4 =3D &quot;${nonarch_base_libdir}/firmware/iwlwi=
fi-6050-4.ucode&quot;<br>
=C2=A0FILES:${PN}-iwlwifi-6050-5 =3D &quot;${nonarch_base_libdir}/firmware/=
iwlwifi-6050-5.ucode&quot;<br>
=C2=A0FILES:${PN}-iwlwifi-7260=C2=A0 =C2=A0=3D &quot;${nonarch_base_libdir}=
/firmware/iwlwifi-7260-*.ucode&quot;<br>
=C2=A0FILES:${PN}-iwlwifi-7265=C2=A0 =C2=A0=3D &quot;${nonarch_base_libdir}=
/firmware/iwlwifi-7265-*.ucode&quot;<br>
@@ -1230,20 +1193,10 @@ FILES:${PN}-iwlwifi-misc=C2=A0 =C2=A0=3D &quot; \<b=
r>
=C2=A0&quot;<br>
<br>
=C2=A0RDEPENDS:${PN}-iwlwifi-135-6=C2=A0 =C2=A0 =C2=A0=3D &quot;${PN}-iwlwi=
fi-license&quot;<br>
-RDEPENDS:${PN}-iwlwifi-3160-7=C2=A0 =C2=A0 =3D &quot;${PN}-iwlwifi-license=
&quot;<br>
-RDEPENDS:${PN}-iwlwifi-3160-8=C2=A0 =C2=A0 =3D &quot;${PN}-iwlwifi-license=
&quot;<br>
-RDEPENDS:${PN}-iwlwifi-3160-9=C2=A0 =C2=A0 =3D &quot;${PN}-iwlwifi-license=
&quot;<br>
-RDEPENDS:${PN}-iwlwifi-3160-10=C2=A0 =C2=A0=3D &quot;${PN}-iwlwifi-license=
&quot;<br>
-RDEPENDS:${PN}-iwlwifi-3160-12=C2=A0 =C2=A0=3D &quot;${PN}-iwlwifi-license=
&quot;<br>
-RDEPENDS:${PN}-iwlwifi-3160-13=C2=A0 =C2=A0=3D &quot;${PN}-iwlwifi-license=
&quot;<br>
-RDEPENDS:${PN}-iwlwifi-3160-16=C2=A0 =C2=A0=3D &quot;${PN}-iwlwifi-license=
&quot;<br>
=C2=A0RDEPENDS:${PN}-iwlwifi-3160-17=C2=A0 =C2=A0=3D &quot;${PN}-iwlwifi-li=
cense&quot;<br>
=C2=A0RDEPENDS:${PN}-iwlwifi-6000-4=C2=A0 =C2=A0 =3D &quot;${PN}-iwlwifi-li=
cense&quot;<br>
-RDEPENDS:${PN}-iwlwifi-6000g2a-5 =3D &quot;${PN}-iwlwifi-license&quot;<br>
=C2=A0RDEPENDS:${PN}-iwlwifi-6000g2a-6 =3D &quot;${PN}-iwlwifi-license&quot=
;<br>
-RDEPENDS:${PN}-iwlwifi-6000g2b-5 =3D &quot;${PN}-iwlwifi-license&quot;<br>
=C2=A0RDEPENDS:${PN}-iwlwifi-6000g2b-6 =3D &quot;${PN}-iwlwifi-license&quot=
;<br>
-RDEPENDS:${PN}-iwlwifi-6050-4=C2=A0 =C2=A0 =3D &quot;${PN}-iwlwifi-license=
&quot;<br>
=C2=A0RDEPENDS:${PN}-iwlwifi-6050-5=C2=A0 =C2=A0 =3D &quot;${PN}-iwlwifi-li=
cense&quot;<br>
=C2=A0RDEPENDS:${PN}-iwlwifi-7260=C2=A0 =C2=A0 =C2=A0 =3D &quot;${PN}-iwlwi=
fi-license&quot;<br>
=C2=A0RDEPENDS:${PN}-iwlwifi-7265=C2=A0 =C2=A0 =C2=A0 =3D &quot;${PN}-iwlwi=
fi-license&quot;<br>
@@ -1552,7 +1505,6 @@ LICENSE:${PN} =3D &quot;\<br>
=C2=A0 =C2=A0 =C2=A0&amp; Firmware-ti-connectivity \<br>
=C2=A0 =C2=A0 =C2=A0&amp; Firmware-ti-keystone \<br>
=C2=A0 =C2=A0 =C2=A0&amp; Firmware-ueagle-atm4-firmware \<br>
-=C2=A0 =C2=A0 &amp; Firmware-wl1251 \<br>
=C2=A0 =C2=A0 =C2=A0&amp; Firmware-xc4000 \<br>
=C2=A0 =C2=A0 =C2=A0&amp; Firmware-xc5000 \<br>
=C2=A0 =C2=A0 =C2=A0&amp; Firmware-xc5000c \<br>
-- <br>
2.43.0<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13829): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13829" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13829</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/117528186/102=
42448" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/=
mt/117528186/10242448</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a> [<a href=3D"mailto:yann.cardaillac@balena.io" target=3D"_blank">yann.ca=
rdaillac@balena.io</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000036e0ba064988fc90--

