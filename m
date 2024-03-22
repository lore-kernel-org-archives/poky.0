Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74E5AC47DD9
	for <webhook@archiver.kernel.org>; Fri, 22 Mar 2024 17:03:04 +0000 (UTC)
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
 by mx.groups.io with SMTP id smtpd.web11.460.1711126977980379709
 for <poky@lists.yoctoproject.org>;
 Fri, 22 Mar 2024 10:02:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=OlSKHZDf;
 spf=pass (domain: gmail.com, ip: 209.85.167.179, mailfrom: quaresma.jose@gmail.com)
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-3c37e87756dso1359411b6e.3
        for <poky@lists.yoctoproject.org>; Fri, 22 Mar 2024 10:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711126977; x=1711731777; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cKhT2jLDgllyxS4i36nQMw+RXKAjLA67rqMaUs0zjDo=;
        b=OlSKHZDfDoN8DW6b2DqtMLxLJfIxwUvGyqqSFu6TxTrsbVqHYz1D/ml8KvP8Bg2ZYy
         Ip8vKQdpZK9vebzlbp74t8zm0xYNAzwzLeQHxUxiGt87aYNKQXxhuYfxZzjjb4YtkjWd
         JvWcAUK1LcIioJFZ7rTceFo+BYbIXCeB/31ERDbKgsLLG8HroFv3P0YPVHnVbIABlx3u
         7/3hNzD0zD/+kc13AvV4mS8iEreZ6omKEdjCOq3kPlkOK/ncC2iAYsSnOAsODBQW36AA
         IsEc0ZE+XNl9gAhYThwp0FqjJASbZeKAqlFcZSJu+BOuL3TOr1t7BiTJ7fLkAzNe6kgI
         9wGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711126977; x=1711731777;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cKhT2jLDgllyxS4i36nQMw+RXKAjLA67rqMaUs0zjDo=;
        b=Ejaq8g59rV2qDKF4miR4TMkw+l0d3DsmA+TkbRIp9QPfeE2qIFA1S5IjHpUW8u/fNM
         IhLGLkgsn12LNCbD/pK1xw8POoOHCx9Zsy/ncXj2lsxUyU0lievSr7I4F6PlxIGYKZok
         wkBJLmV7ZgZFbrl+/kzxa9k5WcswnVMtb3HdghL2ti/UnwAWkVDlDbx3j34nJy5ajbRV
         QuNtyCrp5ST6ZB5L8GBcNmGIE2mU8FrWeMx1I0fi+PkrLNPFThwleBYEeadEYf2gc+VR
         Uw4Sd2h60zmy0JYMMsvcC1H9CAGzaZn7yF41DfZnOL7ut9pk6MVsKFD21ojkkZXopkpm
         4sBA==
X-Gm-Message-State: AOJu0YykP87h7LmVUPY80Gs9GM/1Y0nTSC+GyGnC7/S+Y0L5gvTxmEEO
	OU020wij+mg0mk/bYOiBSk9E1oPriZLilrMqvni8dQCe4JZYJ+3Y3UWcqOtXOYXe0UMHigh0jJz
	lzIoZ8iR2omwZZmzYBCcsCyVzuu8=
X-Google-Smtp-Source: AGHT+IFbM4h+8MwOOdD9zELho20WSg6JvTA+vpggYjfq5HJiC8omFZnz+K1JuykuoAsWacLmf9dVaT0JqvpSYaDuAfc=
X-Received: by 2002:a05:6808:110:b0:3c3:8633:d13 with SMTP id
 b16-20020a056808011000b003c386330d13mr287255oie.32.1711126977155; Fri, 22 Mar
 2024 10:02:57 -0700 (PDT)
MIME-Version: 1.0
References: <20240322165009.3704771-1-ross.burton@arm.com>
In-Reply-To: <20240322165009.3704771-1-ross.burton@arm.com>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Fri, 22 Mar 2024 17:02:40 +0000
Message-ID: <CANPvuRm8sFizLvd0zd9cRaedD2bJLMf4nPZaVJdcWAWEfB24YA@mail.gmail.com>
Subject: Re: [poky] [PATCH] genericarm64: add qemuboot configuration
To: Ross Burton <ross.burton@arm.com>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a39b21061442cba2"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 22 Mar 2024 17:03:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13313

--000000000000a39b21061442cba2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ross,

Ross Burton <ross.burton@arm.com> escreveu (sexta, 22/03/2024 =C3=A0(s) 16:=
50):

