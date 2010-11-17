Return-Path: <lei.mei@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id E4A294C80052
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 02:19:12 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 17 Nov 2010 00:19:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,209,1288594800"; d="scan'208";a="574627137"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga002.jf.intel.com with ESMTP; 17 Nov 2010 00:19:11 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 17 Nov 2010 16:18:47 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 17 Nov 2010 16:18:46 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Wed, 17 Nov 2010 16:18:41 +0800
From: "Mei, Lei" <lei.mei@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Wed, 17 Nov 2010 16:18:40 +0800
Thread-Topic: [PULL]distro_tracking_fields.inc: remove some invalid packages
	information from it
Thread-Index: AcuGMAqorJcPYceERtSAOUyz9eIEtg==
Message-ID: <749B9D3DBF0F054390025D9EAFF47F2230175569@shsmsx501.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Subject: [PULL]distro_tracking_fields.inc: remove some invalid packages information from it
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
X-List-Received-Date: Wed, 17 Nov 2010 08:19:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I tried to send out patch in this mail, but because of the limitation of th=
e message length(40KB), I send this pull request out only with the pull URL=
.

Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: lmei3/distrotracking
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dlmei3/dis=
trotracking
Thanks,
    Mei Lei <lei.mei@intel.com>
---


Mei Lei (1):
  distro_tracking_fields.inc: remove some invalid packages information from=
 it

 .../conf/distro/include/distro_tracking_fields.inc |  553 +---------------=
----
 1 files changed, 1 insertions(+), 552 deletions(-)


Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/commit/?h=3Dlmei3/=
distrotracking&id=3D49a05acd5b9335e559d4170d0e9bc95a50c42e18



Thanks
Lei

---
Mei, Lei
Email: lei.mei@intel.com



