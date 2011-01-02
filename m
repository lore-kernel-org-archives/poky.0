Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id DD12F4C80BD4
	for <poky@yoctoproject.org>; Sun,  2 Jan 2011 11:08:58 -0600 (CST)
Received: by wwb31 with SMTP id 31so15576268wwb.11
	for <poky@yoctoproject.org>; Sun, 02 Jan 2011 09:08:58 -0800 (PST)
Received: by 10.216.13.134 with SMTP id b6mr23130025web.25.1293988137748;
	Sun, 02 Jan 2011 09:08:57 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id n1sm9364320weq.7.2011.01.02.09.08.57
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Sun, 02 Jan 2011 09:08:57 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
Date: Sun, 2 Jan 2011 18:08:56 +0100
Message-Id: <D094D4EC-55AF-4B52-A011-60EDCD5A46A6@dominion.thruhere.net>
To: poky@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v1082)
X-Mailer: Apple Mail (2.1082)
Subject: PREMIRRORS in yocto, do they actually work?
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
X-List-Received-Date: Sun, 02 Jan 2011 17:08:59 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

I would like to have the fetchter try my PREMIRROS first before trying =
to fetch from git. In OE I have the following in a bbclass:

PREMIRRORS_append () {
git://.*/.* http://www.angstrom-distribution.org/unstable/sources/
}

When used in OE that works, but in yocto it doesn't. So I tried to do it =
poky style in a .inc:

PREMIRRORS_append =3D "\
git://.*/.*   http:/www.angstrom-distribution.org/sources/ \n"

Which also doesn't work since it doesn't try to fetch from there, but it =
does mention "http:/www.angstrom-distribution.org/sources/" in the fetch =
error message when git read-tree fails.

So my question: how do I make it work in yocto like it works in OE?

regards,

Koen=

