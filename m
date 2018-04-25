Return-Path: <malu@gomspace.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35EBCE00B30; Wed, 25 Apr 2018 05:47:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.0.124 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 77477 seconds by postgrey-1.32 at yocto-www;
	Wed, 25 Apr 2018 05:47:35 PDT
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
	(mail-he1eur01on0124.outbound.protection.outlook.com [104.47.0.124])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 023B3E00B01
	for <poky@yoctoproject.org>; Wed, 25 Apr 2018 05:47:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gomspace.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=YgJ3MkUKKpxRy8EBoADC1t/mN6KSSRTDMApXuriF12M=;
	b=VV9M/8DHaRaBbUqtX9gY5YvGPJH6+yhD1cn6MJbC1ymU6CV4KZDotzt3S2zX3ZrXncy8owPLxFKGVgzjmqsoHndBiPpSKxb3FV6vACiPaLTeqrTvDj5WAbHMRNB1fFQBtbbt8wlFaud1+5baX2oY0vhTker+OUSNnIdoGqms1Ak=
Received: from AM3PR04MB0757.eurprd04.prod.outlook.com (10.160.6.143) by
	AM3PR04MB402.eurprd04.prod.outlook.com (10.242.112.147) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.696.13; Wed, 25 Apr 2018 12:33:24 +0000
Received: from AM3PR04MB0757.eurprd04.prod.outlook.com
	([fe80::c123:cf81:cd56:8e42]) by
	AM3PR04MB0757.eurprd04.prod.outlook.com
	([fe80::c123:cf81:cd56:8e42%16]) with mapi id 15.20.0715.018;
	Wed, 25 Apr 2018 12:33:24 +0000
From: Martin Lund <malu@gomspace.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky][PATCH 0/1] mtd-utils: Add mtd-utils-tests package
Thread-Index: AQHT3JDf9diZieMQ6U2na7cbJ4kPhQ==
Date: Wed, 25 Apr 2018 12:33:24 +0000
Message-ID: <AM3PR04MB0757539E3A578ABF3777B26DA18F0@AM3PR04MB0757.eurprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=malu@gomspace.com; 
x-originating-ip: [79.171.149.172]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM3PR04MB402;
	7:6yusVMWUrVYMk5GQlbX4rMd00IlYWYYVFxmAZ+u7FxIxARKK/1WuCKdmHBeJR2wCoWENYxawqZlTAqIjw+Hb2CufsXke7jRgR+C3gHEYLs8gGTrIT0ZeNyYQIODMCxt75EmxOxgbEXT8Q62e71BgF40a7+TAEa5S5C0pFzerZ0r/3t2AoKSOScqlOeXBKko/Fga/Xm+bx+Mw9mFiTg3RWy2x8wDdFKEElICBqpudgPjrHqEMkjBfIWggUZt/Jf4T
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(49563074)(7193020);
	SRVR:AM3PR04MB402; 
x-ms-traffictypediagnostic: AM3PR04MB402:
x-microsoft-antispam-prvs: <AM3PR04MB40276B38AFFA339A9D92E52A18F0@AM3PR04MB402.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(102415395)(6040522)(2401047)(8121501046)(5005006)(3231232)(944501410)(52105095)(93006095)(93001095)(3002001)(10201501046)(6041310)(20161123564045)(20161123562045)(20161123560045)(20161123558120)(2016111802025)(6043046)(6072148)(201708071742011);
	SRVR:AM3PR04MB402; BCL:0; PCL:0; RULEID:; SRVR:AM3PR04MB402; 
