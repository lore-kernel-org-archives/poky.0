Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.21207.1594652293340861380
 for <poky@lists.yoctoproject.org>;
 Mon, 13 Jul 2020 07:58:13 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: berg-solutions.de, ip: 140.211.169.56, mailfrom: rberg@berg-solutions.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7F40E01DE0; Mon, 13 Jul 2020 07:58:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [80.237.132.155 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from wp148.webpack.hosteurope.de (wp148.webpack.hosteurope.de [80.237.132.155])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13297E01D95
	for <poky@yoctoproject.org>; Mon, 13 Jul 2020 07:58:10 -0700 (PDT)
Received: from ip1f126570.dynamic.kabel-deutschland.de ([31.18.101.112] helo=roelofs-mbp.fritz.box); authenticated
	by wp148.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1juzuC-0004cL-VW; Mon, 13 Jul 2020 16:58:09 +0200
From: "Roelof" <rberg@berg-solutions.de>
Message-Id: <9E07C8B9-EA54-4628-9C02-7231CAB909DD@berg-solutions.de>
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
Subject: Re: [poky] yocto under WSL
Date: Mon, 13 Jul 2020 16:58:08 +0200
In-Reply-To: <CAGNn0haD30WVN0EpBUJqdxuqBu=0dyY8h-gD+wKJJV=TKZPBNw@mail.gmail.com>
Cc: Ross Burton <ross@burtonini.com>,
 poky@yoctoproject.org
To: R Srinivasan <s@srin.me>
References: <CAGNn0hYDMk+pSXarT1XbUOPmhyajUvcwTt7FmD78BEmeqZySzg@mail.gmail.com>
 <CAAnfSTvnVfziABYju=3p5vU7Ud=h6v8Uq027yeUeTow8piRvRA@mail.gmail.com>
 <CAGNn0haD30WVN0EpBUJqdxuqBu=0dyY8h-gD+wKJJV=TKZPBNw@mail.gmail.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-bounce-key: webpack.hosteurope.de;rberg@berg-solutions.de;1594652291;b13d8375;
X-HE-SMSGID: 1juzuC-0004cL-VW
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_18F57F9B-91BC-4AC1-8305-2770CF9EA047"

--Apple-Mail=_18F57F9B-91BC-4AC1-8305-2770CF9EA047
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

The rollout happens anyway. so it should be safe. The reason why you don=E2=
=
=80=99t have it allready installed by auto updatt is, that It is done in g=
roups, maybe for not overloading the servers. Everyone can request the upda=
te. It was somewhere in the system settings (programs or features, there=E2=
=
=80=99s a button for an upgrade request. To your question: For me it was a=
 smooth upgrade. Like all hidden upgrades.

It can be a challenge to port old WSL1 infrastructure to WSL2 regarding ch=
anges in the architecture of the internet protocol connection. But I assume=
 you don=E2=80=99t have your own WSL 1 scripts and stuff, sho it should be =
safe.

Best regards
R


> Am 13.07.2020 um 14:38 schrieb R Srinivasan <s@srin.me>:
>=20
> I have been looking at WSL2. It seems the brand new DELL I received has =
a version of Windows 10 that does not support WSL2. I assume others have up=
graded to the version of Windows. Was it a smooth upgrade? Anything I shoul=
d be worried about about this upgrade?
>=20
> thanks, srini
>=20
> On Mon, Jul 13, 2020 at 6:31 AM Ross Burton <ross@burtonini.com <mailto:=
ross@burtonini.com>> wrote:
> WSL2 should work out of the box, no need for Docker.
>=20
> Ross
>=20
> On Sat, 11 Jul 2020 at 10:02, R Srinivasan <s@srin.me <mailto:s@srin.me>=
> wrote:
> >
> > I got myself a new laptop. Trying to decide whether to setup a VM for =
yocto development.
> >
> > Will the above work?
> >
> > thanks, srini
> >=20
>=20


--Apple-Mail=_18F57F9B-91BC-4AC1-8305-2770CF9EA047
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=
=3Dutf-8"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; line-break: after-white-space;" class=3D"">The rollout happens anywa=
y. so it should be safe. The reason why you don=E2=80=99t have it allready =
installed by auto updatt is, that It is done in groups, maybe for not overl=
oading the servers. Everyone can request the update. It was somewhere in th=
e system settings (programs or features, there=E2=80=99s a button for an up=
grade request. To your question: For me it was a smooth upgrade. Like all h=
idden upgrades.<div class=3D""><br class=3D""></div><div class=3D"">It can =
be a challenge to port old WSL1 infrastructure to WSL2 regarding changes in=
 the architecture of the internet protocol connection. But I assume you don=
=
=E2=80=99t have your own WSL 1 scripts and stuff, sho it should be safe.</=
div><div class=3D""><br class=3D""></div><div class=3D"">Best regards</div>=
<div class=3D"">R</div><div class=3D""><div class=3D""><br class=3D""><div =
class=3D""><div class=3D""><div><br class=3D""></div></div><div><blockquote=
 type=3D"cite" class=3D""><div class=3D"">Am 13.07.2020 um 14:38 schrieb R =
Srinivasan &lt;<a href=3D"mailto:s@srin.me" class=3D"">s@srin.me</a>&gt;:</=
div><br class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr=
" class=3D""><div class=3D"">I have been looking at WSL2. It seems the bran=
d new DELL I received has a version of Windows 10 that does not support WSL=
2. I assume others have upgraded to the version of Windows. Was it a smooth=
 upgrade? Anything I should be worried about about this upgrade?</div><div =
class=3D""><br class=3D""></div><div class=3D"">thanks, srini<br class=3D""=
></div></div><br class=3D""><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Mon, Jul 13, 2020 at 6:31 AM Ross Burton &lt;<a href=
=3D"mailto:ross@burtonini.com" class=3D"">ross@burtonini.com</a>&gt; wrote=
:<br class=3D""></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">WSL=
2 should work out of the box, no need for Docker.<br class=3D"">
<br class=3D"">
Ross<br class=3D"">
<br class=3D"">
On Sat, 11 Jul 2020 at 10:02, R Srinivasan &lt;<a href=3D"mailto:s@srin.me=
" target=3D"_blank" class=3D"">s@srin.me</a>&gt; wrote:<br class=3D"">
&gt;<br class=3D"">
&gt; I got myself a new laptop. Trying to decide whether to setup a VM for=
 yocto development.<br class=3D"">
&gt;<br class=3D"">
&gt; Will the above work?<br class=3D"">
&gt;<br class=3D"">
&gt; thanks, srini<br class=3D"">
&gt; <br class=3D"">
</blockquote></div>
<br class=3D""></div></blockquote></div><br class=3D""></div></div></div><=
/body></html>

--Apple-Mail=_18F57F9B-91BC-4AC1-8305-2770CF9EA047--
