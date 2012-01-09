Return-Path: <vishwasonu2000@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E9D9E0121A
	for <poky@yoctoproject.org>; Mon,  9 Jan 2012 04:08:38 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wibhq4 with SMTP id hq4so3797997wib.35
	for <poky@yoctoproject.org>; Mon, 09 Jan 2012 04:08:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=If8sFUQsYHTi+w9vmPCuOyK1tjmUIHvijV+S6ymHL8g=;
	b=mx4UM8ivSWQc0ECSMWqIvQ8aFFt3r5LJJ7uzNw1lH6pjW+vUP2x5bpLRqmTY/F1ZTa
	/7nm2qhxwWcm/vlrG2K8reJ13uIIridIwzpMxzpCPG5wLN4ZnIUDV2mtCRjHj7MX2CaB
	ZimwBI3nXdCBxE1vd/RvCoFlWjg/ob27af8qI=
MIME-Version: 1.0
Received: by 10.180.101.35 with SMTP id fd3mr26693353wib.22.1326110917700;
	Mon, 09 Jan 2012 04:08:37 -0800 (PST)
Received: by 10.180.7.9 with HTTP; Mon, 9 Jan 2012 04:08:37 -0800 (PST)
Date: Mon, 9 Jan 2012 17:38:37 +0530
Message-ID: <CABRtByOefPO-tZp6sF7QAFjgobGHK82GNkT6fqTbA6Hrwk8MFA@mail.gmail.com>
From: sonu vishwakarma <vishwasonu2000@gmail.com>
To: poky@yoctoproject.org
Subject: ERROR: '/home/poky/vlc/vlc_1.1.11.bb' failed
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
X-List-Received-Date: Mon, 09 Jan 2012 12:08:39 -0000
Content-Type: multipart/alternative; boundary=f46d041825522eab0e04b61742f0

--f46d041825522eab0e04b61742f0
Content-Type: text/plain; charset=ISO-8859-1

Hi,
I'm trying the build for vlc , i'm getting the compilation error as follows:

| i586-poky-linux-libtool: link: warning:
`/home/poky/build/tmp/sysroots/fishriver/usr/lib/libdbus-1.la' seems to be
moved
| i586-poky-linux-libtool: link: warning:
`/home/poky/build/tmp/sysroots/fishriver/usr/lib/libdbus-1.la' seems to be
moved
| i586-poky-linux-libtool: link: warning:
`/home/poky/build/tmp/sysroots/fishriver/usr/lib/libdbus-1.la' seems to be
moved
| i586-poky-linux-libtool: link: warning:
`/home/poky/build/tmp/sysroots/fishriver/usr/lib/libdbus-1.la' seems to be
moved
|
/home/poky/build/tmp/sysroots/x86_64-linux/usr/libexec/atom-poky-linux/gcc/i586-poky-linux/4.5.1/ld:
cannot find -ldvdnav
|
/home/poky/build/tmp/sysroots/x86_64-linux/usr/libexec/atom-poky-linux/gcc/i586-poky-linux/4.5.1/ld:
cannot find -ldvdread
| collect2: ld returned 1 exit status
| make[5]: *** [libdvdnav_plugin.la] Error 1
| make[5]: *** Waiting for unfinished jobs....
| make[5]: Leaving directory
`/home/poky/build/tmp/work/atom-poky-linux/vlc-1.1.11-r1/vlc-1.1.11/modules/access'
| make[4]: *** [all-recursive] Error 1
| make[4]: Leaving directory
`/home/poky/build/tmp/work/atom-poky-linux/vlc-1.1.11-r1/vlc-1.1.11/modules/access'
| make[3]: *** [all] Error 2
| make[3]: Leaving directory
`/home/poky/build/tmp/work/atom-poky-linux/vlc-1.1.11-r1/vlc-1.1.11/modules/access'
| make[2]: *** [all-recursive] Error 1
| make[2]: Leaving directory
`/home/poky/build/tmp/work/atom-poky-linux/vlc-1.1.11-r1/vlc-1.1.11/modules'
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory
`/home/poky/build/tmp/work/atom-poky-linux/vlc-1.1.11-r1/vlc-1.1.11'
| make: *** [all] Error 2
| FATAL: oe_runmake failed
| ERROR: Function 'do_compile' failed (see
/home/poky/build/tmp/work/atom-poky-linux/vlc-1.1.11-r1/temp/log.do_compile.27091
for further information)
NOTE: package vlc-1.1.11-r1: task do_compile: Failed


I'm pulling for the Fishriver machine . My host machine is Ubuntu 10.10 ,64
bit .
Can someone help me out of this problem ?
Thanks & Regards,
Sonu.

--f46d041825522eab0e04b61742f0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<span class=3D"Apple-style-span" style>Hi,<div>I&#39;m trying the build for=
 vlc , i&#39;m getting the compilation error as follows:</div><div><br></di=
v><div><div>| i586-poky-linux-libtool: link: warning: `/home/poky/build/tmp=
/sysroots/fishriver/usr/lib/<a href=3D"http://libdbus-1.la">libdbus-1.la</a=
>&#39; seems to be moved</div>
<div>| i586-poky-linux-libtool: link: warning: `/home/poky/build/tmp/sysroo=
ts/fishriver/usr/lib/<a href=3D"http://libdbus-1.la">libdbus-1.la</a>&#39; =
seems to be moved</div><div>| i586-poky-linux-libtool: link: warning: `/hom=
e/poky/build/tmp/sysroots/fishriver/usr/lib/<a href=3D"http://libdbus-1.la"=
>libdbus-1.la</a>&#39; seems to be moved</div>
<div>| i586-poky-linux-libtool: link: warning: `/home/poky/build/tmp/sysroo=
ts/fishriver/usr/lib/<a href=3D"http://libdbus-1.la">libdbus-1.la</a>&#39; =
seems to be moved</div><div>| /home/poky/build/tmp/sysroots/x86_64-linux/us=
r/libexec/atom-poky-linux/gcc/i586-poky-linux/4.5.1/ld: cannot find -ldvdna=
v</div>
<div>| /home/poky/build/tmp/sysroots/x86_64-linux/usr/libexec/atom-poky-lin=
ux/gcc/i586-poky-linux/4.5.1/ld: cannot find -ldvdread</div><div>| collect2=
: ld returned 1 exit status</div><div>| make[5]: *** [<a href=3D"http://lib=
dvdnav_plugin.la">libdvdnav_plugin.la</a>] Error 1</div>
<div>| make[5]: *** Waiting for unfinished jobs....</div><div>| make[5]: Le=
aving directory `/home/poky/build/tmp/work/atom-poky-linux/vlc-1.1.11-r1/vl=
c-1.1.11/modules/access&#39;</div><div>| make[4]: *** [all-recursive] Error=
 1</div>
