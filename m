Return-Path: <lianhao.lu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 671224C808E6
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 20:37:25 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 15 Feb 2011 18:37:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,477,1291622400"; d="scan'208";a="658100143"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga002.fm.intel.com with ESMTP; 15 Feb 2011 18:37:24 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 16 Feb 2011 10:35:14 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 16 Feb 2011 10:35:14 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 16 Feb 2011 10:35:12 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Wed, 16 Feb 2011 10:35:10 +0800
Thread-Topic: [PATCH 0/1] Fixing bug #714
Thread-Index: AcvNA3Hk2YZTuzUxSaOTbp7w1CiQqQAfmXgA
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F2136C46169@shsmsx502.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: FW: [PATCH 0/1] Fixing bug #714
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
X-List-Received-Date: Wed, 16 Feb 2011 02:37:25 -0000
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
Subject: [PATCH 0/1] Fixing bug #714

From: Lianhao Lu <lianhao.lu@intel.com>

The kernel headers are not installed in rootfs because it is included in th=
e pacakge of linux-libc-headers-yocto-dev, while other packages like libc6-=
dev still think its name as linux-libc-headers.

So we need to add RPROVIDES to linux-libc-headers-yocto-dev to have it RPRO=
VIDES the linux-libc-headers-dev, so it can be installed as required by lib=
c6-dev.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: llu/bug714
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dllu/bug71=
4

Thanks,
    Lianhao Lu <lianhao.lu@intel.com>
---


Lianhao Lu (1):
  linux-libc-headers-yocto: Added RPROVIDES.

 .../linux-libc-headers-yocto_git.bb                |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)


