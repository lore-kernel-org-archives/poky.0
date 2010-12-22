Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6FDFC4C808B0
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 07:48:31 -0600 (CST)
Received: by wye20 with SMTP id 20so5385638wye.35
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 05:48:30 -0800 (PST)
Received: by 10.216.181.141 with SMTP id l13mr7853205wem.22.1293025710220;
	Wed, 22 Dec 2010 05:48:30 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id o19sm3132756wee.26.2010.12.22.05.48.29
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Wed, 22 Dec 2010 05:48:29 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
Date: Wed, 22 Dec 2010 14:48:28 +0100
Message-Id: <C40A274E-BE70-4CE5-87D3-81F65CAF51AA@dominion.thruhere.net>
To: poky@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v1082)
X-Mailer: Apple Mail (2.1082)
Subject: Replacement for fakeroot do_install()?
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
X-List-Received-Date: Wed, 22 Dec 2010 13:48:32 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

What's is the pseudo way to do fakeroot do_install()? I have a number of =
OE recipes that still use fakeroot and I would like to get rid of that =
in the OE layer for yocto.

regards,

Koen=

