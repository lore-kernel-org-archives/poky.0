Return-Path: <jjvazha@yahoo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F88CFC5F6
	for <webhook@archiver.kernel.org>; Thu, 10 Oct 2024 18:54:52 +0000 (UTC)
Subject: ln -rs throws suntax error in do_populate_sysroot:append()
To: poky@lists.yoctoproject.org
From: "Jojan" <jjvazha@yahoo.com>
X-Originating-Location: Irvine, California, US (192.19.222.250)
X-Originating-Platform: Linux Firefox 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 10 Oct 2024 11:54:45 -0700
Message-ID: <LpIP.1728586485106072829.hLnO@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="lwzD5bwne5YiHxLjAkEs"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 10 Oct 2024 18:54:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13452

--lwzD5bwne5YiHxLjAkEs
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have a sysroot provide glibc-external
sysroot_stage_dirs function does not stage links=C2=A0 correctly
in my do_install append I added ln -rs ${D}${libdir} ${D}${prefix_native}/l=
ib64 =C2=A0 link of lib64 to /usr/lib
lib64 is also added in FILES:${PN}

But when do_populate_sysroot calls the sysroot_stage_dirs()=C2=A0 , that po=
pulates everything defined in the SYSROOT_DIRS
sysroot_stage_dirs() {
from=3D"$1"
to=3D"$2"

for dir in =C2=A0 =C2=A0 =C2=A0/usr/include =C2=A0 =C2=A0 /usr/lib =C2=A0 =
=C2=A0 /lib =C2=A0 =C2=A0 /lib =C2=A0 =C2=A0 /usr/share =C2=A0 =C2=A0 /sysr=
oot-only ; do

sysroot_stage_dir "$from$dir" "$to$dir"
done
}

I added=C2=A0 an append function like this so that lib64 is a softlink to l=
ib . The stage
do_populate_sysroot:append() {
dstdir =3D d.getVar('SYSROOT_DESTDIR')
# =C2=A0 =C2=A0bb.warn("DEST DIR s '%s'" % (dstdir))
ln -s -r ${dstdir}${libdir} ${SYSROOT_DESTDIR}${prefix_native}/lib64
}

But this cause a syntax error
ln -s -r ${dstdir}${libdir} ${SYSROOT_DESTDIR}${prefix_native}/lib64
^
SyntaxError: invalid syntax
ERROR: Parsing halted due to errors, see error messages above

Adding "SYSROOT_DIRS +=3D =C2=A0 ${prefix_native}/lib64 \ "=C2=A0 does not =
work , becuase it only created empty directory . Any idea why ln command th=
rows syntax error in do_populate_sysroot:append()

--lwzD5bwne5YiHxLjAkEs
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I have a sysroot provide glibc-external</div>
<div>sysroot_stage_dirs function does not stage links&nbsp; correctly</div>
<div>in my do_install append I added ln -rs ${D}${libdir} ${D}${prefix_nati=
ve}/lib64 &nbsp; link of lib64 to /usr/lib</div>
<div>lib64 is also added in FILES:${PN}</div>
<div>&nbsp;</div>
<div>But when do_populate_sysroot calls the sysroot_stage_dirs()&nbsp; , th=
at populates everything defined in the SYSROOT_DIRS</div>
<div>sysroot_stage_dirs() {<br />&nbsp; &nbsp; &nbsp; &nbsp; from=3D"$1"<br=
 />&nbsp; &nbsp; &nbsp; &nbsp; to=3D"$2"<br /><br />&nbsp; &nbsp; &nbsp; &n=
bsp;<span style=3D"background-color: #ffff00;"> for dir in &nbsp; &nbsp; &n=
bsp;/usr/include &nbsp; &nbsp; /usr/lib &nbsp; &nbsp; /lib &nbsp; &nbsp; /l=
ib &nbsp; &nbsp; /usr/share &nbsp; &nbsp; /sysroot-only ; do&nbsp; </span><=
br />&nbsp; <br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; s=
ysroot_stage_dir "$from$dir" "$to$dir"<br />&nbsp; &nbsp; &nbsp; &nbsp; don=
e</div>
<div>}</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>I added&nbsp; an append function like this so that lib64 is a softlink=
 to lib . The stage</div>
<div>do_populate_sysroot:append() {<br />&nbsp; &nbsp; dstdir =3D d.getVar(=
'SYSROOT_DESTDIR')<br /># &nbsp; &nbsp;bb.warn("DEST DIR s '%s'" % (dstdir)=
)<br />&nbsp; &nbsp; ln -s -r ${dstdir}${libdir} ${SYSROOT_DESTDIR}${prefix=
_native}/lib64<br />}</div>
<div>&nbsp;</div>
<div>But this cause a syntax error</div>
<div>
<div>&nbsp; &nbsp; ln -s -r ${dstdir}${libdir} ${SYSROOT_DESTDIR}${prefix_n=
ative}/lib64<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^<br />Sy=
ntaxError: invalid syntax</div>
<div>ERROR: Parsing halted due to errors, see error messages above</div>
<div>&nbsp;</div>
<div>Adding "SYSROOT_DIRS +=3D &nbsp; ${prefix_native}/lib64 \ "&nbsp; does=
 not work , becuase it only created empty directory . Any idea why ln comma=
nd throws syntax error in do_populate_sysroot:append()</div>
</div>
<div>&nbsp;</div>

--lwzD5bwne5YiHxLjAkEs--

