Return-Path: <cahoshing@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0375E013A3
	for <poky@yoctoproject.org>; Tue, 21 Feb 2012 22:20:37 -0800 (PST)
Received: by wgbdq12 with SMTP id dq12so5896078wgb.11
	for <poky@yoctoproject.org>; Tue, 21 Feb 2012 22:20:36 -0800 (PST)
Received-SPF: pass (google.com: domain of cahoshing@gmail.com designates
	10.180.86.105 as permitted sender) client-ip=10.180.86.105; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of cahoshing@gmail.com
	designates 10.180.86.105 as permitted sender)
	smtp.mail=cahoshing@gmail.com;
	dkim=pass header.i=cahoshing@gmail.com
Received: from mr.google.com ([10.180.86.105])
	by 10.180.86.105 with SMTP id o9mr32271890wiz.4.1329891636612 (num_hops
	= 1); Tue, 21 Feb 2012 22:20:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=v75yppfZPye64+PQdI0sJJ/L+d5FRdbjlHF5vgmhu28=;
	b=ruBLgBLzo/GOBjU51OK1ljsmzuYbzFKbIjbvGDRpH3fFIRoh/2xx0ZpLyLSAaLPryX
	zZIgNkuLT3ctBhoN9M/A/qhOJmDFCPYVvMDHjHtpXl1V+roXWmp6AikJd1PABSCuR3ur
	Cg0Mg3K4Gm3FucFPe0m3uVgd+cOjemb4uy+4E=
MIME-Version: 1.0
Received: by 10.180.86.105 with SMTP id o9mr26787376wiz.4.1329891635721; Tue,
	21 Feb 2012 22:20:35 -0800 (PST)
Received: by 10.223.143.19 with HTTP; Tue, 21 Feb 2012 22:20:35 -0800 (PST)
Date: Wed, 22 Feb 2012 11:50:35 +0530
Message-ID: <CAMTw45B_fy7-YnK+GrJ7dPAJWQ-dH0yF59bF_ZOhLeHc6p6BYA@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: poky@yoctoproject.org
Subject: Error in compilation of opkg pacakge
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
X-List-Received-Date: Wed, 22 Feb 2012 06:20:38 -0000
Content-Type: multipart/alternative; boundary=f46d0418266289763304b9878644

--f46d0418266289763304b9878644
Content-Type: text/plain; charset=ISO-8859-1

Hi ,

I am building poky working on bernard branch on Ubuntu 10.10 ,32bit host
machine and
compiling xbmc with all its dependency pulled and is working fine.

But if I  start the complete build from scratch I get the error in
do_compile in opkg package something like this :

| i586-poky-linux-libtool: link: warning:
`/home/sct/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libgcrypt.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/sct/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libtasn1.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/sct/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libz.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/sct/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libgcrypt.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/sct/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libgpg-error.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/sct/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libgpg-error.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/sct/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libtasn1.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/sct/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libz.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/sct/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libgcrypt.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/sct/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libgpg-error.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/sct/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libgpg-error.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/sct/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libgpg-error.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/sct/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libassuan.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/sct/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libgpg-error.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/sct/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libgpg-error.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/sct/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libgpg-error.la' seems to be moved
| i586-poky-linux-libtool: link: warning:
`/home/sct/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/
libgpg-error.la' seems to be moved
| Making all in src
|   CC    opkg-cl.o
|   LINK  opkg-cl
|
/home/sct/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/libldap.so:
undefined reference to `sys_errlist@GLIBC_2.12'
|
/home/sct/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/libldap.so:
undefined reference to `sys_nerr@GLIBC_2.12'
| collect2: ld returned 1 exit status
| make[1]: *** [opkg-cl] Error 1
| make: *** [all-recursive] Error 1
| FATAL: oe_runmake failed
| ERROR: Function 'do_compile' failed (see
/home/sct/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/work/atom-poky-linux/opkg-1_0.1.8+svnr596-r1/temp/log.do_compile.13807
for further information)
NOTE: package opkg-1_0.1.8+svnr596-r1: task do_compile: Failed
ERROR: Task 2964
(/home/sct/xbmc_final/test/poky_xbmc_01Dec2011/meta/recipes-devtools/opkg/
opkg_svn.bb, do_compile) failed with exit code '1'


I just tried to  remove all instances of opkg and openldap in build folder
i.e remove the source from build/tmp/work folder ,remove the stamps and
clean from sstate-cache
then perform bitbake opkg ,I dont get any error and the build continues

So why I am getting this problem if I am start the build from scratch can
anybody help me I want the whole build to be completed continuously and how
can I avoid this type of error .

Regards
Chinmaya

--f46d0418266289763304b9878644
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi ,</div><div><br></div><div><div>I am building poky=
 working on bernard branch on Ubuntu 10.10 ,32bit host machine and=A0</div>=
