Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f171.google.com (mail-wy0-f171.google.com
	[74.125.82.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4D12E011D3
	for <poky@pokylinux.org>; Sat,  3 Sep 2011 10:02:53 -0700 (PDT)
Received: by wyh13 with SMTP id 13so3624364wyh.2
	for <poky@pokylinux.org>; Sat, 03 Sep 2011 10:02:52 -0700 (PDT)
Received: by 10.216.221.102 with SMTP id q80mr2213861wep.37.1315069372396;
	Sat, 03 Sep 2011 10:02:52 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id ex16sm2560342wbb.4.2011.09.03.10.02.50
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 03 Sep 2011 10:02:50 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1244.3)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <j3sv23$rbe$1@dough.gmane.org>
Date: Sat, 3 Sep 2011 19:02:47 +0200
Message-Id: <DCF653D9-527C-49EA-8689-40A4820B2FB5@dominion.thruhere.net>
References: <4E5D200B.20209@mlbassoc.com> <j3sv23$rbe$1@dough.gmane.org>
To: gmane@reliableembeddedsystems.com
X-Mailer: Apple Mail (2.1244.3)
Cc: poky@pokylinux.org
Subject: Re: Debugging udev
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
X-List-Received-Date: Sat, 03 Sep 2011 17:02:54 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 3 sep. 2011, om 12:20 heeft Robert Berger het volgende geschreven:
>=20
> *) DEVTMPFS
> Besides I'm not a big fan of udev/mkdev for embedded systems since we
> have user space dependencies. The kernel obviously knows about the v4l
> class, but there are no device entries made.
>=20
> I prefer to use DEVTMPFS (enable CONFIG_DEVTMPFS in your kernel =
config)
> where the kernel makes the dev entries and you don't have user space
> dependencies.

That's actually mandatory for recent versions of udev (164 is quite old =
already). Recent udevs only take care of the policy stuff, devnodes are =
handled by the kernel.=

