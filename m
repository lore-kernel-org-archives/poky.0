Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8CE7C4C80B70
	for <poky@yoctoproject.org>; Tue,  4 Jan 2011 02:14:51 -0600 (CST)
Received: by wye20 with SMTP id 20so14937949wye.35
	for <poky@yoctoproject.org>; Tue, 04 Jan 2011 00:14:50 -0800 (PST)
Received: by 10.216.178.138 with SMTP id f10mr4426087wem.98.1294128890495;
	Tue, 04 Jan 2011 00:14:50 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id
	b30sm10346741wen.1.2011.01.04.00.14.49
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Tue, 04 Jan 2011 00:14:49 -0800 (PST)
From: Koen Kooi <koen@dominion.thruhere.net>
Date: Tue, 4 Jan 2011 09:14:48 +0100
Message-Id: <C3C119F5-9718-4FAD-B52D-51229140AAD0@dominion.thruhere.net>
To: poky@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v1082)
X-Mailer: Apple Mail (2.1082)
Subject: [RFC] put PACKAGE_EXTRA_ARCHS in tune files, not machines files, just like OE does
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
X-List-Received-Date: Tue, 04 Jan 2011 08:14:52 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

I spent this mornings pre-coffee time debugging a strange problem in =
do_rootfs which turned out to be pretty simple (after coffee, that is): =
yocto puts PACKAGE_EXTRA_ARCHS in the machine.confs instead of the tune =
files.

This would solve the massive duplication in the machine files and help =
to avoid the "do_rootfs complains about missing packages that *are* =
present" type of problems. FWIW, OE has does this years ago and it has =
worked out quite well.

I do find it funny that various bugs in yocto give a deja-vu feeling of =
having them solved before :)

regards,

Koen=

