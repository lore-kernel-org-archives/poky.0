Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 66EA74C8006D
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 09:44:51 -0600 (CST)
Received: by wwb31 with SMTP id 31so5174175wwb.11
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 07:44:50 -0800 (PST)
Received: by 10.227.157.141 with SMTP id b13mr5025306wbx.96.1296402281272;
	Sun, 30 Jan 2011 07:44:41 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id f35sm14412676wbf.20.2011.01.30.07.44.40
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Sun, 30 Jan 2011 07:44:40 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <cover.1296399890.git.dexuan.cui@intel.com>
Date: Sun, 30 Jan 2011 16:44:39 +0100
Message-Id: <2E18009D-3031-4DBD-8185-62182404D5C5@dominion.thruhere.net>
References: <cover.1296399890.git.dexuan.cui@intel.com>
To: Dexuan Cui <dexuan.cui@intel.com>
X-Mailer: Apple Mail (2.1082)
Cc: poky@yoctoproject.org
Subject: Re: [Dexuan: Jan 30: gdk-pixbuf: PULL 0/1] gdk-pixbuf: add jpeg into DEPENDS
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
X-List-Received-Date: Sun, 30 Jan 2011 15:44:51 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Op 30 jan 2011, om 16:06 heeft Dexuan Cui het volgende geschreven:

> From: Dexuan Cui <dexuan.cui@intel.com>
>=20
> meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.22.1.bb |    2 ++

OE is using BBCLASS_EXTEND in gtk+ to provide the pixbug loaders, doing =
this in yocto would reduce duplicate functionality a lot.

regards,

Koen=

