Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f52.google.com (mail-ww0-f52.google.com [74.125.82.52])
	by mx1.pokylinux.org (Postfix) with ESMTP id 557274C8006D
	for <poky@lists.pokylinux.org>; Sat, 12 Feb 2011 09:01:17 -0600 (CST)
Received: by wwd20 with SMTP id 20so3575627wwd.33
	for <poky@lists.pokylinux.org>; Sat, 12 Feb 2011 07:01:16 -0800 (PST)
Received: by 10.227.141.85 with SMTP id l21mr960799wbu.99.1297522874848;
	Sat, 12 Feb 2011 07:01:14 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id f27sm403213wbf.7.2011.02.12.07.01.14
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 12 Feb 2011 07:01:14 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4D569EC5.6040609@mlbassoc.com>
Date: Sat, 12 Feb 2011 16:01:13 +0100
Message-Id: <44134B64-2531-4D6A-9C7C-C2FE68D18434@dominion.thruhere.net>
References: <4D569EC5.6040609@mlbassoc.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Mailer: Apple Mail (2.1082)
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Booting BeagleBoard
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
X-List-Received-Date: Sat, 12 Feb 2011 15:01:17 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 12 feb 2011, om 15:52 heeft Gary Thomas het volgende geschreven:

> I have a BeagleBoard C3 (not the new xM).  Trying to run the
> latest Poky ran into some problems:
>=20
> * The boot commands in README.hardware are no longer accurate
>  for the 2.6.37 (linux-yocto) kernel.  At least you need to
>  use ttyO2 for the serial console.
> * There is no video?  /dev/fb0 is not being created.
>=20
> I know that the previous (Angstrom based) 2.6.32 kernel had
> lots of additions which support video (DSS subsystem) and
> also camera (ISP).  Has this support been ported forward
> into the Yocto kernel?

Even better, there is a proper BSP with beagleboard support: =
http://gitorious.org/angstrom/angstrom-layers/commits/master=

