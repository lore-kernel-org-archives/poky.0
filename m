Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB48F43680
	for <webhook@archiver.kernel.org>; Fri, 17 Apr 2026 09:10:15 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.40677.1776417010694055497
 for <poky@lists.yoctoproject.org>;
 Fri, 17 Apr 2026 02:10:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=hpjI5ROf;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-488ba6366a7so5584645e9.0
        for <poky@lists.yoctoproject.org>; Fri, 17 Apr 2026 02:10:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1776417009; x=1777021809; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=z0B73psr5zNn86akoWxDalabZ5OFORmpuoGk3OwK1cA=;
        b=hpjI5ROfWcpYhamZ/Fx8EbJ+gWeUSZbIHdvYsunYb70tiltWkntlLd9XeLGpyZpc2i
         XDn3KdiREruKznzzQlduLh6TAjtuk+ROaed9GQGRh1nMFe4OqA/9Bv9Znqf5VCrf0gwh
         I8GJRwjsy1+SQ7YArJvV2pq8ax+P6mmrAsyuc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776417009; x=1777021809;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z0B73psr5zNn86akoWxDalabZ5OFORmpuoGk3OwK1cA=;
        b=CnwsYfWs0lGT9S6PGwco7lajJa4MqQTp+G8ig9iB2Fm+/GbL3eJ5yBbeqydU2RDUMk
         LhMD/3bjAJ3wA0KdSgaq48MtxEIm9Ly3C7pyr4h+r0+hNeNy2GLJSJbrjgxhbXxIWfo+
         kn7n4EuiIjKnZ/+scXvREAa+GfV8XFa2fxh9KQt+jqySqPgjgjn2mZL9jLnN7ImgSs1Z
         ZKHLiWPFMFVO0lH+sgNPVAEJ/lakCzuNw6k3CBxKTAK/xf0wmR+Gm9xgSp1sK2UtgY6s
         /hClKgi+szRpNPdRAF1BuX8RUNK8gLR3QmUouL57QnoqucJEQ1C9f+ygZtG3B/lzg0CU
         Sbjg==
X-Forwarded-Encrypted: i=1; AFNElJ813dRQXA816Mf+ft1/wOTZaNNaaALYZdtdeoTZPMF6YtB93UDllwOElmpip+zJ7HDTY9my@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzAUGO7+ysqQsBn7AE7u+/6+JerdrazBc956AiumZJ+HPfwdSp1
	aAa6YYswLzJbXg6zlFSoCftBzm9iSTsb6MGIAoJhnhHDSNwJKGjQTcAdcvFNpmvbZDw=
X-Gm-Gg: AeBDieuHAyp8z0CvUhUJnm6385VuH9upNgPjZ56Wyx7/JmubvxtBgemQXzhI++kF5nN
	8dqBsvldBEquINddW2u5abY9lULVj9OEFl8V73sBECdiIPVXOP4iCEzSUTMpvrjnNtVlt1ZljQ0
	RYu1IR/aiAnYgYgcfWAwjy5qbG9wWvxTPNfzPx7avh0gwW89yP/1yP087LuXgozQtRSPN+aFA8X
	Zs7b0OYqBmNi8spebD5SStR7eumUdXtTv/nv6jD0ZYcT4uiNNvibmAKnkD6iOcLpzktvyhAvUlA
	uajXIzJH6ugcm9ksrBENq2m6IY89H8XiEVgmdM42q2JeGjGk6CAW5AQI1gr6aZdPXjOqeEIE3o5
	EPsK7ny+Z27aGbAJwmL2Qq2BQWv8TrRfAoS38IdeKRaXaFa/lKiedUcXEqKETZ+ySLGdte3+avd
	XNKcTlCx4MRjZSzuhuweQVGh/9E4VZCb13n81prfnpsJcvK0x6VgMfNzBWH6HyQLr5Xmhrr2ONA
	EwjzpLBRb+6uEhkWIMmzdy41/QVPw5BiV4LDA==
X-Received: by 2002:a05:600c:a10e:b0:485:3b9e:caa7 with SMTP id 5b1f17b1804b1-488fb773f38mr20831045e9.23.1776417008900;
        Fri, 17 Apr 2026 02:10:08 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:d1f3:409a:3cf5:1213? ([2001:8b0:aba:5f3c:d1f3:409a:3cf5:1213])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-488fc1c01c4sm53936005e9.9.2026.04.17.02.10.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Apr 2026 02:10:08 -0700 (PDT)
