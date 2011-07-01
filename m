Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id CDABE4C804DC
	for <poky@yoctoproject.org>; Fri,  1 Jul 2011 08:05:17 -0500 (CDT)
Received: by wwf4 with SMTP id 4so3058876wwf.11
	for <poky@yoctoproject.org>; Fri, 01 Jul 2011 06:05:16 -0700 (PDT)
Received: by 10.227.60.143 with SMTP id p15mr3010575wbh.37.1309525516582;
	Fri, 01 Jul 2011 06:05:16 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id c17sm2342241wbh.46.2011.07.01.06.05.15
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 01 Jul 2011 06:05:15 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4E0DC212.5020808@freyther.de>
Date: Fri, 1 Jul 2011 15:05:09 +0200
Message-Id: <E4CDA7DE-7235-484B-A0B3-F025647E2B8A@dominion.thruhere.net>
References: <4E0DC212.5020808@freyther.de>
To: Holger Hans Peter Freyther <holger@freyther.de>
X-Mailer: Apple Mail (2.1084)
Cc: poky@yoctoproject.org
Subject: Re: Installing GDB or the saga of getting RPM/Zypp to run on JFFS2
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
X-List-Received-Date: Fri, 01 Jul 2011 13:05:18 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 1 jul 2011, om 14:48 heeft Holger Hans Peter Freyther het volgende =
geschreven:

> While looking into the size I also found that:
> 	- udev drags in libgobject/libgthread due libgudev
> 	- udev installs keymaps even when i have no keyboard in my
> 	  machine flags...

The udev in meta-oe should have the above 2 issues address and is a lot =
faster as well=

