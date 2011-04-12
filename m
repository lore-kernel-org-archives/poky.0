Return-Path: <vsailub4u@gmail.com>
Received: from mail-px0-f169.google.com (mail-px0-f169.google.com
	[209.85.212.169])
	by mx1.pokylinux.org (Postfix) with ESMTP id BB8234C80050
	for <poky@yoctoproject.org>; Tue, 12 Apr 2011 04:45:15 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pxi9 with SMTP id 9so3076401pxi.28
	for <poky@yoctoproject.org>; Tue, 12 Apr 2011 02:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=lxQ0d+/HCsrRTa/Dzwj4LrGcVq0mt+g5FSu/1gnWtvU=;
	b=b9L3Sg4FXFW/IxWXBq9A/np281Qr1ta6V8ASGSCgmPZe5ejrii+XjjGtLH6iBgjt5/
	h1tWxKafKKA5DuA5VMN9pkG+naNXFJC841+y5avzuBv5Z//VZgxy8mARBa9U278GJ6S/
	B8VdTUEGoZQC4JtIBzFuk/w7KerYq7Gtzmg8k=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type;
	b=XxZekDIm/r4QnHewviiGzgaT53BdvqDnWobvQFMdTqnoU58DqyGBJS1QcgJT4bDM1s
	ufaBVYcv9+AhvwUsnnyxctwAQLEz15oYqxQhdyeJ5Ofx1MqeL2hfJTT4vMB937l9OQaq
	7QoiE+iVXBjp1D7BDM6Cq0n48lOb5ouMlI18w=
MIME-Version: 1.0
Received: by 10.143.24.39 with SMTP id b39mr6018645wfj.341.1302601515155; Tue,
	12 Apr 2011 02:45:15 -0700 (PDT)
Received: by 10.142.44.5 with HTTP; Tue, 12 Apr 2011 02:45:15 -0700 (PDT)
In-Reply-To: <BANLkTikBJb+jvXXgWisKzF1BQkT-uStFPw@mail.gmail.com>
References: <BANLkTikBJb+jvXXgWisKzF1BQkT-uStFPw@mail.gmail.com>
Date: Tue, 12 Apr 2011 15:15:15 +0530
Message-ID: <BANLkTinCa21OnTipwTXMEuQEyKFeQcNboA@mail.gmail.com>
From: v sailaja <vsailub4u@gmail.com>
To: poky@yoctoproject.org
Subject: Unable to find package dbus-glib!
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
X-List-Received-Date: Tue, 12 Apr 2011 09:45:16 -0000
Content-Type: multipart/alternative; boundary=001636e0b6219841dc04a0b58caa

--001636e0b6219841dc04a0b58caa
Content-Type: text/plain; charset=ISO-8859-1

HI,

I am trying to port Poky to the "sandybridge platform" and  using the branch
"bernard-cur" for "fishriver" machine.
I am running Ubuntu 10.04 on 64 bit machine.
I get an error saying that it's* "unable to find the package dbus-glib*" ,
even though it appears to exist.
I've tried rebuilding dbus-glib, but the problem remains.  Both the ipk and
rpm are present in the deploy directory:

dbus-1_1.4.1-r1_atom.ipk    dbus-dbg_1.4.1-r1_atom.ipk
dbus-dev_1.4.1-r1_atom.ipk  dbus-doc_1.4.1-r1_atom.ipk

dbus-1-1.4.1-r1.atom.rpm    dbus-dbg-1.4.1-r1.atom.rpm
dbus-dev-1.4.1-r1.atom.rpm  dbus-doc-1.4.1-r1.atom.rpm

I got the same error for many packages--
 libx11
 libxi
 libxfixes
 libxt
 libxscrnsaver
 libpcre
 gtk+
 libxdmcp --

Error log:

NOTE: Running task 3719 of 3748 (ID: 193,
/home/sailaja/poky_intel/meta/recipes-core/images/poky-image-minimal-logi.bb,
do_rootfs)
NOTE: package poky-image-minimal-logi-1.0-r0: task do_rootfs: Started
ERROR: '/home/sailaja/poky_intel/meta/recipes-core/images/
poky-image-minimal-logi.bb' failed
ERROR: Function 'do_rootfs' failed (see
/home/sailaja/poky_intel/build/tmp/work/fishriver-poky-linux/poky-image-minimal-logi-1.0-r0/temp/log.do_rootfs.2037
for further information)
ERROR: Logfile of failure stored in:
/home/sailaja/poky_intel/build/tmp/work/fishriver-poky-linux/poky-image-minimal-logi-1.0-r0/temp/log.do_rootfs.2037
Log data follows:
| Generating solve db for
/home/sailaja/poky_intel/build/tmp/deploy/rpm/fishriver...
|    total:               1      0.000000 MB      3.013772 secs
|    fingerprint:       822      0.008930 MB      0.152614 secs
|    install:           274      0.000000 MB      0.388524 secs
|    dbadd:             274      0.000000 MB      0.377341 secs
|    dbget:            2877      0.000000 MB      0.006442 secs
|    dbput:             274      1.447484 MB      0.308546 secs
|    readhdr:          2741      2.837096 MB      1.932322 secs
|    hdrload:          1370      4.223108 MB      0.009178 secs
|    hdrget:          49680      0.000000 MB      0.075024 secs
| Generating solve db for
/home/sailaja/poky_intel/build/tmp/deploy/rpm/atom...
|    total:               1      0.000000 MB     46.128155 secs
|    fingerprint:     12540      0.134432 MB      1.410636 secs
|    install:          4180      0.000000 MB      6.838201 secs
|    dbadd:            4180      0.000000 MB      6.676840 secs
|    dbget:           43755      0.198736 MB      0.112596 secs
|    dbput:            4180     18.697532 MB      5.822859 secs
|    readhdr:         41801     37.298306 MB     25.879197 secs
|    hdrload:         24296     70.267858 MB      0.163661 secs
|    hdrget:         748457      0.000000 MB      1.154741 secs
| Generating solve db for
/home/sailaja/poky_intel/build/tmp/deploy/rpm/all...
|    total:               1      0.000000 MB      0.228913 secs
|    fingerprint:        69      0.000428 MB      0.001217 secs
|    install:            23      0.000000 MB      0.059673 secs
|    dbadd:              23      0.000000 MB      0.056252 secs
|    dbget:             216      0.000000 MB      0.000497 secs
|    dbput:              23      0.087208 MB      0.022864 secs
|    readhdr:           231      0.174824 MB      0.098029 secs
|    hdrload:           118      0.265220 MB      0.000887 secs
|    hdrget:           3806      0.000000 MB      0.006065 secs
| Generating solve db for
/home/sailaja/poky_intel/build/tmp/deploy/rpm/all...
| Processing task-poky-boot...
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
| Processing libxdmcp...
| Processing dbus-glib...
| Unable to find package dbus-glib!
| ERROR: Function 'do_rootfs' failed (see
/home/sailaja/poky_intel/build/tmp/work/fishriver-poky-linux/poky-image-minimal-logi-1.0-r0/temp/log.do_rootfs.2037
for further information)
NOTE: package poky-image-minimal-logi-1.0-r0: task do_rootfs: Failed
ERROR: Task 193 (/home/sailaja/poky_intel/meta/recipes-core/images/
poky-image-minimal-logi.bb, do_rootfs) failed with exit code '1'



Please Can anyone help me in finding the solution.
What is the reason for getting the same error for many packages?



-- 
Thanks & Regards,
SAI




-- 
Thanks & Regards,
SAI

--001636e0b6219841dc04a0b58caa
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><div class=3D"gmail_quote">HI,<br><br>I am trying <span>to</span> port =
Poky <span>to</span>
 the &quot;sandybridge platform&quot; and=A0 using the branch &quot;bernard=
-cur&quot; for &quot;fishriver&quot; machine.<br>I am running Ubuntu 10.04 =
on 64 bit machine.<br>I get an error saying that it&#39;s<i> &quot;<span>un=
able</span> <span>to</span> <span>find</span> the <span>package</span> dbus=
-glib</i>&quot; , even though it appears <span>to</span> exist.<br>

I&#39;ve tried rebuilding dbus-glib, but the problem remains. =A0Both the i=
pk and rpm are present in the deploy directory:<br><br>dbus-1_1.4.1-r1_atom=
.ipk=A0=A0=A0 dbus-dbg_1.4.1-r1_atom.ipk=A0 dbus-dev_1.4.1-r1_atom.ipk=A0 d=
bus-doc_1.4.1-r1_atom.ipk <br>

<br>dbus-1-1.4.1-r1.atom.rpm=A0=A0=A0 dbus-dbg-1.4.1-r1.atom.rpm=A0 dbus-de=
v-1.4.1-r1.atom.rpm=A0 dbus-doc-1.4.1-r1.atom.rpm<br><br> I got the same er=
ror for many packages--<br>=A0libx11<br>=A0libxi <br>=A0libxfixes<br>=A0lib=
xt<br>=A0libxscrnsaver<br>