> From: Ross Burton <ross.burton@arm.com>
>
> A basic SystemReady IR system can be provided by qemu-system-aarch64
> and u-boot, so tell u-boot to build the qemu_arm64 machine and configure
> qemuboot to start that u-boot and search the virtio-attached wic image
> for the EFI boot partition.
>
> Currently this machine support emulated (Cortex-A76) and virtualised (KVM=
)
> execution, and virtio storage/network/console.  Display support will be
> added shortly.
>
> Note that this machine still doesn't build U-Boot by default, as a u-boot
> binary for qemu in deploy would potentially confuse users who want to
> boot on real hardware and think this u-boot is needed.  If you wish to
> use genericarm64 with runqemu, you'll need to manually bitbake u-boot.
>

Why not have a new genericarm64-qemu.conf machine which includes this
machine
and adds all the required qemu bits.
In my opinion, this would be more friendly and clear.

Jose


>
> Signed-off-by: Ross Burton <ross.burton@arm.com>
> ---
>  meta-yocto-bsp/conf/machine/genericarm64.conf | 27 +++++++++++++++++++
>  1 file changed, 27 insertions(+)
>
> diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf
> b/meta-yocto-bsp/conf/machine/genericarm64.conf
> index 7c4c76ffe0c..4afd6c3a870 100644
> --- a/meta-yocto-bsp/conf/machine/genericarm64.conf
> +++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
> @@ -29,3 +29,30 @@ EFI_PROVIDER ?=3D
> "${@bb.utils.contains("DISTRO_FEATURES", "systemd", "systemd-boo
>
>  # Try to bring up one physical serial console, or a virtualized serial
> console
>  SERIAL_CONSOLES ?=3D "115200;ttyAMA0 115200;hvc0"
> +
> +# Allow u-boot to be built for use with qemu-system-aarch64.
> +# This u-boot is _not_ suitable for use with real hardware, and the
> expectation
> +# of this machine is that real hardware comes with the firmware
> pre-loaded.
> +UBOOT_MACHINE =3D "qemu_arm64_defconfig"
> +
> +# runqemu configuration to run a genericarm64 image inside a
> qemu-system-aarch64. You will need
> +# to build u-boot explicitly.
> +IMAGE_CLASSES +=3D "qemuboot"
> +QB_SYSTEM_NAME =3D "qemu-system-aarch64"
> +# Boot the virtual machine with either an emulated Cortex-A76, or the
> host if using KVM
> +QB_MACHINE =3D "-machine virt"
> +QB_CPU =3D "-cpu cortex-a76"
> +QB_CPU_KVM =3D "-cpu host -machine gic-version=3D3"
> +QB_SMP =3D "-smp 4"
> +# Boot into U-Boot and let that scan the disk for the next step, don't
> pass any kernel or filesystem hints
> +QB_DEFAULT_BIOS =3D "u-boot.bin"
> +QB_DEFAULT_KERNEL =3D "none"
> +QB_DEFAULT_FSTYPE =3D "wic"
> +QB_FSINFO =3D "wic:no-kernel-in-fs"
> +# Mount the wic rootfs as a virtio block device
> +QB_ROOTFS_OPT =3D "-drive id=3Droot,file=3D@ROOTFS@,if=3Dnone,format=3Dr=
aw -device
> virtio-blk-pci,drive=3Droot"
> +# Virtio serial consoles
> +QB_SERIAL_OPT =3D "-device virtio-serial-pci -chardev null,id=3Dvirtcon
> -device virtconsole,chardev=3Dvirtcon"
> +QB_TCPSERIAL_OPT =3D "-device virtio-serial-pci -chardev
> socket,id=3Dvirtcon,port=3D@PORT@,host=3D127.0.0.1,nodelay=3Don -device
> virtconsole,chardev=3Dvirtcon"
> +# Virtio networking
> +QB_TAP_OPT =3D "-netdev tap,id=3Dnet0,ifname=3D@TAP@,script=3Dno,downscr=
ipt=3Dno"
> --
> 2.34.1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13312):
> https://lists.yoctoproject.org/g/poky/message/13312
> Mute This Topic: https://lists.yoctoproject.org/mt/105089249/5052612
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--000000000000a39b21061442cba2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Ross,</div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Ross Burton &lt;<a href=3D"mailto:ross.burton=
@arm.com">ross.burton@arm.com</a>&gt; escreveu (sexta, 22/03/2024 =C3=A0(s)=
 16:50):<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">From: R=