Message-ID: <026091996b0e9f36733c8933fdf6f872625be247.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH v3] genericarm64 core-image-initramfs-boot:
 remove some kernel drivers
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: mikko.rapeli@linaro.org, poky@lists.yoctoproject.org
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 17 Apr 2026 10:10:07 +0100
In-Reply-To: <20260413072715.20701-1-mikko.rapeli@linaro.org>
References: <20260413072715.20701-1-mikko.rapeli@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 17 Apr 2026 09:10:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13906

On Mon, 2026-04-13 at 10:27 +0300, Mikko Rapeli via lists.yoctoproject.org =
wrote:
> genericarm64 supports a lot of HW and thus large collection of kernel
> drivers are enabled and installed to images by default.
> Subset of the kernel drivers are needed in initramfs to mount rootfs
> from local mass storage devices. This increases initramfs size a lot
> and with new kernel config updates even more. Thus remove kernel
> drivers from initramfs image which are not needed for mounting
> rootfs from local mass storage devices. GPU, Bluetooth, NFC,
> sound, networking etc support is not needed in the initramfs.
>=20
> According to buildhistory core-image-initramfs-boot size is reduced
> from 118 to 83 Mb.
>=20
> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> ---
> =C2=A0.../images/core-image-initramfs-boot.bbappend | 28 ++++++++++++++++=
+++
> =C2=A01 file changed, 28 insertions(+)
> =C2=A0create mode 100644 meta-yocto-bsp/recipes-core/images/core-image-in=
itramfs-boot.bbappend
>=20
> v3: added PATHS_TO_REMOVE variable so that it can be customized
> =C2=A0=C2=A0=C2=A0 as suggested by Jose Quaresma <quaresma.jose@gmail.com=
>
>=20
> v2: https://lists.yoctoproject.org/g/poky/message/13894
>=20
> diff --git a/meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot=
.bbappend b/meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot.bb=
append
> new file mode 100644
> index 000000000000..2298c2f94740
> --- /dev/null
> +++ b/meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot.bbappe=
nd
> @@ -0,0 +1,28 @@
> +POSTFUNCS =3D ""
> +POSTFUNCS:genericarm64 =3D "reduce_initrd_size"
> +
> +PATHS_TO_REMOVE =3D ""
> +# these kernel modules are not needed for rootfs mount from local mass s=
torage
> +# and can be loaded from main rootfs by udev
> +PATHS_TO_REMOVE:genericarm64 =3D "\
> +=C2=A0=C2=A0=C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/=
bluetooth \
> +=C2=A0=C2=A0=C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/=
gpu \
> +=C2=A0=C2=A0=C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/=
media \
> +=C2=A0=C2=A0=C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/=
net \
> +=C2=A0=C2=A0=C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/=
nfc \
> +=C2=A0=C2=A0=C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/=
usb/gadget \
> +=C2=A0=C2=A0=C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/fs/fuse =
\
> +=C2=A0=C2=A0=C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/blue=
tooth \
> +=C2=A0=C2=A0=C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/brid=
ge \
> +=C2=A0=C2=A0=C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/netf=
ilter \
> +=C2=A0=C2=A0=C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/nfc =
\
> +=C2=A0=C2=A0=C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/sound \
> +"
> +
> +do_rootfs[postfuncs] +=3D "${POSTFUNCS}"
> +reduce_initrd_size () {
> +=C2=A0=C2=A0=C2=A0 if [ -n "${PATHS_TO_REMOVE}" ]; then
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rm -rf ${PATHS_TO_REMOVE}
> +=C2=A0=C2=A0=C2=A0 fi
> +}
> +

This is a tough one. There are some simple things like "POSTFUNCS"
being a bit generic as a name. I also worry a little this may trip up
yocto-check-layer with the added variable POSTFUNCS, even if it is
empty. I think if we're creating this as API, listing the directories:

    drivers/bluetooth \
    drivers/gpu \
    drivers/media \
    drivers/net \
    drivers/nfc \
    drivers/usb/gadget \
    fs/fuse \
    net/bluetooth \
    net/bridge \
    net/netfilter \
    net/nfc \
    sound \

and then adding the prefix would probably be cleaner too. Those are all
easier tweaks.

The bigger challenge is "generic" kernel adding all this. Ideally you
wouldn't install these things to the initramfs in the first place, then
you wouldn't need to delete them. I'm not sure how you could
detect/filter and install only the subset of modules you want, or how
that list of modules would be maintained/updated.

A different package to "kernel-modules" could be one idea, how you
construct that, again, I'm less sure. The above filter list could be
used to iterate the modules and filter by path I guess?

Now we've merged the firmware update, the builds are breaking but some
of these kinds of changes are probably too late for the release/LTS.

Perhaps we just have to increase the size of the initramfs for now :(

Cheers,

Richard