=A0libpcre<br>=A0gtk+<br>=A0libxdmcp --<br><br>Error log:<br><br>NOTE: Runn=
ing task 3719 of 3748 (ID: 193, /home/sailaja/poky_intel/meta/recipes-core/=
images/<a href=3D"http://poky-image-minimal-logi.bb" target=3D"_blank">poky=
-image-minimal-logi.bb</a>, do_rootfs)<br>

NOTE: package poky-image-minimal-logi-1.0-r0: task do_rootfs: Started<br>ER=
ROR: &#39;/home/sailaja/poky_intel/meta/recipes-core/images/<a href=3D"http=
://poky-image-minimal-logi.bb" target=3D"_blank">poky-image-minimal-logi.bb=
</a>&#39; failed<br>

ERROR: Function &#39;do_rootfs&#39; failed (see /home/sailaja/poky_intel/bu=
ild/tmp/work/fishriver-poky-linux/poky-image-minimal-logi-1.0-r0/temp/log.d=
o_rootfs.2037 for further information)<br>ERROR: Logfile of failure stored =
in: /home/sailaja/poky_intel/build/tmp/work/fishriver-poky-linux/poky-image=
-minimal-logi-1.0-r0/temp/log.do_rootfs.2037<br>

Log data follows:<br>| Generating solve db for /home/sailaja/poky_intel/bui=
ld/tmp/deploy/rpm/fishriver...<br>|=A0=A0=A0 total:=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 1=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=A0=A0=A0 3.013772 sec=
s<br>|=A0=A0=A0 fingerprint:=A0=A0=A0=A0=A0=A0 822=A0=A0=A0=A0=A0 0.008930 =
MB=A0=A0=A0=A0=A0 0.152614 secs<br>

|=A0=A0=A0 install:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 274=A0=A0=A0=A0=A0 0.0000=
00 MB=A0=A0=A0=A0=A0 0.388524 secs<br>|=A0=A0=A0 dbadd:=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 274=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=A0=A0=A0 0.377341 s=
ecs<br>|=A0=A0=A0 dbget:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 2877=A0=A0=A0=A0=
=A0 0.000000 MB=A0=A0=A0=A0=A0 0.006442 secs<br>|=A0=A0=A0 dbput:=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 274=A0=A0=A0=A0=A0 1.447484 MB=A0=A0=A0=A0=A0 0=
.308546 secs<br>

|=A0=A0=A0 readhdr:=A0=A0=A0=A0=A0=A0=A0=A0=A0 2741=A0=A0=A0=A0=A0 2.837096=
 MB=A0=A0=A0=A0=A0 1.932322 secs<br>|=A0=A0=A0 hdrload:=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 1370=A0=A0=A0=A0=A0 4.223108 MB=A0=A0=A0=A0=A0 0.009178 secs<br>|=
=A0=A0=A0 hdrget:=A0=A0=A0=A0=A0=A0=A0=A0=A0 49680=A0=A0=A0=A0=A0 0.000000 =
MB=A0=A0=A0=A0=A0 0.075024 secs<br>| Generating solve db for /home/sailaja/=
poky_intel/build/tmp/deploy/rpm/atom...<br>

|=A0=A0=A0 total:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 1=A0=A0=A0=A0=
=A0 0.000000 MB=A0=A0=A0=A0 46.128155 secs<br>|=A0=A0=A0 fingerprint:=A0=A0=
=A0=A0 12540=A0=A0=A0=A0=A0 0.134432 MB=A0=A0=A0=A0=A0 1.410636 secs<br>|=
=A0=A0=A0 install:=A0=A0=A0=A0=A0=A0=A0=A0=A0 4180=A0=A0=A0=A0=A0 0.000000 =
MB=A0=A0=A0=A0=A0 6.838201 secs<br>|=A0=A0=A0 dbadd:=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 4180=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=A0=A0=A0 6.676840 secs<b=
r>

