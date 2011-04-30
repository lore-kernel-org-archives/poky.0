Return-Path: <vsailub4u@gmail.com>
Received: from mail-px0-f173.google.com (mail-px0-f173.google.com
	[209.85.212.173])
	by mx1.pokylinux.org (Postfix) with ESMTP id 80B7E4C8024E
	for <poky@yoctoproject.org>; Sat, 30 Apr 2011 00:29:30 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pxi16 with SMTP id 16so1149311pxi.32
	for <poky@yoctoproject.org>; Fri, 29 Apr 2011 22:29:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=AslIj2WAtuApVc5Q9HCuV7EH/Zl7u/tffYFC69eU0NE=;
	b=nc9myteisnUPsUautsFuHyF/+/vvfy22lFKi2fJc5ONeXx1jHGxDqpGcKQCWHtJldH
	dCoGux9vQG+c6Ju2ntdB2EK9e2VHitRQm+4NdtO3R6XeLb+ye5m/eziB2kJ5ANCTHZNC
	TOybbYbb+yTF6UiFjebuwNR0ZKiNM7vjXhq+k=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type;
	b=eq2pxtjh4QybNeBBL8tDe6XlCxEYawWuqUe7QS3KA69H4jsEN9EIbjiEFwdliH6NKo
	FeDGBTKOOEUkbFBaSKCsuhFqgs/nqAGA/SvF3+YO8hYhy9KYkItLOlkbSkLL6URW4Lvt
	PnkUxZVm5uBFh4Vdx+ysFCpzByfQSR8l0y9Is=
MIME-Version: 1.0
Received: by 10.143.46.3 with SMTP id y3mr2083261wfj.331.1304141369039; Fri,
	29 Apr 2011 22:29:29 -0700 (PDT)
Received: by 10.142.241.20 with HTTP; Fri, 29 Apr 2011 22:29:28 -0700 (PDT)
In-Reply-To: <BANLkTimJegf_7RB3ogUyNkqpf03W2v2tzA@mail.gmail.com>
References: <BANLkTimJegf_7RB3ogUyNkqpf03W2v2tzA@mail.gmail.com>
Date: Sat, 30 Apr 2011 10:59:28 +0530
Message-ID: <BANLkTi=7k_NvJ6QrTQKhJ587dKM-MK+kyg@mail.gmail.com>
From: v sailaja <vsailub4u@gmail.com>
To: poky@yoctoproject.org
Subject: Error while trying to pull "cups" package into poky
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
X-List-Received-Date: Sat, 30 Apr 2011 05:29:31 -0000
Content-Type: multipart/alternative; boundary=000e0cd4cdc609dae504a21c1313

--000e0cd4cdc609dae504a21c1313
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I  am trying to integrate the "cups" into poky. I get an error as follows.

*Error log:*




