Return-Path: <sebastian.krahl@lacon.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 866CDC7EE2A
	for <webhook@archiver.kernel.org>; Wed, 25 Jun 2025 14:23:10 +0000 (UTC)
Subject: Generate Scarthgap genericx86-64 machine booting pcbios
To: poky@lists.yoctoproject.org
From: "Sebastian" <sebastian.krahl@lacon.de>
X-Originating-Location: Berlin, State of Berlin, DE (79.140.117.187)
X-Originating-Platform: Windows Chrome 137
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 25 Jun 2025 07:23:04 -0700
Message-ID: <OPvA.1750861384863525389.Fzzg@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="rHtM9bL6eEEyVv7vKP0v"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 25 Jun 2025 14:23:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13679

--rHtM9bL6eEEyVv7vKP0v
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi community,

I've looked around how to get the example meta-yocto-bsp running on generic=
x86-64. By creating the default image it spits out the efi version which bo=
ots up quick and fine. In my target application I have to support the non e=
fi world too. So I tried to switch by feeding the appended wks file to crea=
te the pcbios version:

part /boot --source bootimg-pcbios --ondisk sda --label msdos --active --al=
ign 1024 --use-uuid
part / --source rootfs --ondisk sda --fstype=3Dext4 --label platform --alig=
n 1024 --use-uuid
part swap --ondisk sda --size 44 --label swap1 --fstype=3Dswap
bootloader --ptable gpt --timeout=3D5 --append=3D"rootfstype=3Dext4 console=
=3Dtty0"

Problem is: it stops by Kernel panic - not syncing: Invalid configuration f=
rom end user prevents continuing
Hardware name: Deault string Default string/Default string, BIOS 5.13 01/18=
/2024

Unfortunately there is not more I can read.

Can anyone explain me where I missed a step?

Regards,

Sebastian

--rHtM9bL6eEEyVv7vKP0v
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi community,</div>
<div>&nbsp;</div>
<div>I've looked around how to get the example meta-yocto-bsp running on ge=
nericx86-64. By creating the default image it spits out the efi version whi=
ch boots up quick and fine. In my target application I have to support the =
non efi world too. So I tried to switch by feeding the appended wks file to=
 create the pcbios version:</div>
<div>&nbsp;</div>
<div>
<div><span style=3D"font-family: 'courier new', courier;">part /boot --sour=
ce bootimg-pcbios --ondisk sda --label msdos --active --align 1024 --use-uu=
id</span><br /><span style=3D"font-family: 'courier new', courier;">part / =
--source rootfs --ondisk sda --fstype=3Dext4 --label platform --align 1024 =
--use-uuid</span><br /><span style=3D"font-family: 'courier new', courier;"=
>part swap --ondisk sda --size 44 --label swap1 --fstype=3Dswap</span></div=
>
<div><span style=3D"font-family: 'courier new', courier;">bootloader --ptab=
le gpt --timeout=3D5 --append=3D"rootfstype=3Dext4 console=3Dtty0"</span></=
div>
<div>&nbsp;</div>
<div>Problem is: it stops by Kernel panic - not syncing: Invalid configurat=
ion from end user prevents continuing</div>
<div>Hardware name: Deault string Default string/Default string, BIOS 5.13 =
01/18/2024</div>
<div>&nbsp;</div>
<div>Unfortunately there is not more I can read.</div>
<div>&nbsp;</div>
<div>Can anyone explain me where I missed a step?</div>
<div>&nbsp;</div>
<div>Regards,</div>
<div>&nbsp;</div>
<div>Sebastian</div>
</div>

--rHtM9bL6eEEyVv7vKP0v--

