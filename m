Return-Path: <jdowd@slashdevslashnull.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9560C369CB
	for <webhook@archiver.kernel.org>; Wed, 23 Apr 2025 16:51:28 +0000 (UTC)
Subject: bitbake failure building u-boot-qoriq for a T1024RDB machine
To: poky@lists.yoctoproject.org
From: "John" <jdowd@slashdevslashnull.org>
X-Originating-Location: Montreal, Quebec, CA (165.225.212.245)
X-Originating-Platform: Windows Chrome 135
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 23 Apr 2025 09:51:19 -0700
Message-ID: <CCGz.1745427079956690920.VgLs@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="owA1ponCRkBLdFyVrMQO"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 23 Apr 2025 16:51:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13605

--owA1ponCRkBLdFyVrMQO
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm moving the customer's older yocto dunfell release of their image to the=
 scarthgap version. It's running on an older T1024RDB board (powerpc). The =
older version of u-boot was 2019 and now it's 2024. I've managed to build m=
ost of the image (linux-qoriq_6.6 is building) but the u-boot-qoriq fails w=
ith the following errors:

>=20
> | make[1]: ***
> [/home/blart/workspace/yocto-upgrade/build_blart/tmp/work/t1024rdb_64b-fs=
l-linux/u-boot-qoriq/2024.04++fslgit/git/Makefile:2016:
> scripts_dtc] Error 2
> | make[1]: Leaving directory
> '/home/blart/workspace/yocto-upgrade/build_blart/tmp/work/t1024rdb_64b-fs=
l-linux/u-boot-qoriq/2024.04++fslgit/build/T1024RDB_config'
>=20
> | make: *** [Makefile:177: sub-make] Error 2
> | make: Leaving directory
> '/home/blart/workspace/yocto-upgrade/build_blart/tmp/work/t1024rdb_64b-fs=
l-linux/u-boot-qoriq/2024.04++fslgit/git'
>=20
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
>=20

Not sure how to proceed. I get no more output than that and console in the =
"devshell" is not a git repo and is unbuildable even after it is configured=
. (Missing compile switches).

This means I have no way of running the script_dtc script and see the error=
. Yocto has made it completely hidden. Is there any advice as to how to pro=
ceed here?

Cheers!!

--owA1ponCRkBLdFyVrMQO
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I'm moving the customer's older yocto dunfell release of their image t=
o the scarthgap version. It's running on an older T1024RDB board (powerpc).=
 The older version of u-boot was 2019 and now it's 2024. I've managed to bu=
ild most of the image (linux-qoriq_6.6 is building) but the u-boot-qoriq fa=
ils with the following errors:</div>
<blockquote>
<div>| make[1]: *** [/home/blart/workspace/yocto-upgrade/build_blart/tmp/wo=
rk/t1024rdb_64b-fsl-linux/u-boot-qoriq/2024.04++fslgit/git/Makefile:2016: s=
cripts_dtc] Error 2<br />| make[1]: Leaving directory '/home/blart/workspac=
e/yocto-upgrade/build_blart/tmp/work/t1024rdb_64b-fsl-linux/u-boot-qoriq/20=
24.04++fslgit/build/T1024RDB_config'<br />| make: *** [Makefile:177: sub-ma=
ke] Error 2<br />| make: Leaving directory '/home/blart/workspace/yocto-upg=
rade/build_blart/tmp/work/t1024rdb_64b-fsl-linux/u-boot-qoriq/2024.04++fslg=
it/git'<br />| ERROR: oe_runmake failed<br />| WARNING: exit code 1 from a =
shell command.</div>
</blockquote>
<div>Not sure how to proceed. I get no more output than that and console in=
 the "devshell" is not a git repo and is unbuildable even after it is confi=
gured. (Missing compile switches).</div>
<div>&nbsp;</div>
<div>This means I have no way of running the script_dtc script and see the =
error. Yocto has made it completely hidden. Is there any advice as to how t=
o proceed here?</div>
<div>&nbsp;</div>
<div>Cheers!!</div>
<div>&nbsp;</div>

--owA1ponCRkBLdFyVrMQO--

