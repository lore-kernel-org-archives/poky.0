Return-Path: <lianhao.lu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id EF9114C8006D
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 20:36:18 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 15 Feb 2011 18:36:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,477,1291622400"; d="scan'208";a="887861828"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 15 Feb 2011 18:36:03 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 16 Feb 2011 10:35:27 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 16 Feb 2011 10:35:26 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Wed, 16 Feb 2011 10:35:26 +0800
Thread-Topic: [PATCH 1/1] linux-libc-headers-yocto: Added RPROVIDES.
Thread-Index: AcvNA3CPrX+3degCRwyWp3Q6pI0O+AAfrOIg
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F2136C4616A@shsmsx502.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: FW: [PATCH 1/1] linux-libc-headers-yocto: Added RPROVIDES.
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
X-List-Received-Date: Wed, 16 Feb 2011 02:36:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Looks like I had problems in sending emails to mailing list from my linux b=
ox. So I forward this pull request from my outlook.

Best Regards,
Lianhao


-----Original Message-----
From: Lu, Lianhao=20
Sent: Tuesday, February 15, 2011 7:28 PM
To: poky@yoctoproject.org
Cc: Lu, Lianhao
Subject: [PATCH 1/1] linux-libc-headers-yocto: Added RPROVIDES.

From: Lianhao Lu <lianhao.lu@intel.com>

[BUGID #714] Added RPROVIDES_${PN}-dev and RPROVIDES_${PN}-dbg for
linux-libc-headers-yocto to provides "linux-libc-headers-dev" and
"linux-libc-headers-dbg" respectively.

This resolved the dependency issue of libc6-dev depending upon
linux-libc-headers-dev. Package linux-libc-headers-yocto-dev will be
installed as linux-libc-headers-dev.

Signed-off-by: Lianhao Lu <lianhao.lu@intel.com>
---
 .../linux-libc-headers-yocto_git.bb                |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yoct=
o_git.bb b/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_=
git.bb
index 0d58354..b0e152d 100644
--- a/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.b=
b
+++ b/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_git.b=
b
@@ -6,6 +6,8 @@ B =3D "${S}"
 INHIBIT_DEFAULT_DEPS =3D "1"
 DEPENDS +=3D "unifdef-native"
 PROVIDES =3D "linux-libc-headers"
+RPROVIDES-${PN}-dev =3D "linux-libc-headers-dev"
+RPROVIDES-${PN}-dbg =3D "linux-libc-headers-dbg"
 PV =3D "2.6.37+git-${SRCPV}"
 PR =3D "r2"
=20
--=20
1.7.0.4


