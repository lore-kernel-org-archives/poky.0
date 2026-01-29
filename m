Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A38DCD6B087
	for <webhook@archiver.kernel.org>; Thu, 29 Jan 2026 16:15:10 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.18498.1769703301870164238
 for <poky@lists.yoctoproject.org>;
 Thu, 29 Jan 2026 08:15:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=UjvXt7ui;
 spf=pass (domain: smile.fr, ip: 209.85.221.53, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-42fbc305882so827627f8f.0
        for <poky@lists.yoctoproject.org>; Thu, 29 Jan 2026 08:15:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769703300; cv=none;
        d=google.com; s=arc-20240605;
        b=Rypd/jdDJx1dqEnF0vWkFbN6Hci824+stgYBiE1Z+SO7kLJ5ZkHAJsO2PT7LVEDJjV
         nHHwodcxsSY74T/9/Dr78B5bj3hlp3NRx3t3CAuSqjdAyJTyH3RtupBoLpCn3NolN1co
         IOwkJFttBxFe/Eh1kHSJH/a4+qO0XCaRUyVX3Fpwa+BEvDO4EDjHd1h1T+TxuyAGckO1
         Dy8FPSIG1GdfscYXrnQySZO7ky++5g0gqRdrExllx9+Au2WDJ1KFSUxIVSBtozMiJeJU
         IO0Hl0q2l2QaSo0f57+BzUolONxhR6Y1VUbCV/wQcEOH8eEwWZFQVLHJ/C2PtOcuMQnJ
         S5+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=uzz0lz8KRlAfD4Re2lvzMn4qSnOSu/ub1L+idct4ToI=;
        fh=BovAbnmYYhgLsYXrJpkE+EFV76kYImzfrPgqrCd35Is=;
        b=BzSwGld5gVlqXzZNgX73GL5eyOpmtqnb5ChV5mRdoKHaufUov0X8/rB1z6CYMcnomK
         7Plsmvd2Oc799TO/V7hkNP2xc9e6V5iX/iwAIseOIcOUrxprOb2jtX1mrXbUvSzLucpN
         TFaD24FrQviebT7owMgmm3G/H8X2cOYDpPUJUkha3aeMMZmKv/4ZKue1iY7dAyB3qqcu
         rJETe8SuvwTCbGaZsAA9kUNdjfMKqaQOOtRxyuvZOO8Q+Cf+Drj/pWif6CrmidQJ0TpW
         SlEmKgPT11Z8OBv7o4YINOlyfl7MMhy42/dk0OopRest85JXAx7e/4P5K9iu99Lmbbwy
         hoUg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1769703300; x=1770308100; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uzz0lz8KRlAfD4Re2lvzMn4qSnOSu/ub1L+idct4ToI=;
        b=UjvXt7uiRRVsMxtd0pgZWv+IowQVPdGeBToT9wPJZ62Wxyws/K59sy7U7hV97Sbou4
         5EzVf1X4FuMmXKGZHYDLiHs/oG6uJ62uOGaHzpGDPxGJZXPphHJPmBwyRyAi56AREwkv
         iavrgvIEoMxmbvbVThXj7bNTXFfS1tbXnt5cg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769703300; x=1770308100;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uzz0lz8KRlAfD4Re2lvzMn4qSnOSu/ub1L+idct4ToI=;
        b=FU+hpZqpikH3x2JvE5FC9VfeD51kXggi2Y8DngY/lbs0kpim04F2M/UEJVbF7aEmZn
         E2R99p+3jFywHwoaXHKPAlBL/66jtY4DWzlyLbavGun4hwHyw8Suugd5hQzouB0l0He4
         +WfDAElNSmhtnFcwaIpGU1ZfwLe8/href2pIuqv5z5sPmNZKNKyUkRpNQRNebJgIfJKP
         r0N2gCL6OgxsXNfAMSVC0vKq3arrTeZlrh1Ya5eMYw5aBXlWSKGPyjcs07joWSbVP/FV
         4sYkHtxf+sbEnpPQqUlqZBTLtgdEbFDiIUOvvcbefZQK0ALons8WjXc1v76NX97vAgqQ
         flwQ==
X-Gm-Message-State: AOJu0YxW6/dMdcMu47pd7DKUTC5Mkd50d4LL4vwDDeMwnyFV/FYgyu9F
	0b5Yz/FeduiWSxotjdULW5+eWiB+btuTekwZJ+DZsFVaEw15QBApV4QK7C6mZMBkHGlAyst8YIf
	u7sXvyk5Ym947tl6ZFXFq8I+iVyXPdLUGXwQH7OfS4w==
X-Gm-Gg: AZuq6aJiKRy5LiuzXvG2xaLwkcXKVErjx4CY3DU/df2OURXd8yixptdOhWp0H5O/pvZ
	2eY5WUeyZn+JXNoQPi/M0+H4JRqKj38R2MsTeDOp5cAlcpOgSNwofRvGCFEKRbV12qz9chwJQNF
	bbkT7lklRQrQxhsPyz8DO7ZwxKX65GA0JwFmFqypuwUg7bT5qGTCnhutPZOA3V+wK1Uys+HefNO
	XH9c7w5rJeGGgorrwjC/c+cTXkwlOZ+uEj1rmt6ug6aQbVpI4ivuGjxyS8voQUFV6ZL5hOp+Vln
	CnlFi8JE8DJJxf1ICUb+GVSjif5s
X-Received: by 2002:a5d:5f51:0:b0:435:97f6:4f44 with SMTP id
 ffacd0b85a97d-435f3aba452mr176051f8f.56.1769703300014; Thu, 29 Jan 2026
 08:15:00 -0800 (PST)
MIME-Version: 1.0
References: <20260129160033.849551-1-yann.cardaillac@balena.io>
In-Reply-To: <20260129160033.849551-1-yann.cardaillac@balena.io>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Thu, 29 Jan 2026 17:14:34 +0100
X-Gm-Features: AZwV_Qjw_XORrFXEjhdhAsmMi3zNYmOQOARRz6gkIIrhPJGXvul8W2vK6EZlMtw
Message-ID: <CAMSfU+45KPesv7_hgsnenEEqzO9Sb48kZ-2DS=3TAa42-Rc_9g@mail.gmail.com>
Subject: Re: [poky] [PATCH] Clearing empty linux firmware packages
To: yann.cardaillac@balena.io
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008e3b620649892806"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 29 Jan 2026 16:15:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13831

--0000000000008e3b620649892806
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le jeu. 29 janv. 2026 =C3=A0 17:00, Yann Cardaillac via lists.yoctoproject.=
org
<yann.cardaillac=3Dbalena.io@lists.yoctoproject.org> a =C3=A9crit :

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
>

Hello Yann, ;)

