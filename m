Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B32AF364B0
	for <webhook@archiver.kernel.org>; Fri, 10 Apr 2026 10:48:01 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.153617.1775818075609842595
 for <poky@lists.yoctoproject.org>;
 Fri, 10 Apr 2026 03:47:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=V7XBo4bM;
 spf=pass (domain: gmail.com, ip: 209.85.208.43, mailfrom: quaresma.jose@gmail.com)
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-66c4c7e2bb7so2498939a12.0
        for <poky@lists.yoctoproject.org>; Fri, 10 Apr 2026 03:47:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775818074; cv=none;
        d=google.com; s=arc-20240605;
        b=UzrjMZYDYOrlyA1GZmj9/zQVcfynSP3vmtqkZJuu2hfqxEDqPNpA1PQa1y1xnXPjSt
         Z6N5YGgqW4gaV5rnlYi+FsesMHDzcRv9G9dxJPMU/8lYXHjoQNH7+VCTBAedg65K3cmg
         AoQcNuESaX5wNaLnTr04OJpDvx1e15khJ/l7uDVvag9sq1POOm8esNQatGzFlPO064qv
         yE7K5eJkuoLxew+7jP0uZa11zgdUEUVpTkMnHrsU+4ZaIgwP0DWwKttSAk2w58We/vrB
         S4aWXCg6Z/VQ7EJB+GLOUZUdBb88LYglls5PZ+3fd3UPn6n2uP8VxYZV9K7MCJCuJXDY
         nRpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cOt7XJVQZI1vZOW4tl6lpELpFHLLGV97ZVpaL7YYoBM=;
        fh=DZYLAzDiKOB+oTIvIDENUcLU9Ksq6hZl4qirSuwjqY0=;
        b=c8hbBBlLY1wuyXKOZykoNdJ0XdfX70OVnNaYm5rtzeoNNRYmXA5E+35/Cz35VEKfP7
         HZbjtPXgrvRSjyKZd9WVNVnSn4KLDI7rDyKMw5GRxcNZBrRSGc6EFxOc+G6l9Yd9Tk/q
         dpMhgvKOCqj5ymms/Mw0VtlDah4RAz+ZVmvPTai4ML6Qm2xszE3fkYfKL66Oq636PhUM
         WgYtbikCN12yixbmTgN8EqIuFZSDJM294+7gBTPsKVdYCo6AkEWNsQyTDoXZlyDx7T23
         Por08XvV4KagVYbQSt1dwhOrDv46tQnDKHp/ZndG6rq6he0q0aU09VjaVfEWFM7E7wmT
         Zobg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775818074; x=1776422874; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cOt7XJVQZI1vZOW4tl6lpELpFHLLGV97ZVpaL7YYoBM=;
        b=V7XBo4bMg1o5wnc3yzyUZIiuZT/ngmQj/4z/mCCz6HWHo4pui1CjAL+eA8gtTDpGxJ
         z0f4sKhNvqebffT7yLK5fQjgGkk0Uu7Vj1vrdtyJcgFF/z03Eo/W/skg5WtApOLBI2W9
         6Ma+NbpzhdH4ecTk6o96LmHLDQ84vBZGtzzcKVJ/1jmXq/sNQAcbFamJIRVEkdy7HXeq
         Z5AKDrhzfAov6QMKb4hy4XO4y5kBvQrb4wYTjyPzBDBkCMAJTC8vVoGBWtrxYhyoazdJ
         U2DSDhXJHokuP2OTJGo5snNLWdafSFvvZO8Uo4958dJ7uPhuszPivfRVl9HgSYtS3OHp
         bCgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775818074; x=1776422874;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cOt7XJVQZI1vZOW4tl6lpELpFHLLGV97ZVpaL7YYoBM=;
        b=RxY2hPeOBLs46ywiydBPdujRI4ZLroqEW6YgDXBoTijB14QicmcIm8fr2082GIBnmu
         WD6FyTcNtqe2AfwwKhzxy2FDhlDOG7ET4DGdu6GuaZHHan/V+up2Hhjgh0Uap/S9QlDW
         5AJqMKjSh1PR4NB+gGXsmyk9ZuE1pzKpVxOG0XzFK1nNa6MojySSpo5Jp5gIikaR0VLz
         XpK8zqN7xWN5HzZr6q+F2V+yEtBA0J6xW5zQghOV3Lf9aSGYDp2tzmKU/RIsES40ON6z
         Cob6bu1hGWJyqholOLNp7WrpA9LBRUcdtjOkITl7aratgIPGc1Nhx7KH0giWydSG3eZi
         YlKg==
