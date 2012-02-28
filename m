Return-Path: <vishwasonu2000@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F5E7E00596
	for <poky@yoctoproject.org>; Mon, 27 Feb 2012 22:30:27 -0800 (PST)
Received: by wgbdq13 with SMTP id dq13so864578wgb.11
	for <poky@yoctoproject.org>; Mon, 27 Feb 2012 22:30:26 -0800 (PST)
Received-SPF: pass (google.com: domain of vishwasonu2000@gmail.com designates
	10.180.14.230 as permitted sender) client-ip=10.180.14.230; 
Authentication-Results: mr.google.com; spf=pass (google.com: domain of
	vishwasonu2000@gmail.com designates 10.180.14.230 as permitted
	sender) smtp.mail=vishwasonu2000@gmail.com;
	dkim=pass header.i=vishwasonu2000@gmail.com
Received: from mr.google.com ([10.180.14.230])
	by 10.180.14.230 with SMTP id s6mr1359321wic.2.1330410626218 (num_hops
	= 1); Mon, 27 Feb 2012 22:30:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=8TEy8yZsJSG6S29R8LZcGm6LqGjBQCTHq/VBLVP7KYI=;
	b=nBH7YSazCzDYhsbcYryYNb95dduPeS2EngysgdAgLBJazmkTsZ6nYkKFFVjbREk8lw
	mHWX8iYtLfvCHWtNQrbgfcp39TBO+7AoIKJY9HpMFT9cYgYMBl/p4q7qxah29HRUDURn
	kwV3NueK9nPHnG/PKjSluBXOW2giD1bPGU5ic=
MIME-Version: 1.0
Received: by 10.180.14.230 with SMTP id s6mr1076687wic.2.1330410626041; Mon,
	27 Feb 2012 22:30:26 -0800 (PST)
Received: by 10.180.14.106 with HTTP; Mon, 27 Feb 2012 22:30:26 -0800 (PST)
Date: Tue, 28 Feb 2012 12:00:26 +0530
Message-ID: <CABRtByOiXr_f0HYhM15NG6OWDuSMES73UvFfnuLeW11-uQOfQw@mail.gmail.com>
From: sonu vishwakarma <vishwasonu2000@gmail.com>
To: poky@yoctoproject.org
Subject: : undefined reference to `sys_errlist@GLIBC_2.12
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
X-List-Received-Date: Tue, 28 Feb 2012 06:30:27 -0000
Content-Type: multipart/alternative; boundary=f46d04138ce1c547e804ba005c0d

--f46d04138ce1c547e804ba005c0d
Content-Type: text/plain; charset=ISO-8859-1

Hi ,

I am building poky working on bernard branch on Ubuntu 10.10 ,64 bit host.
I get the error in do_compile in opkg package something like this :
| i586-poky-linux-libtool: link: warning:
`/home/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libgcrypt.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libtasn1.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libz.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libgcrypt.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libgpg-error.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libgpg-error.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libtasn1.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libz.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libgcrypt.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libgpg-error.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libgpg-error.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libgpg-error.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libassuan.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libgpg-error.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libgpg-error.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libgpg-error.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libgpg-error.la' seems to be moved
| Making all in src
|   CC    opkg-cl.o
|   LINK  opkg-cl
|
/home/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/libldap.so:
undefined reference to `sys_errlist@GLIBC_2.12'
|
/home/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/libldap.so:
undefined reference to `sys_nerr@GLIBC_2.12'
| collect2: ld returned 1 exit status
| make[1]: *** [opkg-cl] Error 1
| make: *** [all-recursive] Error 1
| FATAL: oe_runmake failed
| ERROR: Function 'do_compile' failed (see
/home/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/work/atom-poky-linux/opkg-1_0.1.8+svnr596-r1/temp/log.do_compile.13807
for further information)
NOTE: package opkg-1_0.1.8+svnr596-r1: task do_compile: Failed
ERROR: Task 2964
(/home/xbmc_final/test/poky_xbmc_01Dec2011/meta/recipes-devtools/opkg/
opkg_svn.bb, do_compile) failed with exit code '1'

Currently i'm having glibc-2.10 , Is it related to glibc package version ?
Can anyone help me out ??

Thanks in advance.
Sonu Vishwakarma

--f46d04138ce1c547e804ba005c0d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<span class=3D"Apple-style-span" style><div>Hi ,</div></span><span class=3D=
"Apple-style-span" style><div><span class=3D"Apple-style-span" style><br></=
span></div>I am building poky working on bernard branch on Ubuntu 10.10 ,64=
 bit host.</span><div>
