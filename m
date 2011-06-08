Return-Path: <cahoshing@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 48C654C800FB
	for <poky@yoctoproject.org>; Wed,  8 Jun 2011 05:04:39 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwr19 with SMTP id 19so400849iwr.35
	for <poky@yoctoproject.org>; Wed, 08 Jun 2011 03:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=c+4KRkoLNKSJrwkZsdodkg8XH3Clj7CDohK5CF4VIVc=;
	b=sOllaka9+VsPqpRnV5KYMoOZshqtY8SYmqd8FCDbTpy3T1XoBRX7DOmRQ/Uu797V21
	SLauL1W36kdSqCKveC9MmnN0H9tU6R326DADdjbLsAojX/cGir4bEIAi8LahzhkBOXUZ
	riGRjXwMNF1Cl2nItHY/XrxnwgQLNjg59OcMs=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=abXQsxHFCa6iBXQopiU2HMG8MXujgZw/9XX70rPysT8nJD0C4aXgeHC7VM21P1WsV9
	HZfXnSz8nWSrX2N9S1iC3VR8n7VXsIhiLwruDdu1l2Lj/Lx9P+bjZRlOGxryqFEuaSsW
	kgwvBmvHc5H1qSyuciylbWvfxRRAkFj/Pqu+k=
MIME-Version: 1.0
Received: by 10.231.113.214 with SMTP id b22mr11823271ibq.102.1307527478779;
	Wed, 08 Jun 2011 03:04:38 -0700 (PDT)
Received: by 10.231.182.15 with HTTP; Wed, 8 Jun 2011 03:04:38 -0700 (PDT)
Date: Wed, 8 Jun 2011 15:34:38 +0530
Message-ID: <BANLkTi=CiOjYDbkLksbmT5TOC1_ZuMUBrg@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: poky@yoctoproject.org
Subject: Error message in building poky for sandybridge platform
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
X-List-Received-Date: Wed, 08 Jun 2011 10:04:39 -0000
Content-Type: multipart/alternative; boundary=0016e6471bd0e81e5a04a5307689

--0016e6471bd0e81e5a04a5307689
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am trying to port Poky to the "sandybridge platform" and  using the branch
"bernard" for fishriver machine.
I am running Ubuntu 10.10 on 64 bit machine.
My build is successful  but during build time I am getting following message
:-

ERROR: -------------------
ERROR: gtk+ is listed in PACKAGES multiple times, this leads to packaging
errors.
ERROR: Please fix the metadata/report this as bug to OE bugtracker.
ERROR: -------------------
:
:
:
ERROR: -------------------
ERROR: gtk-engines is listed in PACKAGES multiple times, this leads to
packaging errors.
ERROR: Please fix the metadata/report this as bug to OE bugtracker.


Anybody have any idea!!!!!!! How to resolve this.As said in the message how
to fix bug in the metadata/report.

Chinmaya

--0016e6471bd0e81e5a04a5307689
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><meta http-equiv=3D"content-type" content=3D"text/html; ch=
arset=3Dutf-8"><span class=3D"Apple-style-span" style=3D"border-collapse: c=
ollapse; font-family: arial, sans-serif; font-size: 13px; "><span style=3D"=
border-collapse: collapse; font-family: arial, sans-serif; font-size: 13px;=
 ">Hi,</span><div>
<span style=3D"border-collapse: collapse; font-family: arial, sans-serif; f=
ont-size: 13px; "><br></span></div><div><span style=3D"border-collapse: col=
lapse; font-family: arial, sans-serif; font-size: 13px; ">I am trying=A0<sp=
an>to</span>=A0port Poky=A0<span>to</span>=A0the &quot;sandybridge platform=
&quot; and=A0 using the branch &quot;bernard&quot; for fishriver machine.<b=
r>
I am running Ubuntu 10.10 on 64 bit machine.</span></div><div><font face=3D=
"arial, sans-serif"><span style=3D"border-collapse: collapse; ">My build is=
=A0successful =A0but during build time I am getting following message :-</s=
pan></font></div>
<div><font face=3D"arial, sans-serif"><span style=3D"border-collapse: colla=
pse; "><br></span></font></div><div><font face=3D"arial, sans-serif"><span =
style=3D"border-collapse: collapse; "><div>ERROR: -------------------</div>=
<div>
ERROR: gtk+ is listed in PACKAGES multiple times, this leads to packaging e=
rrors.</div><div>ERROR: Please fix the metadata/report this as bug to OE bu=
gtracker.</div><div>ERROR: -------------------</div><div>:</div><div>:</div=
>
<div>:</div><div><div>ERROR: -------------------</div><div>ERROR: gtk-engin=
es is listed in PACKAGES multiple times, this leads to packaging errors.</d=
iv><div>ERROR: Please fix the metadata/report this as bug to OE bugtracker.=
</div>
</div><div><br></div></span></font></div><div><span style=3D"border-collaps=
e: collapse; font-family: arial, sans-serif; "><br></span></div><div>Anybod=
y have any idea!!!!!!! How to resolve this.As said in the message how to fi=
x bug in the metadata/report.</div>
<div><br></div><div>Chinmaya=A0</div><div><br></div></span></div>

--0016e6471bd0e81e5a04a5307689--