-- NOTE: Running noexec task 3901 of 3904 (ID: 698,
/home/sailaja/new-sandybridge/poky_intel/meta/recipes-extended/cups/
cups_1.4.6.bb, do_package_write)
NOTE: Running task 3902 of 3904 (ID: 193,
/home/sailaja/new-sandybridge/poky_intel/meta/recipes-core/images/
poky-image-minimal-logi.bb, do_rootfs)
NOTE: package poky-image-minimal-logi-1.0-r0: task do_rootfs: Started
ERROR: '/home/sailaja/new-sandybridge/poky_intel/meta/recipes-core/images/
poky-image-minimal-logi.bb' failed
ERROR: Function 'do_rootfs' failed (see
/home/sailaja/new-sandybridge/poky_intel/build/tmp/work/fishriver-poky-linux/poky-image-minimal-logi-1.0-r0/temp/log.do_rootfs.16257
for further information)
ERROR: Logfile of failure stored in:
/home/sailaja/new-sandybridge/poky_intel/build/tmp/work/fishriver-poky-linux/poky-image-minimal-logi-1.0-r0/temp/log.do_rootfs.16257
Log data follows:
| Generating solve db for
/home/sailaja/new-sandybridge/poky_intel/build/tmp/deploy/rpm/fishriver...
|    total:               1      0.000000 MB      4.469082 secs
|    fingerprint:       822      0.008652 MB      0.217907 secs
|    install:           274      0.000000 MB      0.786088 secs
|    dbadd:             274      0.000000 MB      0.760582 secs
|    dbget:            2756      0.000000 MB      0.010102 secs
|    dbput:             274      1.442972 MB      0.588550 secs
|    readhdr:          2741      2.819584 MB      0.008667 secs
|    hdrload:          1370      4.201084 MB      0.008961 secs
|    hdrget:          49680      0.000000 MB      0.085239 secs
| Generating solve db for
/home/sailaja/new-sandybridge/poky_intel/build/tmp/deploy/rpm/atom...
|    total:               1      0.000000 MB     54.870929 secs
|    fingerprint:     11997      0.134514 MB      2.439504 secs
|    install:          3999      0.000000 MB     14.621738 secs
|    dbadd:            3999      0.000000 MB     14.266923 secs
|    dbremove:            1      0.000000 MB      0.002237 secs
|    dbget:           44105      0.020448 MB      0.289932 secs
|    dbput:            3999     18.211944 MB     12.560493 secs
|    dbdel:               1      0.003408 MB      0.001985 secs
|    readhdr:         39991     36.197330 MB      1.246206 secs
|    hdrload:         23870     70.765426 MB      0.198531 secs
|    hdrget:         714730      0.000000 MB      1.232643 secs
| Generating solve db for
/home/sailaja/new-sandybridge/poky_intel/build/tmp/deploy/rpm/all...
|    total:               1      0.000000 MB      0.571639 secs
|    fingerprint:        69      0.000428 MB      0.030842 secs
|    install:            23      0.000000 MB      0.165934 secs
|    dbadd:              23      0.000000 MB      0.161301 secs
|    dbget:             216      0.000000 MB      0.000769 secs
|    dbput:              23      0.087576 MB      0.060589 secs
|    readhdr:           231      0.174824 MB      0.000628 secs
|    hdrload:           118      0.265636 MB      0.000690 secs
|    hdrget:           3806      0.000000 MB      0.022193 secs
| Generating solve db for
/home/sailaja/new-sandybridge/poky_intel/build/tmp/deploy/rpm/all...
| Processing task-poky-boot...
| Processing kernel-modules...
| Processing psplash...
| Processing xserver-xf86-dri-lite...
| Processing xf86-input-keyboard...
| Processing xf86-input-mouse...
| Processing xf86-video-intel...
| Processing xinit...
| Processing xauth...
| Processing openssl...
| Processing liberation-fonts...
| Processing xrandr...
| Processing gtk-engines...
| Processing shared-mime-info...
| Processing gnome-keyring...
| Processing bzip2...
| Processing icu...
| Processing module-init-tools...
| Processing alsa-utils...
| Processing xcb-util...
| Processing orbit2...
| Processing libx11...
| Processing xf86-video-vesa...
| Processing dropbear...
| Processing libnotify...
| Processing keyutils...
| Processing libselinux...
| Processing curl...
| Processing cups...
| error: LOOP:
| error: removing busybox-1.17.3-r2.atom "Requires(hint): busybox-udhcpc"
from tsort relations.
| error: removing busybox-udhcpc-1.17.3-r2.atom "Requires(post): /bin/sh"
from tsort relations.
| error: LOOP:
| error: removing busybox-1.17.3-r2.atom "Requires(hint): busybox-syslog"
from tsort relations.
| error: removing busybox-syslog-1.17.3-r2.atom "Requires(post): /bin/sh"
from tsort relations.
| error: LOOP:
| error: removing libudev0-164-r1.atom "Requires: udev = 164-r1" from tsort
relations.
| error: removing udev-164-r1.atom "Requires: libudev0 >= 164" from tsort
relations.
| Manifest:
/home/sailaja/new-sandybridge/poky_intel/build/tmp/work/fishriver-poky-linux/poky-image-minimal-logi-1.0-r0/rootfs/install/install.manifest
| error: LOOP:
| error: removing busybox-1.17.3-r2.atom "Requires(hint): busybox-udhcpc"
from tsort relations.
| error: removing busybox-udhcpc-1.17.3-r2.atom "Requires(post): /bin/sh"
from tsort relations.
| error: LOOP:
| error: removing busybox-syslog-1.17.3-r2.atom "Requires(post): /bin/sh"
from tsort relations.
| error: removing busybox-1.17.3-r2.atom "Requires(hint): busybox-syslog"
from tsort relations.
| error: LOOP:
| error: removing udev-164-r1.atom "Requires: libudev0 >= 164" from tsort
relations.
| error: removing libudev0-164-r1.atom "Requires: udev = 164-r1" from tsort
relations.
| Preparing...
/home/sailaja/new-sandybridge/poky_intel/build/tmp/work/fishriver-poky-linux/poky-image-minimal-logi-1.0-r0/temp/run.do_rootfs.16257:
line 507:   777 Segmentation fault      rpm --dbpath /var/lib/rpm
--define='_openall_before_chroot 1' --root ${target_rootfs} --predefine
"_rpmds_sysinfo_path ${target_rootfs}/etc/rpm/sysinfo" --predefine
"_rpmrc_platform_path ${target_rootfs}/etc/rpm/platform" -D "_dbpath
/var/lib/rpm" --noscripts --notriggers --noparentdirs --nolinktos -D
"__dbi_txn create nofsync private" -Uhv
${target_rootfs}/install/install_solution.manifest
| ERROR: Function 'do_rootfs' failed (see
/home/sailaja/new-sandybridge/poky_intel/build/tmp/work/fishriver-poky-linux/poky-image-minimal-logi-1.0-r0/temp/log.do_rootfs.16257
for further information)
NOTE: package poky-image-minimal-logi-1.0-r0: task do_rootfs: Failed
ERROR: Task 193
(/home/sailaja/new-sandybridge/poky_intel/meta/recipes-core/images/
poky-image-minimal-logi.bb, do_rootfs) failed with exit code '1'