<div>compiling xbmc with all its dependency pulled and is working fine.</di=
v>
<div><br></div><div>But if I=A0=A0start the complete build from scratch I g=
et the error in do_compile in opkg=A0package=A0something like this : =A0=A0=
</div><div><br></div><div>| i586-poky-linux-libtool: link: warning: `/home/=
sct/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/li=
b/<a href=3D"http://libgcrypt.la" target=3D"_blank">libgcrypt.la</a>&#39; s=
eems to be moved</div>
</div>
<div>| i586-poky-linux-libtool: link: warning: `/home/sct/xbmc_final/test/p=
oky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://l=
ibtasn1.la" target=3D"_blank">libtasn1.la</a>&#39; seems to be moved</div>
<div>| i586-poky-linux-libtool: link: warning: `/home/sct/xbmc_final/test/p=
oky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://l=
ibz.la" target=3D"_blank">libz.la</a>&#39; seems to be moved</div>
<div>| i586-poky-linux-libtool: link: warning: `/home/sct/xbmc_final/test/p=
oky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://l=
ibgcrypt.la" target=3D"_blank">libgcrypt.la</a>&#39; seems to be moved</div=
>
<div>| i586-poky-linux-libtool: link: warning: `/home/sct/xbmc_final/test/p=
oky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://l=
ibgpg-error.la" target=3D"_blank">libgpg-error.la</a>&#39; seems to be move=
d</div>

<div>| i586-poky-linux-libtool: link: warning: `/home/sct/xbmc_final/test/p=
oky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://l=
ibgpg-error.la" target=3D"_blank">libgpg-error.la</a>&#39; seems to be move=
d</div>
<div>| i586-poky-linux-libtool: link: warning: `/home/sct/xbmc_final/test/p=
oky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://l=
ibtasn1.la" target=3D"_blank">libtasn1.la</a>&#39; seems to be moved</div>
<div>| i586-poky-linux-libtool: link: warning: `/home/sct/xbmc_final/test/p=
oky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://l=
ibz.la" target=3D"_blank">libz.la</a>&#39; seems to be moved</div><div>| i5=
86-poky-linux-libtool: link: warning: `/home/sct/xbmc_final/test/poky_xbmc_=
01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://libgcrypt.=
la" target=3D"_blank">libgcrypt.la</a>&#39; seems to be moved</div>

<div>| i586-poky-linux-libtool: link: warning: `/home/sct/xbmc_final/test/p=
oky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://l=
ibgpg-error.la" target=3D"_blank">libgpg-error.la</a>&#39; seems to be move=
d</div>
<div>| i586-poky-linux-libtool: link: warning: `/home/sct/xbmc_final/test/p=
oky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://l=
ibgpg-error.la" target=3D"_blank">libgpg-error.la</a>&#39; seems to be move=
d</div>

<div>| i586-poky-linux-libtool: link: warning: `/home/sct/xbmc_final/test/p=
oky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://l=
ibgpg-error.la" target=3D"_blank">libgpg-error.la</a>&#39; seems to be move=
d</div>
<div>| i586-poky-linux-libtool: link: warning: `/home/sct/xbmc_final/test/p=
oky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://l=
ibassuan.la" target=3D"_blank">libassuan.la</a>&#39; seems to be moved</div=
>

<div>| i586-poky-linux-libtool: link: warning: `/home/sct/xbmc_final/test/p=
oky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://l=
ibgpg-error.la" target=3D"_blank">libgpg-error.la</a>&#39; seems to be move=
d</div>
<div>| i586-poky-linux-libtool: link: warning: `/home/sct/xbmc_final/test/p=
oky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://l=
ibgpg-error.la" target=3D"_blank">libgpg-error.la</a>&#39; seems to be move=
d</div>

<div>| i586-poky-linux-libtool: link: warning: `/home/sct/xbmc_final/test/p=
oky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://l=
ibgpg-error.la" target=3D"_blank">libgpg-error.la</a>&#39; seems to be move=
d</div>
<div>| i586-poky-linux-libtool: link: warning: `/home/sct/xbmc_final/test/p=
oky_xbmc_01Dec2011/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://l=
ibgpg-error.la" target=3D"_blank">libgpg-error.la</a>&#39; seems to be move=
d</div>

<div>| Making all in src</div><div>| =A0 CC =A0 =A0opkg-cl.o</div><div>| =
=A0 LINK =A0opkg-cl</div><div>| /home/sct/xbmc_final/test/poky_xbmc_01Dec20=
11/build/tmp/sysroots/fishriver/usr/lib/libldap.so: undefined reference to =
`sys_errlist@GLIBC_2.12&#39;</div>

<div>| /home/sct/xbmc_final/test/poky_xbmc_01Dec2011/build/tmp/sysroots/fis=
hriver/usr/lib/libldap.so: undefined reference to `sys_nerr@GLIBC_2.12&#39;=
</div><div>| collect2: ld returned 1 exit status</div><div>| make[1]: *** [=
opkg-cl] Error 1</div>

<div>| make: *** [all-recursive] Error 1</div><div>| FATAL: oe_runmake fail=
ed</div><div>| ERROR: Function &#39;do_compile&#39; failed (see /home/sct/x=
bmc_final/test/poky_xbmc_01Dec2011/build/tmp/work/atom-poky-linux/opkg-1_0.=
1.8+svnr596-r1/temp/log.do_compile.13807 for further information)</div>

<div>NOTE: package opkg-1_0.1.8+svnr596-r1: task do_compile: Failed</div><d=
iv>ERROR: Task 2964 (/home/sct/xbmc_final/test/poky_xbmc_01Dec2011/meta/rec=
ipes-devtools/opkg/<a href=3D"http://opkg_svn.bb" target=3D"_blank">opkg_sv=
n.bb</a>, do_compile) failed with exit code &#39;1&#39;</div>
<div><br></div><div><br></div><div><div>I just tried to =A0remove all insta=
nces of opkg and openldap in build folder i.e remove the source from build/=
tmp/work folder ,remove the stamps and clean from sstate-cache</div><div>
then perform bitbake opkg ,I dont get any error and the build continues</di=
v><div><br></div><div>So why I am getting this problem if I am start the bu=
ild from scratch can anybody help me I want the whole build to be completed=
 continuously and how can I avoid this type of error .</div>
</div><div><br></div><div>Regards=A0</div><div>Chinmaya</div>
</div>

--f46d0418266289763304b9878644--
