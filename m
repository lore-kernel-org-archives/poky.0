Return-Path: <koen@dominion.thruhere.net>
Received: from mail-fx0-f48.google.com (mail-fx0-f48.google.com
	[209.85.161.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 220E94C80AC9
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 04:36:23 -0500 (CDT)
Received: by fxm7 with SMTP id 7so2993669fxm.35
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 02:36:23 -0700 (PDT)
Received: by 10.223.58.72 with SMTP id f8mr1848377fah.137.1302860183016;
	Fri, 15 Apr 2011 02:36:23 -0700 (PDT)
Received: from [10.87.55.226] ([80.187.154.98])
	by mx.google.com with ESMTPS id n1sm742990fam.40.2011.04.15.02.36.20
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 15 Apr 2011 02:36:22 -0700 (PDT)
References: <F3D705F8-F925-42C6-8719-2E09CE9CB93A@beagleboard.org>
From: Koen Kooi <koen@dominion.thruhere.net>
X-Mailer: iPhone Mail (8G4)
Message-Id: <F78663DB-D5CA-45ED-8B41-60FFEF864744@dominion.thruhere.net>
Date: Fri, 15 Apr 2011 11:36:09 +0200
To: Poky Project <poky@yoctoproject.org>
Mime-Version: 1.0 (iPhone Mail 8G4)
Subject: [PATCH] setuptools: Make options for setup.py more flexible
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
X-List-Received-Date: Fri, 15 Apr 2011 09:36:24 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-1-282947601
Content-Transfer-Encoding: 7bit

--Apple-Mail-1-282947601
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii




Begin doorgestuurd bericht:

> Van: Koen Kooi <koen@beagleboard.org>
> Datum: 15 april 2011 11:17:11 GMT+02:00
> Aan: Gary Thomas <gary@mlbassoc.com>
> Kopie: Poky Project <poky@yoctoproject.org>
> Onderwerp: Antw.: [poky] [PATCH] setuptools: Make options for setup.py mor=
e flexible
>=20

> stuff that doesn't know about that option is usually distutils based inste=
ad of setuptools based. using the wrong one usually results in a broken egg f=
ile
>=20
> Op 13 apr. 2011 om 23:17 heeft Gary Thomas <gary@mlbassoc.com> het volgend=
e geschreven:
>=20
>> The setuptools class uses hard-wired options for 'setup.py' during
>> the install step.  In particular, not all versions of setup.py
>> support the "--single-version-externally-managed" option.  This
>> patch allows for a recipe to easily override these options, while
>> leaving the majority (important) setup options intact.
>>=20
>> --=20
>> ------------------------------------------------------------
>> Gary Thomas                 |  Consulting for the
>> MLB Associates              |    Embedded world
>> ------------------------------------------------------------
>> <0001-Make-options-for-setup.py-more-flexible.patch>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky

--Apple-Mail-1-282947601
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><body bgcolor=3D"#FFFFFF"><div><br><br><br>Begin doorgestuurd bericht:=
<br><br></div><blockquote type=3D"cite"><div><b>Van:</b> Koen Kooi &lt;<a hr=
ef=3D"mailto:koen@beagleboard.org">koen@beagleboard.org</a>&gt;<br><b>Datum:=
</b> 15 april 2011 11:17:11 GMT+02:00<br><b>Aan:</b> Gary Thomas &lt;<a href=
=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt;<br><b>Kopie:</b> Pok=
y Project &lt;<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org=
</a>&gt;<br><b>Onderwerp:</b> <b>Antw.: [poky] [PATCH] setuptools: Make opti=
ons for setup.py more flexible</b><br><br></div></blockquote><div></div><blo=
ckquote type=3D"cite"><div><span>stuff that doesn't know about that option i=
s usually distutils based instead of setuptools based. using the wrong one u=
sually results in a broken egg file</span><br><span></span><br><span>Op 13 a=
pr. 2011 om 23:17 heeft Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com"=
>gary@mlbassoc.com</a>&gt; het volgende geschreven:</span><br><span></span><=
br><blockquote type=3D"cite"><span>The setuptools class uses hard-wired opti=
ons for 'setup.py' during</span><br></blockquote><blockquote type=3D"cite"><=
span>the install step. &nbsp;In particular, not all versions of setup.py</sp=
an><br></blockquote><blockquote type=3D"cite"><span>support the "--single-ve=
rsion-externally-managed" option. &nbsp;This</span><br></blockquote><blockqu=
ote type=3D"cite"><span>patch allows for a recipe to easily override these o=
ptions, while</span><br></blockquote><blockquote type=3D"cite"><span>leaving=
 the majority (important) setup options intact.</span><br></blockquote><bloc=
kquote type=3D"cite"><span></span><br></blockquote><blockquote type=3D"cite"=
><span>-- </span><br></blockquote><blockquote type=3D"cite"><span>----------=
--------------------------------------------------</span><br></blockquote><b=
lockquote type=3D"cite"><span>Gary Thomas &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| &nbsp;Consul=
ting for the</span><br></blockquote><blockquote type=3D"cite"><span>MLB Asso=
ciates &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;| &nbsp;&nbsp;&nbsp;Embedded world</span><br></blockquote><blockquo=
te type=3D"cite"><span>-----------------------------------------------------=
-------</span><br></blockquote><blockquote type=3D"cite"><span>&lt;0001-Make=
-options-for-setup.py-more-flexible.patch&gt;</span><br></blockquote><blockq=
uote type=3D"cite"><span>_______________________________________________</sp=
an><br></blockquote><blockquote type=3D"cite"><span>poky mailing list</span>=
<br></blockquote><blockquote type=3D"cite"><span><a href=3D"mailto:poky@yoct=
oproject.org">poky@yoctoproject.org</a></span><br></blockquote><blockquote t=
ype=3D"cite"><span><a href=3D"https://lists.yoctoproject.org/listinfo/poky">=
https://lists.yoctoproject.org/listinfo/poky</a></span><br></blockquote></di=
v></blockquote></body></html>=

--Apple-Mail-1-282947601--