<div>| make[4]: Leaving directory `/home/poky/build/tmp/work/atom-poky-linu=
x/vlc-1.1.11-r1/vlc-1.1.11/modules/access&#39;</div><div>| make[3]: *** [al=
l] Error 2</div><div>| make[3]: Leaving directory `/home/poky/build/tmp/wor=
k/atom-poky-linux/vlc-1.1.11-r1/vlc-1.1.11/modules/access&#39;</div>
<div>| make[2]: *** [all-recursive] Error 1</div><div>| make[2]: Leaving di=
rectory `/home/poky/build/tmp/work/atom-poky-linux/vlc-1.1.11-r1/vlc-1.1.11=
/modules&#39;</div><div>| make[1]: *** [all-recursive] Error 1</div><div>
| make[1]: Leaving directory `/home/poky/build/tmp/work/atom-poky-linux/vlc=
-1.1.11-r1/vlc-1.1.11&#39;</div><div>| make: *** [all] Error 2</div><div>| =
FATAL: oe_runmake failed</div><div>| ERROR: Function &#39;do_compile&#39; f=
ailed (see /home/poky/build/tmp/work/atom-poky-linux/vlc-1.1.11-r1/temp/log=
.do_compile.27091 for further information)</div>
<div>NOTE: package vlc-1.1.11-r1: task do_compile: Failed</div></div><div><=
br></div><div><br></div></span><span class=3D"Apple-style-span" style><div>=
<span style=3D"white-space:pre-wrap"><font face=3D"arial, helvetica, sans-s=
erif">I&#39;m pulling for the Fishriver machine . My host machine is Ubuntu=
 10.10 ,64 bit . </font></span></div>
<div><span><font face=3D"arial, helvetica, sans-serif"><div><span style=3D"=
white-space:pre-wrap">Can someone help me out of this problem ? </span></di=
v><div><span style=3D"white-space:pre-wrap">
</span></div><div><span style=3D"white-space:pre-wrap">Thanks &amp; Regards=
,</span></div><div><font><span style=3D"white-space:pre-wrap">Sonu.</span><=
/font></div></font></span></div></span>

--f46d041825522eab0e04b61742f0--
