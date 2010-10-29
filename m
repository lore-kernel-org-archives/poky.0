Return-Path: <jiajun.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 37A9F4C80BD4
	for <poky@pokylinux.org>; Thu, 28 Oct 2010 20:53:47 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 28 Oct 2010 18:53:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,255,1286175600"; d="scan'208";a="341921860"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 28 Oct 2010 18:53:45 -0700
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 29 Oct 2010 09:53:35 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 29 Oct 2010 09:53:34 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: "poky@pokylinux.org" <poky@pokylinux.org>
Date: Fri, 29 Oct 2010 09:53:32 +0800
Thread-Topic: [PULL]  imagetest-qemu: Add test case for dmesg check
Thread-Index: Act3DBdsWjTJWziWTju1/6ltkkfCfQ==
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A3003F01B@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: [PULL] imagetest-qemu: Add test case for dmesg check
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Fri, 29 Oct 2010 01:53:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

 meta/classes/imagetest-qemu.bbclass                       |    6 +
 scripts/qemuimage-testlib                                 |   56 +++++++++=
+++++
 scripts/qemuimage-tests/sanity/dmesg                      |   53 +++++++++=
++++
 scripts/qemuimage-tests/scenario/qemuarm/poky-image-sato  |    1
 scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk   |    1
 scripts/qemuimage-tests/scenario/qemumips/poky-image-sato |    1
 scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk  |    1
 scripts/qemuimage-tests/scenario/qemuppc/poky-image-sato  |    1
 scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk   |    1
 scripts/qemuimage-tests/scenario/qemux86/poky-image-sato  |    1
 scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk   |    1
 scripts/qemuimage-tests/tools/dmesg.sh                    |   26 ++++++
 12 files changed, 147 insertions(+), 2 deletions(-)

Jiajun Xu (1):
      imagetest-qemu: Add test case for dmesg check in target

Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Djxu49/mas=
ter

commit c2703156b3fb191c088606433b7e585f3ca3af58
Author: Jiajun Xu <jiajun.xu@intel.com>
Date:   Fri Oct 29 09:42:06 2010 +0800

    imagetest-qemu: Add test case for dmesg check in target

    Add a test case for error log check with command dmesg in target. The
    case introduces a new folder in target, "/opt/test", which holds test
    scripts running in target.

    Signed-off-by Jiajun Xu <jiajun.xu@intel.com>


Best Regards,
Jiajun