X-Gm-Message-State: AOJu0YwKcQpMfJRnfX95LqI2bU4DQKfPocNQnmVKs+gXshVucmQqPRLt
	n1mtAzDKYycrsvzjW1m9UhusUXyxLslk23X/y4FHh0HWJlyI02QvbmgWpZDx5nLcTtT0FvSNNYl
	oZHmimtr8E/Kts9ryLFcwW03Zt1U2SFY=
X-Gm-Gg: AeBDies+2VAR4AHemQp/JW6JTc9VKKqGBRH5YFFtF7K7RwEocQUwOx2W7iBjzuL8TJ/
	S1vfnu8P1wag/ccss1MRHo6aVzWhP1z9JoLrkaeuUkK8fdd6smX3h8uIwpl2hzktp+GJpOv76rv
	Q2IDzLC3DF/LgpVmZ6btOqNYHm8zE+WeM6nwx4aYyFjStEVlwTBvaREoKMqN84P9FiklWVX0PKO
	PzRX4DZJ83REvoif7XSENpIYvI9pGcrUfrHLcSx6KigEqdnYqq+zPdjU/TrzIFa3AksfphZ7NyW
	4xlQrbeS
X-Received: by 2002:a17:907:9615:b0:b98:6984:6627 with SMTP id
 a640c23a62f3a-b9d729c0986mr163264266b.40.1775818073292; Fri, 10 Apr 2026
 03:47:53 -0700 (PDT)
MIME-Version: 1.0
References: <20260410092258.1377296-1-mikko.rapeli@linaro.org>
In-Reply-To: <20260410092258.1377296-1-mikko.rapeli@linaro.org>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Fri, 10 Apr 2026 11:47:40 +0100
X-Gm-Features: AQROBzCtwfcE9uxQV8ow07lEJGuoYUnRIaSZi56eCIMs8_wM1Tp5dInWP5NBQOY
Message-ID: <CANPvuRnoWUeahiofU6Hy63i3tbg-BuXeBhvLBZSN-whuT5NmKw@mail.gmail.com>
Subject: Re: [poky] [PATCH v2] genericarm64 core-image-initramfs-boot: remove
 some kernel drivers
To: mikko.rapeli@linaro.org
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000071c59d064f18dd7c"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 10 Apr 2026 10:48:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13895

--00000000000071c59d064f18dd7c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Mikko,

This is a good improvement to reduce the initramfs.

Mikko Rapeli via lists.yoctoproject.org <mikko.rapeli=3D
linaro.org@lists.yoctoproject.org> escreveu (sexta, 10/04/2026 =C3=A0(s) 10=
:23):

