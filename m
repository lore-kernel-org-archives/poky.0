Return-Path: <jsauer@vernier.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 378514C810B4
	for <poky@lists.pokylinux.org>; Fri, 22 Oct 2010 19:04:23 -0500 (CDT)
Received: by pug.o-hand.com (Postfix)
	id D42D712EC203; Fri, 22 Oct 2010 19:39:58 -0500 (CDT)
Received: from na3sys009aog110.obsmtp.com (na3sys009aog110.obsmtp.com
	[74.125.149.203])
	by pug.o-hand.com (Postfix) with SMTP id 71F5612EC11B
	for <poky@o-hand.com>; Fri, 22 Oct 2010 19:39:58 -0500 (CDT)
Received: from source ([209.85.216.52]) by na3sys009aob110.postini.com
	([74.125.148.12]) with SMTP
	ID DSNKTMImhiqPwRoh+/m3NudXlZBbk/uBH9Kf@postini.com;
	Fri, 22 Oct 2010 17:04:22 PDT
Received: by mail-qw0-f52.google.com with SMTP id 5so208126qwh.25
	for <poky@o-hand.com>; Fri, 22 Oct 2010 17:04:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.229.229.10 with SMTP id jg10mr2976096qcb.3.1287792262002; Fri,
	22 Oct 2010 17:04:22 -0700 (PDT)
Received: by 10.229.66.93 with HTTP; Fri, 22 Oct 2010 17:04:21 -0700 (PDT)
In-Reply-To: <AANLkTimT6dmQHiOq4Qve36h6=3HNXiF2zckvVjbj8PMK@mail.gmail.com>
References: <AANLkTimT6dmQHiOq4Qve36h6=3HNXiF2zckvVjbj8PMK@mail.gmail.com>
Date: Fri, 22 Oct 2010 17:04:21 -0700
Message-ID: <AANLkTikrgDhE75nv7bbWTSJd5=QKahLOus7noENetC4P@mail.gmail.com>
From: Joe Sauer <jsauer@vernier.com>
To: poky@o-hand.com
Subject: Re: qemu-arm broke after Ubuntu 10.04 libc upgrade
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
X-List-Received-Date: Sat, 23 Oct 2010 00:04:23 -0000
Content-Type: multipart/alternative; boundary=0016363b934252384d04933d8028

--0016363b934252384d04933d8028
Content-Type: text/plain; charset=ISO-8859-1

I finally found the problem that was causing my build of glibc to fail.  I'm
sending this message for the benefit of posterity.

Here's the smoking gun:

jsauer@jazzman:/home/trunk.green/build$ sudo sysctl -n vm.mmap_min_addr
65536

Of course, that value should be 0!!!!!!

The Ubuntu 10.04 update of glibc/kernel last Friday must have set this value
back to the default.  Of course the error message I was getting gave NO CLUE
about the actual cause:

    qemu-arm: relocation error: qemu-arm: symbol unlink, version GLIBC_2.0
not defined in file libc.so.6 with link time reference

It only took a week to figure this out.  I'm going put the "sysctl -w
vm.mmap_min_addr=0" command in the build script so this can never happen
again!

--Joe


On Mon, Oct 18, 2010 at 4:40 PM, Joe Sauer <jsauer@vernier.com> wrote:

> A few days ago my Ubuntu 10.04 build machine pulled in this upgrade:
>
> Upgrade: linux-libc-dev (2.6.32-24.42, 2.6.32-25.44),
> linux-image-2.6.32-24-generic-pae (2.6.32-24.42, 2.6.32-24.43)
>
> and now I can't build binary locales -- I get these errors building glibc:
>
> qemu-arm: relocation error: qemu-arm: symbol fcntl,  version GLIBC_2.0 not
> defined in file libpthread.so.0 with link time reference
> qemu-arm: relocation error: qemu-arm: symbol unlink, version GLIBC_2.0 not
> defined in file libc.so.6 with link time reference
>
> Short of trying to back out that upgrade does anyone have an idea of a fix?
>
> --Joe Sauer
>

--0016363b934252384d04933d8028
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I finally found the problem that was causing my build of glibc to fail.=A0 =
I&#39;m sending this message for the benefit of posterity.<br><br>Here&#39;=
s the smoking gun:<br><br>jsauer@jazzman:/home/trunk.green/build$ sudo sysc=
tl -n vm.mmap_min_addr<br>
65536<br><br>Of course, that value should be 0!!!!!!<br><br>The Ubuntu 10.0=
4 update of glibc/kernel last Friday must have set this value back to the d=
efault.=A0 Of course the error message I was getting gave NO CLUE about the=
 actual cause:<br>
<br><font size=3D"1"><span style=3D"font-family: courier new,monospace;">=
=A0=A0=A0 qemu-arm: relocation error: qemu-arm: symbol unlink, version GLIB=
C_2.0 not defined in file libc.so.6 with link time reference</span></font><=
br><br>It only took a week to figure this out.=A0 I&#39;m going put the &qu=
ot;sysctl -w vm.mmap_min_addr=3D0&quot; command in the build script so this=
 can never happen again!<br>
<br>--Joe<br><br><br><div class=3D"gmail_quote">On Mon, Oct 18, 2010 at 4:4=
0 PM, Joe Sauer <span dir=3D"ltr">&lt;<a href=3D"mailto:jsauer@vernier.com"=
>jsauer@vernier.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin: 0pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(204, 204=
, 204); padding-left: 1ex;">
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
<font color=3D"#888888">
<br>--Joe Sauer<br>
</font></blockquote></div><br>

--0016363b934252384d04933d8028--
