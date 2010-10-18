Return-Path: <jsauer@vernier.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id C9C104C80B60
	for <poky@lists.pokylinux.org>; Mon, 18 Oct 2010 18:40:41 -0500 (CDT)
Received: by pug.o-hand.com (Postfix)
	id 2993412EC2F9; Mon, 18 Oct 2010 19:16:04 -0500 (CDT)
Received: from na3sys009aog109.obsmtp.com (na3sys009aog109.obsmtp.com
	[74.125.149.201])
	by pug.o-hand.com (Postfix) with SMTP id C0EF912EC21F
	for <poky@o-hand.com>; Mon, 18 Oct 2010 19:16:03 -0500 (CDT)
Received: from source ([209.85.216.171]) by na3sys009aob109.postini.com
	([74.125.148.12]) with SMTP
	ID DSNKTLza+HQHpitQeKJ0GywXCSR2iJQxGnXm@postini.com;
	Mon, 18 Oct 2010 16:40:41 PDT
Received: by mail-qy0-f171.google.com with SMTP id 38so168253qyk.9
	for <poky@o-hand.com>; Mon, 18 Oct 2010 16:40:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.229.75.77 with SMTP id x13mr4480911qcj.58.1287445240661; Mon,
	18 Oct 2010 16:40:40 -0700 (PDT)
Received: by 10.229.66.93 with HTTP; Mon, 18 Oct 2010 16:40:40 -0700 (PDT)
Date: Mon, 18 Oct 2010 16:40:40 -0700
Message-ID: <AANLkTimT6dmQHiOq4Qve36h6=3HNXiF2zckvVjbj8PMK@mail.gmail.com>
From: Joe Sauer <jsauer@vernier.com>
To: poky@o-hand.com
Subject: qemu-arm broke after Ubuntu 10.04 libc upgrade
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Mon, 18 Oct 2010 23:40:42 -0000
Content-Type: multipart/alternative; boundary=0016364271523cc95f0492ecb4e0

--0016364271523cc95f0492ecb4e0
Content-Type: text/plain; charset=ISO-8859-1

A few days ago my Ubuntu 10.04 build machine pulled in this upgrade:

Upgrade: linux-libc-dev (2.6.32-24.42, 2.6.32-25.44),
linux-image-2.6.32-24-generic-pae (2.6.32-24.42, 2.6.32-24.43)

and now I can't build binary locales -- I get these errors building glibc:

qemu-arm: relocation error: qemu-arm: symbol fcntl,  version GLIBC_2.0 not
defined in file libpthread.so.0 with link time reference
qemu-arm: relocation error: qemu-arm: symbol unlink, version GLIBC_2.0 not
defined in file libc.so.6 with link time reference

Short of trying to back out that upgrade does anyone have an idea of a fix?

--Joe Sauer

--0016364271523cc95f0492ecb4e0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

A few days ago my Ubuntu 10.04 build machine pulled in this upgrade:<br><br=
><font size=3D"1"><span style=3D"font-family: courier new,monospace;">Upgra=
de: linux-libc-dev (2.6.32-24.42, 2.6.32-25.44), linux-image-2.6.32-24-gene=
ric-pae (2.6.32-24.42, 2.6.32-24.43)</span></font><br>
<br>and now I can&#39;t build binary locales -- I get these errors building=
 glibc:<br><br><font size=3D"1"><span style=3D"font-family: courier new,mon=
ospace;">qemu-arm: relocation error: qemu-arm: symbol fcntl,=A0 version GLI=
BC_2.0 not defined in file libpthread.so.0 with link time reference</span><=
br style=3D"font-family: courier new,monospace;">
<span style=3D"font-family: courier new,monospace;">qemu-arm: relocation er=
ror: qemu-arm: symbol unlink, version GLIBC_2.0 not defined in file libc.so=
.6 with link time reference</span></font><br><br>Short of trying to back ou=
t that upgrade does anyone have an idea of a fix?<br>
<br>--Joe Sauer<br>

--0016364271523cc95f0492ecb4e0--
