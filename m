Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id D07184C80BD4
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 05:33:29 -0600 (CST)
Received: by wwb31 with SMTP id 31so16120445wwb.11
	for <poky@yoctoproject.org>; Mon, 03 Jan 2011 03:33:29 -0800 (PST)
Received: by 10.227.136.146 with SMTP id r18mr11422299wbt.46.1294054409023;
	Mon, 03 Jan 2011 03:33:29 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id
	11sm14046040wbj.19.2011.01.03.03.33.27
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 03 Jan 2011 03:33:28 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
Date: Mon, 3 Jan 2011 12:33:27 +0100
Message-Id: <26CEEF93-E305-4B5E-AEDE-F95163A00FA5@dominion.thruhere.net>
To: poky@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v1082)
X-Mailer: Apple Mail (2.1082)
Subject: multimachine builds, do they actually work in yocto?
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
X-List-Received-Date: Mon, 03 Jan 2011 11:33:30 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

In OE I can do:

MACHINE=3Dbeagleboard bitbake task-base
MACHINE=3Domap3evm bitbake task-base

And have task-base packages in deploy/eglibc/ipk/beagleboard and =
deploy/eglibc/ipk/omap3evm.

In yocto I do:

MACHINE=3Dbeagleboard bitbake task-base
MACHINE=3Domap3evm bitbake task-base

And I get only the beagleboard packages. No matter how much I -c clean =
-c package_write -f I do it for omap3evm, I only get one set of packages =
:(

It does seem to work for other recipes, though, but I can't build =
console-image when doing multimachine builds.

regards,

Koen=

