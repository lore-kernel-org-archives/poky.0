Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18659E00C88; Mon,  4 Sep 2017 13:04:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f49.google.com (mail-pg0-f49.google.com [74.125.83.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1871DE00349
	for <poky@yoctoproject.org>; Mon,  4 Sep 2017 13:04:44 -0700 (PDT)
Received: by mail-pg0-f49.google.com with SMTP id 188so381934pgb.2
	for <poky@yoctoproject.org>; Mon, 04 Sep 2017 13:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=/vdJrbGOp4zG3UnjSRNDDAcPbcQsIF7lLreOHGZbMxU=;
	b=gVW+mxuWAj/FI+dGK4aqJ+oWEObZPhp4cIVSf8S1ETdGNNCeNUXHmJDegGDsrpJxsq
	eJoYHyrdYPWi4jlYzsQ4OXhfIb194aBYTMw2Dp1ktzvEiohEGWUJtpzBCtUSUvO1EnTI
	djjNutXRt0pvvw5jJC60GzPSShlWmPCn3Ec2DSQooUr30RJjmIFFQE4GBtPRavR++o9D
	cYLulu3ApiK/C64WMWq7zs7Fndxsack+AiaJF78HkdeVBXnSc7Ao2dIN5c19PeJdZd7t
	3VwWRrEZYhJP64f2YSAuqEj2/Ki1tDOUz3ErLxKnFhQQcz1Pen9yoYHBbYCGeDAH7lio
	ZIXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=/vdJrbGOp4zG3UnjSRNDDAcPbcQsIF7lLreOHGZbMxU=;
	b=CqDzvZkZWIsY2sfUN8fV0YX/wfESTTPiG7Cb4B2A91Murc/oAS5PhRP3ByJiGZYuTR
	e08V3Xd0XfK/w/yRuPOv41JB2Vyr8mzesMWGybra1o8CG497EXrcS93yQXLmngOS8NFi
	RJ/PP9OioFIflRSlX4ry3DAUgoKFOJ5ysDIaPkvmMHmLTjAWx8KhTG6A87RSe4C8BwBO
	6MM2Zt84acL9fk7ZmoVABK/+H/Ns938JBTfEBxXVwDo/bQJzisjcbwV+O1soyVlu8/dS
	Z8ir45O/RTcL8YQT0ykYfT5My9JnB6QOd6NwHs6w2k1xA3FgWY+MW2FuI8cIY4mkIxkp
	9XBQ==
X-Gm-Message-State: AHPjjUhYk3g8yxhvMoXcWV/ouoZ+i9NzIfp9bOqsQo/f+UIscr+NZsQ7
	xgnlac5KrboXEB1HasHpfLWxmGXGnw==
X-Google-Smtp-Source: ADKCNb4NoQpHopIzZhAr8rJL5PzJJp+yyVh6hxbSHJ5+e1876bwAfwTZclVSXa23yPp5T3KqS3/ggIBjSfhuUWmuHZk=
X-Received: by 10.84.211.46 with SMTP id b43mr1786058pli.161.1504555483864;
	Mon, 04 Sep 2017 13:04:43 -0700 (PDT)
MIME-Version: 1.0
References: <HE1PR0302MB281135B6973C24FBEDFA9E04AC910@HE1PR0302MB2811.eurprd03.prod.outlook.com>
In-Reply-To: <HE1PR0302MB281135B6973C24FBEDFA9E04AC910@HE1PR0302MB2811.eurprd03.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 04 Sep 2017 20:04:32 +0000
Message-ID: <CAMKF1sq2zOWkbekoGsNY_98hZ5DXymruoa08U95hF4Nsiy=BUA@mail.gmail.com>
To: =?UTF-8?Q?Mobilisis_=7C_Matija_Tu=C4=91an?= <mtudan@mobilisis.hr>, 
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Yocto Morty glibc issue
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 04 Sep 2017 20:04:46 -0000
X-Groupsio-MsgNum: 10986
Content-Type: multipart/related; boundary="94eb2c0c26e42d55e10558629fa5"

--94eb2c0c26e42d55e10558629fa5
Content-Type: multipart/alternative; boundary="94eb2c0c26e42d55df0558629fa4"

--94eb2c0c26e42d55df0558629fa4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 4, 2017 at 10:10 AM Mobilisis | Matija Tu=C4=91an <
mtudan@mobilisis.hr> wrote:

> Hi,
>
>
>
> I was trying to install Docker on Yocto Morty release. Installation went
> successful but default interpreter for docker was set to *ld-linux.so.3*
> instead of *ld-linux-armhf.so.3*. Creating symbolic link with small
> bbappend file solved this issue.
>
>
This means that somewhere hard float and soft float abi is being mixed

Are you compiling docker yourself ?

>
>
> Yocto Krogoth release with Freescale Official Release didn't have this
> issue, it only happen on Yocto Morty release with FSL Community BSP.
>
> My CPU is i.MX7 from NXP.
>
>
>
> Regards,
>
> Matija
>
>
>
>
>
>
> *Matija Tu=C4=91an*
> Hardware developer
>
>
>
>
>
> *Mobilisis d.o.o.*
> Vara=C5=BEdinska ulica br. 8, II. odvojak
> 42000 Vara=C5=BEdin - Jalkovec, Croatia
>
>
>
>
>
> m.
>
>
>
>
>
> +385 99 311 5473
>
> t.
>
> +385 42 311 777
>
> f.
>
> +385 42 493 955
>
> w.
>
> *www.mobilisis.hr <http://www.mobilisis.hr/>*
>
>
>
> This mail is from Mobilisis d.o.o. and may contain confidential business
> information. It is intended solely for the use of the individual to whom =
it
> is addressed. If you are not the intended recipient, please contact the
> sender and delete this message and any attachment from your system.
> Unauthorized publication, use, dissemination, forwarding, printing or
> copying of this email and it's associated attachments is strictly
> prohibited.
>
>
> Please consider the environment before printing this email. Thank you!
>
>
>
>
>
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--94eb2c0c26e42d55df0558629fa4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br><div class=3D"gmail_quote"><div dir=3D"auto">On Mon, Sep 4, 2017 a=
t 10:10 AM Mobilisis | Matija Tu=C4=91an &lt;<a href=3D"mailto:mtudan@mobil=
isis.hr">mtudan@mobilisis.hr</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">





<div lang=3D"HR" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"m_8798133659866049890WordSection1">
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I was trying to install Docker on Yocto Morty releas=
e. Installation went successful but default interpreter for docker was set =
to
<b><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;">ld-=
linux.so.3</span></b> instead of
<b><span style=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;">ld-=
linux-armhf.so.3</span></b>. Creating symbolic link with small bbappend fil=
e solved this issue.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u></p></div></div></blockquote><div dir=3D"auto=
"><br></div><div dir=3D"auto">This means that somewhere hard float and soft=
 float abi is being mixed</div><div dir=3D"auto"><br></div><div dir=3D"auto=
">Are you compiling docker yourself ?</div><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><=
div lang=3D"HR" link=3D"#0563C1" vlink=3D"#954F72"><div class=3D"m_87981336=
59866049890WordSection1"><p class=3D"MsoNormal">=C2=A0<u></u></p>
<p class=3D"MsoNormal">Yocto Krogoth release with Freescale Official Releas=
e didn&#39;t have this issue, it only happen on Yocto Morty release with FS=
L Community BSP.<u></u><u></u></p>
<p class=3D"MsoNormal">My CPU is i.MX7 from NXP.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Regards,<u></u><u></u></p>
<p class=3D"MsoNormal">Matija<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<table class=3D"m_8798133659866049890MsoNormalTable" border=3D"0" cellspaci=
ng=3D"0" cellpadding=3D"0" width=3D"435" style=3D"width:326.05pt;border-col=
lapse:collapse">
<tbody>
<tr style=3D"height:113.15pt">
<td width=3D"225" valign=3D"top" style=3D"width:168.45pt;padding:0cm 5.4pt =
0cm 5.4pt;height:113.15pt">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span style=3D"font-size:=
10.0pt;line-height:105%"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"line-height:105%"><u></u><span>
</span></p><table cellpadding=3D"0" cellspacing=3D"0" align=3D"left">
<tbody>
<tr>
<td width=3D"8" height=3D"0"></td>
</tr>
<tr>
<td></td>
<td><img width=3D"186" height=3D"64" style=3D"width:1.9375in;height:.6666in=
" src=3D"cid:image002.png@01D3258B.5F67B3F0"></td>
</tr>
</tbody>
</table>
<u></u><br clear=3D"ALL">
<span style=3D"font-size:10.0pt;line-height:105%"><u></u><u></u></span><p><=
/p>
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:105%"><b><span style=3D"font-size:10.0pt;line-height:105%;font-family:&=
quot;Century Gothic&quot;,sans-serif;color:#00395d">Matija Tu=C4=91an</span=
></b><span style=3D"font-size:10.0pt;line-height:105%;font-family:&quot;Cen=
tury Gothic&quot;,sans-serif;color:#00395d"><br>
</span><span style=3D"font-size:8.0pt;line-height:105%;font-family:&quot;Ce=
ntury Gothic&quot;,sans-serif;color:#00395d">Hardware developer</span><span=
 style=3D"font-size:7.5pt;line-height:105%;font-family:&quot;Verdana&quot;,=
sans-serif;color:#00395d"><u></u><u></u></span></p>
<p class=3D"MsoNormal" align=3D"center" style=3D"text-align:center;line-hei=
ght:105%"><span style=3D"font-size:10.0pt;line-height:105%"><u></u>=C2=A0<u=
></u></span></p>
</td>
<td width=3D"210" valign=3D"top" style=3D"width:157.6pt;padding:0cm 5.4pt 0=
cm 5.4pt;height:113.15pt">
<p class=3D"MsoNormal" style=3D"line-height:105%"><b><span><u></u>=C2=A0<u>=
</u></span></b></p>
<p class=3D"MsoNormal" style=3D"line-height:105%"><b><span style=3D"font-si=
ze:8.0pt;line-height:105%;font-family:&quot;Century Gothic&quot;,sans-serif=
;color:#00395d">Mobilisis d.o.o.</span></b><span style=3D"font-size:8.0pt;l=
ine-height:105%;font-family:&quot;Century Gothic&quot;,sans-serif;color:#00=
395d"><br>
Vara=C5=BEdinska ulica br. 8, II. odvojak<br>
42000 Vara=C5=BEdin - Jalkovec, Croatia<u></u><u></u></span></p>
<table class=3D"m_8798133659866049890MsoNormalTable" border=3D"0" cellspaci=
ng=3D"0" cellpadding=3D"0">
<tbody>
<tr>
<td style=3D"padding:0cm 0cm 0cm 0cm"></td>
</tr>
<tr>
<td style=3D"padding:0cm 0cm 0cm 0cm">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span style=3D"font-size:=
8.0pt;line-height:105%;font-family:&quot;Century Gothic&quot;,sans-serif"><=
u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"line-height:105%"><span><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal" style=3D"line-height:105%"><span style=3D"font-size:=
8.0pt;line-height:105%;font-family:&quot;Century Gothic&quot;,sans-serif;co=
lor:#00395d">m.<u></u><u></u></span></p>
</td>
<td style=3D"padding:0cm 0cm 0cm 2.25pt">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span style=3D"font-size:=
8.0pt;line-height:105%;font-family:&quot;Century Gothic&quot;,sans-serif"><=
u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"line-height:105%"><span><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal" style=3D"line-height:105%"><span style=3D"font-size:=
8.0pt;line-height:105%;font-family:&quot;Century Gothic&quot;,sans-serif;co=
lor:#00395d">+385 99 311 5473<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0cm 0cm 0cm 0cm">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span style=3D"font-size:=
8.0pt;line-height:105%;font-family:&quot;Century Gothic&quot;,sans-serif;co=
lor:#00395d">t.<u></u><u></u></span></p>
</td>
<td style=3D"padding:0cm 0cm 0cm 2.25pt">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span style=3D"font-size:=
8.0pt;line-height:105%;font-family:&quot;Century Gothic&quot;,sans-serif;co=
lor:#00395d">+385 42 311 777<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0cm 0cm 0cm 0cm">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span style=3D"font-size:=
8.0pt;line-height:105%;font-family:&quot;Century Gothic&quot;,sans-serif;co=
lor:#00395d">f.<u></u><u></u></span></p>
</td>
<td style=3D"padding:0cm 0cm 0cm 2.25pt">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span style=3D"font-size:=
8.0pt;line-height:105%;font-family:&quot;Century Gothic&quot;,sans-serif;co=
lor:#00395d">+385 42 493 955<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0cm 0cm 0cm 0cm">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span style=3D"font-size:=
8.0pt;line-height:105%;font-family:&quot;Century Gothic&quot;,sans-serif;co=
lor:#00395d">w.<u></u><u></u></span></p>
</td>
<td style=3D"padding:0cm 0cm 0cm 2.25pt">
<p class=3D"MsoNormal" style=3D"line-height:105%"><b><span style=3D"font-si=
ze:8.0pt;line-height:105%;font-family:&quot;Century Gothic&quot;,sans-serif=
;color:#00395d"><a href=3D"http://www.mobilisis.hr/" target=3D"_blank"><spa=
n style=3D"color:blue;font-weight:normal">www.mobilisis.hr</span></a><u></u=
><u></u></span></b></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"line-height:105%"><span style=3D"font-size:=
9.0pt;line-height:105%"><u></u><u></u></span></p>
</td>
</tr>
<tr style=3D"height:63.05pt">
<td width=3D"435" colspan=3D"2" valign=3D"top" style=3D"width:326.05pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:63.05pt">
<p class=3D"MsoNormal" style=3D"line-height:105%"><span style=3D"font-size:=
7.0pt;line-height:105%;font-family:&quot;Century Gothic&quot;,sans-serif;co=
lor:#00395d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"line-height:105%"><span style=3D"font-size:=
6.0pt;line-height:105%;font-family:&quot;Century Gothic&quot;,sans-serif;co=
lor:#00395d">This mail is from Mobilisis d.o.o. and may contain confidentia=
l business information.
 It is intended solely for the use of the individual to whom it is addresse=
d. If you are not the intended recipient, please contact the sender and del=
ete this message and any attachment from your system. Unauthorized publicat=
ion, use, dissemination, forwarding,
 printing or copying of this email and it&#39;s associated attachments is s=
trictly prohibited.<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"line-height:105%"><span style=3D"font-size:=
6.0pt;line-height:105%;font-family:&quot;Century Gothic&quot;,sans-serif;co=
lor:#00395d"><br>
</span><span style=3D"font-size:6.0pt;line-height:105%;font-family:&quot;Ce=
ntury Gothic&quot;,sans-serif;color:#37bc61">Please consider the environmen=
t before printing this email. Thank you!</span><span style=3D"font-size:6.0=
pt;line-height:105%"><u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"line-height:105%"><span><u></u>=C2=A0<u></u=
></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

--<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
</blockquote></div></div>

--94eb2c0c26e42d55df0558629fa4--

--94eb2c0c26e42d55e10558629fa5
Content-Type: image/png; name="image002.png"
Content-Disposition: inline; filename="image002.png"
Content-Transfer-Encoding: base64
Content-ID: <>
X-Attachment-Id: 

iVBORw0KGgoAAAANSUhEUgAAALoAAABACAYAAACtB22OAAAAAXNSR0IArs4c6QAAAAlwSFlzAAAO
xAAADsQBlSsOGwAAABl0RVh0U29mdHdhcmUATWljcm9zb2Z0IE9mZmljZX/tNXEAACQlSURBVHhe
7Z0JnNxVle/vf6m100kvIZPAY9+y4LALYXEQGUV5jxGByBJgcAaMPBYFBd74JpUKi8CMCI4sivoA
2QmKSBRGENT5sDvsCWuAQPamq9NL/f9V9f//7/uef3Un3dW1djfYQF/oT6er7nru7557zrnnnmun
02k1kSYo8HGngP1xH+DE+CYoIBSYAPoEDj4RFJgA+idimj/eg9RatwnTjjvxvlwy11dutBNA/3hj
4GM9upaWFruzc+Ohpml/KVDKcxPeRqX1fYZhPF868Amgf6yh8PEdXAjyTM8/KMP4mjaMP6sgeAuA
7x5o63yljWs7W5ufau/qKgxQoCrQs9nslHgiMdNQZrM2VWAEwRoqWz5S8rHFTFPKnC3bjNZm1lDe
q4ZpvD/S+ibKfXIp0JnJzFBG5O+VVm9AhfeVqWbowP9PoLWrNv0FrZnMahbBW3UBPZFI7KEM+3rA
OJMKPWWYL2jtzR8J2Fs+zQp8svffTFMdR+NRQP+uqaNna1W495M7XRMjHzEFtN2qTOMNQ+u3lA5O
Mg0wpVSH0rnfGkFkO23bCeX7m6qvIbrY8n0iYkeV5xVsy7b3yhdUylC+gLWh1Pl0z+mWZZ7MIlEm
aC8UColABRGjoVomMk9QYBMFXMSVbbVWvQD9D8qyd+SbdcoI9lDK2NLwCj4cvT6g27adK/heXmsg
GSDukyzTnBf4wSOGoX9cL9G1Ng4j78XsDCwyaV86oPPKNly1edGVrS6b1dPizfZkw/O0sm0WbfWk
Pc8gn8FK2siC2lApdyw2Pe66a2ZAKNuI2DV6UaxFFwqMwNCdmdb32tu7cpXqDrRuV9puV6rAUI3e
1tbWdV1dXd7g/KnUQiOVSmMtIK+KQBM729qaWFuar9Z45ftUKmUsWnTZ37DbTqZNlUgYXRdckNqw
ePHiivSKxWKM390KziezUZzcMknGTOe06zjrk8lkT6V8yMyxTMbZUmsnQp6AcXfw01Wt/1lE2bht
T4aLaqPK3DII0/CU19ra/N4AfVzXXpVI+n1Mx0kA/XgV5GOILf9imFabVvpBIwD0g1JVju4JaAax
XAG7ZVmGNsyLEGPeNHThoVoTEQR6Z8M0r4jYdquAfHDSAfSoRGCtt9WGdVay2dpN+0EzIlRQa1FI
VQBGkc+0I/HuQsF7EWJfaxj+26XNuO6GuSzbb9sRu4Vx+YhSNTcX04yGK7Rtau9abVq3GL7/69J6
X3rpJWv2p3Y/KRaJzfM8FBu21kym518Z6IrBeS+44PI4ff1H0zKPhqaq4BWWk++S0ny16CvfX3DB
ZdTlnxuNxQ7ywGUu5z924YUXLgaY3aXlAWS0oyMzj736y8qwphvwHQFmxXaMiEmfgsmT29/PF9w/
k/XnfJApzZ/JZHbRRuRq247HTMNkfeTugVQ/KFevZentoM1ZTXZkDkyTubU0c1ZxUdJBWWxeZ1f3
GkNbP2asjyQxI0Lb/zAMy6X8+WZgrPRNFTECvbStdfKNLIh83UAfnBHA+PxYAEIB2i0KnvdvmHJE
Xn+5EpHgGlOcnHc5O8OeUk44ufyuJ9HnxZFY7GTZBSgkC6yeYmGegV3DjkQPd1x3MjUsKFN4Kh36
TDwen8SCDus3zcpthGyPhe6xWNnVVDbb92kIvYJJf3Fw3ccee6x+ZdlruyaTibn5vKX6nOxUtpiE
rL7BqRUJM5czdo7F43ORCVWhp9AMRxqWr85Bm1B1L2nTdU0F9+1hXMJZh6XMxo2HJZLJq5iTdjsS
Ccdckdv0lx6gp2HGj8gVXESFcru5PcW2rM/GYtFwjqHpf2PxK9t937cvjSfixwseBkTZWuP0PLgX
WOjLZmfTwBcptwrar4rFIpc7rvdpVqppaLWEzWcFIB9WXV3mxX6ACt/7k2Gqffi7ORqJ7FHw1A8D
v/ANRITXynCOCBzqymg0cpQABGKtgt++Tb65lDerDSy0zhj6cyIy5V0sRCiulL1PyiBEVSzLOhTO
zATrL4HLrbEYwa70gXw2nTbXDm3T5GBBd+fz+Un5QgELlRYOdLepbJmdIW2Aa+0F9MIPDjct4wQW
RRNtbcMs7a20PwTo8+bN0+n0RU4ulxM9RPreSX1DuEt/PwJt+D158gVFyUm4b7l8tTCgWDS+m1d9
0mY+j0RlGp1GAK8uSbNmzTKXLXvtwGg02o7YImB8Aj6KpUIVsKoNoytWNoxjwEmrz0Ui0c/AuOxC
Pv8Fre27DSMn4xqcCj5ibj6vosI4qDdTbgExF1szKZ+Rgo7jeKyJB9gwnhI+CAcZPlY/gMxmATyc
HY8np8NkPhX4NuX92yUzY3bA/x8HSx7lCFYX0KUgQLGV5f+7VuYuAPcK/o7EorFDc3n9vVg0chIN
Zgc3gI1zAQA5tV/xpKPBhYjDU9GSERlqSglNZBEihIqrH/jL41HrwmL9VrXCGuIlTCuyDW1sjWgk
+6HIJFMoOAToWsRIGgk5isiUyniShXUXVqBhdBKJK2zUiL0M2g+EG872PNdTyC9qOJ6GlJcWkJ2L
aklJQloa8mmlfDWRXpKBBsHm8LRmzRrZtuKIdCoCN/d874HZs3a5+Nh5xwZ333V3Rbq+/MorHb5f
2LG3z3sSmt4D/8iypqomhlZho4ijl3gFmVv+zyFf3z57zsw7qlW2fPly0G7tzSKeGfjqEfI2bOJu
BOiysoO+qP2zRK7wTQC3bbjlm/ZRbB3fYVVtcoMMAmsfRI4FEBMdMty+7mPfv5+95VxZnuEQqyc4
80CmUFUKWEi9tQrJ921tbW5nptvAwhNmDwWfIqorJqE5P4C9xuRp1zMN2G+xMjRj/qynU+MnDytg
QHZkrwsCFxD5i9OLBToVJyWRjd3kJtz7YSKZvffeuy8E3giTzOvAXMjcmJadrac+HXhnsL9YzG/n
Oeeck2/U67ZuoMu4YJA7J3O5B2jvWwD4FrbwpCinge+fYunYo76R+yPEa7cseyHy32yhKSLLa2z8
54sGDnWmVZVZNhOvlOh1Fgu3w6joEkPnQaw15Q0r/fNO/ZyqBcbnWYfs1kPxGwQILiSOmo9k5WyP
qRXVSXPcbC6rxdFHiIcPrBjjFWYr5mLsCeZhgK1HlHHGPExBYdDhOuZovYtd7B3OVTxAWdHyUl+n
RRa1WW9h7TGaPpp/bEH7ZXWKEHdkAOjsyJF3ZLEB8pqcsrQvDQFdAMDWjTnru/cuSl/07wBjoQAF
hWp718mdy+S/qqzIWZFo9H/5yFacVPWigZ+F+LVCtP3Ozm7MNnVjtj66jTLXANCZ0ZNA8vyQsDIJ
g1O/SgEzggKW8j3/ccSMRaTHMOGNsgcfXnExzQHzVbKOC1hrEasOg0seCuIZc+V+sDuzi1kev1fB
us4CBA+MtNeu66xKNjV3h8q/Z0Y4bsegYR5PP6pujoijIhp4ruvf6zjZBdVMneX61hDQBQMLFy40
QvusDn4I0P8WxebLogSx5g5HBv9PNsBpoqWL4o1ysnD27JkPwQWE06LVlBUdR0qzMS0H4AtQ2mG+
qxF8snBDtEiHbJlQhPmIXVwxjOARJ5t9BKB9mklsgnlVNwwwoXLEB9ePxOOJnbJOdj7c9UkWyzAT
Yz0TIiZPTIo/dxz3POqYBj3DHbiSRC91ihTLoozS5ygK/lcSTVPu4VDjl/W0N5CnUaBvqhv6vI/U
ch4Nzwbsu6BuR0UjFg4pZis3m72fdXFrPfJXIx0e67z9BBYWfg/bKcTDso3VdnA7YjRSGGqx4R7i
B978iB05tKDt315y8WVfVH7umbHu0wdZH+N9HqAe6+ngK2h4sxC9oizYsnKdiDmyuZmm3hdx9IBQ
3FFqW5gBPktqRECXsVHfVXDwp/k5iD85ZMLmU8GWLwYFSgSU+aLvG7uKEQSVS/ylPhygS4fh3Cvo
5JmYm/4fMtxWYk4Tk55X8N6B432PTq0fi0lrcCcI52douxx8VWDUoek0ZBrB0whmS0SWLy1dPMhV
2M67H0gmJ+/FWPdDR5nqBd5nF6VSfxmJzFiOLpyJ1NhQRk9N8frjcCcOWH4LG70hrLGC2BKudjEd
aOMcDAsHsEMLZ0WMiYO+GmaXKl3NxmLNccddjfD9M+jfUW1URcVVTpPsqZZp7CqHqPD38OSukTRi
jj7QCPLI7/Ne/oqIFb2aQwrR5FcXCs45fP5UIx0pySuKUf9YRE1HrKhT/RC7KoTYZCMUblG0INZI
ooyhf1RLwsISSoeHZsLr+D9+1113Gexadfaucu1iamPApbbpWr1u6Hs5pe7udr7BQdpunhd0wKC+
jT18dR2VbLJasUAYO5y91ilThUqp6POJvPdVjNOz0eEeg+bn1dF+0XY2ijRqoEvbHCzcWQgKB4KV
I3NZ9wembfx6FH2SoqJoi/WpOD6tdsYd4EyhMV9V7DNWkQKWyBio3ikEozAktmX+zUFMeR4g1RfZ
vd5TW5GjaQMNf6ilMTRwUtOMRBNjNHaUnauf9dZeQHUQQg7UaGNLuNbJVLxeDryrFLNZj3mo8wRD
G+JWULMpw54dT8S+FZ7wes56FOp/xkz8ZsX2imIDRyfGQf1mYmkC5xgbRlSXe9DwLuH3xO7wNVFG
cVWYggXvRdovf4Q6UFrOQwy9S/+cyuFeFYeB8lSoCnQIAU42OxgyNPPuu8ODhSGri9W9DmvM+Tm3
7z6MEg9W1OcwwQx0o3ieEMpmwxI7wwY37/X0HzYJ99gVceE/pNFaW5alLDnxCxcIrgqKk8ccStS6
UGEekmRsYuYKh8LZp3Es9tP/ycgEZkObQf+UIdtmlGP6oisDJ8MGi/uV4kloelPNUl/6oksGlZcx
lu81n4bj7weRyJ9XhLStYoGQgzsmncO54HzyXtPfsJxKbWqEEYlLQBme663t7evdEI1Et+D7LWj9
X8WKUKm9kBTUjHBny+JOJpvktBczn4dIOmxMmz4Ip5YbEOWGTT/fpQ4cBXWUOnYBET8Ri2e1RSr9
IIUKKxlxjAlerYWD0vpquenSmWAyjm74ghSUk3XwECufQM079ALZvHxCLjTiyeZmEW8ArcoX8LQL
zLhhDucMofih9ffzeeMibLdbNbprDfjFYMrCV9n8UemprfQQ/xN84lWz+GbI4RImrgjcuqItV8oI
J5Rlkcvl19KnX7jZnt+VyufCCJi3RJRxYqcWfQVLjUe9Q6cGepjx5OQkx+qhb47AUlZetQkPZxtO
iAUryVqehC9omF3qQndIYuYN/3Zcp9mIxQ06OqQ6Nx5flsjnvy/WsGQikeTLmu0NVCBjh2m8yW53
M3QqJ2IxrTZ+ZbGQTmBlUrmxIEk+CLiPBLSHgQURUetyYhK6434g59y/ZMt9qKaDTknjVQcK3V9V
Rn4h5qhWOi8WuEdKOVitiRn4fssttywwIb9wc+5LdkGYkp9lpeL4Uz7NmT37JvwyXsm6zu5YXCcj
koh4WDPBPw0xm9DfLu17zzIpT5cvZD+H7+f/YUKayFu75uJ5Lta5YCOy+bJMW+sT7cC4tG6hz6JF
F9/t9Pa9zUETFga11vf12lKZFnrkNm7su8t1XPJxsF1nMm3TCMT8YZsPD0gPUhd+Rde52b6H8qwA
bIGvwKGypXsYh309APEaTHvPOb6/E+OZxGKEtJUbD+kZctRgfS5XeGlaT+b5rnY8i4cle0Xge+c5
2SAi1ISJPF5OjDdN/zV8ps5Extwrny9sSdWcONY6Kse/yTQ9PwjeMXUgps2qCmy50dQAem4lXfix
7xdJJqJEo0evA43KYQWT/SDKx4NFbzhBTeX5FbMkeR5nY31cfDhDfljHfiVKq5b6JXuVA3qUsDeZ
jB+JrFmXXjVgDwn7bSjuI5ZFR5HD+w+jkD88kKGcqbrfr/oP5PlDXe33VxaOTfowyOW5SFt1Dxth
MRffDxfVil+JKwVAQbzEZ1s+EAW8Cl1DevavqGjUVOVBLjTJrYaeVw7Qs9qYaP9V8hXFj3rk0f5+
csugrEBWeZlu/qburaueyibyTFBgvFJgAujjdWYm+jWmFJgA+piSc6Ky8UqBCaCP15mZ6NeYUmAC
6GNKzonKxisFJoA+Xmdmol9jSoEJoI8pOScqG68UGNdAJ+7HVM76phRPamrHdKlFZA68xCc+y09F
RyaJd8KBylZS19i06Rn4TurdZ7/8zvLlu1U8OOA8bmsOKgn9ILlHN9aiawNufoYnsVUqepBms7FE
PO5sJddaOSkeldNUaOou0jdPnJl3q8WUqTVPH8T34xLooStpT8+JTdqahw8NQYbCORj1ROC3I/cM
ujhjfVBFzeuNXK5rMFFxz9g3l/POwjlsjvhMjk2bFn4Fpr/81d2fBXzXiD/44DYBW1M8kT/dsiNH
cbw+jUg+xZsGo0qeXCLyDSu6MvDydwK8G0uBB033TDbr7xAsbWY/dUfZpjCGkL4Ovj6P24F1nW/6
EhdxXKRxCfSOTM/XbFNdxXy/y5Q/LxNf9OepnmrNFBXk+ZkDCL4XuPm+ltaW6zlVDI/xOdaHs1k/
Ybb24I9f0VxenKNKWxTv9dIP+89ty3aOegJ8OxKWFTkNb+69tW8dxSniSsn8ONcL9zd6TsTL5XsM
8WXae0LurQx20Ko15nJHi+LiSTkLr4m9cOG5HuC1Me7vD9SldWx3ywp+juvB/8BF7VH8O/3ScBfV
iF2FzuKwPt0yrHM97W+tdOxcxvpe7TF88DnGJdDZ//6RoSe0GfyT09PzLCHdiBJSG+iZKvSSOhKr
Xb+zNbMN93B/gX/A1/C9uRcOS8wYcW+wDmTShZMvcrI9PyC/lynTZmuZizW9qrViy8Rc0cRQifqB
vpIAP6f6ytuTzCHQ93ccrpKp/038gReIj3N8JtO5cke1o+ls6dRc1JsbFE/dHYa0v3r1ao0znMnP
7gD9T1T2dUSya8VZLlzUKn94LD5pjz6n95xENPpzYogFmdah9K08ospXi8L4Mq5q4TrAZdBzPs5j
S2n7pg8exrVbGJdAh2viJWlsJC7fi0YyGQbmUeJrVyNVy5LLrVU5fJHwUXod7v0WQCcIzuZacURi
qvX78MEn5F6jtJksUyGfDutFssptm/A6LXoBV9Ke85XfLbfd5YJ5mBw3RryHFjjkX5A13mzHWaqL
/xq7vCPqxFD3LalHEuB+nkhpnexAJouNsHVy1zXsTyKkaRAsD8OIUEXpqKrdH6pE5+JYFZ6dxrM0
cwo7WfNohbBac17v9+MS6MJyJIYAk5NgUjbWO5i685lmEhlV2OYmh3/Az2UGcXs08Tmv7kyYajmt
XcW9FpTHTHrtDXXdCgIASRG/5M7DJocnok7wUR/9SG66dF73IGpnJBwfmMQ5EJ9LtE6JjVMsRIiw
EPCmGRt2b7B2tVVz9EcDmxx6hBrKHWV1Y1Z8XAJdnP0t7RuTHSfogq2mpp1yBJviCeIkW3HkcsFW
Ww+pnXa6Nf3U4uqh3Yohskouj8hdBUnlQ95JxFp13eufV15wijJ69iR2ESBx8qn2r77GTrBUnTHz
J+kq0WsFV2M1a6mpx+zEIpuHyDOXWpG49B+V13N7umvpcGtSpTtv0ptAggMPX9Sp6Wc1q/yG86D3
znLfqtjvMPwBjMFYybWO36Q77qjg/hy66I70pt1YkWhYPeMS6CFZ0aeQh4Mu2VS1PlhZ0RNg8iEV
hyWBrURt8LjgsDJzJ9+PKIZhJSrDwVvVNScuAlInEYe7lTAHxawEB1Vu36706+0aIB+TCUy9NMtS
n9nzTNr7LlAibB+3eMJ+yMsPU45OTT1uAQB8YfSNZZq4BXKCMiM7F28RDrob4bHZKnNBqm3et9WZ
M3/xYYx79ONp4IbJWDTWSB0SyYObyAOpvivnBkHh3TXbpabOT6h4JA6XQ7RYsqyRdkvzpqbPj6v8
xstVfMo/qwL3l7kJr/KIugL2vCN39q6Cs/7f1KyFpsr8pVllWgPV7O2lPLsr3XXLEFPiSPsR9sF1
m9Qh0WO4YnQFwSi7AeIVKs9OYhOb2lffVPFJX6V/C1Mt88+g3dFFX8i4gZpkbwz3IM/rYMxvF689
Gm3IO9upWHILleu9Sl274hVyjOYS/EhJ0nC5ccvRh4xEbmiIAleJo8uMhJeE5D6MfSkh8A5WPlFx
C3ZPatoJC9Lrb6sZx70i5TzvREBdBLnXv1EIyH1PFt+PuDx6uXK92WrDa7bSk84B5BKh9jAA2AH4
T08vX1z79lKFxlOz4OAb5uxHKKiT2T0OUrGmOcrt6QRsJzImiYIbptSsI/5JdRgx1dR+tHI6fsZH
v2sYCYMLJIiGgYzWL93dzkL6dih5OV67mmwvgg4nqdikVlXIfj7Vctyz6a47hkdmHVUHxr7wRwPo
dY07PD5NYjXZBg57m8q5TzM3X4b73chkHMFkNMxdU7GziG6x4SC4JYG5+3ViidMe+FnAfKU6c9eF
6pqX90R0uJXGf8gC25eu5miXC8TW9lzmRLFVNZVpWQnCPNOl49ywO3qJdS2iQ5/yC2uUn+cAxng4
3bEZ5FIkvXypk2o77mHlbPwHFVOzVM9moNd7gacMiYs6haFz6a47B0TBNSl93OWq4O7DottLucG2
Km7LRdUJoNeF0bHKFN48l5i/wRKA/UeUqiUqv/4RbIpXpVqO+Uq6a0k1U/vwXjRntgLQO2zi5BLE
wIQ3FHJXqx3VRXJtLuVx09tScomcCTfWIFKsZaHJauBvl8+rpxCI8l4MEccXq2LwTGRtMYzPBOQX
s5t4LNrTEZV/p7y+7ZSjhoTnHlT7Bq6wSqi8uYgv0xFf1orCXesQrWrvpPCgU1p2KEute2N/xCci
CMglWvNttQ07W0nk+Vpj/mt8/zHi6CH5CLgSOAQy/QpgaVHehhzA+w3iTBqueHpq4cIrRHkSVlUX
ADyPHQKlLwz+QqmoYLePENj+99NPLSlyOVNNl9gOZJDQbluwzb9N7dvDoj3ltlaPVyLlUUaIEBYs
Xp4OWJgzlLfxVJ53OkolJwvX5HRm1ZXqTy8uTe+2XMwjr1cEiW1OUpxwqsSkY1QOa9D0s854ZsXX
vYfjM00XA9EIUlHkMsz9Ef9OVYEXV+te2YZPTlDx1q2V08OTh/k/bKLDCBr4MIt8NIEuVgDhrtyy
38yzAKJBoCItooI+A254NoAUJPUS7peHffr+Xt2truOD7uIJeR2xh2x58Yzw0CJYxIne4PQ8jG/I
N9jK3w85b+yIKdT/LTjbe7TdHa6eQD1L5JGD6d86tUu8p5qqJtljOEJNLjhdZx5weUytWLFQTWpZ
oHozK5TTdzvyOI+ZmTf3g7w6LoLgCbr5L8rp/YKKYKEKCuvub937smnZjrzLhiNbWR1nbpvbEE4u
OlE0cbCKJg8O/x0mfju98nbLFbxb89yHCdbRtPVRAXo/A+ZXjOnKZTmMCDoAM0/ACJb7bcFh2FUD
Lo44EYGL5RCs481TQjMgBQRXDRHL7lmrCpNWqRZiam5493EU3FMRCVanWr68vTKTeyGynIwOgFxu
HYvydhRt4NdBvLZo8nCCoPwUe35Vju6quJpEePIWvydQq90vqUTbyap7LTuGeSmi15ON9BWzorwC
sTwVm3+bmpR7QFmJBb9P7L9kfvZ+InLphBzp12e6GmhVopXBUHJOFz8sbAIOSSAZw3qPId6v+qLX
pXNL+8MONNLTv07ejwbQNYgQDi7gLeSfg+CXI4+uhHNi6zVPQxmMhmY/Q0Ij6p3g9O/xmM+lTMsb
mMH2xQZ/AeUtzukasoCk1y7Npqae8ILKdj+tvOzZ2BRzqfbjbkCE2Q8gz+GE8b+p8RgsLDxRYnwB
MelMHBX3AxQRlpyEsqiZTE4pfStCCKzsXNXellR9a29rFOSDG0nnbulKNR0Pd9e7ub7exVN2Lye+
jS3wsEL0DIk3o4M7GBfKNm9ECjvP5tak+5YMe7Oq5kD/yhk+GkBH81cxjOq57JsAWoJStgO2kyH7
rVg6mgn9dXIodfvIkQY2B6WuZgF0w8SP5Lt7sRL8EpDORpEL5ZW6ZXTJ7Jm3q46Vv033LV2GPbsZ
xfQZFSFeYE5jBSk8RyChv0N0+SY7yQ9YDMvUlBlXq573fw1X/lOdc2vautCnIvHnVDfeBEFwSKpl
4S/TXYtHZMmgj+gm2PG1aiJC4hp8GvBxGcGpbFgG5YQYLOwW/1XnWMZttnELdN4yVSuCGcTbg3b5
4Cbldb8AsN8CWNNUvOlnqqmlGXEiS8zRi1XQeyviCs9bY4Kz7SyB1nikVS1VbTPwklq3F8roIhDU
BUfvkpkY7mhbeX4QVXhNT60KQZ4nNiOhplRvnygI2Mojp4EFeWXtRszOj6lJU+/jGT0HkKfhyjVP
Z8Uul2en6VNJZN7kb1R+zYNqUvspyn19amqL415DLCrQHvWFJ73llIqATyWEMVWFX2PbLuxNtL0D
WNjXHpJ54SVGy0O72mlQRsexgF2AB6pgHm3jFr0NdGzcAj2ML9vvMQHY3mFM8qOwie8Dh35HdW/Y
DRBk0p23iCViiDUiNf2Ybbil85bq6eQFZ71K9Zp/Tudu2+RgVJfFpZSILp54VnAoHBf/D+RUhaJq
Giinuo82dubg6BbMjitV7/rT030PvlXPHIjPU86IBustqy29dnFPauqpZwKsi6jvuPABYUMefQzD
lCFylXOVCT3PMan2n9HbUSKs5tYjRp0DbW7cwVltZiRgvTKcBmV08Z/h1FfCyvJm88cgjVugV6Tt
fz3/rNpvzlGqubkF7l5eVvz6nHfV1S8fDTZmAMA3WQxj4EXnbaC+nwLAuVhzZmCu3BqQf1XZRGAt
5JIsgOsRa24A5KFFpu4E7/R4Hzw167smL8O9kdIHfENtseUlADyB8otc7CUYJ/JyObwxfSZcH92B
fCwJDCyGn0mvv/ltaX9Na2tbkPPRKhtd2jt0KX/FadTdwu70kZPHy9H+Iwf00NTWt/wNxXO4lVIY
/7BriVxuCC84jEWSY+5U6zFfQmSax7s1UUCeRQfAjwZ/k17vEXXB7PdG4uAUOhEiexjHak15lTYe
61IdRRFrtIkbHxJluuFq+vWDj9STNbUG2TgVatU4Bt+HN+ck4nejjKj+tsPXdLmQXAzTXkzFNuUF
tkEBPIdUqVt/Ave8V3lN65SzOqsSzU76/ZuLVrvFNRsPnXFKc4VHUR/gSAdOR/HtHzzW/gckqr1F
V3M8ZTPIE/HLll0SWrfkQYVGAqiOrMX6So1LoDP33MLRJvGzi7eLxjpha5dXI6l2cGxu4qUTGtuT
KAHlG0x33bAKXivKaTE11LXADd+k4g32AbgTT9xCChcZOjeS3aAWWRLxGX25fIcc/NgSOn0TKXHv
7TfEjIFIN7QXcgkbAb8PPdaEX+ACUXdE7FrDGdX34xLogJzXLowprpvfWy4NCzBGZCIbRJr+l17g
NPZWdsTYgXdQV8NuBgtAG8QNFXn272hfroKJea80SP0AR66wFMrOhbyCzYMH1p5co5vM04Pi9BUm
3GRcI++vNy1jW9/zPsVHEnpZ3lxqpP4yjcpjWq7puBt4RQNTrDLeTyRanYGgBwhKvbFkTGWDwu6s
7RepQNBYx1FxZaxBGDmuE07eZtqRfblg5AVmsHHgOsuoUDoGhccl0JFa7wVjc7nqdSdmridDq8PA
JYMRDpr3oH2cXHhL1NjHtiPbeUHuW22Pt67tmtvVX2PwOG2+Z9n2BbyjvAcPvcoVt5pOWbW6AwCI
PGC0cTH6EOLCvwm8MfkVcZzaYYe1F73y2k95ZvN6Hoxd6svLeFwi1UZQ1ysQFdvWns9T7tRjzkVG
IX6+fzPRDgbvP49ms9mXsdYspu3PQRdOOINRjZXIMLJEZRFvF4/F9nEdZ6kVjT5a+upGLXp9UN+P
S6An4tEbeMNoB8JAHMmL5QeJRBESchQJZgOzxn/KNLM5N38HAXuWAPJNpgy4+xo4+dlwosuZrH3E
mUb8IEfRZH9RERPkcWH/eSSX7zCOTabHxTx2QJtLYPl72BbPr2v92fBBoVGPVR4mEpdIvRE95KZM
Z8eVAxempVMcBTzDI1nfJcelZNtfVAQc+cdgrEBdmQVe8XiYKi8ibo6YYcdFGpdAD98c0vpiyP8r
bdryWjOvlo/enCtyP+wNrSz6AmL6MOdS7ncs5cboOjbd6TxnIjgf1eKSGS5iiLBZQbCK4/7nS2ed
sXVir17oFYxfIWbEEW/IOsqxcs4jiiC935gw7JcA+bBT1njcfpC3kFYhE27Fopd3c0Y9VnZfaFZA
DApeZ1yVPS3/CtAfl0AXOkAoZGb9KE+MFskySqm1WOcAhStrkWhQzxRfhBkbJWqgzWrmB74jdJz/
++LCqPOpmWpgEZqF522iL5cfB8zEZVGJCZGfsRnr5nrGYLLGeDGMW6CP8TgnqvuEU2AC6J9wAHxS
hj8B9E/KTH/Cx/n/AZ29MrHBfY42AAAAAElFTkSuQmCC

--94eb2c0c26e42d55e10558629fa5--
