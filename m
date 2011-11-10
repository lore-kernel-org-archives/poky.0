Return-Path: <vishwasonu2000@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 991C0E00307
	for <poky@yoctoproject.org>; Thu, 10 Nov 2011 02:38:13 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwi36 with SMTP id 36so1619146wwi.11
	for <poky@yoctoproject.org>; Thu, 10 Nov 2011 02:38:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=kXUZDyl6Fetsizdbvuhn0+LnfNw/3etCML2I0X0BuiI=;
	b=LVAkxFAMOGaNnC6sehg2JuyCvXw2fHhFJo/IGID3q1aqCT8MyI5GYyKbUnUwGWtlth
	+DiEq0TxJnG/1WFGFsSKFmiJTq/zWn7ymvBjUP0Y81GMjfXyNN4UTr5u5RgKlcznmXth
	jtql3Rl3PGkJMPjrz2p8IIDML4v+/irWL10ls=
MIME-Version: 1.0
Received: by 10.180.89.5 with SMTP id bk5mr7848510wib.60.1320921491731; Thu,
	10 Nov 2011 02:38:11 -0800 (PST)
Received: by 10.180.81.65 with HTTP; Thu, 10 Nov 2011 02:38:11 -0800 (PST)
Date: Thu, 10 Nov 2011 16:08:11 +0530
Message-ID: <CABRtByMJ=A-e09p_PH3Yp7ngdVNjNLhg0tU8BB0EGTcouGz6ng@mail.gmail.com>
From: sonu vishwakarma <vishwasonu2000@gmail.com>
To: poky@yoctoproject.org
Subject: error : WinSystemX11.cpp:302:25: error: 'struct SDL_SysWMinfo' has no member named 'info'
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
X-List-Received-Date: Thu, 10 Nov 2011 10:38:14 -0000
Content-Type: multipart/alternative; boundary=f46d04447e1f4a75e804b15f0032

--f46d04447e1f4a75e804b15f0032
Content-Type: text/plain; charset=ISO-8859-1

Hi,
I'm trying the build for XBMC 10.0 . I'm getting compilation error as below:

 WinSystemX11.cpp: In member function 'bool
CWinSystemX11::RefreshGlxContext()':
| WinSystemX11.cpp:302:25: error: 'struct SDL_SysWMinfo' has no member
named 'info'
| WinSystemX11.cpp:316:21: error: 'struct SDL_SysWMinfo' has no member
named 'info'
| WinSystemX11.cpp:317:21: error: 'struct SDL_SysWMinfo' has no member
named 'info'
| make[1]: *** [WinSystemX11.o] Error 1
| make[1]: *** Waiting for unfinished jobs....
| make[1]: Leaving directory
`/home/poky/build/tmp/work/atom-poky-linux/xbmc-10.0-r0/xbmc-10.0/xbmc'
| make: *** [xbmc/xbmc.a] Error 2
| FATAL: oe_runmake failed
| ERROR: Function 'do_compile' failed (see
/home/poky/build/tmp/work/atom-poky-linux/xbmc-10.0-r0/temp/log.do_compile.31272
for further information)
NOTE: package xbmc-10.0-r0: task do_compile: Failed

I'm pulling for the Fishriver machine . My host machine is Ubuntu 10.10 ,64
bit .
Can someone help me out of this problem ?
Thanks & Regards,
Sonu.

--f46d04447e1f4a75e804b15f0032
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div><font class=3D"Apple-style-span" face=3D"arial, helvetica, sans-serif"=
><br></font></div><div><font class=3D"Apple-style-span" face=3D"arial, helv=
etica, sans-serif">Hi,</font></div><div><font class=3D"Apple-style-span" fa=
ce=3D"arial, helvetica, sans-serif">I&#39;m trying the build for XBMC 10.0 =
. I&#39;m getting compilation error as below:</font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, helvetica, sans-serif"=
><br></font></div><div><font class=3D"Apple-style-span" face=3D"arial, helv=
etica, sans-serif">=A0WinSystemX11.cpp: In member function &#39;bool CWinSy=
stemX11::RefreshGlxContext()&#39;:</font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, helvetica, sans-serif"=
>| WinSystemX11.cpp:302:25: error: &#39;struct SDL_SysWMinfo&#39; has no me=
mber named &#39;info&#39;</font></div><div><font class=3D"Apple-style-span"=
 face=3D"arial, helvetica, sans-serif">| WinSystemX11.cpp:316:21: error: &#=
39;struct SDL_SysWMinfo&#39; has no member named &#39;info&#39;</font></div=
>
<div><font class=3D"Apple-style-span" face=3D"arial, helvetica, sans-serif"=
>| WinSystemX11.cpp:317:21: error: &#39;struct SDL_SysWMinfo&#39; has no me=
mber named &#39;info&#39;</font></div><div><font class=3D"Apple-style-span"=
 face=3D"arial, helvetica, sans-serif">| make[1]: *** [WinSystemX11.o] Erro=
r 1</font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, helvetica, sans-serif"=
>| make[1]: *** Waiting for unfinished jobs....</font></div><div><font clas=
s=3D"Apple-style-span" face=3D"arial, helvetica, sans-serif">| make[1]: Lea=
ving directory `/home/poky/build/tmp/work/atom-poky-linux/xbmc-10.0-r0/xbmc=
-10.0/xbmc&#39;</font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, helvetica, sans-serif"=
>| make: *** [xbmc/xbmc.a] Error 2</font></div><div><font class=3D"Apple-st=
yle-span" face=3D"arial, helvetica, sans-serif">| FATAL: oe_runmake failed<=
/font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, helvetica, sans-serif"=
>| ERROR: Function &#39;do_compile&#39; failed (see /home/poky/build/tmp/wo=
rk/atom-poky-linux/xbmc-10.0-r0/temp/log.do_compile.31272 for further infor=
mation)</font></div>
<div><font class=3D"Apple-style-span" face=3D"arial, helvetica, sans-serif"=
>NOTE: package xbmc-10.0-r0: task do_compile: Failed</font></div><div><font=
 class=3D"Apple-style-span" face=3D"arial, helvetica, sans-serif"><br></fon=
t></div>
<div><span class=3D"Apple-style-span" style=3D"white-space: pre-wrap; backg=
round-color: rgb(255, 255, 255); "><font class=3D"Apple-style-span" face=3D=
"arial, helvetica, sans-serif">I&#39;m pulling for the Fishriver machine . =
My host machine is Ubuntu 10.10 ,64 bit . </font></span></div>
<div><span class=3D"Apple-style-span" style=3D"background-color: rgb(255, 2=
55, 255); "><font class=3D"Apple-style-span" face=3D"arial, helvetica, sans=
-serif"><div><span style=3D"white-space: pre-wrap; ">Can someone help me ou=
t of this problem ? </span></div>
<div><span style=3D"white-space: pre-wrap; ">
</span></div><div><span style=3D"white-space: pre-wrap; ">Thanks &amp; Rega=
rds,</span></div><div><font><span style=3D"white-space: pre-wrap; ">Sonu.</=
span></font></div></font></span></div>

--f46d04447e1f4a75e804b15f0032--
