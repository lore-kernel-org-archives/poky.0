Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 022BC4C8106A
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 07:29:54 -0600 (CST)
Received: by wye20 with SMTP id 20so6299292wye.35
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 05:29:54 -0800 (PST)
Received: by 10.216.177.9 with SMTP id c9mr4627141wem.34.1295357393559;
	Tue, 18 Jan 2011 05:29:53 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id
	a50sm1428927wer.42.2011.01.18.05.29.52
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Tue, 18 Jan 2011 05:29:53 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4D357B4B.30607@mlbassoc.com>
Date: Tue, 18 Jan 2011 14:29:52 +0100
Message-Id: <D6F16B0B-0272-4D07-8163-4BD17C368CEB@dominion.thruhere.net>
References: <4D32E4D2.5030002@mlbassoc.com>	 <1295256226.2321.1.camel@scimitar>
	<4D343BB7.4050404@mlbassoc.com> <1295269851.6501.2.camel@scimitar>
	<4D3443FC.5060201@mlbassoc.com> <4D34731A.2090304@mlbassoc.com>
	<4D357B4B.30607@mlbassoc.com>
To: poky@yoctoproject.org
X-Mailer: Apple Mail (2.1082)
Subject: Re: Kernel firmware?
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
X-List-Received-Date: Tue, 18 Jan 2011 13:29:55 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Op 18 jan 2011, om 12:36 heeft Gary Thomas het volgende geschreven:

> I don't see any kernel modules get installed in one of Poky's
> "supported" platforms either.  I just tried
>  MACHINE=3Digep0030 bitbake poky-image-minimal
> in a clean tree.  No kernel modules:
>=20
> [gthomas@titan igep_test]$ ls =
tmp/work/igep0030-poky-linux-gnueabi/poky-image-minimal-1.0-r0/rootfs/lib
>=20
> libanl-2.12.1.so           libcrypt.so.1       libnsl.so.1             =
 libpthread.so.0         modules
                                                                         =
                                                                  =
^^^^^^^^


