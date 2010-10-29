Return-Path: <jiajun.xu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7328B4C80287
	for <poky@pokylinux.org>; Fri, 29 Oct 2010 11:55:53 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 29 Oct 2010 09:55:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,260,1286175600"; d="scan'208";a="621599067"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 29 Oct 2010 09:55:52 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sat, 30 Oct 2010 00:55:51 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Sat, 30 Oct 2010 00:55:50 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>, "poky@pokylinux.org"
	<poky@pokylinux.org>
Date: Sat, 30 Oct 2010 00:55:48 +0800
Thread-Topic: [PULL]  imagetest-qemu: Add test case for dmesg check
Thread-Index: Act3DBdsWjTJWziWTju1/6ltkkfCfQAAInIAAB9Gw6A=
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A3003F2F1@shsmsx501.ccr.corp.intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A3003F01B@shsmsx501.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D127794C3@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D127794C3@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: [PULL] imagetest-qemu: Add test case for dmesg check
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
X-List-Received-Date: Fri, 29 Oct 2010 16:55:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>=20
> Instead of hardcoding QEMU_IPADDR, how about aligning it with
> poky-qemu script?
>=20

Yes. It's better to get ip address of target with poky-qemu script. I modif=
ied the code, now ip address is parsed from qemu startup command line.

 meta/classes/imagetest-qemu.bbclass                       |    6
 scripts/qemuimage-testlib                                 |  122 +++++++++=
++++-
 scripts/qemuimage-tests/sanity/boot                       |    3
 scripts/qemuimage-tests/sanity/dmesg                      |   52 +++++
 scripts/qemuimage-tests/sanity/ssh                        |    5
 scripts/qemuimage-tests/scenario/qemuarm/poky-image-sato  |    1
 scripts/qemuimage-tests/scenario/qemuarm/poky-image-sdk   |    1
 scripts/qemuimage-tests/scenario/qemumips/poky-image-sato |    1
 scripts/qemuimage-tests/scenario/qemumips/poky-image-sdk  |    1
 scripts/qemuimage-tests/scenario/qemuppc/poky-image-sato  |    1
 scripts/qemuimage-tests/scenario/qemuppc/poky-image-sdk   |    1
 scripts/qemuimage-tests/scenario/qemux86/poky-image-sato  |    1
 scripts/qemuimage-tests/scenario/qemux86/poky-image-sdk   |    1
 scripts/qemuimage-tests/tools/dmesg.sh                    |   26 ++
 14 files changed, 211 insertions(+), 11 deletions(-)

Jiajun Xu (1):
      imagetest-qemu: Add test case for dmesg check in target

Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Djxu49/mas=
ter

commit 2095a4b7c4a727979ec7bf1eda887016496e1586
Author: Jiajun Xu <jiajun.xu@intel.com>
Date:   Sat Oct 30 01:03:22 2010 +0800

    imagetest-qemu: Add test case for dmesg check in target

    Add a test case for error log check with command dmesg in target. The
    case introduces a new folder in target, "/opt/test", which holds test
    scripts running in target.

    Signed-off-by Jiajun Xu <jiajun.xu@intel.com>

Best Regards,
Jiajun


