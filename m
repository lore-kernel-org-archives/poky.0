Return-Path: <cahoshing@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5A0364C80FB2
	for <poky@yoctoproject.org>; Thu,  5 May 2011 06:25:28 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pwi16 with SMTP id 16so1355247pwi.35
	for <poky@yoctoproject.org>; Thu, 05 May 2011 04:25:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=kV4tMUgEqvgxb08DYXw0wBEVNEi+Dvky7fT5FAsKp6g=;
	b=XfZ1m/3j7YyD9vsM7nIMlRHqaZVkJcQNywo3BoK+CLb1a7uRAlG27/zlf2Lr16wl5E
	qy+0riPOOwWTtgfDQznhCZufMuGJNaW/upeV6Kz7ooJKPeV3aEu2mrX9rloFg+z8hOCj
	oEFpZrB5nJuQVvIKitL8fCAcjw6x4taK26LXE=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=BRRpdMDXdChxPwtUs0j9xXGiKxTzLGQuUGHrXnpZBjGCuI66s7XKuPEj87cGQsZdRB
	P8weRhaWLAYxzi7ZZbfGVP3JFOubmIkjVwYGBHICcIXenYmxRfgbIq07CqB1MZk099Yz
	hN6dUQLQdB9Jx9Ia8wlv2Y593xU6I/5sDYwto=
MIME-Version: 1.0
Received: by 10.142.48.1 with SMTP id v1mr1191255wfv.203.1304594727750; Thu,
	05 May 2011 04:25:27 -0700 (PDT)
Received: by 10.143.158.19 with HTTP; Thu, 5 May 2011 04:25:27 -0700 (PDT)
Date: Thu, 5 May 2011 16:55:27 +0530
Message-ID: <BANLkTim-yTAu5cDewMwawEM_FeL_xkNiVA@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: poky@yoctoproject.org
Subject: Error in pulling cups package
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 05 May 2011 11:25:28 -0000
Content-Type: multipart/alternative; boundary=000e0cd215b652cbff04a285a123

--000e0cd215b652cbff04a285a123
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am trying to port Poky to the "sandybridge platform"  for "sugarbay"
machine.
I am getting error for cups package following is the error log:

Processing google-chrome...
| Processing bzip2...
| Processing cups...
| error: LOOP:
| error: removing busybox-1.17.3-r2.snb "Requires(hint): busybox-udhcpc"
from tsort relations.
| error: removing busybox-udhcpc-1.17.3-r2.snb "Requires(post): /bin/sh"
from tsort relations.
| error: LOOP:
| error: removing nss-dev-3.12.9-r2.snb "Requires: nss = 3.12.9-r2" from
tsort relations.
| error: removing nss-3.12.9-r2.snb "Requires: nss-dev >= 3.12.9" from tsort
relations.
| error: LOOP:
| error: removing nspr-4.8.7-r0.snb "Requires: nspr-dev >= 4.8.7" from tsort
relations.
| error: removing nspr-dev-4.8.7-r0.snb "Requires: nspr = 4.8.7-r0" from
tsort relations.
| error: LOOP:
| error: removing busybox-1.17.3-r2.snb "Requires(hint): busybox-syslog"
from tsort relations.
| error: removing busybox-syslog-1.17.3-r2.snb "Requires(post): /bin/sh"
from tsort relations.
| error: LOOP:
| error: removing libudev0-164-r1.snb "Requires: udev = 164-r1" from tsort
relations.
| error: removing udev-164-r1.snb "Requires: libudev0 >= 164" from tsort
relations.
| error: LOOP:
| error: removing libdbus-1-3-1.4.1-r1.snb "Requires(hint): dbus-1" from
tsort relations.
| error: removing dbus-1-1.4.1-r1.snb "Requires: libdbus-1-3 >= 1.4.1" from
tsort relations.
| Manifest:
/home/sct/logi_sandybridge/poky/build/tmp/work/sugarbay-poky-linux/poky-image-minimal-black-1.0-r0/rootfs/install/install.manifest
| error: LOOP:
| error: removing nspr-4.8.7-r0.snb "Requires: nspr-dev >= 4.8.7" from tsort
relations.
| error: removing nspr-dev-4.8.7-r0.snb "Requires: nspr = 4.8.7-r0" from
tsort relations.
| error: LOOP:
| error: removing busybox-1.17.3-r2.snb "Requires(hint): busybox-udhcpc"
from tsort relations.
| error: removing busybox-udhcpc-1.17.3-r2.snb "Requires(post): /bin/sh"
from tsort relations.
| error: LOOP:
| error: removing nss-dev-3.12.9-r2.snb "Requires: nss = 3.12.9-r2" from
tsort relations.
| error: removing nss-3.12.9-r2.snb "Requires: nss-dev >= 3.12.9" from tsort
relations.
| error: LOOP:
| error: removing busybox-syslog-1.17.3-r2.snb "Requires(post): /bin/sh"
from tsort relations.
| error: removing busybox-1.17.3-r2.snb "Requires(hint): busybox-syslog"
from tsort relations.
| error: LOOP:
| error: removing dbus-1-1.4.1-r1.snb "Requires: libdbus-1-3 >= 1.4.1" from
tsort relations.
| error: removing libdbus-1-3-1.4.1-r1.snb "Requires(hint): dbus-1" from
tsort relations.
| error: LOOP:
| error: removing udev-164-r1.snb "Requires: libudev0 >= 164" from tsort
relations.
| error: removing libudev0-164-r1.snb "Requires: udev = 164-r1" from tsort
relations.
| Preparing...
 /home/sandybridge/poky/build/tmp/work/sugarbay-poky-linux/poky-image-minimal-black-1.0-r0/temp/run.do_rootfs.21768:
