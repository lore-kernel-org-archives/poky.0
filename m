Return-Path: <antonin.godard@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33F39C77B7C
	for <webhook@archiver.kernel.org>; Wed, 25 Jun 2025 06:56:38 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web10.9461.1750834589586485411
 for <poky@lists.yoctoproject.org>;
 Tue, 24 Jun 2025 23:56:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=B8aBrJu9;
 spf=pass (domain: bootlin.com, ip: 217.70.183.200, mailfrom: antonin.godard@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 6456244360;
	Wed, 25 Jun 2025 06:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1750834587;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PNRwgKcLY/GcLnEUDTOw+pa5vqfeP0fZ8rkAJJEMSo0=;
	b=B8aBrJu9v0ZeHW7F0HoeDHk4ToTLE9ZpDMBx4RFiQDHy1gmsiegkPpM8a1MqqFBSELWhnw
	JVcjBLqptmSeDktzBCl0XO2PvIRqrZaKAJMRsEZsGZA+03MHVjAiOMEUmu4ITsYLcBl8Zu
	d0DZpJRpX4Fj+FgE1sC7/V+qccdIfegM9UlCC6ILvCHVo9k1CpK+zy1w/0aqiQeR4iH9EY
	0VW68Q76WVa7itSWExakczgIAMDXICpDMqG6SK/TtOfaiju9FtB+T0AxdB/0WXRKtdcXFP
	E5AecSqnPw60eCzL7Qj8XqLhhUmpG/pZlGLnOaLHRQ4RvY09O2/xTqvWoFW4vg==
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Wed, 25 Jun 2025 08:56:26 +0200
Message-Id: <DAVF299ZN27S.1C7D9FG8EU5MT@bootlin.com>
Subject: Re: [poky] [PATCH 4/4] oe-selftest: add a beaglebone-yocto fitimage
 Qemu test
From: "Antonin Godard" <antonin.godard@bootlin.com>
To: <adrian.freihofer@siemens.com>, <poky@lists.yoctoproject.org>
References: <20250621162642.804605-1-adrian.freihofer@siemens.com>
 <20250621162642.804605-5-adrian.freihofer@siemens.com>
In-Reply-To: <20250621162642.804605-5-adrian.freihofer@siemens.com>
X-GND-State: clean
X-GND-Score: 0
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddvgddvvddutdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfitefpfffkpdcuggftfghnshhusghstghrihgsvgenuceurghilhhouhhtmecufedtudenucenucfjughrpegggfgtfffkuffhvfhfjgesthhqredttddtjeenucfhrhhomhepfdetnhhtohhnihhnucfiohgurghrugdfuceorghnthhonhhinhdrghhouggrrhgusegsohhothhlihhnrdgtohhmqeenucggtffrrghtthgvrhhnpefgtdduhfevjeelheegtdevuddtgfeftedvfeduieeuueeljeefteekleehgeeugeenucffohhmrghinhephihotghtohhprhhojhgvtghtrdhorhhgpdhsvghlfhhtvghsthdrtggrshgvpdgsohhothhlihhnrdgtohhmnecukfhppedvrgdtudemtggsudegmeehheeimeejrgdttdemfegtkedumegvsggrjeemudgskegsmegrhegtleenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpedvrgdtudemtggsudegmeehheeimeejrgdttdemfegtkedumegvsggrjeemudgskegsmegrhegtledphhgvlhhopehlohgtrghlhhhoshhtpdhmrghilhhfrhhomheprghnthhonhhinhdrghhouggrrhgusegsohhothhlihhnrdgtohhmpdhnsggprhgtphhtthhopedvpdhrtghpthhtoheprggurhhirghnrdhfrhgvihhhohhfvghrsehsihgvmhgvnhhsrdgtohhmpdhrtghpthhtohepphhokhihsehlihhsthhsrdihohgtthhophhrohhjvggtt
 hdrohhrgh
X-GND-Sasl: antonin.godard@bootlin.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 25 Jun 2025 06:56:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13677

On Sat Jun 21, 2025 at 6:26 PM CEST, Adrian Freihofer via lists.yoctoprojec=
t.org wrote:
> From: Adrian Freihofer <adrian.freihofer@siemens.com>
>
> The kernel configuration of the beaglebone-yocto MACHINE supports booting
> on real hardware as well as in Qemu. Add an oe-selftest which tests that
> booting in Qemu is possible even when the kernel is a FIT image kernel
> with a RAM disk.
> Since Qemu does not support FIT images, Qemu boots the zImage in direct
> kernel mode. This works with or without initramfs.
>
> Signed-off-by: Adrian Freihofer <adrian.freihofer@siemens.com>
> ---
>  .../selftest/cases/beaglebone_yocto_qemu.py   | 39 +++++++++++++++++++
>  1 file changed, 39 insertions(+)
>  create mode 100644 meta-yocto-bsp/lib/oeqa/selftest/cases/beaglebone_yoc=
to_qemu.py
>
> diff --git a/meta-yocto-bsp/lib/oeqa/selftest/cases/beaglebone_yocto_qemu=
.py b/meta-yocto-bsp/lib/oeqa/selftest/cases/beaglebone_yocto_qemu.py
> new file mode 100644
> index 00000000000..aeae431fd2c
> --- /dev/null
> +++ b/meta-yocto-bsp/lib/oeqa/selftest/cases/beaglebone_yocto_qemu.py
> @@ -0,0 +1,39 @@
> +
> +from oeqa.selftest.case import OESelftestTestCase
> +from oeqa.utils.commands import runCmd, bitbake, runqemu, runqemu_check_=
taps
> +from oeqa.core.decorator import OETestTag
> +
> +
> +class BeagleboneYoctoQemuTests(OESelftestTestCase):
> +
> +    @OETestTag("runqemu")
> +    def test_fit_image_initramfs_qemu(self):
> +        """
> +        Summary:     Verify building an image including a FIT image kern=
el and booting in Qemu works.
> +        Expected:    1. core-image-minimal including a FIT image in /boo=
t gets built
> +                     2. Qemu can boot the zImage and initramfs with dire=
ct kernel boot
> +                        since Qemu does not support FIT images
> +        """
> +
> +        config =3D """
> +DISTRO =3D "poky"
> +MACHINE =3D "beaglebone-yocto"
> +INITRAMFS_IMAGE =3D "core-image-initramfs-boot"
> +FIT_IMAGE_KERNEL =3D "1"
> +# Do not override kernel command line network configuration
> +BAD_RECOMMENDATIONS:append:pn-oe-selftest-image =3D " init-ifupdown"
> +"""
> +        self.write_config(config)
> +        if not runqemu_check_taps():
> +            self.skipTest('No tap devices found - you must set up tap de=
vices with scripts/runqemu-gen-tapdevs before running this test')
> +        testimage =3D "oe-selftest-image"
> +        bitbake(testimage)
> +        # Boot the image
> +        with runqemu(testimage) as qemu:
> +            # Run a test command to see if it was installed properly
> +            sshargs =3D '-o UserKnownHostsFile=3D/dev/null -o StrictHost=
KeyChecking=3Dno'
> +            result =3D runCmd('ssh %s root@%s %s' % (sshargs, qemu.ip, "=
ls -1 /boot"))
> +            self.logger.debug("ls -1 /boot: %s" % str(result.output))
> +            boot_files =3D result.output.splitlines()
> +            self.assertIn("fitImage", boot_files)
> +            self.assertNotIn("zImage", boot_files)

Hi Adrian,

I think this is causing the following issue on the autobuilder:

ERROR: Nothing RPROVIDES 'ssh-pregen-hostkeys' (but /srv/pokybuild/yocto-wo=
rker/oe-selftest-debian/build/build-st-730917/meta-selftest/recipes-test/im=
ages/oe-selftest-image.bb RDEPENDS on or otherwise requires it)
ssh-pregen-hostkeys was skipped: incompatible with machine beaglebone-yocto=
 (not in COMPATIBLE_MACHINE)

Can you look into it?

Thanks,
Antonin

--=20
Antonin Godard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


