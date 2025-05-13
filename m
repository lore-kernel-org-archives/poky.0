Return-Path: <jdowd@slashdevslashnull.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7794C3ABC9
	for <webhook@archiver.kernel.org>; Tue, 13 May 2025 19:51:24 +0000 (UTC)
Subject: dts error just at the end of make for u-boot (Scarthgap)
To: poky@lists.yoctoproject.org
From: "John" <jdowd@slashdevslashnull.org>
X-Originating-Location: Toronto, Ontario, CA (165.225.208.234)
X-Originating-Platform: Windows Chrome 136
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 13 May 2025 12:51:18 -0700
Message-ID: <g7A8.1747165878348660261.lffv@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="rJStHoK1P5Oral3u8k5O"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 13 May 2025 19:51:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13616

--rJStHoK1P5Oral3u8k5O
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have this snip of the log...

>=20
> | make[1]: Leaving directory
> '/home/aspire/workspace/yocto-upgrade/build_aspire/tmp/work/t1024rdb_64b-=
fsl-linux/u-boot-qoriq/2024.04++fslgit/build/T1024RDB_config'
>=20
> | make: Leaving directory
> '/home/aspire/workspace/yocto-upgrade/build_aspire/tmp/work/t1024rdb_64b-=
fsl-linux/u-boot-qoriq/2024.04++fslgit/git'
>=20
> | cp: cannot stat
> '/home/aspire/workspace/yocto-upgrade/build_aspire/tmp/work/t1024rdb_64b-=
fsl-linux/u-boot-qoriq/2024.04++fslgit/build/T1024RDB_config/u-boot-with-dt=
b.bin':
> No such file or directory
> | WARNING: exit code 1 from a shell command.
>=20
>=20

So I have an error while the system is trying to copy a device tree binary.=
 That name of the file is not in our recipes. So it has to be derived from =
the bbclass file, correct? Also, this is at the end of the make process and=
 I do not have a "do_compile()" function in the recipe so this again has to=
 come from the bbclass files... correct?

I've started to look a the class files and I can see some have the bbdebug(=
) and such but I see no output. How would I turn this on? I already have BB=
DEBUG =3D 4 in my local.conf file.

Cheers!!

--rJStHoK1P5Oral3u8k5O
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I have this snip of the log...</div>
<blockquote>
<div>| make[1]: Leaving directory '/home/aspire/workspace/yocto-upgrade/bui=
ld_aspire/tmp/work/t1024rdb_64b-fsl-linux/u-boot-qoriq/2024.04++fslgit/buil=
d/T1024RDB_config'<br />| make: Leaving directory '/home/aspire/workspace/y=
octo-upgrade/build_aspire/tmp/work/t1024rdb_64b-fsl-linux/u-boot-qoriq/2024=
.04++fslgit/git'<br />| <span style=3D"text-decoration: underline;">cp: can=
not stat '/home/aspire/workspace/yocto-upgrade/build_aspire/tmp/work/t1024r=
db_64b-fsl-linux/u-boot-qoriq/2024.04++fslgit/build/T1024RDB_config/u-boot-=
with-dtb.bin': No such file or directory</span><br />| WARNING: exit code 1=
 from a shell command.</div>
<div>&nbsp;</div>
</blockquote>
<div>So I have an error while the system is trying to copy a device tree bi=
nary. That name of the file is not in our recipes. So it has to be derived =
from the bbclass file, correct? Also, this is at the end of the make proces=
s and I do not have a "do_compile()" function in the recipe so this again h=
as to come from the bbclass files... correct?</div>
<div>&nbsp;</div>
<div>I've started to look a the class files and I can see some have the bbd=
ebug() and such but I see no output. How would I turn this on? I already ha=
ve BBDEBUG =3D 4 in my local.conf file.</div>
<div>&nbsp;</div>
<div>Cheers!!</div>
<div>&nbsp;</div>

--rJStHoK1P5Oral3u8k5O--

