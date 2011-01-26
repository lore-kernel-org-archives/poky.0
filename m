Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id A56974C811BA;
	Wed, 26 Jan 2011 02:23:51 -0600 (CST)
Received: by wwb31 with SMTP id 31so707547wwb.11
	for <multiple recipients>; Wed, 26 Jan 2011 00:23:50 -0800 (PST)
Received: by 10.227.147.5 with SMTP id j5mr8073wbv.41.1296030230376;
	Wed, 26 Jan 2011 00:23:50 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id f35sm10761023wbf.14.2011.01.26.00.23.49
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Wed, 26 Jan 2011 00:23:49 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4da3cd3c9adebd3279b376a1f7aa2a0353484ecd.1296023140.git.dongxiao.xu@intel.com>
Date: Wed, 26 Jan 2011 09:23:48 +0100
Cc: poky@yoctoproject.org
Message-Id: <E0264D9A-19E7-4EB3-AED5-EDEB6A4F30E0@dominion.thruhere.net>
References: <cover.1296023140.git.dongxiao.xu@intel.com>
	<4da3cd3c9adebd3279b376a1f7aa2a0353484ecd.1296023140.git.dongxiao.xu@intel.com>
To: poky-bounces@yoctoproject.org
X-Mailer: Apple Mail (2.1082)
Subject: Re: [PATCH 1/1] rm_work.bbclass: reserve 'image' folder when remove WORKDIR
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
X-List-Received-Date: Wed, 26 Jan 2011 08:23:52 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Op 26 jan 2011, om 07:30 heeft poky-bounces@yoctoproject.org het =
volgende geschreven:

> From: Dongxiao Xu <dongxiao.xu@intel.com>
>=20
> After the implementation of per machine sysroot, do_populate_sysroot
> and do_package need to be re-run if we build two machines of one
> architecture (in case that sstate prebuilt result could not be reused
> for certain recipes). But if removing all the WORKDIR contents after
> the first macine build, the second machine's do_populate_sysroot and
> do_package will fail due to the missing of "image" directory.
>=20
> Thus reserve 'image' folder when doing rm_work.

Wouldn't adding do_install to sstate be a better idea? OE was designed =
that it wouldn't depend on WORKDIR after building, so this patch is a =
step in the wrong direction.

regards,

Koen=

