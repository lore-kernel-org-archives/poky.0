Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D6FBE00C25; Thu, 18 Jul 2019 20:24:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.126 listed in list.dnswl.org]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DAEFE00BAA
	for <poky@yoctoproject.org>; Thu, 18 Jul 2019 20:24:51 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 Jul 2019 20:24:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,280,1559545200"; d="scan'208";a="343572619"
Received: from kmsmsx157.gar.corp.intel.com ([172.21.138.134])
	by orsmga005.jf.intel.com with ESMTP; 18 Jul 2019 20:24:50 -0700
Received: from pgsmsx103.gar.corp.intel.com ([169.254.2.4]) by
	kmsmsx157.gar.corp.intel.com ([169.254.5.204]) with mapi id
	14.03.0439.000; Fri, 19 Jul 2019 11:24:49 +0800
From: "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky] python3-dbus: Add native and native-sdk support
Thread-Index: AQHVPdrwVQyZ5l2RLEme4kVpt/AeXabRRyqQ
Date: Fri, 19 Jul 2019 03:24:48 +0000
Message-ID: <AA9B40170ABA1047B45E714CB2B866B706BBFCEF@PGSMSX103.gar.corp.intel.com>
References: <1563503845-48293-1-git-send-email-aaron.chun.yew.chan@intel.com>
In-Reply-To: <1563503845-48293-1-git-send-email-aaron.chun.yew.chan@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiY2ZiMjg0MzItYjBlMS00YWRkLWJkOTYtNDlmMzRkMTRjNzEzIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoib3Bac1ZrR0JTblluTWp5XC81dlF2aTgwYzQyNXNNT1BPNFFySmtSWmozUGlidU50Z2NWWkxROThoaGpheUFFbW4ifQ==
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Cc: "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>
Subject: python3-dbus: Add native and native-sdk support
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 19 Jul 2019 03:24:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

From: Aaron Chan <aaron.chun.yew.chan@intel.com>

Signed-off-by: Aaron Chan <aaron.chun.yew.chan@intel.com>
---
 meta/recipes-devtools/python/python3-dbus_1.2.8.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta/recipes-devtools/python/python3-dbus_1.2.8.bb b/meta/reci=
pes-devtools/python/python3-dbus_1.2.8.bb
index 923da3c..2fb1eae 100644
--- a/meta/recipes-devtools/python/python3-dbus_1.2.8.bb
+++ b/meta/recipes-devtools/python/python3-dbus_1.2.8.bb
@@ -22,3 +22,5 @@ EXTRA_OECONF +=3D "--disable-documentation"
 RDEPENDS_${PN} =3D "python3-io python3-logging python3-stringold python3-t=
hreading python3-xml"
=20
 FILES_${PN}-dev +=3D "${libdir}/pkgconfig"
+
+BBCLASSEXTEND =3D "native nativesdk"
--=20
2.7.4


