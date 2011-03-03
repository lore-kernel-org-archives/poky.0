Return-Path: <liping.ke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id F32E84C80479
	for <poky@yoctoproject.org>; Wed,  2 Mar 2011 21:36:00 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 02 Mar 2011 19:36:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,256,1297065600"; d="scan'208";a="663288185"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga002.fm.intel.com with ESMTP; 02 Mar 2011 19:35:59 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 3 Mar 2011 11:35:27 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Thu, 3 Mar 2011
	11:35:24 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Thu, 3 Mar 2011 11:35:22 +0800
Thread-Topic: [PATCH 0/1] ADT: Add libtool-nativesdk for ADT installer
Thread-Index: AcvZVAbwIerRdMaeTDOrVzNCcGA+4Q==
Message-ID: <789F9655DD1B8F43B48D77C5D306597332E8BF71@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: [PATCH 0/1] ADT: Add libtool-nativesdk for ADT installer
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
X-List-Received-Date: Thu, 03 Mar 2011 03:36:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

From: Liping Ke <liping.ke@intel.com>

Add libtool-nativesdk for ADT
We need to add libtool native sdk support in ADT installer.
This patch fix #bug  791
   =20
Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lke/adt-libtool
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dlke/adt-l=
ibtool

Thanks,
    Liping Ke <liping.ke@intel.com>
---


Liping Ke (1):
  ADT: Add libtool-nativesdk for ADT installer

 .../adt-installer/scripts/adt_installer_internal   |    3 +++
1 files changed, 3 insertions(+), 0 deletions(-)

_______________________________________________
poky mailing list
poky@yoctoproject.org
https://lists.yoctoproject.org/listinfo/poky

