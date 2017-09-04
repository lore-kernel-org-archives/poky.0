Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4F4BE00C88; Mon,  4 Sep 2017 13:12:53 -0700 (PDT)
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
	*      [74.125.83.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f44.google.com (mail-pg0-f44.google.com [74.125.83.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2D27E00349
	for <poky@yoctoproject.org>; Mon,  4 Sep 2017 13:12:52 -0700 (PDT)
Received: by mail-pg0-f44.google.com with SMTP id v66so3565138pgb.5
	for <poky@yoctoproject.org>; Mon, 04 Sep 2017 13:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=shPuVoaQFUXNUedNM0CgSj3lh8Vyzgk2jrefieBXA90=;
	b=aNWNYFRuV+clO+az3MB30X5RHjmMvjrmrKCozmyOE7MFnYj3TnT8SK1YNck5mukavI
	P/8OAk+kb3/50NLeYOQIzoCwS1A8ynnXoZj7eIEjx65B+dLYl8HmCdsCa5hJEKx2yF8P
	KQZRqTIbdGdlhyZax5thYZXh7Nnw35ZcczkMZg0dch3V6UTpfVmt3UeQGnKVHzVZa/yD
	WJCHysltPakB1j/kiX3QdONBGKXOhIYag6979cdlxgyoPG7YzDUtdwz6Hl5fujfe52vH
	DcIV6iUdN9iqP07FgLkI/SrRCq0Xn+FIIrLlL/8yn+MWpWUefLqA+kkHAvSMgJHt/md5
	irKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=shPuVoaQFUXNUedNM0CgSj3lh8Vyzgk2jrefieBXA90=;
	b=I+yZgc0l7STaY9cTkOnwPhrXwB3+sNAwbqYuaHH655NH1K8qOWTLdCUY7VY03jJlKZ
	V6/UON5UT7g1nuel6DO/0037K/P9CjuHum5QMxOIb01iICU3/G1WWh1K/Ay09Xhpw08U
	QM73LSJ9p+z5F5oOBXyX/3VZ5C1Ek7AdAeJF7smdAMnFZVG5B/mF6fQ7DDtHHfZmrZo/
	Jny8os49Q/TYaBRu7/qb7pCcpSRy6QoTh1BxA5wMc+2n2ica6QjxYruJPBjJCaIVBYKr
	oWsC4S6y4E8WgM9i6OrLnRahMkRIH4S6J7ep+J/pFLUX5YKHuc9+U9Y3JQMTGFL7aW0E
	Z2Aw==
X-Gm-Message-State: AHPjjUjCUCqIJUmcxye4n8zTGCIeZR8zxHLL0Hzp4h37+uz5iPoyinpg
	7h+EtehTN+hLkkeQX6JBMSl4bVDluA==
X-Google-Smtp-Source: ADKCNb5XHrfElJ9owF4Ms1JF/Sk5xZpi+NaNamkd9V1MaQJVBWcjPq1OkyoDLWj2N8RW7sxBJVlLy1V67n0jJRXTMJw=
X-Received: by 10.84.211.46 with SMTP id b43mr1807153pli.161.1504555972075;
	Mon, 04 Sep 2017 13:12:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.167.2 with HTTP; Mon, 4 Sep 2017 13:12:21 -0700 (PDT)
In-Reply-To: <f64b8c19-5a43-44fd-8146-55b32d9c1161@email.android.com>
References: <f64b8c19-5a43-44fd-8146-55b32d9c1161@email.android.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 4 Sep 2017 13:12:21 -0700
Message-ID: <CAMKF1srJXz50XHDKpvoOXK50SLNNrsjzRn6FiJ15m=gNRRA80w@mail.gmail.com>
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
X-List-Received-Date: Mon, 04 Sep 2017 20:12:53 -0000
Content-Type: multipart/alternative; boundary="94eb2c0c26e442a381055862bc59"

--94eb2c0c26e442a381055862bc59
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 4, 2017 at 1:10 PM, Mobilisis | Matija Tu=C4=91an <
mtudan@mobilisis.hr> wrote:

> Hi Khem,
>
> Yes, I downloaded the meta-virtualization layer, morty branch.
>

=E2=80=8BOK. And did you build the rootfs as well ?
or is the rootfs precompiled ?=E2=80=8B



>
> Krogoth did not have this issue.
>
> On 4 Sep 2017 10:04 pm, Khem Raj <raj.khem@gmail.com> wrote:
>
>
> On Mon, Sep 4, 2017 at 10:10 AM Mobilisis | Matija Tu=C4=91an <
> mtudan@mobilisis.hr> wrote:
>
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
> This means that somewhere hard float and soft float abi is being mixed
>
> Are you compiling docker yourself ?
>
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
> +385 99 311 5473 <+385%2099%20311%205473>
>
> t.
>
> +385 42 311 777 <+385%2042%20311%20777>
>
> f.
>
> +385 42 493 955 <+385%2042%20493%20955>
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
>
>

--94eb2c0c26e442a381055862bc59
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace"><br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_q=
uote">On Mon, Sep 4, 2017 at 1:10 PM, Mobilisis | Matija Tu=C4=91an <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:mtudan@mobilisis.hr" target=3D"_blank">mtu=
dan@mobilisis.hr</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">



<div>
<div dir=3D"auto">Hi Khem,
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Yes, I downloaded the meta-virtualization layer, morty br=
anch.</div></div></div></blockquote><div><br></div><div><div class=3D"gmail=
_default" style=3D"font-family:monospace,monospace">=E2=80=8BOK. And did yo=
u build the rootfs as well ?</div><div class=3D"gmail_default" style=3D"fon=
t-family:monospace,monospace">or is the rootfs precompiled ?=E2=80=8B</div>=
<br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div dir=3D"=
auto">
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Krogoth did not have this issue.</div>
</div><div><div class=3D"h5">
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On 4 Sep 2017 10:04 pm, Khem Raj &lt;<a href=3D"=
mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wro=
te:<br type=3D"attribution">
<blockquote class=3D"m_-3202946209310470641quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex">
<div>
<div><br>
<div class=3D"m_-3202946209310470641elided-text">
<div dir=3D"auto">On Mon, Sep 4, 2017 at 10:10 AM Mobilisis | Matija Tu=C4=
=91an &lt;<a href=3D"mailto:mtudan@mobilisis.hr" target=3D"_blank">mtudan@m=
obilisis.hr</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0 0 0 0.8ex;border-left:1px #ccc solid;padding-=
left:1ex">
<div>
<div>
<p>Hi,<u></u><u></u></p>
<p><u></u>=C2=A0<u></u></p>
<p>I was trying to install Docker on Yocto Morty release. Installation went=
 successful but default interpreter for docker was set to
<b><span style=3D"font-size:10pt;font-family:&#39;courier new&#39;">ld-linu=
x.so.3</span></b> instead of
<b><span style=3D"font-size:10pt;font-family:&#39;courier new&#39;">ld-linu=
x-armhf.so.3</span></b>. Creating symbolic link with small bbappend file so=
lved this issue.<u></u><u></u></p>
<p><u></u></p>
</div>
</div>
</blockquote>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">This means that somewhere hard float and soft float abi i=
s being mixed</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Are you compiling docker yourself ?</div>
<blockquote style=3D"margin:0 0 0 0.8ex;border-left:1px #ccc solid;padding-=
left:1ex">
<div>
<div>
<p>=C2=A0<u></u></p>
<p>Yocto Krogoth release with Freescale Official Release didn&#39;t have th=
is issue, it only happen on Yocto Morty release with FSL Community BSP.<u><=
/u><u></u></p>
<p>My CPU is i.MX7 from NXP.<u></u><u></u></p>
<p><u></u>=C2=A0<u></u></p>
<p>Regards,<u></u><u></u></p>
<p>Matija<u></u><u></u></p>
<p><u></u>=C2=A0<u></u></p>
<table cellspacing=3D"0" cellpadding=3D"0" style=3D"width:326.05pt;border-c=
ollapse:collapse" width=3D"435" border=3D"0">
<tbody>
<tr style=3D"height:113.15pt">
<td width=3D"225" valign=3D"top" style=3D"width:168.45pt;padding:0cm 5.4pt =
0cm 5.4pt;height:113.15pt">
<p style=3D"line-height:105%"><span style=3D"font-size:10pt;line-height:105=
%"><u></u>=C2=A0<u></u></span></p>
<p style=3D"line-height:105%"><u></u></p>
<table cellpadding=3D"0" cellspacing=3D"0" align=3D"left">
<tbody>
<tr>
<td width=3D"8" height=3D"0"></td>
</tr>
<tr>
<td></td>
<td><img style=3D"width:1.9375in;height:0.6666in" height=3D"64" width=3D"18=
6"></td>
</tr>
</tbody>
</table>
<u></u><br clear=3D"ALL">
<span style=3D"font-size:10pt;line-height:105%"><u></u><u></u></span>
<p></p>
<p align=3D"center" style=3D"text-align:center;line-height:105%"><b><span s=
tyle=3D"font-size:10pt;line-height:105%;font-family:&#39;century gothic&#39=
;,sans-serif;color:#00395d">Matija Tu=C4=91an</span></b><span style=3D"font=
-size:10pt;line-height:105%;font-family:&#39;century gothic&#39;,sans-serif=
;color:#00395d"><br>
</span><span style=3D"font-size:8pt;line-height:105%;font-family:&#39;centu=
ry gothic&#39;,sans-serif;color:#00395d">Hardware developer</span><span sty=
le=3D"font-size:7.5pt;line-height:105%;font-family:&#39;verdana&#39;,sans-s=
erif;color:#00395d"><u></u><u></u></span></p>
<p align=3D"center" style=3D"text-align:center;line-height:105%"><span styl=
e=3D"font-size:10pt;line-height:105%"><u></u>=C2=A0<u></u></span></p>
</td>
<td width=3D"210" valign=3D"top" style=3D"width:157.6pt;padding:0cm 5.4pt 0=
cm 5.4pt;height:113.15pt">
<p style=3D"line-height:105%"><b><u></u>=C2=A0<u></u></b></p>
<p style=3D"line-height:105%"><b><span style=3D"font-size:8pt;line-height:1=
05%;font-family:&#39;century gothic&#39;,sans-serif;color:#00395d">Mobilisi=
s d.o.o.</span></b><span style=3D"font-size:8pt;line-height:105%;font-famil=
y:&#39;century gothic&#39;,sans-serif;color:#00395d"><br>
Vara=C5=BEdinska ulica br. 8, II. odvojak<br>
42000 Vara=C5=BEdin - Jalkovec, Croatia<u></u><u></u></span></p>
<table cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
<tbody>
<tr>
<td style=3D"padding:0cm 0cm 0cm 0cm"></td>
</tr>
<tr>
<td style=3D"padding:0cm 0cm 0cm 0cm">
<p style=3D"line-height:105%"><span style=3D"font-size:8pt;line-height:105%=
;font-family:&#39;century gothic&#39;,sans-serif"><u></u>=C2=A0<u></u></spa=
n></p>
<p style=3D"line-height:105%"><u></u>=C2=A0<u></u></p>
<p style=3D"line-height:105%"><span style=3D"font-size:8pt;line-height:105%=
;font-family:&#39;century gothic&#39;,sans-serif;color:#00395d">m.<u></u><u=
></u></span></p>
</td>
<td style=3D"padding:0cm 0cm 0cm 2.25pt">
<p style=3D"line-height:105%"><span style=3D"font-size:8pt;line-height:105%=
;font-family:&#39;century gothic&#39;,sans-serif"><u></u>=C2=A0<u></u></spa=
n></p>
<p style=3D"line-height:105%"><u></u>=C2=A0<u></u></p>
<p style=3D"line-height:105%"><span style=3D"font-size:8pt;line-height:105%=
;font-family:&#39;century gothic&#39;,sans-serif;color:#00395d"><a href=3D"=
tel:+385%2099%20311%205473" value=3D"+385993115473" target=3D"_blank">+385 =
99 311 5473</a><u></u><u></u></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0cm 0cm 0cm 0cm">
<p style=3D"line-height:105%"><span style=3D"font-size:8pt;line-height:105%=
;font-family:&#39;century gothic&#39;,sans-serif;color:#00395d">t.<u></u><u=
></u></span></p>
</td>
<td style=3D"padding:0cm 0cm 0cm 2.25pt">
<p style=3D"line-height:105%"><span style=3D"font-size:8pt;line-height:105%=
;font-family:&#39;century gothic&#39;,sans-serif;color:#00395d"><a href=3D"=
tel:+385%2042%20311%20777" value=3D"+38542311777" target=3D"_blank">+385 42=
 311 777</a><u></u><u></u></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0cm 0cm 0cm 0cm">
<p style=3D"line-height:105%"><span style=3D"font-size:8pt;line-height:105%=
;font-family:&#39;century gothic&#39;,sans-serif;color:#00395d">f.<u></u><u=
></u></span></p>
</td>
<td style=3D"padding:0cm 0cm 0cm 2.25pt">
<p style=3D"line-height:105%"><span style=3D"font-size:8pt;line-height:105%=
;font-family:&#39;century gothic&#39;,sans-serif;color:#00395d"><a href=3D"=
tel:+385%2042%20493%20955" value=3D"+38542493955" target=3D"_blank">+385 42=
 493 955</a><u></u><u></u></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:0cm 0cm 0cm 0cm">
<p style=3D"line-height:105%"><span style=3D"font-size:8pt;line-height:105%=
;font-family:&#39;century gothic&#39;,sans-serif;color:#00395d">w.<u></u><u=
></u></span></p>
</td>
<td style=3D"padding:0cm 0cm 0cm 2.25pt">
<p style=3D"line-height:105%"><b><span style=3D"font-size:8pt;line-height:1=
05%;font-family:&#39;century gothic&#39;,sans-serif;color:#00395d"><a href=
=3D"http://www.mobilisis.hr/" target=3D"_blank"><span style=3D"color:blue;f=
ont-weight:normal">www.mobilisis.hr</span></a><u></u><u></u></span></b></p>
</td>
</tr>
</tbody>
</table>
<p style=3D"line-height:105%"><span style=3D"font-size:9pt;line-height:105%=
"><u></u><u></u></span></p>
</td>
</tr>
<tr style=3D"height:63.05pt">
<td width=3D"435" colspan=3D"2" valign=3D"top" style=3D"width:326.05pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:63.05pt">
<p style=3D"line-height:105%"><span style=3D"font-size:7pt;line-height:105%=
;font-family:&#39;century gothic&#39;,sans-serif;color:#00395d"><u></u>=C2=
=A0<u></u></span></p>
<p style=3D"line-height:105%"><span style=3D"font-size:6pt;line-height:105%=
;font-family:&#39;century gothic&#39;,sans-serif;color:#00395d">This mail i=
s from Mobilisis d.o.o. and may contain confidential business information. =
It is intended solely for the use of the individual
 to whom it is addressed. If you are not the intended recipient, please con=
tact the sender and delete this message and any attachment from your system=
. Unauthorized publication, use, dissemination, forwarding, printing or cop=
ying of this email and it&#39;s associated
 attachments is strictly prohibited.<u></u><u></u></span></p>
<p style=3D"line-height:105%"><span style=3D"font-size:6pt;line-height:105%=
;font-family:&#39;century gothic&#39;,sans-serif;color:#00395d"><br>
</span><span style=3D"font-size:6pt;line-height:105%;font-family:&#39;centu=
ry gothic&#39;,sans-serif;color:#37bc61">Please consider the environment be=
fore printing this email. Thank you!</span><span style=3D"font-size:6pt;lin=
e-height:105%"><u></u><u></u></span></p>
<p style=3D"line-height:105%"><u></u>=C2=A0<u></u></p>
</td>
</tr>
</tbody>
</table>
<p><u></u>=C2=A0<u></u></p>
<p><u></u>=C2=A0<u></u></p>
</div>
</div>
--<br>
______________________________<wbr>_________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.<wbr>org/listinfo/poky</a><br>
</blockquote>
</div>
</div>
</div>
</blockquote>
</div>
<br>
</div>
</div></div></div>

</blockquote></div><br></div></div>

--94eb2c0c26e442a381055862bc59--
