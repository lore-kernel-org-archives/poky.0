Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 01CE04C8018D
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 10:01:35 -0600 (CST)
Received: by wwb31 with SMTP id 31so5183205wwb.11
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 08:01:35 -0800 (PST)
Received: by 10.227.155.198 with SMTP id t6mr5043731wbw.194.1296403294608;
	Sun, 30 Jan 2011 08:01:34 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id o6sm2763846wbo.3.2011.01.30.08.01.33
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Sun, 30 Jan 2011 08:01:33 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <a598a01bc519ea080e73605f4ff70b499bcab645.1296372804.git.jingdong.lu@windriver.com>
Date: Sun, 30 Jan 2011 17:01:32 +0100
Message-Id: <B32A4CB7-E47B-43F2-A71C-912D5C2D1334@dominion.thruhere.net>
References: <cover.1296372804.git.jingdong.lu@windriver.com>
	<a598a01bc519ea080e73605f4ff70b499bcab645.1296372804.git.jingdong.lu@windriver.com>
To: Jingdong Lu <jingdong.lu@windriver.com>
X-Mailer: Apple Mail (2.1082)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 4/5] cups: add cups 1.4.6
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
X-List-Received-Date: Sun, 30 Jan 2011 16:01:36 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 30 jan 2011, om 08:36 heeft Jingdong Lu het volgende geschreven:

> From: Jingdong Lu <jingdong.lu@windriver.com>
>=20
> This package has been added from Open Embedded.
> Changes from the Open Embedded version:
> * Update to version 1.4.6
> * Add SUMMARY, LIC_FILES_CHKSUM, checksum of source
> * Remove skip_tools.patch

The skip_tools patch is needed for cross-compiling, without it it will =
try to run genstrings and the ppd generator. I cleaned up the cups in =
meta-oe and that builds cleanly for armv7a now. You can steal the =
updated skip_tools patch from there.

I also updated the license to GPLv2 and LGPLv2, but I'm not sure how to =
add the apple and ssl exception is lists in LICENSE.txt.

regards,

Koen=

