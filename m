Return-Path: <naveen.kumar.saini@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC1D3E00CAB; Sun,  3 Mar 2019 22:33:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29084E007B3
	for <poky@yoctoproject.org>; Sun,  3 Mar 2019 22:33:05 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	03 Mar 2019 22:33:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.58,439,1544515200"; d="scan'208";a="304154467"
Received: from pgsmsx112.gar.corp.intel.com ([10.108.55.201])
	by orsmga005.jf.intel.com with ESMTP; 03 Mar 2019 22:33:04 -0800
Received: from pgsmsx104.gar.corp.intel.com ([169.254.3.21]) by
	PGSMSX112.gar.corp.intel.com ([169.254.3.242]) with mapi id
	14.03.0415.000; Mon, 4 Mar 2019 14:33:03 +0800
From: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>
Thread-Topic: [poky] [meta-yocto-bsp][PATCH 1/2] linux-yocto: update
	genericx86*	SRCREV for 4.18
Thread-Index: AQHUzb8Yjq/bylKSKUq+NbuHMmdgQaX7DCXg
Date: Mon, 4 Mar 2019 06:33:02 +0000
Message-ID: <01DD17B194C1B04C82EA3CE2DD8BB29B0969ED4D@PGSMSX104.gar.corp.intel.com>
References: <20190226023647.15708-1-naveen.kumar.saini@intel.com>
In-Reply-To: <20190226023647.15708-1-naveen.kumar.saini@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNmI4ZjM0MTgtYjY1OC00ZDM4LWFjZTMtMDFmZDNmNzUwNWMwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiWVd1WG4wWGg3enl4THdXemt6aXU0Z1NxXC9hOXFMU1BvUks0TGlSOGtGYkljYjZsSFpzdmJodTBBMVg3SWNWWUMifQ==
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [meta-yocto-bsp][PATCH 1/2] linux-yocto: update genericx86*	SRCREV for 4.18
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
X-List-Received-Date: Mon, 04 Mar 2019 06:33:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Ping



-----Original Message-----
From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of Naveen Saini
Sent: Tuesday, February 26, 2019 10:37 AM
To: poky@yoctoproject.org
Subject: [poky] [meta-yocto-bsp][PATCH 1/2] linux-yocto: update genericx86*=
 SRCREV for 4.18

Bump to kernel release v4.18.27

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 .../recipes-kernel/linux/linux-yocto_4.18.bbappend        | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend =
b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
index 7f15843f3a..e53bb51f27 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.18.bbappend
@@ -8,8 +8,8 @@ KMACHINE_genericx86 ?=3D "common-pc"
 KMACHINE_genericx86-64 ?=3D "common-pc-64"
 KMACHINE_beaglebone-yocto ?=3D "beaglebone"
=20
-SRCREV_machine_genericx86    ?=3D "db2d813869a0501782469ecdb17e277a501c9f5=
7"
-SRCREV_machine_genericx86-64 ?=3D "db2d813869a0501782469ecdb17e277a501c9f5=
7"
+SRCREV_machine_genericx86    ?=3D "62f0a3acffffd555f68ed97d5e4faade2b28f3c=
0"
+SRCREV_machine_genericx86-64 ?=3D "62f0a3acffffd555f68ed97d5e4faade2b28f3c=
0"
 SRCREV_machine_edgerouter ?=3D "28e7781d57a59227bf1c08c7f3dbdfee16aa0dc2"
 SRCREV_machine_beaglebone-yocto ?=3D "28e7781d57a59227bf1c08c7f3dbdfee16aa=
0dc2"
 SRCREV_machine_mpc8315e-rdb ?=3D "99071a599d8650b069fb8135866fca203f375350=
"
@@ -20,8 +20,8 @@ COMPATIBLE_MACHINE_edgerouter =3D "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto =3D "beaglebone-yocto"
 COMPATIBLE_MACHINE_mpc8315e-rdb =3D "mpc8315e-rdb"
=20
-LINUX_VERSION_genericx86 =3D "4.18.22"
-LINUX_VERSION_genericx86-64 =3D "4.18.22"
+LINUX_VERSION_genericx86 =3D "4.18.27"
+LINUX_VERSION_genericx86-64 =3D "4.18.27"
 LINUX_VERSION_edgerouter =3D "4.18.25"
 LINUX_VERSION_beaglebone-yocto =3D "4.18.25"
 LINUX_VERSION_mpc8315e-rdb =3D "4.18.25"
--=20
2.17.0

--=20
_______________________________________________
poky mailing list
poky@yoctoproject.org
https://lists.yoctoproject.org/listinfo/poky

