Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D447C04FFE
	for <webhook@archiver.kernel.org>; Mon, 20 May 2024 15:37:57 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.64246.1716219471076963376
 for <poky@lists.yoctoproject.org>;
 Mon, 20 May 2024 08:37:51 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F18E4DA7
	for <poky@lists.yoctoproject.org>; Mon, 20 May 2024 08:38:13 -0700 (PDT)
Received: from cesw-amp-gbt-1s-m12830-04.oss.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 791DF3F762
	for <poky@lists.yoctoproject.org>; Mon, 20 May 2024 08:37:49 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: poky@lists.yoctoproject.org
Subject: [PATCH][meta-yocto-bsp] genericarm64: depend on u-boot in testimage
Date: Mon, 20 May 2024 15:37:45 +0000
Message-Id: <20240520153745.2064739-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 20 May 2024 15:37:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13358

genericarm64 supports runqemu, so testimage should work. However, out of
the box it does not:

runqemu - ERROR - BIOS .../tmp/deploy/images/genericarm64/u-boot.bin not =
found

That is because we make the user explicitly build the qemu-targetting u-b=
oot
to avoid the confusing situation where they have real hardware but the
deploy directory contains a u-boot for qemu.

In automated testing situations, however, we can be a bit more helpful
and make testimage depend on u-boot. This will lead to u-boot binaries
being in deploy, but at this point the user is already running the images
inside a qemu.

Reported-by: James McGregor <James.McGregor2@arm.com>
Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 meta-yocto-bsp/conf/machine/genericarm64.conf | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-b=
sp/conf/machine/genericarm64.conf
index 4fa9395b31b..1cb5e46dcf7 100644
--- a/meta-yocto-bsp/conf/machine/genericarm64.conf
+++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
@@ -58,3 +58,6 @@ QB_SERIAL_OPT =3D "-device virtio-serial-pci -chardev n=
ull,id=3Dvirtcon -device virt
 QB_TCPSERIAL_OPT =3D "-device virtio-serial-pci -chardev socket,id=3Dvir=
tcon,port=3D@PORT@,host=3D127.0.0.1,nodelay=3Don -device virtconsole,char=
dev=3Dvirtcon"
 # Virtio networking
 QB_TAP_OPT =3D "-netdev tap,id=3Dnet0,ifname=3D@TAP@,script=3Dno,downscr=
ipt=3Dno"
+
+# If we're running testimage then we're in a qemu, so ensure u-boot is b=
uild
+TESTIMAGEDEPENDS:append =3D " u-boot:do_deploy"
--=20
2.34.1


