Return-Path: <f.suligoi@asem.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 783DFE0078F; Thu, 19 Jan 2017 02:55:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtp.asem.it (smtp.asem.it [151.1.184.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EB7CE006EA
	for <poky@yoctoproject.org>; Thu, 19 Jan 2017 02:55:24 -0800 (PST)
Received: from webmail.asem.it by asem.it (smtp.asem.it)
	(SecurityGateway 4.0.1) with ESMTP id SG002511318.MSG 
	for <poky@yoctoproject.org>; Thu, 19 Jan 2017 11:55:22 +0100S
Received: from ASAS044.asem.intra (172.16.16.44) by ASAS044.asem.intra
	(172.16.16.44) with Microsoft SMTP Server (TLS) id 15.1.225.42;
	Thu, 19 Jan 2017 11:55:22 +0100
Received: from ASAS044.asem.intra ([::1]) by ASAS044.asem.intra ([::1]) with
	mapi id 15.01.0225.041; Thu, 19 Jan 2017 11:55:22 +0100
From: Flavio Suligoi <f.suligoi@asem.it>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [poky] connman 1.33 takes very long time to start
Thread-Index: AQHSckHW4FqOGgnLpk6VCcM3zD7oIaE/oGie
Date: Thu, 19 Jan 2017 10:55:22 +0000
Message-ID: <0559277c9db34355bd9fbaa1991d03c0@asem.it>
References: <2c4eb5acb08c4038878801c3143d070b@asem.it>,
	<CAJTo0Lb6fxjas0roAmXwFosHtRb+jrLG85uzbc5yC1xF76i0xw@mail.gmail.com>
In-Reply-To: <CAJTo0Lb6fxjas0roAmXwFosHtRb+jrLG85uzbc5yC1xF76i0xw@mail.gmail.com>
Accept-Language: it-IT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [172.16.17.96]
MIME-Version: 1.0
X-SGHeloLookup-Result: hardfail smtp.helo=webmail.asem.it (does not match
	172.16.16.44)
X-SGSPF-Result: none (smtp.asem.it)
X-SGOP-RefID: str=0001.0A0B0205.58809B1B.01D2, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0 (_st=1 _vt=0 _iwf=0)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: connman 1.33 takes very long time to start
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
X-List-Received-Date: Thu, 19 Jan 2017 10:55:29 -0000
Content-Language: it-IT
Content-Type: multipart/alternative;
	boundary="_000_0559277c9db34355bd9fbaa1991d03c0asemit_"

--_000_0559277c9db34355bd9fbaa1991d03c0asemit_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thank you Ross!

Flavio

________________________________
Da: Burton, Ross <ross.burton@intel.com>
Inviato: gioved=EC 19 gennaio 2017 11:49
A: Flavio Suligoi
Cc: poky@yoctoproject.org
Oggetto: Re: [poky] connman 1.33 takes very long time to start


On 19 January 2017 at 10:01, Flavio Suligoi <f.suligoi@asem.it<mailto:f.sul=
igoi@asem.it>> wrote:

Using the previous "Krogoth" version, with "connman 1.31", the boot speed w=
as always fast, so the problem is related to the new connman version.

Unless you can demonstrate that running connman 1.31 on morty with everythi=
ng else the same is also slow then this is unlikely: a change in kernel beh=
aviour for random numbers is more likely.

If you have low entropy then rng-tools is one solution, or persist the valu=
e of /dev/urandom when shutting down to carry some entropy between boots (h=
ttps://git.kernel.org/cgit/linux/kernel/git/stable/linux-stable.git/tree/dr=
ivers/char/random.c).

Ross

--_000_0559277c9db34355bd9fbaa1991d03c0asemit_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:10pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Arial,Helvetica,sans-serif;">
Thank you Ross!<br>
<br>
Flavio<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" color=
=3D"#000000" face=3D"Calibri, sans-serif"><b>Da:</b> Burton, Ross &lt;ross.=
burton@intel.com&gt;<br>
<b>Inviato:</b> gioved=EC 19 gennaio 2017 11:49<br>
<b>A:</b> Flavio Suligoi<br>
<b>Cc:</b> poky@yoctoproject.org<br>
<b>Oggetto:</b> Re: [poky] connman 1.33 takes very long time to start</font=
>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"gmail_extra"><br>
<div class=3D"gmail_quote">On 19 January 2017 at 10:01, Flavio Suligoi <spa=
n dir=3D"ltr">
&lt;<a href=3D"mailto:f.suligoi@asem.it" target=3D"_blank">f.suligoi@asem.i=
t</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; border=
-left-width:1px; border-left-color:rgb(204,204,204); border-left-style:soli=
d; padding-left:1ex">
<p>Using the previous &quot;Krogoth&quot; version, with &quot;connman 1.31&=
quot;, the boot speed was always fast, so the problem is related to the new=
 connman version.</p>
<p></p>
</blockquote>
</div>
Unless you can demonstrate that running connman 1.31 on morty with everythi=
ng else the same is also slow then this is unlikely: a change in kernel beh=
aviour for random numbers is more likely.</div>
<div class=3D"gmail_extra"><br>
</div>
<div class=3D"gmail_extra">If you have low entropy then rng-tools is one so=
lution, or persist the value of /dev/urandom when shutting down to carry so=
me entropy between boots (<a href=3D"https://git.kernel.org/cgit/linux/kern=
el/git/stable/linux-stable.git/tree/drivers/char/random.c" title=3D"Ctrl&#4=
3;Fai clic o tocca il collegamento per aprirlo">https://git.kernel.org/cgit=
/linux/kernel/git/stable/linux-stable.git/tree/drivers/char/random.c</a>).<=
/div>
<div class=3D"gmail_extra"><br>
</div>
<div class=3D"gmail_extra">Ross</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_0559277c9db34355bd9fbaa1991d03c0asemit_--
