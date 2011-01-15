Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id A55B14C81003
	for <poky@yoctoproject.org>; Sat, 15 Jan 2011 05:39:50 -0600 (CST)
Received: by wye20 with SMTP id 20so3755233wye.35
	for <poky@yoctoproject.org>; Sat, 15 Jan 2011 03:39:49 -0800 (PST)
Received: by 10.227.141.142 with SMTP id m14mr1858039wbu.88.1295091589046;
	Sat, 15 Jan 2011 03:39:49 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id b30sm1194172wen.1.2011.01.15.03.39.48
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Sat, 15 Jan 2011 03:39:48 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <5e7d2160749c1364b238aa38d358bf5c0bfabb37.1295089968.git.dexuan.cui@intel.com>
Date: Sat, 15 Jan 2011 12:39:47 +0100
Message-Id: <18993D32-C58B-4FC8-901E-E90046FF27B5@dominion.thruhere.net>
References: <cover.1295089968.git.dexuan.cui@intel.com>
	<5e7d2160749c1364b238aa38d358bf5c0bfabb37.1295089968.git.dexuan.cui@intel.com>
To: Dexuan Cui <dexuan.cui@intel.com>
X-Mailer: Apple Mail (2.1082)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/2] libc-package.bbclass: should not rm scsi/*.h
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
X-List-Received-Date: Sat, 15 Jan 2011 11:39:51 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 15 jan 2011, om 12:23 heeft Dexuan Cui het volgende geschreven:

> {e}glibc should install the scsi/*.h files, which are needed by hal.
> Currently hal can build because eglibc-initial (which has its own =
do_install)
> installs the files. In future eglibc will have its own sysroot, so hal
> won't build.
>=20
> BTW: in OE side, eglibc's do_install also doesn't remove the files.

As some background info: There's a conflict between =
linux-libc-headers-dev and libc-dev when installing on the target. In OE =
we do this instead:

koen@dominion:/OE/org.openembedded.dev$ grep scsi =
recipes/linux-libc-headers/ -rn
recipes/linux-libc-headers/linux-libc-headers_2.6.32.bb:23:     rm -f =
${D}${exec_prefix}/include/scsi/scsi.h
recipes/linux-libc-headers/linux-libc-headers_2.6.31.bb:23:     rm -f =
${D}${exec_prefix}/include/scsi/scsi.h
recipes/linux-libc-headers/linux-libc-headers_2.6.34.bb:42:     rm -f =
${D}${exec_prefix}/include/scsi/scsi.h

regards,

Koen=

