Return-Path: <naveen.kumar.saini@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9F37E00D28; Mon,  4 Mar 2019 19:15:59 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F29F4E00994
	for <poky@yoctoproject.org>; Mon,  4 Mar 2019 19:15:58 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Mar 2019 19:15:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.58,442,1544515200"; d="scan'208";a="119644051"
Received: from kmsmsx154.gar.corp.intel.com ([172.21.73.14])
	by orsmga007.jf.intel.com with ESMTP; 04 Mar 2019 19:15:57 -0800
Received: from pgsmsx110.gar.corp.intel.com (10.221.44.111) by
	KMSMSX154.gar.corp.intel.com (172.21.73.14) with Microsoft SMTP Server
	(TLS) id 14.3.408.0; Tue, 5 Mar 2019 11:15:53 +0800
Received: from pgsmsx104.gar.corp.intel.com ([169.254.3.21]) by
	PGSMSX110.gar.corp.intel.com ([169.254.13.64]) with mapi id
	14.03.0415.000; Tue, 5 Mar 2019 11:15:54 +0800
From: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>
Thread-Topic: [poky] [meta-yocto-bsp][PATCH 2/2] linux-yocto: update
	genericx86*	SRCREV for 4.19
Thread-Index: AQHUzb83BjO2Z/ga5U6Xzzu/LFwCVKX8Z6Aw
Date: Tue, 5 Mar 2019 03:15:53 +0000
Message-ID: <01DD17B194C1B04C82EA3CE2DD8BB29B0969F049@PGSMSX104.gar.corp.intel.com>
References: <20190226023717.15760-1-naveen.kumar.saini@intel.com>
In-Reply-To: <20190226023717.15760-1-naveen.kumar.saini@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOGMwNDg4ZDgtMWZjMy00NmNlLWI1MTgtZDY4NzZmM2UyZDFkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoicFwvenk1SmdFMTZZRW9QWTQ4SzdYVnlVUk1KdmNvTDFhVk5OQlgycDRlQmF1MlZFVDVaVmk1VnhxWU1xZ1cyYWQifQ==
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [meta-yocto-bsp][PATCH 2/2] linux-yocto: update genericx86*	SRCREV for 4.19
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
X-List-Received-Date: Tue, 05 Mar 2019 03:15:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Please consider this patch too.



-----Original Message-----
From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of Naveen Saini
Sent: Tuesday, February 26, 2019 10:37 AM
To: poky@yoctoproject.org
Subject: [poky] [meta-yocto-bsp][PATCH 2/2] linux-yocto: update genericx86*=
 SRCREV for 4.19

Bump to kernel release v4.19.19

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_4.19.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend =
b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
index 8e708cb664..6025230c73 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.19.bbappend
@@ -8,8 +8,8 @@ KMACHINE_genericx86 ?=3D "common-pc"
 KMACHINE_genericx86-64 ?=3D "common-pc-64"
 KMACHINE_beaglebone-yocto ?=3D "beaglebone"
=20
-SRCREV_machine_genericx86    ?=3D "eebb51300a07804a020ec468b5f8c5bf720198d=
9"
-SRCREV_machine_genericx86-64 ?=3D "eebb51300a07804a020ec468b5f8c5bf720198d=
9"
+SRCREV_machine_genericx86    ?=3D "11e0e616ed095bb8012e1b4a231254c9656a019=
3"
+SRCREV_machine_genericx86-64 ?=3D "11e0e616ed095bb8012e1b4a231254c9656a019=
3"
 SRCREV_machine_edgerouter ?=3D "eebb51300a07804a020ec468b5f8c5bf720198d9"
 SRCREV_machine_beaglebone-yocto ?=3D "eebb51300a07804a020ec468b5f8c5bf7201=
98d9"
 SRCREV_machine_mpc8315e-rdb ?=3D "8b60f968823256f5d2889c4520d70299ca21411b=
"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter =3D "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto =3D "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb =3D "mpc8315e-rdb"
=20
-LINUX_VERSION_genericx86 =3D "4.19.14"
-LINUX_VERSION_genericx86-64 =3D "4.19.14"
+LINUX_VERSION_genericx86 =3D "4.19.19"
+LINUX_VERSION_genericx86-64 =3D "4.19.19"
 LINUX_VERSION_edgerouter =3D "4.19.14"
 LINUX_VERSION_beaglebone-yocto =3D "4.19.14"
 LINUX_VERSION_mpc8315e-rdb =3D "4.19.14"
--=20
2.17.0

--=20
_______________________________________________
poky mailing list
poky@yoctoproject.org
https://lists.yoctoproject.org/listinfo/poky