<span class=3D"Apple-style-span" style>I get the error in do_compile in opk=
g=A0package=A0something like this :=A0</span></div><div><span class=3D"Appl=
e-style-span" style><div><div>| i586-poky-linux-libtool: link: warning: `/h=
ome/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/li=
b/<a href=3D"http://libgcrypt.la/" target=3D"_blank" style=3D"color:rgb(17,=
85,204)">libgcrypt.la</a>&#39; seems to be moved</div>
</div><div>| i586-poky-linux-libtool: link: warning: `/home/xbmc_final/test=
/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http:/=
/libtasn1.la/" target=3D"_blank" style=3D"color:rgb(17,85,204)">libtasn1.la=
</a>&#39; seems to be moved</div>
<div>| i586-poky-linux-libtool: link: warning: `/home/xbmc_final/test/poky_=
xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://libz.=
la/" target=3D"_blank" style=3D"color:rgb(17,85,204)">libz.la</a>&#39; seem=
s to be moved</div>
<div>| i586-poky-linux-libtool: link: warning: `/home/xbmc_final/test/poky_=
xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://libgc=
rypt.la/" target=3D"_blank" style=3D"color:rgb(17,85,204)">libgcrypt.la</a>=
&#39; seems to be moved</div>
<div>| i586-poky-linux-libtool: link: warning: `/home/xbmc_final/test/poky_=
xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://libgp=
g-error.la/" target=3D"_blank" style=3D"color:rgb(17,85,204)">libgpg-error.=
la</a>&#39; seems to be moved</div>
<div>| i586-poky-linux-libtool: link: warning: `/home/xbmc_final/test/poky_=
xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://libgp=
g-error.la/" target=3D"_blank" style=3D"color:rgb(17,85,204)">libgpg-error.=
la</a>&#39; seems to be moved</div>
<div>| i586-poky-linux-libtool: link: warning: `/home/xbmc_final/test/poky_=
xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://libta=
sn1.la/" target=3D"_blank" style=3D"color:rgb(17,85,204)">libtasn1.la</a>&#=
39; seems to be moved</div>
<div>| i586-poky-linux-libtool: link: warning: `/home/xbmc_final/test/poky_=
xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://libz.=
la/" target=3D"_blank" style=3D"color:rgb(17,85,204)">libz.la</a>&#39; seem=
s to be moved</div>
<div>| i586-poky-linux-libtool: link: warning: `/home/xbmc_final/test/poky_=
xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://libgc=
rypt.la/" target=3D"_blank" style=3D"color:rgb(17,85,204)">libgcrypt.la</a>=
&#39; seems to be moved</div>
<div>| i586-poky-linux-libtool: link: warning: `/home/xbmc_final/test/poky_=
xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://libgp=
g-error.la/" target=3D"_blank" style=3D"color:rgb(17,85,204)">libgpg-error.=
la</a>&#39; seems to be moved</div>
<div>| i586-poky-linux-libtool: link: warning: `/home/xbmc_final/test/poky_=
xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://libgp=
g-error.la/" target=3D"_blank" style=3D"color:rgb(17,85,204)">libgpg-error.=
la</a>&#39; seems to be moved</div>
<div>| i586-poky-linux-libtool: link: warning: `/home/xbmc_final/test/poky_=
xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://libgp=
g-error.la/" target=3D"_blank" style=3D"color:rgb(17,85,204)">libgpg-error.=
la</a>&#39; seems to be moved</div>
<div>| i586-poky-linux-libtool: link: warning: `/home/xbmc_final/test/poky_=
xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://libas=
suan.la/" target=3D"_blank" style=3D"color:rgb(17,85,204)">libassuan.la</a>=
&#39; seems to be moved</div>
<div>| i586-poky-linux-libtool: link: warning: `/home/xbmc_final/test/poky_=
xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://libgp=
g-error.la/" target=3D"_blank" style=3D"color:rgb(17,85,204)">libgpg-error.=
la</a>&#39; seems to be moved</div>
<div>| i586-poky-linux-libtool: link: warning: `/home/xbmc_final/test/poky_=
xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://libgp=
g-error.la/" target=3D"_blank" style=3D"color:rgb(17,85,204)">libgpg-error.=
la</a>&#39; seems to be moved</div>
<div>| i586-poky-linux-libtool: link: warning: `/home/xbmc_final/test/poky_=
xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://libgp=
g-error.la/" target=3D"_blank" style=3D"color:rgb(17,85,204)">libgpg-error.=
la</a>&#39; seems to be moved</div>
<div>| i586-poky-linux-libtool: link: warning: `/home/xbmc_final/test/poky_=
xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://libgp=
g-error.la/" target=3D"_blank" style=3D"color:rgb(17,85,204)">libgpg-error.=
la</a>&#39; seems to be moved</div>
<div>| Making all in src</div><div>| =A0 CC =A0 =A0opkg-cl.o</div><div>| =
=A0 LINK =A0opkg-cl</div><div>| /home/xbmc_final/test/poky_xbmc_01Dec2011/b=
uild/tmp/sysroots/fishriver/usr/lib/libldap.so: undefined reference to `sys=
_errlist@GLIBC_2.12&#39;</div>
<div>| /home/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriv=
er/usr/lib/libldap.so: undefined reference to `sys_nerr@GLIBC_2.12&#39;</di=
v><div>| collect2: ld returned 1 exit status</div><div>| make[1]: *** [opkg=
-cl] Error 1</div>
<div>| make: *** [all-recursive] Error 1</div><div>| FATAL: oe_runmake fail=
ed</div><div>| ERROR: Function &#39;do_compile&#39; failed (see /home/xbmc_=
final/test/poky_xbmc_01Dec2011/build/tmp/work/atom-poky-linux/opkg-1_0.1.8+=
svnr596-r1/temp/log.do_compile.13807 for further information)</div>
<div>NOTE: package opkg-1_0.1.8+svnr596-r1: task do_compile: Failed</div><d=
iv>ERROR: Task 2964 (/home/xbmc_final/test/poky_xbmc_01Dec2011/meta/recipes=
-devtools/opkg/<a href=3D"http://opkg_svn.bb/" target=3D"_blank" style=3D"c=
olor:rgb(17,85,204)">opkg_svn.bb</a>, do_compile) failed with exit code &#3=
9;1&#39;</div>
<div><br></div><div>Currently i&#39;m having glibc-2.10 , Is it related to =
glibc package version ?=A0</div><div>Can anyone help me out ??</div><div><b=
r></div><div>Thanks in advance.</div></span><span class=3D"Apple-style-span=
" style>Sonu Vishwakarma</span><span class=3D"Apple-style-span" style><div>
<br></div></span></div>

--f46d04138ce1c547e804ba005c0d--