Please Can anyone tell me how to track this error.



 Gentle reminder to help me in finding the solution please.



Thanks & Regards,
SAI

--000e0cd4cdc609dae504a21c1313
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><div class=3D"gmail_quote">Hi,<br><br>I=A0 am trying to integrate the &=
quot;cups&quot; into poky. I get an error as follows.<br><br><u><b>Error lo=
g:</b></u><br><br><br><br clear=3D"all"><br>-- NOTE: Running noexec task 39=
01 of 3904 (ID: 698, /home/sailaja/new-sandybridge/poky_intel/meta/recipes-=
extended/cups/<a href=3D"http://cups_1.4.6.bb" target=3D"_blank">cups_1.4.6=
.bb</a>, do_package_write)<br>

NOTE: Running task 3902 of 3904 (ID: 193, /home/sailaja/new-sandybridge/pok=
y_intel/meta/recipes-core/images/<a href=3D"http://poky-image-minimal-logi.=
bb" target=3D"_blank">poky-image-minimal-logi.bb</a>, do_rootfs)<br>NOTE: p=
ackage poky-image-minimal-logi-1.0-r0: task do_rootfs: Started<br>

ERROR: &#39;/home/sailaja/new-sandybridge/poky_intel/meta/recipes-core/imag=
es/<a href=3D"http://poky-image-minimal-logi.bb" target=3D"_blank">poky-ima=
ge-minimal-logi.bb</a>&#39; failed<br>ERROR: Function &#39;do_rootfs&#39; f=
ailed (see /home/sailaja/new-sandybridge/poky_intel/build/tmp/work/fishrive=
r-poky-linux/poky-image-minimal-logi-1.0-r0/temp/log.do_rootfs.16257 for fu=
rther information)<br>

ERROR: Logfile of failure stored in: /home/sailaja/new-sandybridge/poky_int=
el/build/tmp/work/fishriver-poky-linux/poky-image-minimal-logi-1.0-r0/temp/=
log.do_rootfs.16257<br>Log data follows:<br>| Generating solve db for /home=
/sailaja/new-sandybridge/poky_intel/build/tmp/deploy/rpm/fishriver...<br>

|=A0=A0=A0 total:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 1=A0=A0=A0=A0=
=A0 0.000000 MB=A0=A0=A0=A0=A0 4.469082 secs<br>|=A0=A0=A0 fingerprint:=A0=
=A0=A0=A0=A0=A0 822=A0=A0=A0=A0=A0 0.008652 MB=A0=A0=A0=A0=A0 0.217907 secs=
<br>|=A0=A0=A0 install:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 274=A0=A0=A0=A0=A0 0.=
000000 MB=A0=A0=A0=A0=A0 0.786088 secs<br>|=A0=A0=A0 dbadd:=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 274=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=A0=A0=A0 0.76058=
2 secs<br>

|=A0=A0=A0 dbget:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 2756=A0=A0=A0=A0=A0 0.00=
0000 MB=A0=A0=A0=A0=A0 0.010102 secs<br>|=A0=A0=A0 dbput:=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 274=A0=A0=A0=A0=A0 1.442972 MB=A0=A0=A0=A0=A0 0.588550 s=
ecs<br>|=A0=A0=A0 readhdr:=A0=A0=A0=A0=A0=A0=A0=A0=A0 2741=A0=A0=A0=A0=A0 2=
.819584 MB=A0=A0=A0=A0=A0 0.008667 secs<br>|=A0=A0=A0 hdrload:=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 1370=A0=A0=A0=A0=A0 4.201084 MB=A0=A0=A0=A0=A0 0.008961 sec=
s<br>

|=A0=A0=A0 hdrget:=A0=A0=A0=A0=A0=A0=A0=A0=A0 49680=A0=A0=A0=A0=A0 0.000000=
 MB=A0=A0=A0=A0=A0 0.085239 secs<br>| Generating solve db for /home/sailaja=
/new-sandybridge/poky_intel/build/tmp/deploy/rpm/atom...<br>|=A0=A0=A0 tota=
l:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 1=A0=A0=A0=A0=A0 0.000000 MB=
=A0=A0=A0=A0 54.870929 secs<br>

|=A0=A0=A0 fingerprint:=A0=A0=A0=A0 11997=A0=A0=A0=A0=A0 0.134514 MB=A0=A0=
=A0=A0=A0 2.439504 secs<br>|=A0=A0=A0 install:=A0=A0=A0=A0=A0=A0=A0=A0=A0 3=
999=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=A0=A0 14.621738 secs<br>|=A0=A0=A0 dba=
dd:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 3999=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=
=A0=A0 14.266923 secs<br>|=A0=A0=A0 dbremove:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 1=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=A0=A0=A0 0.002237 secs<br>

|=A0=A0=A0 dbget:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 44105=A0=A0=A0=A0=A0 0.0204=
48 MB=A0=A0=A0=A0=A0 0.289932 secs<br>|=A0=A0=A0 dbput:=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 3999=A0=A0=A0=A0 18.211944 MB=A0=A0=A0=A0 12.560493 secs<br=
>|=A0=A0=A0 dbdel:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 1=A0=A0=A0=A0=
=A0 0.003408 MB=A0=A0=A0=A0=A0 0.001985 secs<br>|=A0=A0=A0 readhdr:=A0=A0=
=A0=A0=A0=A0=A0=A0 39991=A0=A0=A0=A0 36.197330 MB=A0=A0=A0=A0=A0 1.246206 s=
ecs<br>

|=A0=A0=A0 hdrload:=A0=A0=A0=A0=A0=A0=A0=A0 23870=A0=A0=A0=A0 70.765426 MB=
=A0=A0=A0=A0=A0 0.198531 secs<br>|=A0=A0=A0 hdrget:=A0=A0=A0=A0=A0=A0=A0=A0=
 714730=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=A0=A0=A0 1.232643 secs<br>| Genera=
ting solve db for /home/sailaja/new-sandybridge/poky_intel/build/tmp/deploy=
/rpm/all...<br>

|=A0=A0=A0 total:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 1=A0=A0=A0=A0=
=A0 0.000000 MB=A0=A0=A0=A0=A0 0.571639 secs<br>|=A0=A0=A0 fingerprint:=A0=
=A0=A0=A0=A0=A0=A0 69=A0=A0=A0=A0=A0 0.000428 MB=A0=A0=A0=A0=A0 0.030842 se=
cs<br>|=A0=A0=A0 install:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 23=A0=A0=A0=A0=
=A0 0.000000 MB=A0=A0=A0=A0=A0 0.165934 secs<br>|=A0=A0=A0 dbadd:=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 23=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=A0=A0=A0=
 0.161301 secs<br>

|=A0=A0=A0 dbget:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 216=A0=A0=A0=A0=A0 0.=
000000 MB=A0=A0=A0=A0=A0 0.000769 secs<br>|=A0=A0=A0 dbput:=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 23=A0=A0=A0=A0=A0 0.087576 MB=A0=A0=A0=A0=A0 0.060=
589 secs<br>|=A0=A0=A0 readhdr:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 231=A0=A0=A0=
=A0=A0 0.174824 MB=A0=A0=A0=A0=A0 0.000628 secs<br>|=A0=A0=A0 hdrload:=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 118=A0=A0=A0=A0=A0 0.265636 MB=A0=A0=A0=A0=A0 0=
.000690 secs<br>

|=A0=A0=A0 hdrget:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 3806=A0=A0=A0=A0=A0 0.0000=
00 MB=A0=A0=A0=A0=A0 0.022193 secs<br>| Generating solve db for /home/saila=
ja/new-sandybridge/poky_intel/build/tmp/deploy/rpm/all...<br>| Processing t=
ask-poky-boot...<br>| Processing kernel-modules...<br>

| Processing psplash...<br>| Processing xserver-xf86-dri-lite...<br>| Proce=
ssing xf86-input-keyboard...<br>| Processing xf86-input-mouse...<br>| Proce=
ssing xf86-video-intel...<br>| Processing xinit...<br>| Processing xauth...=
<br>

| Processing openssl...<br>| Processing liberation-fonts...<br>| Processing=
 xrandr...<br>| Processing gtk-engines...<br>| Processing shared-mime-info.=
..<br>| Processing gnome-keyring...<br>| Processing bzip2...<br>| Processin=
g icu...<br>

| Processing module-init-tools...<br>| Processing alsa-utils...<br>| Proces=
sing xcb-util...<br>| Processing orbit2...<br>| Processing libx11...<br>| P=
rocessing xf86-video-vesa...<br>| Processing dropbear...<br>| Processing li=
bnotify...<br>

| Processing keyutils...<br>| Processing libselinux...<br>| Processing curl=
...<br>| Processing cups...<br>| error: LOOP:<br>| error: removing busybox-=
1.17.3-r2.atom &quot;Requires(hint): busybox-udhcpc&quot; from tsort relati=
ons.<br>

| error: removing busybox-udhcpc-1.17.3-r2.atom &quot;Requires(post): /bin/=
sh&quot; from tsort relations.<br>| error: LOOP:<br>| error: removing busyb=
ox-1.17.3-r2.atom &quot;Requires(hint): busybox-syslog&quot; from tsort rel=
ations.<br>

| error: removing busybox-syslog-1.17.3-r2.atom &quot;Requires(post): /bin/=
sh&quot; from tsort relations.<br>| error: LOOP:<br>| error: removing libud=
ev0-164-r1.atom &quot;Requires: udev =3D 164-r1&quot; from tsort relations.=
<br>

| error: removing udev-164-r1.atom &quot;Requires: libudev0 &gt;=3D 164&quo=
t; from tsort relations.<br>| Manifest: /home/sailaja/new-sandybridge/poky_=
intel/build/tmp/work/fishriver-poky-linux/poky-image-minimal-logi-1.0-r0/ro=
otfs/install/install.manifest<br>

| error: LOOP:<br>| error: removing busybox-1.17.3-r2.atom &quot;Requires(h=
int): busybox-udhcpc&quot; from tsort relations.<br>| error: removing busyb=
ox-udhcpc-1.17.3-r2.atom &quot;Requires(post): /bin/sh&quot; from tsort rel=
ations.<br>

| error: LOOP:<br>| error: removing busybox-syslog-1.17.3-r2.atom &quot;Req=
uires(post): /bin/sh&quot; from tsort relations.<br>| error: removing busyb=
ox-1.17.3-r2.atom &quot;Requires(hint): busybox-syslog&quot; from tsort rel=
ations.<br>

| error: LOOP:<br>| error: removing udev-164-r1.atom &quot;Requires: libude=
v0 &gt;=3D 164&quot; from tsort relations.<br>| error: removing libudev0-16=
4-r1.atom &quot;Requires: udev =3D 164-r1&quot; from tsort relations.<br>| =
Preparing...=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 /home/sailaja/new=
-sandybridge/poky_intel/build/tmp/work/fishriver-poky-linux/poky-image-mini=
mal-logi-1.0-r0/temp/run.do_rootfs.16257: line 507:=A0=A0 777 Segmentation =
fault=A0=A0=A0=A0=A0 rpm --dbpath /var/lib/rpm --define=3D&#39;_openall_bef=
ore_chroot 1&#39; --root ${target_rootfs} --predefine &quot;_rpmds_sysinfo_=
path ${target_rootfs}/etc/rpm/sysinfo&quot; --predefine &quot;_rpmrc_platfo=
rm_path ${target_rootfs}/etc/rpm/platform&quot; -D &quot;_dbpath /var/lib/r=
pm&quot; --noscripts --notriggers --noparentdirs --nolinktos -D &quot;__dbi=
_txn create nofsync private&quot; -Uhv ${target_rootfs}/install/install_sol=
ution.manifest<br>

| ERROR: Function &#39;do_rootfs&#39; failed (see /home/sailaja/new-sandybr=
idge/poky_intel/build/tmp/work/fishriver-poky-linux/poky-image-minimal-logi=
-1.0-r0/temp/log.do_rootfs.16257 for further information)<br>NOTE: package =
poky-image-minimal-logi-1.0-r0: task do_rootfs: Failed<br>

ERROR: Task 193 (/home/sailaja/new-sandybridge/poky_intel/meta/recipes-core=
/images/<a href=3D"http://poky-image-minimal-logi.bb" target=3D"_blank">pok=
y-image-minimal-logi.bb</a>, do_rootfs) failed with exit code &#39;1&#39;<b=
r>
<br><br>Please Can anyone tell me how to track this error.<br><br>
<br><br>=A0Gentle reminder to help me in finding the solution please.<br><b=
r><br><br>Thanks &amp; Regards,<br>SAI<br><br>
</div><br><br clear=3D"all"><br>

--000e0cd4cdc609dae504a21c1313--
