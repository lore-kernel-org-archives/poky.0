Return-Path: <jiajun.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 418214C80BCF
	for <poky@yoctoproject.org>; Wed, 10 Nov 2010 21:58:32 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 Nov 2010 19:58:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,181,1288594800"; d="scan'208";a="676385393"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 10 Nov 2010 19:58:31 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 11 Nov 2010 11:58:21 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 11 Nov 2010 11:58:20 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>, Joshua Lock
	<josh@linux.intel.com>
Date: Thu, 11 Nov 2010 11:58:19 +0800
Thread-Topic: [PULL] Add sanity test cases for scp/shutdown
Thread-Index: AcuBVK1rVw+y+HRYRzer5eaaXw4K6g==
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A301B22C1@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: [PULL] Add sanity test cases for scp/shutdown
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
X-List-Received-Date: Thu, 11 Nov 2010 03:58:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: jxu49/master
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Djxu49/mas=
ter

Thanks,
    Jiajun Xu <jiajun.xu@intel.com>
---

Jiajun Xu (1):
  imagetest-qemu: Add sanity test cases for scp/shutdown in target

 meta/classes/imagetest-qemu.bbclass                |    2 +-
 scripts/qemuimage-testlib                          |    4 +-
 scripts/qemuimage-tests/sanity/boot                |    2 +-
 scripts/qemuimage-tests/sanity/dmesg               |    2 +-
 scripts/qemuimage-tests/sanity/scp                 |   71 ++++++++++++++++=
++++
 scripts/qemuimage-tests/sanity/shutdown            |   70 ++++++++++++++++=
+++
 scripts/qemuimage-tests/sanity/ssh                 |    2 +-
 .../scenario/qemuarm/poky-image-sato               |    2 +
 .../scenario/qemuarm/poky-image-sdk                |    2 +
 .../scenario/qemumips/poky-image-sato              |    2 +
 .../scenario/qemumips/poky-image-sdk               |    2 +
 .../scenario/qemuppc/poky-image-sato               |    2 +
 .../scenario/qemuppc/poky-image-sdk                |    2 +
 .../scenario/qemux86-64/poky-image-minimal         |    1 +
 .../scenario/qemux86-64/poky-image-sato            |    5 ++
 .../scenario/qemux86-64/poky-image-sdk             |    5 ++
 .../scenario/qemux86/poky-image-sato               |    2 +
 .../scenario/qemux86/poky-image-sdk                |    2 +
 18 files changed, 175 insertions(+), 5 deletions(-)
 create mode 100755 scripts/qemuimage-tests/sanity/scp
 create mode 100755 scripts/qemuimage-tests/sanity/shutdown
 create mode 100644 scripts/qemuimage-tests/scenario/qemux86-64/poky-image-=
minimal
 create mode 100644 scripts/qemuimage-tests/scenario/qemux86-64/poky-image-=
sato
 create mode 100644 scripts/qemuimage-tests/scenario/qemux86-64/poky-image-=
sdk

Best Regards,
Jiajun