x-forefront-prvs: 06530126A4
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39380400002)(366004)(396003)(39840400004)(376002)(346002)(199004)(377424004)(189003)(59450400001)(6116002)(6506007)(6436002)(478600001)(3846002)(33656002)(3660700001)(102836004)(476003)(486006)(7696005)(26005)(66066001)(99286004)(25786009)(99936001)(106356001)(14454004)(105586002)(86362001)(2900100001)(2351001)(5660300001)(305945005)(3280700002)(74316002)(7736002)(2906002)(8936002)(81166006)(81156014)(1730700003)(8676002)(2501003)(316002)(186003)(5640700003)(1857600001)(53936002)(97736004)(5250100002)(6916009)(9686003)(55016002)(68736007)(42262002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM3PR04MB402;
	H:AM3PR04MB0757.eurprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gomspace.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: SOG609H7VyQEvd+Qp4Z+q98CWqwLKHmf2tA9YPGsc6jE71EZgy4K4iybMGHZsoSam+rbNugYJ1RtkWmqCNKoSPZ6qrpAW7yC09zm8APFFmmkP+N83Mqum9Yq2kRknuIoxGTVuG6L6muhLatiFiFOawcY584bJ16+5IrpJ4TY333ULR+tbgMyKyzuwqM0aeca
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: b7668e56-d763-4906-8c36-08d5aaa8bd34
X-OriginatorOrg: gomspace.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7668e56-d763-4906-8c36-08d5aaa8bd34
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2018 12:33:24.6639 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91ed1e54-6d8b-4599-84d8-65fe75fda3d1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM3PR04MB402
Subject: [PATCH 0/1] mtd-utils: Add mtd-utils-tests package
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
X-List-Received-Date: Wed, 25 Apr 2018 12:47:42 -0000
X-Groupsio-MsgNum: 11212
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_AM3PR04MB0757539E3A578ABF3777B26DA18F0AM3PR04MB0757eurp_"

--_002_AM3PR04MB0757539E3A578ABF3777B26DA18F0AM3PR04MB0757eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

    Add mtd-utils-tests package which includes the test suites mtd-tests,
    ubi-tests, fs-tests, etc.

    These test suites are useful for verifying flash features or stress
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

--
2.14.1

--_002_AM3PR04MB0757539E3A578ABF3777B26DA18F0AM3PR04MB0757eurp_
Content-Type: text/x-patch;
	name="0001-mtd-utils-Add-mtd-utils-tests-package.patch"
Content-Description: 0001-mtd-utils-Add-mtd-utils-tests-package.patch
Content-Disposition: attachment;
	filename="0001-mtd-utils-Add-mtd-utils-tests-package.patch"; size=2290;
	creation-date="Wed, 25 Apr 2018 12:31:35 GMT";
	modification-date="Wed, 25 Apr 2018 12:31:35 GMT"
Content-Transfer-Encoding: base64

RnJvbSAxMGM0ZDkyZWUyNDQwM2U2YjEzYjZmZjY1MWNmNzRhMWZmNGVjMWJlIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpNZXNzYWdlLUlkOiA8MTBjNGQ5MmVlMjQ0MDNlNmIxM2I2ZmY2NTFjZjc0
YTFmZjRlYzFiZS4xNTI0NTgwOTgxLmdpdC5tYWx1QGdvbXNwYWNlLmNvbT4KSW4tUmVwbHktVG86
IDxjb3Zlci4xNTI0NTgwOTgxLmdpdC5tYWx1QGdvbXNwYWNlLmNvbT4KUmVmZXJlbmNlczogPGNv
dmVyLjE1MjQ1ODA5ODEuZ2l0Lm1hbHVAZ29tc3BhY2UuY29tPgpGcm9tOiBNYXJ0aW4gTHVuZCA8
bWFsdUBnb21zcGFjZS5jb20+CkRhdGU6IFR1ZSwgMjQgQXByIDIwMTggMTY6MzI6MTYgKzAyMDAK
U3ViamVjdDogW1BBVENIIDEvMV0gbXRkLXV0aWxzOiBBZGQgbXRkLXV0aWxzLXRlc3RzIHBhY2th
Z2UKCkFkZCBtdGQtdXRpbHMtdGVzdHMgcGFja2FnZSB3aGljaCBpbmNsdWRlcyB0aGUgdGVzdCBz
dWl0ZXMgbXRkLXRlc3RzLAp1YmktdGVzdHMsIGZzLXRlc3RzLCBldGMuCgpUaGVzZSB0ZXN0IHN1
aXRlcyBhcmUgdXNlZnVsIGZvciB2ZXJpZnlpbmcgZmxhc2ggZmVhdHVyZXMgb3Igc3RyZXNzCnRl
c3RpbmcuCgpTaWduZWQtb2ZmLWJ5OiBNYXJ0aW4gTHVuZCA8bWFsdUBnb21zcGFjZS5jb20+Ci0t
LQogbWV0YS9yZWNpcGVzLWRldnRvb2xzL210ZC9tdGQtdXRpbHNfZ2l0LmJiIHwgNiArKysrKy0K
IDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvbXRkL210ZC11dGlsc19naXQuYmIgYi9tZXRhL3Jl
Y2lwZXMtZGV2dG9vbHMvbXRkL210ZC11dGlsc19naXQuYmIKaW5kZXggZDA5ZDYzMzAyMjguLmI4
ZjJkZDE1YzE5IDEwMDY0NAotLS0gYS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvbXRkL210ZC11dGls
c19naXQuYmIKKysrIGIvbWV0YS9yZWNpcGVzLWRldnRvb2xzL210ZC9tdGQtdXRpbHNfZ2l0LmJi
CkBAIC04LDYgKzgsNyBAQCBMSUNfRklMRVNfQ0hLU1VNID0gImZpbGU6Ly9DT1BZSU5HO21kNT0w
NjM2ZTczZmYwMjE1ZThkNjcyZGM0YzMyYzMxN2JiMyBcCiBpbmhlcml0IGF1dG90b29scyBwa2dj
b25maWcgdXBkYXRlLWFsdGVybmF0aXZlcwogCiBERVBFTkRTID0gInpsaWIgbHpvIGUyZnNwcm9n
cyB1dGlsLWxpbnV4IgorUkRFUEVORFNfbXRkLXV0aWxzLXRlc3RzICs9ICJiYXNoIgogCiBQViA9
ICIyLjAuMSske1NSQ1BWfSIKIApAQCAtMTgsNiArMTksOCBAQCBTUkNfVVJJID0gImdpdDovL2dp
dC5pbmZyYWRlYWQub3JnL210ZC11dGlscy5naXQgXAogCiBTID0gIiR7V09SS0RJUn0vZ2l0LyIK
IAorRVhUUkFfT0VDT05GICs9ICItLWVuYWJsZS1pbnN0YWxsLXRlc3RzIgorCiAjIHhhdHRyIHN1
cHBvcnQgY3JlYXRlcyBhbiBhZGRpdGlvbmFsIGNvbXBpbGUtdGltZSBkZXBlbmRlbmN5IG9uIGFj
bCBiZWNhdXNlCiAjIHRoZSBzeXMvYWNsLmggaGVhZGVyIGlzIG5lZWRlZC4gbGliYWNsIGlzIG5v
dCBuZWVkZWQgYW5kIHRodXMgZW5hYmxpbmcgeGF0dHIKICMgcmVnYXJkbGVzcyB3aGV0aGVyIGFj
bCBpcyBlbmFibGVkIG9yIGRpc2FibGVkIGluIHRoZSBkaXN0cm8gc2hvdWxkIGJlIG9rYXkuCkBA
IC0zNywxMSArNDAsMTIgQEAgZG9faW5zdGFsbCAoKSB7CiAJb2VfcnVubWFrZSBpbnN0YWxsIERF
U1RESVI9JHtEfSBTQklORElSPSR7c2JpbmRpcn0gTUFORElSPSR7bWFuZGlyfSBJTkNMVURFRElS
PSR7aW5jbHVkZWRpcn0KIH0KIAotUEFDS0FHRVMgPSsgIm10ZC11dGlscy1qZmZzMiBtdGQtdXRp
bHMtdWJpZnMgbXRkLXV0aWxzLW1pc2MiCitQQUNLQUdFUyA9KyAibXRkLXV0aWxzLWpmZnMyIG10
ZC11dGlscy11YmlmcyBtdGQtdXRpbHMtbWlzYyBtdGQtdXRpbHMtdGVzdHMiCiAKIEZJTEVTX210
ZC11dGlscy1qZmZzMiA9ICIke3NiaW5kaXJ9L21rZnMuamZmczIgJHtzYmluZGlyfS9qZmZzMmR1
bXAgJHtzYmluZGlyfS9qZmZzMnJlYWRlciAke3NiaW5kaXJ9L3N1bXRvb2wiCiBGSUxFU19tdGQt
dXRpbHMtdWJpZnMgPSAiJHtzYmluZGlyfS9ta2ZzLnViaWZzICR7c2JpbmRpcn0vdWJpKiIKIEZJ
TEVTX210ZC11dGlscy1taXNjID0gIiR7c2JpbmRpcn0vbmZ0bCogJHtzYmluZGlyfS9mdGwqICR7
c2JpbmRpcn0vcmZkKiAke3NiaW5kaXJ9L2RvYyogJHtzYmluZGlyfS9zZXJ2ZV9pbWFnZSAke3Ni
aW5kaXJ9L3JlY3ZfaW1hZ2UiCitGSUxFU19tdGQtdXRpbHMtdGVzdHMgPSAiJHtsaWJleGVjZGly
fS9tdGQtdXRpbHMvKiIKIAogQkJDTEFTU0VYVEVORCA9ICJuYXRpdmUgbmF0aXZlc2RrIgogCi0t
IAoyLjE0LjEKCg==

--_002_AM3PR04MB0757539E3A578ABF3777B26DA18F0AM3PR04MB0757eurp_--