It looks like you are trying to send this to one of the OE-core stable
branches.
In this case, the correct ML address is
openembedded-core@lists.openembedded.org
(See the README:
https://git.openembedded.org/openembedded-core/tree/README.OE-Core.md?h=3Ds=
carthgap#n25
)
Also, you need to have the [scarthgap], [kirkstone], ... tag in your patch
title depending on your target.
And finally, keep in mind that this can only be accepted if the problem is
solved in the more recent branches (stables and master) so you might need
to send this to multiple branches.

Everything should be documented here:
https://docs.yoctoproject.org/contributor-guide/submit-changes.html#finding=
-a-suitable-mailing-list
https://docs.yoctoproject.org/contributor-guide/submit-changes.html#submitt=
ing-changes-to-stable-release-branches

Thanks!


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
> Mute This Topic: https://lists.yoctoproject.org/mt/117528186/4316185
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Yoann Congal
Smile ECS

--0000000000008e3b620649892806
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Le=C2=A0jeu. 29 janv. 2026 =C3=A0=C2=A017=
:00, Yann Cardaillac via <a href=3D"http://lists.yoctoproject.org">lists.yo=
ctoproject.org</a> &lt;yann.cardaillac=3D<a href=3D"mailto:balena.io@lists.=
yoctoproject.org">balena.io@lists.yoctoproject.org</a>&gt; a =C3=A9crit=C2=
=A0:</div><div class=3D"gmail_quote gmail_quote_container"><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">Removing packages:<br>
- ${PN}-wl1251 as it&#39;s already shipped in linux-firmware-wl12xx<br>
- Removing old ${PN}-iwlwifi-3160-* as only the version ${PN}-iwlwifi-3160-=
17 is now shipped<br>
- Removing ${PN}-iwlwifi-6000g2b-5 and ${PN}-iwlwifi-6000g2a-5 as they are =
replaced by versions 6<br>
- Removing ${PN}-iwlwifi-6050-4 as it&#39;s replaced by ${PN}-iwlwifi-6050-=
5<br>
<br>
Signed-off-by: Yann CARDAILLAC &lt;<a href=3D"mailto:yann.cardaillac@balena=
.io" target=3D"_blank">yann.cardaillac@balena.io</a>&gt;<br></blockquote><d=
iv><br></div><div>Hello Yann, ;)</div><div><br></div><div>It looks like you=
 are trying to send this to one of the OE-core stable branches.</div><div>I=
n this case, the correct ML address=C2=A0is=C2=A0<a href=3D"mailto:openembe=
dded-core@lists.openembedded.org">openembedded-core@lists.openembedded.org<=
/a></div><div>(See the README:=C2=A0<a href=3D"https://git.openembedded.org=
/openembedded-core/tree/README.OE-Core.md?h=3Dscarthgap#n25">https://git.op=
enembedded.org/openembedded-core/tree/README.OE-Core.md?h=3Dscarthgap#n25</=
a>)</div><div>Also, you need to have the [scarthgap], [kirkstone], ... tag =
in your patch title depending on your target.</div><div>And finally, keep i=
n mind that this can only be accepted if the problem is solved in the more =
recent branches (stables and master) so you might need to send this to mult=
iple branches.</div><div><br></div><div>Everything=C2=A0should be documente=
d here:</div><div><a href=3D"https://docs.yoctoproject.org/contributor-guid=
e/submit-changes.html#finding-a-suitable-mailing-list">https://docs.yoctopr=
oject.org/contributor-guide/submit-changes.html#finding-a-suitable-mailing-=
list</a><br><a href=3D"https://docs.yoctoproject.org/contributor-guide/subm=
it-changes.html#submitting-changes-to-stable-release-branches">https://docs=
.yoctoproject.org/contributor-guide/submit-changes.html#submitting-changes-=
to-stable-release-branches</a></div><div><br></div><div>Thanks!</div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
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
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/117528186/431=
6185" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/117528186/4316185</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a> [<a href=3D"mailto:yoann.congal@smile.fr" target=3D"_blank">yoann.conga=
l@smile.fr</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><br><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><font face=3D"Raleway, regular">Yoann Congal</font><div><fon=
t face=3D"Raleway, regular">Smile ECS</font></div></div></div></div>

--0000000000008e3b620649892806--

