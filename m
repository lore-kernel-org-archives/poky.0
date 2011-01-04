Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id C9FD24C8086F
	for <poky@yoctoproject.org>; Tue,  4 Jan 2011 03:12:56 -0600 (CST)
Received: by wwb31 with SMTP id 31so17227729wwb.11
	for <poky@yoctoproject.org>; Tue, 04 Jan 2011 01:12:56 -0800 (PST)
Received: by 10.227.172.137 with SMTP id l9mr12521039wbz.196.1294132375922;
	Tue, 04 Jan 2011 01:12:55 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id
	m10sm14860002wbc.4.2011.01.04.01.12.54
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Tue, 04 Jan 2011 01:12:54 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <C3C119F5-9718-4FAD-B52D-51229140AAD0@dominion.thruhere.net>
Date: Tue, 4 Jan 2011 10:12:52 +0100
Message-Id: <1A34D924-4ABD-44E5-A605-A4A37009CAA1@dominion.thruhere.net>
References: <C3C119F5-9718-4FAD-B52D-51229140AAD0@dominion.thruhere.net>
To: poky@yoctoproject.org
X-Mailer: Apple Mail (2.1082)
Subject: Re: [RFC] put PACKAGE_EXTRA_ARCHS in tune files, not machines files, just like OE does
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
X-List-Received-Date: Tue, 04 Jan 2011 09:12:57 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 4 jan 2011, om 09:14 heeft Koen Kooi het volgende geschreven:

> Hi,
>=20
> I spent this mornings pre-coffee time debugging a strange problem in =
do_rootfs which turned out to be pretty simple (after coffee, that is): =
yocto puts PACKAGE_EXTRA_ARCHS in the machine.confs instead of the tune =
files.
>=20
> This would solve the massive duplication in the machine files and help =
to avoid the "do_rootfs complains about missing packages that *are* =
present" type of problems. FWIW, OE has does this years ago and it has =
worked out quite well.
>=20
> I do find it funny that various bugs in yocto give a deja-vu feeling =
of having them solved before :)

This is how the patch would look like: =
http://cgit.openembedded.org/cgit.cgi/openembedded/commit/?id=3Da1825f04c3=
b8b98a66ae402e99fd40ff2be59c82=