|=A0=A0=A0 dbget:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 43755=A0=A0=A0=A0=A0 0.1987=
36 MB=A0=A0=A0=A0=A0 0.112596 secs<br>|=A0=A0=A0 dbput:=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 4180=A0=A0=A0=A0 18.697532 MB=A0=A0=A0=A0=A0 5.822859 secs<=
br>|=A0=A0=A0 readhdr:=A0=A0=A0=A0=A0=A0=A0=A0 41801=A0=A0=A0=A0 37.298306 =
MB=A0=A0=A0=A0 25.879197 secs<br>|=A0=A0=A0 hdrload:=A0=A0=A0=A0=A0=A0=A0=
=A0 24296=A0=A0=A0=A0 70.267858 MB=A0=A0=A0=A0=A0 0.163661 secs<br>

|=A0=A0=A0 hdrget:=A0=A0=A0=A0=A0=A0=A0=A0 748457=A0=A0=A0=A0=A0 0.000000 M=
B=A0=A0=A0=A0=A0 1.154741 secs<br>| Generating solve db for /home/sailaja/p=
oky_intel/build/tmp/deploy/rpm/all...<br>|=A0=A0=A0 total:=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 1=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=A0=A0=A0 0.2=
28913 secs<br>|=A0=A0=A0 fingerprint:=A0=A0=A0=A0=A0=A0=A0 69=A0=A0=A0=A0=
=A0 0.000428 MB=A0=A0=A0=A0=A0 0.001217 secs<br>

|=A0=A0=A0 install:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 23=A0=A0=A0=A0=A0 0.00=
0000 MB=A0=A0=A0=A0=A0 0.059673 secs<br>|=A0=A0=A0 dbadd:=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 23=A0=A0=A0=A0=A0 0.000000 MB=A0=A0=A0=A0=A0 0.056252=
 secs<br>|=A0=A0=A0 dbget:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 216=A0=A0=A0=
=A0=A0 0.000000 MB=A0=A0=A0=A0=A0 0.000497 secs<br>|=A0=A0=A0 dbput:=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 23=A0=A0=A0=A0=A0 0.087208 MB=A0=A0=A0=A0=
=A0 0.022864 secs<br>

|=A0=A0=A0 readhdr:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 231=A0=A0=A0=A0=A0 0.1748=
24 MB=A0=A0=A0=A0=A0 0.098029 secs<br>|=A0=A0=A0 hdrload:=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 118=A0=A0=A0=A0=A0 0.265220 MB=A0=A0=A0=A0=A0 0.000887 secs<br=
>|=A0=A0=A0 hdrget:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 3806=A0=A0=A0=A0=A0 0.000=
000 MB=A0=A0=A0=A0=A0 0.006065 secs<br>| Generating solve db for /home/sail=
aja/poky_intel/build/tmp/deploy/rpm/all...<br>

| Processing task-poky-boot...<br>| Processing psplash...<br>| Processing x=
server-xf86-dri-lite...<br>| Processing xf86-input-keyboard...<br>| Process=
ing xf86-input-mouse...<br>| Processing xf86-video-intel...<br>| Processing=
 xinit...<br>

| Processing xauth...<br>| Processing openssl...<br>| Processing liberation=
-fonts...<br>| Processing xrandr...<br>| Processing gtk-engines...<br>| Pro=
cessing shared-mime-info...<br>| Processing gnome-keyring...<br>| Processin=
g bzip2...<br>

| Processing icu...<br>| Processing module-init-tools...<br>| Processing al=
sa-utils...<br>| Processing xcb-util...<br>| Processing libxdmcp...<br>| Pr=
ocessing dbus-glib...<br>| Unable to find package dbus-glib!<br>| ERROR: Fu=
nction &#39;do_rootfs&#39; failed (see /home/sailaja/poky_intel/build/tmp/w=
ork/fishriver-poky-linux/poky-image-minimal-logi-1.0-r0/temp/log.do_rootfs.=
2037 for further information)<br>

NOTE: package poky-image-minimal-logi-1.0-r0: task do_rootfs: Failed<br>ERR=
OR: Task 193 (/home/sailaja/poky_intel/meta/recipes-core/images/<a href=3D"=
http://poky-image-minimal-logi.bb" target=3D"_blank">poky-image-minimal-log=
i.bb</a>, do_rootfs) failed with exit code &#39;1&#39;<br>

<br><br><br>Please Can anyone help me in finding the solution.<br>What is t=
he reason for getting the same error for many packages?<br><font color=3D"#=
888888"><br><br>=A0<br>-- <br>Thanks &amp; Regards,<br>SAI<br><br>
</font></div><br><br clear=3D"all"><br>-- <br>Thanks &amp; Regards,<br>SAI<=
br><br>

--001636e0b6219841dc04a0b58caa--
