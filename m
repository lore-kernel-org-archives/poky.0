Return-Path: <brett.grandbois@opengear.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9C6AE00C8F; Thu,  7 Feb 2019 16:08:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.72.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 63785 seconds by postgrey-1.32 at yocto-www;
	Thu, 07 Feb 2019 16:08:37 PST
Received: from NAM05-CO1-obe.outbound.protection.outlook.com
	(mail-eopbgr720052.outbound.protection.outlook.com [40.107.72.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62F46E00C77
	for <poky@yoctoproject.org>; Thu,  7 Feb 2019 16:08:37 -0800 (PST)
Received: from DM5PR1501MB2184.namprd15.prod.outlook.com (52.132.131.34) by
	DM5PR1501MB2182.namprd15.prod.outlook.com (52.132.131.32) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1601.21; Fri, 8 Feb 2019 00:08:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=opengear.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=acnKRLjKtRyojha1MsRS62TGKdPUjKSbwL0P9lLy2bA=;
	b=boMZaIPixf7+3/7y0/2rO27+BsfF/+DanTgfZA/UDJa5xcBAuct7hDjtIemnRTxIfBN4vo60DjcmIRs3VEpdP48rLjLw0/hMTTDHEsQKK6Raiht9khYUbjJHfDEhhKbYYOwf2CYzkHI7KgxqVb4dHJ6QQpABXwuHRJmIpwuEoGI=
Received: from DM5PR1501MB2056.namprd15.prod.outlook.com (52.132.130.30) by
	DM5PR1501MB2184.namprd15.prod.outlook.com (52.132.131.34) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1580.22; Wed, 6 Feb 2019 23:50:10 +0000
Received: from DM5PR1501MB2056.namprd15.prod.outlook.com
	([fe80::f0e9:8134:895f:9135]) by
	DM5PR1501MB2056.namprd15.prod.outlook.com
	([fe80::f0e9:8134:895f:9135%7]) with mapi id 15.20.1580.019;
	Wed, 6 Feb 2019 23:50:10 +0000
From: "Grandbois, Brett" <brett.grandbois@opengear.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [PATCH] ruby: remove CVE-2018-1000073.patch as already fixed
Thread-Index: AQHUvnaygqmYLv76p0uCq/mhP7P1Jg==
Date: Wed, 6 Feb 2019 23:50:10 +0000
Message-ID: <20190206234956.23897-1-brett.grandbois@opengear.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SYBPR01CA0030.ausprd01.prod.outlook.com
	(2603:10c6:10:4::18) To DM5PR1501MB2056.namprd15.prod.outlook.com
	(2603:10b6:4:a2::30)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=brett.grandbois@opengear.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [60.241.24.90]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM5PR1501MB2184;
	6:Fo8ctM+Qdm8Yzg65EEt388Vg3Ai3pCEVfnxk8uJuM2Tol9TqG7TiDfRji3NIVa4vNlEu+swRe5NQ4oiWdyxTrVs5lJvYLGFq7mSg/R+2iFBikCaEDsEhP00+Q3Hy3AQX0mUhdFQy1IinWjVCPxzW3vESZYrT4uaOfLaJ3mi94jVhn324T0/VQVEWl/99XIyB/QJLWmyUf8sQbrDy2lN+Zky97c4DvBWsrU8CDj20hBwTe2fWD2nb1wNZleJA5HwcHPEC1NuuERHIuKRcBJaXkRQqaOQ+e69E7EXTu9AJLw2qX3oOPI8YR9jV3vpLSGArtryPgZuyLvRQhVrmD5GYn4f+K5XSUK6niaT2KJeuTfGWtd+VjKwbNJC8k2DC1lacBsL1zaRxhMxYM84aNVbF+gjeJeLBpTN65tDMNw+LQJ07U82fc4G5746bl/onNGrYKv/M7+PxdIFyxgGK/tlabg==;
	5:5EUPcdUb4PvPQSefiazaJrY8nsnL7Zr6mucK21O6MuuOvOyqeR7Boa84vbgFQ98MCBZ7bTAJhjXpOyEU2SxIvfMxwnp8R3E3WVG8JrOquSDcBYHqRn52yRbfKOjSn7RnAaEjv33AxbRPRjV0wXwYL6JZvj1fXLC8LA6yBNsRmwUw0a4Ptv1bHQ179vIN3CID7gpZSG2wRfrIDsFfiaf9jQ==;
	7:zpsN4uOAJU34W+m6BGJTxPr6s6in8jyoyH4dGG123j/kbUXPm71LaCLy0chH511I9inVc4UHu/l2fvnmALOkcq2lnCN2piZBXynayq0xfyHLIRFRFBPpNoB0KjyHhJvhElbH8Zf4tMGLmapOkCY8ig==
x-ms-office365-filtering-correlation-id: 32abf516-2d7f-4d40-472e-08d68c8dd46b
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600110)(711020)(4605077)(2017052603328)(7153060)(7193020);
	SRVR:DM5PR1501MB2184; 
X-MS-TrafficTypeDiagnostic: DM5PR1501MB2184:|DM5PR1501MB2184:|DM5PR1501MB2182:
x-microsoft-antispam-prvs: <DM5PR1501MB21841E47CDC9A10FAE2A74CA826F0@DM5PR1501MB2184.namprd15.prod.outlook.com>
x-forefront-prvs: 0940A19703
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39840400004)(136003)(346002)(366004)(376002)(396003)(199004)(189003)(3846002)(53936002)(2351001)(2616005)(305945005)(486006)(476003)(52116002)(186003)(106356001)(105586002)(6512007)(2906002)(86362001)(6486002)(6916009)(1076003)(36756003)(71200400001)(71190400001)(5640700003)(68736007)(478600001)(6506007)(99286004)(386003)(2501003)(6436002)(97736004)(316002)(102836004)(26005)(81166006)(25786009)(50226002)(81156014)(8676002)(1730700003)(66066001)(8936002)(14454004)(6116002)(256004)(7736002)(14444005);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR1501MB2184;
	H:DM5PR1501MB2056.namprd15.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: opengear.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: NJrCZwZIspYzaA8Ti/Qza9KRKP2p96asXSaa4pHUrsfpzOJi2sHeiRQ7F1wHGIMrdaK3xyijmGRgC9SOcPqMboxEgWbIZJzyQrVN1jG5rVoUg+zFmdm3uBVjDy+pl3pZ1AidBzPmBk7JqpGQZZ02viA3dLRryYdwl8X7d3fHf+EvmV441ObMTe4apCrXDFO2z0RNkU9A5VE0iEHp720DxFA1xhSFb+M4STfNrvMWDFwDUofanll0f+Oe1gajX5YYyFpxlKaAUcLvPBTL/XLMTlsjiO86GorswbvHVZUL9D5oEdxVX7lDN08j06Qpc8BUzc0n3rgWjZ8Y/FH91/yGVBmlKFJgIhCu/9EYgnGhuDKf5kOKea95hnYhDqcECyqCbt6mxibNXpdJ0Qv0Xvs80l5w504tYjJwbFnDSf6MR/E=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 32abf516-2d7f-4d40-472e-08d68c8dd46b
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2019 23:50:09.5217 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-id: a6251c26-d21f-4164-a225-1f4eaebf5f9a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1501MB2184
X-Microsoft-Exchange-Diagnostics: 1; DM5PR1501MB2182;
	23:ks9P/n8U8csE2yNrptn4sPDM4jQcLPO2lDiU4boSTNonRmaYBxAgM/h8RghishjbY0jtYe+25OxxrnDtQb3HMkY6XEktBMoxohzNOTguGNeMc5EomLw9mBbA9gfrkhBHxKoLURpd6AKNz2HtdHSeVA==
