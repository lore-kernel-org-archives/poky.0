Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f42.google.com (mail-ww0-f42.google.com [74.125.82.42])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1CCCA4C80FAC
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 07:49:35 -0600 (CST)
Received: by wwi17 with SMTP id 17so5160610wwi.5
	for <poky@yoctoproject.org>; Wed, 22 Dec 2010 05:49:29 -0800 (PST)
Received: by 10.216.18.76 with SMTP id k54mr10228638wek.61.1293025769059;
	Wed, 22 Dec 2010 05:49:29 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id o19sm3132756wee.26.2010.12.22.05.49.28
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Wed, 22 Dec 2010 05:49:28 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
Date: Wed, 22 Dec 2010 14:49:27 +0100
Message-Id: <70D74F2C-4429-4294-9668-2D17B8A31943@dominion.thruhere.net>
To: poky@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v1082)
X-Mailer: Apple Mail (2.1082)
Subject: RDEPENDS = "foo" in core layer
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
X-List-Received-Date: Wed, 22 Dec 2010 13:49:37 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

The core layer has tons of RDEPENDS =3D "foo", which should actually be =
RDEPENDS_${PN}. What's the policy on those?

regards,

Koen=