oss Burton &lt;<a href=3D"mailto:ross.burton@arm.com" target=3D"_blank">ros=
s.burton@arm.com</a>&gt;<br>
<br>
A basic SystemReady IR system can be provided by qemu-system-aarch64<br>
and u-boot, so tell u-boot to build the qemu_arm64 machine and configure<br=
>
qemuboot to start that u-boot and search the virtio-attached wic image<br>
for the EFI boot partition.<br>
<br>
Currently this machine support emulated (Cortex-A76) and virtualised (KVM)<=
br>
execution, and virtio storage/network/console.=C2=A0 Display support will b=
e<br>
added shortly.<br>
<br>
Note that this machine still doesn&#39;t build U-Boot by default, as a u-bo=
ot<br>
binary for qemu in deploy would potentially confuse users who want to<br>
boot on real hardware and think this u-boot is needed.=C2=A0 If you wish to=
<br>
use genericarm64 with runqemu, you&#39;ll need to manually bitbake u-boot.<=
br></blockquote><div><br></div><div>Why not have a new genericarm64-qemu.co=
nf=C2=A0machine which includes this machine</div><div>and adds all the requ=
ired=C2=A0qemu bits.<br>In my opinion, this would be more friendly and clea=
r.<br><br>Jose</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">
<br>
Signed-off-by: Ross Burton &lt;<a href=3D"mailto:ross.burton@arm.com" targe=
t=3D"_blank">ross.burton@arm.com</a>&gt;<br>
---<br>
=C2=A0meta-yocto-bsp/conf/machine/genericarm64.conf | 27 ++++++++++++++++++=
+<br>
=C2=A01 file changed, 27 insertions(+)<br>
<br>
diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-bsp=
/conf/machine/genericarm64.conf<br>
index 7c4c76ffe0c..4afd6c3a870 100644<br>
--- a/meta-yocto-bsp/conf/machine/genericarm64.conf<br>
+++ b/meta-yocto-bsp/conf/machine/genericarm64.conf<br>
@@ -29,3 +29,30 @@ EFI_PROVIDER ?=3D &quot;${@bb.utils.contains(&quot;DISTR=
O_FEATURES&quot;, &quot;systemd&quot;, &quot;systemd-boo<br>
<br>
=C2=A0# Try to bring up one physical serial console, or a virtualized seria=
l console<br>
=C2=A0SERIAL_CONSOLES ?=3D &quot;115200;ttyAMA0 115200;hvc0&quot;<br>
+<br>
+# Allow u-boot to be built for use with qemu-system-aarch64.<br>
+# This u-boot is _not_ suitable for use with real hardware, and the expect=
ation<br>
+# of this machine is that real hardware comes with the firmware pre-loaded=
.<br>
+UBOOT_MACHINE =3D &quot;qemu_arm64_defconfig&quot;<br>
+<br>
+# runqemu configuration to run a genericarm64 image inside a qemu-system-a=
arch64. You will need<br>
+# to build u-boot explicitly.<br>
+IMAGE_CLASSES +=3D &quot;qemuboot&quot;<br>
+QB_SYSTEM_NAME =3D &quot;qemu-system-aarch64&quot;<br>
+# Boot the virtual machine with either an emulated Cortex-A76, or the host=
 if using KVM<br>
+QB_MACHINE =3D &quot;-machine virt&quot;<br>
+QB_CPU =3D &quot;-cpu cortex-a76&quot;<br>
+QB_CPU_KVM =3D &quot;-cpu host -machine gic-version=3D3&quot;<br>
+QB_SMP =3D &quot;-smp 4&quot;<br>
+# Boot into U-Boot and let that scan the disk for the next step, don&#39;t=
 pass any kernel or filesystem hints<br>
+QB_DEFAULT_BIOS =3D &quot;u-boot.bin&quot;<br>
+QB_DEFAULT_KERNEL =3D &quot;none&quot;<br>
+QB_DEFAULT_FSTYPE =3D &quot;wic&quot;<br>
+QB_FSINFO =3D &quot;wic:no-kernel-in-fs&quot;<br>
+# Mount the wic rootfs as a virtio block device<br>
+QB_ROOTFS_OPT =3D &quot;-drive id=3Droot,file=3D@ROOTFS@,if=3Dnone,format=
=3Draw -device virtio-blk-pci,drive=3Droot&quot;<br>
+# Virtio serial consoles<br>
+QB_SERIAL_OPT =3D &quot;-device virtio-serial-pci -chardev null,id=3Dvirtc=
on -device virtconsole,chardev=3Dvirtcon&quot;<br>
+QB_TCPSERIAL_OPT =3D &quot;-device virtio-serial-pci -chardev socket,id=3D=
virtcon,port=3D@PORT@,host=3D127.0.0.1,nodelay=3Don -device virtconsole,cha=
rdev=3Dvirtcon&quot;<br>
+# Virtio networking<br>
+QB_TAP_OPT =3D &quot;-netdev tap,id=3Dnet0,ifname=3D@TAP@,script=3Dno,down=
script=3Dno&quot;<br>
-- <br>
2.34.1<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13312): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13312" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13312</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/105089249/505=
2612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/105089249/5052612</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quaresma.=
jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div></=
div>

--000000000000a39b21061442cba2--

