Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 058E14C80BEF
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 01:51:11 -0600 (CST)
Received: by wwb31 with SMTP id 31so6320625wwb.11
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 23:51:11 -0800 (PST)
Received: by 10.216.18.204 with SMTP id l54mr4037832wel.99.1295337071070;
	Mon, 17 Jan 2011 23:51:11 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id
	b30sm2813108wen.25.2011.01.17.23.51.10
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Mon, 17 Jan 2011 23:51:10 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
Date: Tue, 18 Jan 2011 08:51:06 +0100
Message-Id: <5D53183E-2C2C-4DAC-9ED9-51DA01F33E77@dominion.thruhere.net>
To: poky@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v1082)
X-Mailer: Apple Mail (2.1082)
Subject: install-info creates package clashes for e.g. external python tarball
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
X-List-Received-Date: Tue, 18 Jan 2011 07:51:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

When building external-python-tarball I get:


|  * check_data_file_clashes: Package libreadline6 wants to install file =
/OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/=
external-python-tarball-1.0-r0/sdk/image/usr/local/angstrom/x86_64/sysroot=
s/x86_64-angstromsdk-linux/usr/share/info/dir
|       But that file is already provided by package  * eglibc-nativesdk
|  * opkg_install_cmd: Cannot install package python-nativesdk-core.

I vaguely recall running into this a few years ago in OE, but I can only =
find this one: =
http://cgit.openembedded.org/cgit.cgi/openembedded/commit/?id=3D7b774a106f=
6936fd050abb4cbe90a84bd0b67025

Does anyone have an idea on how to fix this in yocto without resorting =
to --force-overwrite?

regards,

Koen=