line 507: 22206 Segmentation fault      rpm --dbpath /var/lib/rpm
--define='_openall_before_chroot 1' --root ${target_rootfs} --predefine
"_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" --predefine
"_rpmrc_platform_path ${target_rootfs}/etc/rpm/platform" -D "_dbpath
/var/lib/rpm" --noscripts --notriggers --noparentdirs --nolinktos -D
"__dbi_txn create nofsync private" -Uhv
${target_rootfs}/install/install_solution.manifest
| ERROR: Function 'do_rootfs' failed (see
/home/sandybridge/poky/build/tmp/work/sugarbay-poky-linux/poky-image-minimal-black-1.0-r0/temp/log.do_rootfs.21768
for further information)
NOTE: package poky-image-minimal-black-1.0-r0: task do_rootfs: Failed
ERROR: '/home/sandybridge/poky/meta/recipes-core/images/
poky-image-minimal-black.bb' failed
ERROR: Task 179 (/home/sandybridge/poky/meta/recipes-core/images/
poky-image-minimal-black.bb, do_rootfs) failed with exit code '1'

Can you help me to find the solution !!!!!!

Chinmaya

--000e0cd215b652cbff04a285a123
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><meta http-equiv=3D"content-type" content=3D"text/html; ch=
arset=3Dutf-8"><span class=3D"Apple-style-span" style=3D"border-collapse: c=
ollapse; font-family: arial, sans-serif; font-size: 13px; "><span style=3D"=
border-collapse: collapse; font-family: arial, sans-serif; font-size: 13px;=
 ">Hi,<br>
<br>I am trying=A0<span>to</span>=A0port Poky=A0<span>to</span>=A0the &quot=
;sandybridge platform&quot; =A0for &quot;sugarbay&quot; machine.</span></sp=
an><div><span class=3D"Apple-style-span" style=3D"border-collapse: collapse=
; font-family: arial, sans-serif; font-size: 13px; "><span style=3D"border-=
collapse: collapse; font-family: arial, sans-serif; font-size: 13px; "></sp=
an><div>
<span style=3D"border-collapse: collapse; font-family: arial, sans-serif; f=
ont-size: 13px; ">I am getting error for cups package following is the erro=
r log:</span></div><div><span style=3D"border-collapse: collapse; font-fami=
ly: arial, sans-serif; font-size: 13px; "><br>
</span></div><div><span style=3D"border-collapse: collapse; font-family: ar=
ial, sans-serif; font-size: 13px; "><div>Processing google-chrome...</div><=
div>| Processing bzip2...</div><div>| Processing cups...</div><div>| error:=
 LOOP:</div>
<div>| error: removing busybox-1.17.3-r2.snb &quot;Requires(hint): busybox-=
udhcpc&quot; from tsort relations.</div><div>| error: removing busybox-udhc=
pc-1.17.3-r2.snb &quot;Requires(post): /bin/sh&quot; from tsort relations.<=
/div>
<div>| error: LOOP:</div><div>| error: removing nss-dev-3.12.9-r2.snb &quot=
;Requires: nss =3D 3.12.9-r2&quot; from tsort relations.</div><div>| error:=
 removing nss-3.12.9-r2.snb &quot;Requires: nss-dev &gt;=3D 3.12.9&quot; fr=
om tsort relations.</div>
<div>| error: LOOP:</div><div>| error: removing nspr-4.8.7-r0.snb &quot;Req=
uires: nspr-dev &gt;=3D 4.8.7&quot; from tsort relations.</div><div>| error=
: removing nspr-dev-4.8.7-r0.snb &quot;Requires: nspr =3D 4.8.7-r0&quot; fr=
om tsort relations.</div>
<div>| error: LOOP:</div><div>| error: removing busybox-1.17.3-r2.snb &quot=
;Requires(hint): busybox-syslog&quot; from tsort relations.</div><div>| err=
or: removing busybox-syslog-1.17.3-r2.snb &quot;Requires(post): /bin/sh&quo=
t; from tsort relations.</div>
<div>| error: LOOP:</div><div>| error: removing libudev0-164-r1.snb &quot;R=
equires: udev =3D 164-r1&quot; from tsort relations.</div><div>| error: rem=
oving udev-164-r1.snb &quot;Requires: libudev0 &gt;=3D 164&quot; from tsort=
 relations.</div>
