Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id F2EB84C811AA;
	Wed, 26 Jan 2011 02:48:07 -0600 (CST)
Received: by wye20 with SMTP id 20so695344wye.35
	for <multiple recipients>; Wed, 26 Jan 2011 00:48:07 -0800 (PST)
Received: by 10.227.182.68 with SMTP id cb4mr7065508wbb.218.1296031685477;
	Wed, 26 Jan 2011 00:48:05 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id n1sm7637564weq.31.2011.01.26.00.48.04
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Wed, 26 Jan 2011 00:48:04 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <5eb33f8529e5b56387f7c51f11e50d3c2b031370.1296008816.git.ke.yu@intel.com>
Date: Wed, 26 Jan 2011 09:48:03 +0100
Cc: poky@yoctoproject.org
Message-Id: <10A1EBA3-1693-4FED-8255-CBF6C7804357@dominion.thruhere.net>
References: <cover.1296008816.git.ke.yu@intel.com>
	<5eb33f8529e5b56387f7c51f11e50d3c2b031370.1296008816.git.ke.yu@intel.com>
To: poky-bounces@yoctoproject.org
X-Mailer: Apple Mail (2.1082)
Subject: Re: [PATCH 2/2] xf86-video-omapfb: upgrade to 044617665d6737f4909aab96
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
X-List-Received-Date: Wed, 26 Jan 2011 08:48:08 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

That revision is buggy, using it disables the framebuffer:

[   34.354583] omapdss DISPC error: timeout waiting for EVSYNC
[   34.456146] omapdss DISPC error: timeout waiting for EVSYNC


Op 26 jan 2011, om 03:29 heeft poky-bounces@yoctoproject.org het =
volgende geschreven:

> From: Yu Ke <ke.yu@intel.com>
>=20
> Signed-off-by: Yu Ke <ke.yu@intel.com>
> ---
> .../conf/distro/include/poky-default-revisions.inc |    2 +-
> 1 files changed, 1 insertions(+), 1 deletions(-)
>=20
> diff --git a/meta/conf/distro/include/poky-default-revisions.inc =
b/meta/conf/distro/include/poky-default-revisions.inc
> index 8d98eef..a606889 100644
> --- a/meta/conf/distro/include/poky-default-revisions.inc
> +++ b/meta/conf/distro/include/poky-default-revisions.inc
> @@ -182,7 +182,7 @@ SRCREV_pn-xcb-proto ??=3D =
"d81ca233e98be8fa59e8c90d262c0516944c5a66"
> SRCREV_pn-xcb-proto-native ??=3D =
"d81ca233e98be8fa59e8c90d262c0516944c5a66"
> SRCREV_pn-xf86-video-intel ??=3D =
"87ea531c5dc5b39809395b277c330854aaaaf019"
> SRCREV_pn-xf86-video-intel-dri2 ??=3D =
"3dd7f0f9423bb891bc99cd3b77dc3d57e057a7ef"
> -SRCREV_pn-xf86-video-omapfb ??=3D =
"6cff996abcb305460e9fa2c75569b776f099c9d5"
> +SRCREV_pn-xf86-video-omapfb ??=3D =
"044617665d6737f4909aab96f91b06261dff05d2"
> SRCREV_pn-xf86-input-keyboard ??=3D =
"3e28d68b50d291938734e9684b8296ca864f3892"
> SRCREV_pn-xf86-input-mouse ??=3D =
"ea5cfe804e112f320f14ad896c7802d53551d3e6"
> SRCREV_pn-xf86-input-synaptics ??=3D =
"934bc0012f948c52aadc8eda912f7728fb7394a2"
> --=20
> 1.7.0.4
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


