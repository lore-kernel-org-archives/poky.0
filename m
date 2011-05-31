Return-Path: <cahoshing@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 219074C800A5
	for <poky@yoctoproject.org>; Tue, 31 May 2011 08:59:23 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iym1 with SMTP id 1so6021232iym.35
	for <poky@yoctoproject.org>; Tue, 31 May 2011 06:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=YULqLumX2YzkhqdSpS/VmZjIWpdwOHpGUNRLAg7buuM=;
	b=BDSXgWDRKkXa7FDa+f9t93MqjPZ5YDiEz9yDqx945WTPPTpI+4LIxaEHAiq0gm+iaZ
	dGX3XHFZPtK5+DZMqA0qWkKKJbikiEf1yta2xBiyKUhEIkhaVTuHgwBvfCqi74ze1Gpg
	4JF5IXm/bkQNA5VzijTEug+e1U+DTTy2KEvM0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=B170mtBncwXbSt8aZ7Ap9LjI65LVhvynholBX+exOdQykQN0h350AmpCHKpi5LSCv8
	MjdtOP9k+R6llNt7/Pc5UX4YNL0NKgtMLu3kGKNnpnqR07IFzioEdUtwHC/70sNGuOgm
	LLrZIskTD1sHAdRPpTdIWAOBpmIg+zp7t8pDU=
MIME-Version: 1.0
Received: by 10.231.8.197 with SMTP id i5mr6512333ibi.152.1306850362234; Tue,
	31 May 2011 06:59:22 -0700 (PDT)
Received: by 10.231.182.15 with HTTP; Tue, 31 May 2011 06:59:22 -0700 (PDT)
Date: Tue, 31 May 2011 19:29:22 +0530
Message-ID: <BANLkTimsZuqZKWtuKzBLnskzAv1unWKdNg@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: poky@yoctoproject.org
Subject: Error in pulling dbus for beagleboard poky build
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
X-List-Received-Date: Tue, 31 May 2011 13:59:23 -0000
Content-Type: multipart/alternative; boundary=00151773ea689d974a04a492cfc3

--00151773ea689d974a04a492cfc3
Content-Type: text/plain; charset=ISO-8859-1

Hi,

 I am building poky for beagleboard on ubuntu 10.10 64 bit host.I have
included dbus and dbus-glib in the recipes but when it starts building the
rootfs
 it gives the error as follows:-

 Unknown package 'dbus'.
 Unknown package 'dbus-glib'.
:
:
:
Collected errors:
|  * opkg_install_cmd: Cannot install package dbus.
|  * opkg_install_cmd: Cannot install package dbus-glib.
| ERROR: Function 'do_rootfs' failed (see
/home/poky/build/tmp/work/beagleboard-poky-linux-gnueabi/poky-image-minimal-1.0-r0/temp/log.do_rootfs.25765
for further information)
NOTE: package poky-image-minimal-1.0-r0: task do_rootfs: Failed
ERROR: Task 9 (/home/poky/meta/recipes-core/images/poky-image-minimal.bb,
do_rootfs) failed with exit code '1'

Can anyone help me to find the solution !!!!!!



Chinmaya

--00151773ea689d974a04a492cfc3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>=A0I am building poky for beagleboa=
rd on ubuntu 10.10 64 bit host.I have included dbus and dbus-glib in the re=
cipes but when it starts building the rootfs=A0<div>=A0it gives the error a=
s follows:-</div>
</div><div><br></div><div><div>=A0Unknown package &#39;dbus&#39;.</div><div=
>=A0Unknown package &#39;dbus-glib&#39;.<br>:</div></div><div>:</div><div>:=
</div><div><div>Collected errors:</div><div>| =A0* opkg_install_cmd: Cannot=
 install package dbus.</div>
<div>| =A0* opkg_install_cmd: Cannot install package dbus-glib.</div><div>|=
 ERROR: Function &#39;do_rootfs&#39; failed (see /home/poky/build/tmp/work/=
beagleboard-poky-linux-gnueabi/poky-image-minimal-1.0-r0/temp/log.do_rootfs=
.25765 for further information)</div>
<div>NOTE: package poky-image-minimal-1.0-r0: task do_rootfs: Failed</div><=
div>ERROR: Task 9 (/home/poky/meta/recipes-core/images/<a href=3D"http://po=
ky-image-minimal.bb">poky-image-minimal.bb</a>, do_rootfs) failed with exit=
 code &#39;1&#39;</div>
</div><div><br></div><div>Can anyone help me to find the solution !!!!!!</d=
iv><div><br></div><div><br></div><div><br></div><div>Chinmaya</div></div>

--00151773ea689d974a04a492cfc3--