> genericarm64 supports a lot of HW and thus large collection of kernel
> drivers are enabled and installed to images by default.
> Subset of the kernel drivers are needed in initramfs to mount rootfs
> from local mass storage devices. This increases initramfs size a lot
> and with new kernel config updates even more. Thus remove kernel
> drivers from initramfs image which are not needed for mounting
> rootfs from local mass storage devices. GPU, Bluetooth, NFC,
> sound, networking etc support is not needed in the initramfs.
>
> According to buildhistory core-image-initramfs-boot size is reduced
> from 118 to 83 Mb.
>
> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> ---
>  .../images/core-image-initramfs-boot.bbappend | 22 +++++++++++++++++++
>  1 file changed, 22 insertions(+)
>  create mode 100644
> meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot.bbappend
>
> diff --git
> a/meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot.bbappend
> b/meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot.bbappend
> new file mode 100644
> index 000000000000..58d17047fc4c
> --- /dev/null
> +++ b/meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot.bbappe=
nd
> @@ -0,0 +1,22 @@
> +POSTFUNCS =3D ""
> +POSTFUNCS:genericarm64 =3D "reduce_initrd_size"
> +
> +do_rootfs[postfuncs] +=3D "${POSTFUNCS}"
> +reduce_initrd_size () {
> +    # these kernel modules are not needed for rootfs mount from local
> mass storage
> +    # and can be loaded from main rootfs by udev
> +    rm -rf \
> +        ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/bluetooth \
> +        ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/gpu \
> +        ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/media \
> +        ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/net \
> +        ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/nfc \
> +        ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/drivers/usb/gadget =
\
> +        ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/fs/fuse \
> +        ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/bluetooth \
> +        ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/bridge \
> +        ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/netfilter \
> +        ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/net/nfc \
> +        ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/sound
>

I think it would be better if this were defined in a variable so it could
be easily customized if needed.

KERNEL_MODULES_PATHS_TO_REMOVE =3D ""
KERNEL_MODULES_PATHS_TO_REMOVE:genericarm64 =3D " \
  drivers/bluetooth \
  drivers/gpu \
  ... \
"

With something like that it can be looped in the reduce_initrd_size
function.

Jose

+}
> +
> --
> 2.34.1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13894):
> https://lists.yoctoproject.org/g/poky/message/13894
> Mute This Topic: https://lists.yoctoproject.org/mt/118756784/5052612
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--00000000000071c59d064f18dd7c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Mikko,</div><div><br></div>This is a g=
ood=C2=A0improvement=C2=A0to reduce the initramfs.<div><br><div class=3D"gm=
ail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">Mikk=
o Rapeli via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.o=
rg</a> &lt;mikko.rapeli=3D<a href=3D"mailto:linaro.org@lists.yoctoproject.o=
rg">linaro.org@lists.yoctoproject.org</a>&gt; escreveu (sexta, 10/04/2026 =
=C3=A0(s) 10:23):<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">genericarm64 supports a lot of HW and thus large collection of kernel<br>
drivers are enabled and installed to images by default.<br>
Subset of the kernel drivers are needed in initramfs to mount rootfs<br>
from local mass storage devices. This increases initramfs size a lot<br>
and with new kernel config updates even more. Thus remove kernel<br>
drivers from initramfs image which are not needed for mounting<br>
rootfs from local mass storage devices. GPU, Bluetooth, NFC,<br>
sound, networking etc support is not needed in the initramfs.<br>
<br>
According to buildhistory core-image-initramfs-boot size is reduced<br>
from 118 to 83 Mb.<br>
<br>
Signed-off-by: Mikko Rapeli &lt;<a href=3D"mailto:mikko.rapeli@linaro.org" =
target=3D"_blank">mikko.rapeli@linaro.org</a>&gt;<br>
---<br>
=C2=A0.../images/core-image-initramfs-boot.bbappend | 22 ++++++++++++++++++=
+<br>
=C2=A01 file changed, 22 insertions(+)<br>
=C2=A0create mode 100644 meta-yocto-bsp/recipes-core/images/core-image-init=
ramfs-boot.bbappend<br>
<br>
diff --git a/meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot.b=
bappend b/meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot.bbap=
pend<br>
new file mode 100644<br>
index 000000000000..58d17047fc4c<br>
--- /dev/null<br>
+++ b/meta-yocto-bsp/recipes-core/images/core-image-initramfs-boot.bbappend=
<br>
@@ -0,0 +1,22 @@<br>
+POSTFUNCS =3D &quot;&quot;<br>
+POSTFUNCS:genericarm64 =3D &quot;reduce_initrd_size&quot;<br>
+<br>
+do_rootfs[postfuncs] +=3D &quot;${POSTFUNCS}&quot;<br>
+reduce_initrd_size () {<br>
+=C2=A0 =C2=A0 # these kernel modules are not needed for rootfs mount from =
local mass storage<br>
+=C2=A0 =C2=A0 # and can be loaded from main rootfs by udev<br>
+=C2=A0 =C2=A0 rm -rf \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/d=
rivers/bluetooth \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/d=
rivers/gpu \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/d=
rivers/media \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/d=
rivers/net \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/d=
rivers/nfc \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/d=
rivers/usb/gadget \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/f=
s/fuse \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/n=
et/bluetooth \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/n=
et/bridge \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/n=
et/netfilter \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/n=
et/nfc \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${WORKDIR}/rootfs/${libdir}/modules/*/kernel/s=
ound<br></blockquote><div><br></div><div>I think it would be better if this=
 were defined in a variable so it could be easily customized if needed.</di=
v><div><br>KERNEL_MODULES_PATHS_TO_REMOVE =3D &quot;&quot;</div><div>KERNEL=
_MODULES_PATHS_TO_REMOVE:genericarm64 =3D &quot; \</div><div>=C2=A0 drivers=
/bluetooth \</div><div>=C2=A0 drivers/gpu \</div><div>=C2=A0 ... \</div><di=
v>&quot;</div><div><br></div><div>With something=C2=A0like that it can be l=
ooped in the reduce_initrd_size function.<br><br></div><div>Jose<br><br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">
+}<br>
+<br>
-- <br>
2.34.1<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13894): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13894" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13894</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/118756784/505=
2612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/118756784/5052612</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quaresma.=
jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature"><div dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></=
div></div></div></div>

--00000000000071c59d064f18dd7c--

