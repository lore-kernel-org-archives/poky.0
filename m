Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3C83D4C80FFE
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 04:20:23 -0600 (CST)
Received: by wye20 with SMTP id 20so11422948wye.35
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 02:20:22 -0800 (PST)
Received: by 10.216.46.193 with SMTP id r43mr19343985web.20.1293704422029;
	Thu, 30 Dec 2010 02:20:22 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id
	t11sm7020565wes.17.2010.12.30.02.20.21
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Thu, 30 Dec 2010 02:20:21 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1293703995.17519.9987.camel@rex>
Date: Thu, 30 Dec 2010 11:20:20 +0100
Message-Id: <A60F6ED5-CFFB-480B-A589-FFE91CB4F315@dominion.thruhere.net>
References: <1293050270.3578.172.camel@rex>
	<1293111933-5071-1-git-send-email-koen@openembedded.org>
	<1293113340.1588.860.camel@rex>
	<0AA1E123-3984-442B-986C-6B4C8B0C3021@dominion.thruhere.net>
	<1293703995.17519.9987.camel@rex>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.1082)
Cc: poky@yoctoproject.org
Subject: Re: [RFC][PATCH] RDEPENDS, RRECOMMENDS -> RDPEPENDS_${PN}, RRECOMMENDS_${PN}
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
X-List-Received-Date: Thu, 30 Dec 2010 10:20:23 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 30 dec 2010, om 11:13 heeft Richard Purdie het volgende geschreven:
>>>> -BASE_RRECOMMENDS =3D "ttf-dejavu-sans"
>>>> +BASE_RRECOMMENDS_${PN} =3D "ttf-dejavu-sans"
>>>> BASE_RRECOMMENDS_angstrom =3D "ttf-dejavu-sans =
gdk-pixbuf-loader-png gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-gif =
gdk-pixbuf-loader-xpm"
>>>> BASE_RRECOMMENDS_poky =3D "gdk-pixbuf-loader-png =
gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-gif gdk-pixbuf-loader-xpm =
shared-mime-info"
>>>> BASE_RRECOMMENDS_moblin =3D "gdk-pixbuf-loader-png =
gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-gif gdk-pixbuf-loader-xpm =
shared-mime-info"
>>>=20
>>> Need to add ${PN} into these. We should really consider changing the
>>> default here...
>>=20
>> fixed the PN part, not the default setting
>=20
> It raises the horrible question about what the default should be I =
guess
> (again) :/.

This is a leftover for the familiar-angstrom split. My opinion was that =
doing 'opkg install gtk-app'[1] resulted in a working app, but other =
people like Phil Blundel disagreed and wanted the default to be broken. =
As you see, poky and moblin share my opininion :)

regards,

Koen

[1] 'ipkg install' at that point :)=

