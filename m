Return-Path: <joe.slater@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28441E00C41; Thu,  3 Aug 2017 11:00:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BBE0E007E4
	for <poky@yoctoproject.org>; Thu,  3 Aug 2017 11:00:00 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v73I00Hp004890
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 3 Aug 2017 11:00:00 -0700 (PDT)
Received: from ALA-MBD.corp.ad.wrs.com ([169.254.3.209]) by
	ALA-HCA.corp.ad.wrs.com ([147.11.189.40]) with mapi id 14.03.0361.001;
	Thu, 3 Aug 2017 10:59:59 -0700
From: "Slater, Joseph" <joe.slater@windriver.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [meta-yocto-bsp][PATCH 1/1] packagegroups: remove a bbappend
Thread-Index: AQHTCyavmDUfZEcg6EyDQwKCjB/p8KJy7g2Q
Date: Thu, 3 Aug 2017 17:59:58 +0000
Message-ID: <007BD92917A2324FA403BCF9A464CF84CF3D0764@ALA-MBD.corp.ad.wrs.com>
References: <20170802003129.75949-1-jslater@windriver.com>
In-Reply-To: <20170802003129.75949-1-jslater@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [147.11.157.209]
MIME-Version: 1.0
Subject: FW: [meta-yocto-bsp][PATCH 1/1] packagegroups: remove a bbappend
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
X-List-Received-Date: Thu, 03 Aug 2017 18:00:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Resending after joining list...

-----Original Message-----
From: Joe Slater [mailto:jslater@windriver.com]=20
Sent: Tuesday, August 01, 2017 5:31 PM
To: poky@yoctoproject.org
Cc: Slater, Joseph
Subject: [meta-yocto-bsp][PATCH 1/1] packagegroups: remove a bbappend

Force items into packagegroup-core-tools-profile?  I don't think so.

Signed-off-by: Joe Slater <jslater@windriver.com>
---
 .../recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend | =
2 --
 1 file changed, 2 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-core/packagegroups/packagegroup-=
core-tools-profile.bbappend

diff --git a/meta-yocto-bsp/recipes-core/packagegroups/packagegroup-core-to=
ols-profile.bbappend b/meta-yocto-bsp/recipes-core/packagegroups/packagegro=
up-core-tools-profile.bbappend
deleted file mode 100644
index f86595c..0000000
--- a/meta-yocto-bsp/recipes-core/packagegroups/packagegroup-core-tools-pro=
file.bbappend
+++ /dev/null
@@ -1,2 +0,0 @@
-RDEPENDS_${PN}_append_genericx86 =3D " lttng-ust systemtap"
-
--=20
2.7.4


