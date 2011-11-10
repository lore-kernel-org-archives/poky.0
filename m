Return-Path: <vishwasonu2000@gmail.com>
Received: from mail-ww0-f42.google.com (mail-ww0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21729E00307
	for <poky@yoctoproject.org>; Wed,  9 Nov 2011 23:18:52 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwi18 with SMTP id 18so256769wwi.5
	for <poky@yoctoproject.org>; Wed, 09 Nov 2011 23:18:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=j/uTZYWBHefoO05wnAhjNlIJO4KZJFQCYZmjZ3zvdPs=;
	b=vA3PT9XKTGdGBgoXadBvX7hNq8/0vcrZoWQ8FOZ32I+ayHrH23d0AFE1SXgIb3FEnq
	cdjZbQMEq+OrunPc68k/2t8NatMrV5nLhGywjrmDPsrnzHPZ8Va+H95+N0jdKHRFqu30
	iSZvGdbTEzBckt38zqlhIrM5vjBduY+rw6rA4=
MIME-Version: 1.0
Received: by 10.180.102.4 with SMTP id fk4mr7175516wib.15.1320909531915; Wed,
	09 Nov 2011 23:18:51 -0800 (PST)
Received: by 10.180.81.65 with HTTP; Wed, 9 Nov 2011 23:18:51 -0800 (PST)
Date: Thu, 10 Nov 2011 12:48:51 +0530
Message-ID: <CABRtByM593uOJDGHKWMVmWU46AwzghwXCUZY=cPM5narFo47Pw@mail.gmail.com>
From: sonu vishwakarma <vishwasonu2000@gmail.com>
To: poky@yoctoproject.org
Subject: error cd: =/usr/lib: No such file or directory
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
X-List-Received-Date: Thu, 10 Nov 2011 07:18:53 -0000
X-Groupsio-MsgNum: 7164
Content-Type: multipart/mixed; boundary=f46d04447f116e24c504b15c37df

--f46d04447f116e24c504b15c37df
Content-Type: multipart/alternative; boundary=f46d04447f116e24c204b15c37dd

--f46d04447f116e24c204b15c37dd
Content-Type: text/plain; charset=ISO-8859-1

Hi,
I'm trying the build for libmicrohttpd but i'm getting some path related
error which is as follow:

 i586-poky-linux-libtool: link: warning: library
`/home/poky/build/tmp/sysroots/fishriver/usr/lib/libgcrypt.la' was moved.
| ../../../../i586-poky-linux-libtool: line 6402: cd: =/usr/lib: No such
file or directory
| i586-poky-linux-libtool: link: warning: cannot determine absolute
directory name of `=/usr/lib'
| /bin/grep: =/usr/lib/libgpg-error.la: No such file or directory
| /bin/sed: can't read =/usr/lib/libgpg-error.la: No such file or directory
| i586-poky-linux-libtool: link: `=/usr/lib/libgpg-error.la' is not a valid
libtool archive.

I'm attaching the recipe with the mail.

I'm pulling for the Fishriver machine . My host machine is Ubuntu 10.10 ,64
bit .
Can someone help me out of this problem ?
Thanks & Regards,
Sonu.

--f46d04447f116e24c204b15c37dd
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<font class=3D"Apple-style-span" face=3D"arial, sans-serif"><br></font><spa=
n class=3D"Apple-style-span" style=3D"font-family: arial, sans-serif; font-=
size: 13px; background-color: rgb(255, 255, 255); "><span style=3D"font-fam=
ily: arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 25=
5); "></span></span><div>
<font class=3D"Apple-style-span" face=3D"arial, sans-serif"><br></font></di=
v><div><font class=3D"Apple-style-span" face=3D"arial, sans-serif">Hi,</fon=
t></div><div><font class=3D"Apple-style-span" face=3D"arial, sans-serif">I&=
#39;m trying the build for=A0libmicrohttpd but i&#39;m getting some path re=
lated error which is as follow:</font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><br></font=
></div><div><font class=3D"Apple-style-span" face=3D"arial, sans-serif"><di=
v>=A0i586-poky-linux-libtool: link: warning: library `/home/poky/build/tmp/=
sysroots/fishriver/usr/lib/<a href=3D"http://libgcrypt.la">libgcrypt.la</a>=
&#39; was moved.</div>
<div>| ../../../../i586-poky-linux-libtool: line 6402: cd: =3D/usr/lib: No =
such file or directory</div><div>| i586-poky-linux-libtool: link: warning: =
cannot determine absolute directory name of `=3D/usr/lib&#39;</div><div>| /=
bin/grep: =3D/usr/lib/<a href=3D"http://libgpg-error.la">libgpg-error.la</a=
>: No such file or directory</div>
<div>| /bin/sed: can&#39;t read =3D/usr/lib/<a href=3D"http://libgpg-error.=
la">libgpg-error.la</a>: No such file or directory</div><div>| i586-poky-li=
nux-libtool: link: `=3D/usr/lib/<a href=3D"http://libgpg-error.la">libgpg-e=
rror.la</a>&#39; is not a valid libtool archive.</div>
<div><br></div><div>I&#39;m attaching the recipe with the mail.</div><div><=
br></div></font><span class=3D"Apple-style-span" style=3D"font-family: aria=
l, sans-serif; background-color: rgb(255, 255, 255); "><span style=3D"font-=
family: &#39;Times New Roman&#39;; white-space: pre-wrap; background-color:=
 rgb(255, 255, 255); ">I&#39;m pulling for the Fishriver machine . My host =
machine is Ubuntu 10.10 ,64 bit . </span><div>
<font face=3D"&#39;Times New Roman&#39;"><span style=3D"white-space: pre-wr=
ap; ">Can someone help me out of this problem ? </span></font></div><div><f=
ont face=3D"&#39;Times New Roman&#39;"><span style=3D"white-space: pre-wrap=
; ">
</span></font></div><div><font face=3D"&#39;Times New Roman&#39;"><span sty=
le=3D"white-space: pre-wrap; ">Thanks &amp; Regards,</span></font></div><di=
v><font face=3D"&#39;Times New Roman&#39;"><span style=3D"white-space: pre-=
wrap; ">Sonu.</span></font></div>
</span></div>

--f46d04447f116e24c204b15c37dd--

--f46d04447f116e24c504b15c37df
Content-Type: application/octet-stream; name="libmicrohttpd_0.4.6.bb"
Content-Disposition: attachment; filename="libmicrohttpd_0.4.6.bb"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_gutfejx20

REVTQ1JJUFRJT04gPSAiR05VIGxpYm1pY3JvaHR0cGQgaXMgYSBzbWFsbCBDIGxpYnJhcnkgdGhh
dCBpcyBzdXBwb3NlZCB0byBtYWtlIGl0IGVhc3kgdG8gcnVuIGFuIEhUVFAgc2VydmVyIGFzIHBh
cnQgb2YgYW5vdGhlciBhcHBsaWNhdGlvbi4iCkxJQ0VOU0UgPSAiTEdQTHYyLjEiCgpTUkNfVVJJ
ID0gImZ0cDovL2Z0cC5ubHV1Zy5ubC9wdWIvZ251L2xpYm1pY3JvaHR0cGQvL2xpYm1pY3JvaHR0
cGQtJHtQVn0udGFyLmd6IgpTUkNfVVJJW21kNXN1bV0gPSAiNjE2OThkYTZhYTA0NzQ0ZWEwNzZj
MzI3ZjY2ZmMwNWEiClNSQ19VUklbc2hhMjU2c3VtXSA9ICIwY2IwOWUyNjY3OGQxNTMxYTRmZDQw
YTc0OGFiZmY1MTQyYmZkYWQzYWUxMWNmZTNiYjdhZDczMTdhOTllMzcxIgoKREVQRU5EUyA9ICJs
aWJnY3J5cHQgY3VybCIKCmluaGVyaXQgYXV0b3Rvb2xzIGxpYl9wYWNrYWdlCgpkb19jb21waWxl
X2FwcGVuZCgpIHsKCXNlZCAtaSBzOi1MJHtTVEFHSU5HX0xJQkRJUn06OmcgbGlibWljcm9odHRw
ZC5wYwp9Cg==

--f46d04447f116e24c504b15c37df--
