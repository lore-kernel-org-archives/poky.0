Return-Path: <lianhao.lu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0EA374C80AAA
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 05:30:59 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 15 Mar 2011 03:30:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,321,1297065600"; d="scan'208";a="720299322"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga001.jf.intel.com with ESMTP; 15 Mar 2011 03:30:58 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 15 Mar 2011 18:30:51 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Tue, 15 Mar 2011 18:30:50 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Tue, 15 Mar 2011 18:30:48 +0800
Thread-Topic: autoconf version mismatch on Bernard
Thread-Index: AcviuF6X3NPDYBMCSiyVQqCSttQh7gACdJLwAACUHfcADTdDAA==
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F218AD10FDC@shsmsx502.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D306597332F02CB7@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA95304B58D2@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D306597332F5FE28@shsmsx501.ccr.corp.intel.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F21852820F8@shsmsx502.ccr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D306597332FC7643@shsmsx501.ccr.corp.intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9530656D87@orsmsx504.amr.corp.intel.com>
	<789F9655DD1B8F43B48D77C5D306597332FC77B4@shsmsx501.ccr.corp.intel.com>
	<4D7ECE4C.6030500@intel.com>,
	<9AFCD584B0B67B48AE8D8585BE30BA9530656E56@orsmsx504.amr.corp.intel.com>
	<DC74E0187B44084E9AD28300B75DFE302A8B528B@orsmsx504.amr.corp.intel.com>
In-Reply-To: <DC74E0187B44084E9AD28300B75DFE302A8B528B@orsmsx504.amr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "Wold, Saul" <saul.wold@intel.com>
Subject: autoconf version mismatch on Bernard
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
X-List-Received-Date: Tue, 15 Mar 2011 10:31:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi guys,

Does anyone see this kind of failure in recent poky build on bernard branch=
:
http://autobuilder.pokylinux.org:8010/builders/nightly-toolchain-test/build=
s/1/steps/shell_5/logs/stdio=20

It seems there is a autoconf version mismatch. Liping used to meet once, an=
d "bitbake autoconf-native -c cleanall; bitbake autoconf-native" seems get =
it worked-around. I cannot reproduce this bug on my local build machine.=20

Best Regards,
Lianhao



