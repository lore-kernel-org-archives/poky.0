Return-Path: <malu@gomspace.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38109E00BC3; Thu, 26 Apr 2018 02:48:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.0.139 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 71 seconds by postgrey-1.32 at yocto-www;
	Thu, 26 Apr 2018 02:48:47 PDT
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
	(mail-he1eur01on0139.outbound.protection.outlook.com [104.47.0.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB7C2E00B9C
	for <poky@yoctoproject.org>; Thu, 26 Apr 2018 02:48:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gomspace.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=ty3WzrKmgFC5WTXugoo+LOeqdGq6EBPmJNVvKvK+2mM=;
	b=i9BfvfNTLgV7r1M2Imfu3yv2rTTDf4xu7+X8Rh0ov0nd7S3gh88GxBJP0VU75wkxwEfb1+kNt5S1kjvTo562Kn00Jt9JxDjFGkIbhZYWd9HglmCPR2XbQC0HG6xRtMI3fX2ZPp3T2ocKcoX5hRvH0AdHAohUC5vmRNElATggtGA=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=malu@gomspace.com; 
Received: from quark.gomspace.lan (79.171.149.172) by
	DB4PR04MB0765.eurprd04.prod.outlook.com (2a01:111:e400:984d::18) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.696.15;
	Thu, 26 Apr 2018 09:48:40 +0000
From: Martin Lund <malu@gomspace.com>
To: poky@yoctoproject.org
Date: Thu, 26 Apr 2018 11:47:50 +0200
Message-Id: <10c4d92ee24403e6b13b6ff651cf74a1ff4ec1be.1524580981.git.malu@gomspace.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <cover.1524580981.git.malu@gomspace.com>
References: <cover.1524580981.git.malu@gomspace.com>
MIME-Version: 1.0
X-Originating-IP: [79.171.149.172]
X-ClientProxiedBy: AM0PR0102CA0058.eurprd01.prod.exchangelabs.com
	(2603:10a6:208::35) To DB4PR04MB0765.eurprd04.prod.outlook.com
	(2a01:111:e400:984d::18)
X-MS-PublicTrafficType: Email
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:DB4PR04MB0765; 
X-Microsoft-Exchange-Diagnostics: 1; DB4PR04MB0765;
	3:pvacUpuZcAtohjL7O69nSPG06Fl8xOkZ0Tv+OFBMF1jHWtdTSv91LiBEKFsXYqk3kP+WIsBDeEmVJs/2xauOlTyezLMX2Hr1nqN6Q6rWbCBo0M9VNbmV+82suCY9ca3BC6Fxx3n70yUnUa7GnkVNr2RWpk37+nuEQNA4nqJBboPdk9/s9pq88VhmhZQ63Kp9bPt9QGQ9oD82VyEiW3BcNLKBTXH3tCkMFnveDSaJM07LVR64zJ5JmT8aC9pVyV9G;
	25:Ql6h/z8q2atVzfFygLqlGYo5MOB8r1xHheNhcWDdJ2AmqKUhMTloENZcaVfyIzIm+cSf39fy4KC+YecbMcuUvWbEmJQH8AQI0L1y1OeVN1OpbwsAqCyly60xdBMGwxuKBnYG/x+KTQi9VT+fbTyIJdmg9qTHRjsge55OrzSBjjOgYwYIKfuWRI8EGHZQJY7kSM+38J8RI62KaKkFPe//tgB7LBge+Es1It5Uu70JFkcGot8c+2uJTM2V1wVjXcz4K42v4yXwMM3LfXofPIRB53Ly3lIvlvuGGO1zKJviYRuVtBUyI63IcSeP+Ex0cyVT2XRHiMgaKSQcWb+2yWKiVw==;
	31:4EojZNLCgtAMhm7l7ct9dv89mWftzn2+iRkMUKTwbAOYQr6ClglnFiH4Q1Npfo3549MYZNqvsjo78btjUKKhiaso0METX8bNuMRanfRM+HK+jdSSUWLRPilYzBviUf+2d46VRgnyku/Kwp3p/q0pFX5OreJh10TteWYvR8zjUh6S8lvmQzfPRAZ92vAQ8P/tKMTgAeBs20rlTKHSLiRTWnuOkHPgMI1oEUjJJ3y3dgI=
X-MS-TrafficTypeDiagnostic: DB4PR04MB0765:
X-Microsoft-Exchange-Diagnostics: 1; DB4PR04MB0765;
	20:BTfIRWBZ3BA1xDun4AHvpXgJ4VWKNFa4D4Q+WVoVZSTYOs4u4uNMkB1NuKDD666E4cuZOZUr9vISLcDEar+FHRTcCE6kjvcN/dX1qqQRUREjG6GYkrELsMXmuNLSzQUy84IgpSzmpeh/GNE12JizKc0FwJ5W5pzzFwKJXQX/1u5IOiesL97UqVJmtbmixN62UF3deGv1um8t90dH0PpMTZpq7+IQ9hNaRiePhAvA1D5/Mfvcg4N2vC8R9nCGM0OZRXl5u6+8wQNIHVhWB2k06DAglCWMBROeMWGoCKBaPrr4iUj6DEpdHdasDz/nXLO2DVIsPBeEUFrTsUz8cAEBQlioLI1WY510cGm/pP7KoQlKI4VkmvDTrZTDDBld5cW0Q0ZEIgjvCya4F/gKXiplGSn7n1/l3etWtepZe63AeAedbG/K8Ttvsy/h7RJxO51r;
	4:D5up6dlsFoPwdNrX4nzU7u3whSa3C422EO8fRUduXP4ewUH4ToG0JSBgN0FgoOT3ClrgQ1f19jUIuaXPRy9x7kQP0v2w41IZ8gP1f0xYC/EwwhtBdSdCr4M4OmW06TnmFAoDXnvFI9If94SQavRCpCcmMmYQZssbBgcD/WF7VNnwQKj2YW5sb0pGJgFJJCdNazj0oYz4IWG6bSEhb1HabyhbTSAnddBjIwrF+iOYH/LndLaDmRBDZ91O8ZK30AX8O9cLfIOdtPDaXtPaowr36Q==
X-Microsoft-Antispam-PRVS: <DB4PR04MB0765EA3C38369CE1F03E107EA18E0@DB4PR04MB0765.eurprd04.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(93006095)(93001095)(3231232)(944501410)(52105095)(10201501046)(3002001)(6041310)(2016111802025)(20161123558120)(20161123564045)(20161123560045)(20161123562045)(6043046)(6072148)(201708071742011);
	SRVR:DB4PR04MB0765; BCL:0; PCL:0; RULEID:; SRVR:DB4PR04MB0765; 
X-Forefront-PRVS: 0654257CF5
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(39380400002)(39840400004)(396003)(376002)(346002)(366004)(199004)(189003)(106356001)(105586002)(305945005)(2351001)(2361001)(53416004)(478600001)(4326008)(47776003)(107886003)(66066001)(5660300001)(53936002)(97736004)(6512007)(118296001)(6486002)(25786009)(6116002)(68736007)(3846002)(69596002)(36756003)(6666003)(6916009)(7736002)(76176011)(52116002)(316002)(86362001)(51416003)(48376002)(2616005)(50466002)(186003)(476003)(26005)(50226002)(956004)(81156014)(16526019)(446003)(81166006)(59450400001)(8676002)(386003)(486006)(8936002)(2906002)(6506007)(16586007)(11346002)(42262002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB4PR04MB0765;
	H:quark.gomspace.lan; FPR:; SPF:None; LANG:en; PTR:InfoNoRecords;
	A:1; MX:1; 
Received-SPF: None (protection.outlook.com: gomspace.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; DB4PR04MB0765;
	23:HFezXdNbxXphb1APi72IldtYK/+ckPjxKBCCZ309K?=
	=?us-ascii?Q?R6LEAZU77pyXp1efyvJMG5gMETGefcM/qX6DyEf3DUPNuTkRXR5NwOz8crt4?=
	=?us-ascii?Q?L+ywgMkYf95nZSroamXQ8KWlcp0E3KxbIf2erot9HdCC+6awHAPMUTg2jVzR?=
	=?us-ascii?Q?Lg4odLBpaVGFYSgKg553aimn3qQIRi6xIG8BEehKpdfjCClchtqopM+8kh3J?=
	=?us-ascii?Q?eJdkfMM0Qgl2tE2YWFBf45xK03WIGpvDlkGKlHyNVoOIDYGHbp1WpToAp9Fc?=
	=?us-ascii?Q?otYcfB4lWPCJJzNwKVAhaeyOOlGVOpaKr44UGKXR4zUYTsilTIz3aIgx3UYZ?=
	=?us-ascii?Q?9I8IvKA6b1Myvksr0R0gAJFWm/xOrrb+75pG5WumY8i83FCxH2bLMSeQv/CN?=
	=?us-ascii?Q?YNONAuNKGHhJZxEGvLwsQq9kOa90XdWh7WCbsjrupcEQlM4GyBdIFG21qtEH?=
	=?us-ascii?Q?W+iyLb8A8ZdzVx/YPlfmA9Q9uoqlll/Uzu1YM8r3jP5/tRtRw0m7vrPKm/cd?=
	=?us-ascii?Q?WEExS/NHFVOoa6I2NWpm9E6iAkZvMQkXiy/IaAp3Q+pPGabA57Fa/den4lDi?=
	=?us-ascii?Q?lG99wJVx+p42JUW1PlBPRExVVYI07YbUpdVkHUrSrN7bt3m96YKDEIrOM9N0?=
	=?us-ascii?Q?fNJm9PKTZ0L3N2Nb+wBGHTV1coG0ECbWQ78IOj2q2UlsKgkuhwZNDHwp2q9B?=
	=?us-ascii?Q?jfaDZ/5XpyueARKsr34b9sTlQDW+C31/JYTfOU2MKJ1DSWafRMyjh8FGD6qq?=
	=?us-ascii?Q?+H4TvUhfnVv/Wcfpt37SwDCWKcNz798eSmsZOH6Aw/kJPnI9W27TA8SVNGQR?=
	=?us-ascii?Q?0iqSjhEWG7plOvELnoIQzy4YcFhibiz2+f6aTmqL248G5T1L63vPsG8cR6QQ?=
	=?us-ascii?Q?ABN/jQbkm+bcdtHx7BgRnS/uug39mqDDFDq2A8Kv87mzZDIiPcgJhhCfzrB/?=
	=?us-ascii?Q?ExwFeKoAMZMM+lXa8gCv05zAke2+cyDRvOUntAJE0ziK2gaDzsK2qv/totm1?=
	=?us-ascii?Q?/Qw14bsLy83SHkcQcjg77bIOaPZJIJuCYRIhX84ul0vYJGt6QlajPYrfju9u?=
	=?us-ascii?Q?UMcqmyayfsLidKXI+R8ppm4K+7h/g84J3hITuTUp3ZkGoOOVKsUMgvl+t6/w?=
	=?us-ascii?Q?tH+z2tA38CGAsJ4tdcHaU3gP9E02ckwHj+NVlcu8lraZSvp29OTlBUytPaOe?=
	=?us-ascii?Q?p/rcAEWCQ08LNs5dDODkvsj1EGjzEDZUxdn+YnFwPoS8+jGPCVCcg59xCDse?=
	=?us-ascii?Q?WHxE3Smlumf0B4jgQT9vstMHYjaoXxWhe2OTnsYuWSvs9HRT9q59AJ8MFu3R?=
	=?us-ascii?Q?bIPH6kQnbTmP/Zu87wi/xOBYFnyO7bdKBpzYmhriRMWjw1pgLnjNPnIOGtTr?=
	=?us-ascii?Q?hrLEw=3D=3D?=
X-Microsoft-Antispam-Message-Info: WA49qUglmgKrplEdnLk3P4jtB48PrV7HLzEVjedcku57+WJbCm2L/G111Fkd9pSPWEZhzs0jDRj5qrWJUcHxRNQtfJeBRN18CrxIlDaXVNfJk/+nnjpCpaL3t3d/YeZE8U5sRVoLU6IfyxeOOcmV1gnLb7DOuJQFJMWQmfEgLSS2nYT8+dbhCYwUNLVuhcbN
X-Microsoft-Exchange-Diagnostics: 1; DB4PR04MB0765;
	6:GI9oYtANqQVlS6/4/l5iO9PgYA6P9GfrCavFZNu61NFu8IuolGMVuy+IV2+PR5/9D4mTrg3Cn+VNh9qG0hNpgzvmo14NJnsU8K9RbPFsy4FjHqT/JuIJVBRJPhRCXCy6R5/st/reebTIQ/OYYpBk74AKZOfAjOy/UtV/KXpwQHLU8nyCHb7ucX3XEx3EcGvhdlCMVtPktbd08rzJkG6pP+2PxRt+5bi98QZe0gTtgKxH8kE+nmDPcf0tpVvWy0jKQmYuvD5MGprreix1xrMDETz6kciSnuhzKzHIga3nDAPAEEAlJIIMBlGVeDoxcvaQ5ASd5/X9VMMAec8yzCVMlp+XcHld0eIdYRLoM7o3eSmaFyS9cDt2bfS7bPjkXvGqIzfnaOgtqZrFwHLsQ8WTJmLS1OGkpU+voYwkkdV1XM1xTysn5utfgv9Hli+KON3LBhHpvcpVKObfdMjmVwg/Uw==;
	5:IW2zhsQEwwZqY3Xldph17iPKacQOFy6YLDkk8+ECiEHckunNn/o1KgYH4OG2A2uO+/3lf7+uc9b3gSXRb4KwSzL9Cw1WldqyIz8qtWFLXju8IeMueD+BKkvmMeeW6XkPu3YL3velgDsm3f1PhbGkQZWj/jubYAfbF8mmtj1GMik=;
	24:tK4NSwvOQsMUwb9aDG2FhmuGZNEQnx4VUYCumyVUzLLCSApGcK9m7i7usR7EoebWWow5/JAzm9Z24WS6Z3HbSepVHiOwSB0oFB+oI0zZOEk=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; DB4PR04MB0765;
	7:KVHOeRmyxWPf9Xw2GVdlLsGxYcSGTMmfSdY63tpiTAFTIR+exCGmVkFsWd6jIjiZDN6WcKzZx/hbFDxF1b3qSv/6mvJwi+tlKdh0siJuW9C7dKCdfBqA/iwbIb4/3+PxkX0+Qy7iBwcitLXQaprnIYRjyvu1LgPSn5CMbdxlhNJUbCoDYIavo5hoXb9uN+uegJrbJnSVxmSS/msWUdcPhKXmzPvtf5qcbbESd7s0gPP5RqBvRAs7gmCr20/m5Z5H
X-MS-Office365-Filtering-Correlation-Id: 6da9f5b0-27d1-4c03-c503-08d5ab5ae429
X-OriginatorOrg: gomspace.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2018 09:48:40.4111 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6da9f5b0-27d1-4c03-c503-08d5ab5ae429
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 91ed1e54-6d8b-4599-84d8-65fe75fda3d1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB4PR04MB0765
Subject: [PATCH 1/1] mtd-utils: Add mtd-utils-tests package
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
X-List-Received-Date: Thu, 26 Apr 2018 09:48:51 -0000
Content-Type: text/plain

Add mtd-utils-tests package which includes the test suites mtd-tests,
ubi-tests, fs-tests, etc.

These test suites are useful for verifying flash features or stress
testing.

Signed-off-by: Martin Lund <malu@gomspace.com>
---
 meta/recipes-devtools/mtd/mtd-utils_git.bb | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/meta/recipes-devtools/mtd/mtd-utils_git.bb b/meta/recipes-devtools/mtd/mtd-utils_git.bb
index d09d6330228..b8f2dd15c19 100644
--- a/meta/recipes-devtools/mtd/mtd-utils_git.bb
+++ b/meta/recipes-devtools/mtd/mtd-utils_git.bb
@@ -8,6 +8,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3 \
 inherit autotools pkgconfig update-alternatives
 
 DEPENDS = "zlib lzo e2fsprogs util-linux"
+RDEPENDS_mtd-utils-tests += "bash"
 
 PV = "2.0.1+${SRCPV}"
 
@@ -18,6 +19,8 @@ SRC_URI = "git://git.infradead.org/mtd-utils.git \
 
 S = "${WORKDIR}/git/"
 
+EXTRA_OECONF += "--enable-install-tests"
+
 # xattr support creates an additional compile-time dependency on acl because
 # the sys/acl.h header is needed. libacl is not needed and thus enabling xattr
 # regardless whether acl is enabled or disabled in the distro should be okay.
@@ -37,11 +40,12 @@ do_install () {
 	oe_runmake install DESTDIR=${D} SBINDIR=${sbindir} MANDIR=${mandir} INCLUDEDIR=${includedir}
 }
 
-PACKAGES =+ "mtd-utils-jffs2 mtd-utils-ubifs mtd-utils-misc"
+PACKAGES =+ "mtd-utils-jffs2 mtd-utils-ubifs mtd-utils-misc mtd-utils-tests"
 
 FILES_mtd-utils-jffs2 = "${sbindir}/mkfs.jffs2 ${sbindir}/jffs2dump ${sbindir}/jffs2reader ${sbindir}/sumtool"
 FILES_mtd-utils-ubifs = "${sbindir}/mkfs.ubifs ${sbindir}/ubi*"
 FILES_mtd-utils-misc = "${sbindir}/nftl* ${sbindir}/ftl* ${sbindir}/rfd* ${sbindir}/doc* ${sbindir}/serve_image ${sbindir}/recv_image"
+FILES_mtd-utils-tests = "${libexecdir}/mtd-utils/*"
 
 BBCLASSEXTEND = "native nativesdk"
 
-- 
2.14.1


