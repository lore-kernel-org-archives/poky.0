Return-Path: <andrei@gherzan.ro>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FD7DE01408
	for <poky@yoctoproject.org>; Thu, 14 Jun 2012 00:06:32 -0700 (PDT)
Received: by ggnk4 with SMTP id k4so1295026ggn.35
	for <poky@yoctoproject.org>; Thu, 14 Jun 2012 00:06:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=2Oy+Cc3dmL2D1sAqH1IzxyFuTdN/Krp18boJLaffSmQ=;
	b=UoDx0pXC4DbBcVhrPdJEiv/2aLbgSs9aJkyyodO0NhS3rk8wlSPm1mukF9vHWsJUBe
	DsOE7viaPiGdK6RjSF6Jg89UPKthg6pX3ijC/iTMZzBp9DsmmjiF71tfon4W49mfHuia
	5nNBWptJbIpsejRhPEwIAfzNaOTJyk5GYI0pt3bSm8ETeTy4QqRHQCBVfL/t8UCinbFG
	HM+87rkYrL/M926SWQrSQtQ4UmayieC/zhGh+/6LPV3mNFoQq/KQvO5fE1wgs0QYlG3y
	k0S9glapJb1WXfJtW8wTmJrc/q7NF08VMQ3c0FOwU4CAsaPF/IQ3a399y0VxBUoq8vmz
	DD5w==
Received: by 10.50.95.132 with SMTP id dk4mr225148igb.67.1339657591092; Thu,
	14 Jun 2012 00:06:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.162.166 with HTTP; Thu, 14 Jun 2012 00:06:10 -0700 (PDT)
X-Originating-IP: [79.117.123.32]
In-Reply-To: <4FD731A1.6020503@yahoo.fr>
References: <4FD731A1.6020503@yahoo.fr>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 14 Jun 2012 10:06:10 +0300
Message-ID: <CAK18fxGPgrxmXoJ5Wf4s_-2C8Bpnv-xetUBSHXsRVQi+VHheYQ@mail.gmail.com>
To: Patrick <kpa_info@yahoo.fr>
X-Gm-Message-State: ALoCoQnLt2xvWvLx86DEyg7zzsMgTUZRFFBGsuyqVDMkgW84auEMorcsAP/GGadFL3aQbgbjnBwz
Cc: poky@yoctoproject.org
Subject: Re: How to set root password
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
X-List-Received-Date: Thu, 14 Jun 2012 07:06:32 -0000
Content-Type: multipart/alternative; boundary=e89a8f234555d673e704c2695688

--e89a8f234555d673e704c2695688
Content-Type: text/plain; charset=ISO-8859-1

You can find your answer in these places:

core-image.bbclass - at the end of this file
zap_root_password () - from image.bbclass

@g
*
*



On Tue, Jun 12, 2012 at 3:10 PM, Patrick <kpa_info@yahoo.fr> wrote:

> Dear all,
>
> How could I set the root password on my own images ?
> I have found this post  on the FAQ but no answer...
> https://wiki.yoctoproject.org/**wiki/FAQ:How_do_I_set_or_**
> change_the_root_password<https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_set_or_change_the_root_password>
>
> Any help is welcome !
>
> Patrick
> ______________________________**_________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/poky<https://lists.yoctoproject.org/listinfo/poky>
>

--e89a8f234555d673e704c2695688
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

You can find your answer in these places:<br clear=3D"all"><div style=3D"te=
xt-align:center"></div><div style=3D"text-align:center"><div align=3D"left"=
><font face=3D"Arial" color=3D"#333333" size=3D"-1"><br></font></div><div a=
lign=3D"left">

<font color=3D"#333333" face=3D"Arial">core-image.bbclass - at the end of t=
his file</font></div><div align=3D"left"><font color=3D"#333333" face=3D"Ar=
ial">zap_root_password () - from=A0</font><span style=3D"text-align:center"=
><font color=3D"#333333" face=3D"Arial">image.bbclass</font></span></div>

<div align=3D"left"><span style=3D"text-align:center"><font color=3D"#33333=
3" face=3D"Arial"><br></font></span></div><div align=3D"left"><font color=
=3D"#333333" face=3D"Arial">@g</font></div></div><div style=3D"text-align:c=
enter"></div>
<div style=3D"text-align:center">
<div align=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;font-siz=
e:medium"><font face=3D"Arial" color=3D"#333333" size=3D"-1"><b><br></b></f=
ont></div></div><br>
<br><br><div class=3D"gmail_quote">On Tue, Jun 12, 2012 at 3:10 PM, Patrick=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:kpa_info@yahoo.fr" target=3D"_blan=
k">kpa_info@yahoo.fr</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">

Dear all,<br>
<br>
How could I set the root password on my own images ?<br>
I have found this post =A0on the FAQ but no answer...<br>
<a href=3D"https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_set_or_change_th=
e_root_password" target=3D"_blank">https://wiki.yoctoproject.org/<u></u>wik=
i/FAQ:How_do_I_set_or_<u></u>change_the_root_password</a><br>
<br>
Any help is welcome !<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
Patrick<br>
______________________________<u></u>_________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.<u></u>org/listinfo/poky</a><br>
</font></span></blockquote></div><br>

--e89a8f234555d673e704c2695688--