<div>| error: LOOP:</div><div>| error: removing libdbus-1-3-1.4.1-r1.snb &q=
uot;Requires(hint): dbus-1&quot; from tsort relations.</div><div>| error: r=
emoving dbus-1-1.4.1-r1.snb &quot;Requires: libdbus-1-3 &gt;=3D 1.4.1&quot;=
 from tsort relations.</div>
<div>| Manifest: /home/sct/logi_sandybridge/poky/build/tmp/work/sugarbay-po=
ky-linux/poky-image-minimal-black-1.0-r0/rootfs/install/install.manifest</d=
iv><div>| error: LOOP:</div><div>| error: removing nspr-4.8.7-r0.snb &quot;=
Requires: nspr-dev &gt;=3D 4.8.7&quot; from tsort relations.</div>
<div>| error: removing nspr-dev-4.8.7-r0.snb &quot;Requires: nspr =3D 4.8.7=
-r0&quot; from tsort relations.</div><div>| error: LOOP:</div><div>| error:=
 removing busybox-1.17.3-r2.snb &quot;Requires(hint): busybox-udhcpc&quot; =
from tsort relations.</div>
<div>| error: removing busybox-udhcpc-1.17.3-r2.snb &quot;Requires(post): /=
bin/sh&quot; from tsort relations.</div><div>| error: LOOP:</div><div>| err=
or: removing nss-dev-3.12.9-r2.snb &quot;Requires: nss =3D 3.12.9-r2&quot; =
from tsort relations.</div>
<div>| error: removing nss-3.12.9-r2.snb &quot;Requires: nss-dev &gt;=3D 3.=
12.9&quot; from tsort relations.</div><div>| error: LOOP:</div><div>| error=
: removing busybox-syslog-1.17.3-r2.snb &quot;Requires(post): /bin/sh&quot;=
 from tsort relations.</div>
<div>| error: removing busybox-1.17.3-r2.snb &quot;Requires(hint): busybox-=
syslog&quot; from tsort relations.</div><div>| error: LOOP:</div><div>| err=
or: removing dbus-1-1.4.1-r1.snb &quot;Requires: libdbus-1-3 &gt;=3D 1.4.1&=
quot; from tsort relations.</div>
<div>| error: removing libdbus-1-3-1.4.1-r1.snb &quot;Requires(hint): dbus-=
1&quot; from tsort relations.</div><div>| error: LOOP:</div><div>| error: r=
emoving udev-164-r1.snb &quot;Requires: libudev0 &gt;=3D 164&quot; from tso=
rt relations.</div>
<div>| error: removing libudev0-164-r1.snb &quot;Requires: udev =3D 164-r1&=
quot; from tsort relations.</div><div>| Preparing... =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0/home/sandybridge/poky/build/tmp/work/sugarbay-poky-linux/poky-i=
mage-minimal-black-1.0-r0/temp/run.do_rootfs.21768: line 507: 22206 Segment=
ation fault =A0 =A0 =A0rpm --dbpath /var/lib/rpm --define=3D&#39;_openall_b=
efore_chroot 1&#39; --root ${target_rootfs} --predefine &quot;_rpmds_sysinf=
o_path ${target_rootfs}/etc/rpm/sysinfo&quot; --predefine &quot;_rpmrc_plat=
form_path ${target_rootfs}/etc/rpm/platform&quot; -D &quot;_dbpath /var/lib=
/rpm&quot; --noscripts --notriggers --noparentdirs --nolinktos -D &quot;__d=
bi_txn create nofsync private&quot; -Uhv ${target_rootfs}/install/install_s=
olution.manifest</div>
<div>| ERROR: Function &#39;do_rootfs&#39; failed (see /home/sandybridge/po=
ky/build/tmp/work/sugarbay-poky-linux/poky-image-minimal-black-1.0-r0/temp/=
log.do_rootfs.21768 for further information)</div><div>NOTE: package poky-i=
mage-minimal-black-1.0-r0: task do_rootfs: Failed</div>
<div>ERROR: &#39;/home/sandybridge/poky/meta/recipes-core/images/<a href=3D=
"http://poky-image-minimal-black.bb">poky-image-minimal-black.bb</a>&#39; f=
ailed</div><div>ERROR: Task 179 (/home/sandybridge/poky/meta/recipes-core/i=
mages/<a href=3D"http://poky-image-minimal-black.bb">poky-image-minimal-bla=
ck.bb</a>, do_rootfs) failed with exit code &#39;1&#39;</div>
<div><br></div><div>Can you help me to find the solution=A0!!!!!!</div><div=
><br></div><div>Chinmaya</div></span></div></span><br></div></div>

--000e0cd215b652cbff04a285a123--
