Return-Path: <malu@gomspace.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96176E00B28; Wed, 25 Apr 2018 04:44:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.121 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 15445 seconds by postgrey-1.32 at yocto-www;
	Wed, 25 Apr 2018 04:44:04 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0121.outbound.protection.outlook.com [104.47.2.121])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51DACE00A4F
	for <poky@yoctoproject.org>; Wed, 25 Apr 2018 04:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gomspace.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=ZGlsbYytrif6HNdwzrDy4Uz5kLr1/NsZgAchAUWQRxM=;
	b=C1hw8UNdZSpJRu1YRIDz2pCOp26aaev2FxTomd0I4PJgvSNn4bhDOIJTR8+4ULwnTCROa20XgDhfNG6H5lua/k59TN+HMeiNEX8kHay4zcaLEUGEQVKvAhi7NBXxrUroMHIiup1m6E6h9jhCPXBuHnUOUvyaVEOeTdILV1HwLAs=
Received: from DB3PR04MB0761.eurprd04.prod.outlook.com (10.160.51.152) by
	DB3PR04MB0826.eurprd04.prod.outlook.com (10.160.53.23) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.696.17; Wed, 25 Apr 2018 07:11:27 +0000
Received: from DB3PR04MB0761.eurprd04.prod.outlook.com
	([fe80::9913:98fb:365d:24b2]) by
	DB3PR04MB0761.eurprd04.prod.outlook.com
	([fe80::9913:98fb:365d:24b2%14]) with mapi id 15.20.0696.015;
	Wed, 25 Apr 2018 07:11:27 +0000
From: Martin Lund <malu@gomspace.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky][PULL][PATCH 0/1] mtd-utils: Add mtd-utils-tests package
Thread-Index: AQHT3GRGsPDFH6UUrk61wGr6kkW4SQ==
Date: Wed, 25 Apr 2018 07:11:26 +0000
Message-ID: <DB3PR04MB07615375106BB51453EA61BDA18F0@DB3PR04MB0761.eurprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=malu@gomspace.com; 
x-originating-ip: [79.171.149.172]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DB3PR04MB0826;
	7:owmBjr978HS8V1zdXeuKb37f3UKPnQdIqpRFQH+D19yq3ZfJicKuNzWJ2dBKpyRXyLVXg6BPf2IMqTkszg4XikWGh7n29tZper3moe2oO6dkL2HXW9KqAf/5OZ/SBsVFATN6TlQa5/HnZAs/4TTDARvLrUuTOQkMHC78Jaa7qcj5rNdy3NaLZOkBbTYohLwCupYORxyaRSczE42UBW6DPx2rkNWpIWqytjIJr/TrsB9v0jAbl6yznQPrK2Nre2Fj
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:DB3PR04MB0826; 
x-ms-traffictypediagnostic: DB3PR04MB0826:
x-microsoft-antispam-prvs: <DB3PR04MB0826F7390C1BFA82F4BE3911A18F0@DB3PR04MB0826.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(93006095)(93001095)(3002001)(3231232)(944501410)(52105095)(10201501046)(6041310)(20161123564045)(20161123560045)(20161123558120)(20161123562045)(2016111802025)(6043046)(6072148)(201708071742011);
	SRVR:DB3PR04MB0826; BCL:0; PCL:0; RULEID:; SRVR:DB3PR04MB0826; 
x-forefront-prvs: 06530126A4
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39380400002)(396003)(366004)(346002)(39840400004)(376002)(377424004)(189003)(199004)(316002)(3280700002)(102836004)(476003)(5640700003)(5660300001)(68736007)(9686003)(14454004)(55016002)(2351001)(2900100001)(86362001)(478600001)(66066001)(25786009)(2906002)(6916009)(3660700001)(8936002)(8676002)(105586002)(1730700003)(26005)(81166006)(6436002)(81156014)(99286004)(6116002)(97736004)(486006)(59450400001)(53936002)(7736002)(3846002)(305945005)(1857600001)(74316002)(6506007)(33656002)(2501003)(186003)(5250100002)(106356001)(7696005)(42262002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB3PR04MB0826;
	H:DB3PR04MB0761.eurprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:3; A:1; 
received-spf: None (protection.outlook.com: gomspace.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: SPgel/6BrH5907fR3OwfPyYsswXF+HxjkgMM2Vefw+sLsRKOPza44aaZFAlinnHBDCKkn+C/GYkV2QcR4YuklF2r0LdTy0XQBG71PX6u+FCj5KAk2N02ElUF+WwZQRX5wPfE/QzQvvDVTqbP+xgjZLHP0Gvv4z/ZWnHzNM5Lsb4SxaJy6HYTvvhqw+ROWY9X
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: fa8db07c-035e-43ed-9c06-08d5aa7bc2e7
X-OriginatorOrg: gomspace.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa8db07c-035e-43ed-9c06-08d5aa7bc2e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2018 07:11:26.9357 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91ed1e54-6d8b-4599-84d8-65fe75fda3d1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR04MB0826
Subject: [PULL][PATCH 0/1] mtd-utils: Add mtd-utils-tests package
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
X-List-Received-Date: Wed, 25 Apr 2018 11:44:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


    Add mtd-utils-tests package which includes the test suites mtd-tests,
    ubi-tests, fs-tests, etc.

    These test suites are useful for verifying flash features and stress
    testing.


The following changes since commit da3625c52e1ab8985fba4fc3d133edf92142f182=
:

  build-appliance-image: Update to sumo head revision (2018-04-23 17:54:32 =
+0100)

are available in the git repository at:

  git://push.yoctoproject.org/poky-contrib malu/mtd-utils-tests

Martin Lund (1):
  mtd-utils: Add mtd-utils-tests package

 meta/recipes-devtools/mtd/mtd-utils_git.bb | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)