X-OriginatorOrg: opengear.com
Subject: [PATCH] ruby: remove CVE-2018-1000073.patch as already fixed
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
X-List-Received-Date: Fri, 08 Feb 2019 00:08:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

rubygems 2.7.6 which is in ruby 2.5.3 has this fix and as currently
applied all gem extraction fails as the realpath check is done against
the full path including the file to be extracted which will always fail
as the file hasnt been extracted yet

Signed-off-by: Brett Grandbois <brett.grandbois@opengear.com>
---
 .../ruby/ruby/CVE-2018-1000073.patch          | 34 -------------------
 meta/recipes-devtools/ruby/ruby_2.5.3.bb      |  1 -
 2 files changed, 35 deletions(-)
 delete mode 100644 meta/recipes-devtools/ruby/ruby/CVE-2018-1000073.patch

diff --git a/meta/recipes-devtools/ruby/ruby/CVE-2018-1000073.patch b/meta/=
recipes-devtools/ruby/ruby/CVE-2018-1000073.patch
deleted file mode 100644
index 22fa1b5f4d..0000000000
--- a/meta/recipes-devtools/ruby/ruby/CVE-2018-1000073.patch
+++ /dev/null
@@ -1,34 +0,0 @@
-From 1b931fc03b819b9a0214be3eaca844ef534175e2 Mon Sep 17 00:00:00 2001
-From: Jonathan Claudius <jclaudius@mozilla.com>
-Date: Wed, 7 Feb 2018 23:54:52 -0500
-Subject: [PATCH] Non-working patch for deducing symlinked base-dirs
-
----
-CVE: CVE-2018-1000073
-
-Fixed in ruby 2.7.6.
-
-Upstream-Status: Backport [github.com/rubygems/rubygems/commit/1b931fc...]
-
-Signed-off-by: Joe Slater <joe.slater@windriver.com>
-
----
- lib/rubygems/package.rb |    2 ++
- 1 file changed, 2 insertions(+)
-
-diff --git a/lib/rubygems/package.rb b/lib/rubygems/package.rb
-index dede959..cb9c74a 100644
---- a/lib/rubygems/package.rb
-+++ b/lib/rubygems/package.rb
-@@ -421,6 +421,8 @@ EOM
-     destination_dir =3D File.expand_path destination_dir
-=20
-     destination =3D File.join destination_dir, filename
-+    destination =3D File.realpath destination if
-+      File.respond_to? :realpath
-     destination =3D File.expand_path destination
-=20
-     raise Gem::Package::PathError.new(destination, destination_dir) unles=
s
---=20
-1.7.9.5
-
diff --git a/meta/recipes-devtools/ruby/ruby_2.5.3.bb b/meta/recipes-devtoo=
ls/ruby/ruby_2.5.3.bb
index e9f0453788..3fb427e90e 100644
--- a/meta/recipes-devtools/ruby/ruby_2.5.3.bb
+++ b/meta/recipes-devtools/ruby/ruby_2.5.3.bb
@@ -3,7 +3,6 @@ require ruby.inc
 SRC_URI +=3D " \
            file://ruby-CVE-2017-9226.patch \
            file://ruby-CVE-2017-9228.patch \
-           file://CVE-2018-1000073.patch \
            "
=20
 SRC_URI[md5sum] =3D "20c85b67846d49622ef3b24230803fef"
--=20
2.17.1


