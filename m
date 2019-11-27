Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.5742.1574859998906461160
 for <poky@lists.yoctoproject.org>;
 Wed, 27 Nov 2019 05:06:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axentia.se header.s=selector2 header.b=FGTnC2q+;
 spf=fail (domain: axentia.se, ip: 140.211.169.56, mailfrom: du@axentia.se)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEE6CE00ECC; Wed, 27 Nov 2019 05:06:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_SPF_HELO,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS
	autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [40.107.2.125 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from EUR02-VE1-obe.outbound.protection.outlook.com (mail-eopbgr20125.outbound.protection.outlook.com [40.107.2.125])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAB30E00BA3
	for <poky@yoctoproject.org>; Wed, 27 Nov 2019 05:06:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z5NDAEekJ/uy4E7hFTibOlCYfi/dxmj1ZwkQWw0lqOwZCpOtG5iXn3RArGIFXTYbNo1On1P6dwvE15K9UAr1A0i5DfQ6EdHD4nSxf7NeF0CC5qRIhm/HfbmnJqUbXEmX63yb2tgYX4Y+pzvVHhSpzv27eqng69Z1Etpj7qkiUl0EyFACIeoe8p5Bj/CicPa5+8o5w7DpW2bG4lG7SEe+Fz7k+JYu3F+1U1qlr8h+EjFYr70GqRAGEYZ+mJNrOVltoHNloJrKs1JezKr+27Um0CWb4tTZXHXKDV+7ssR5JmmsQ5RLJIJmCgRncYQpRxxIbru4fkm6211Cs5tiDMFEXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Whbzs++rI/XV6s8TWdA5w31OLv7xizB5diHMAUB0rSY=;
 b=fxYXDcPQyz7wlre1TDwPQBj4OoBctE444/X0MPY1Gt+/5v/xHoTlbIN7Oxbi4o/981xrhDt26g9NddkkOltKvqEeVbw5ppv4kBcyJAsAaYaridA9ewBQNxlYBJtmL2m4Bd31TTTQdqo22z8aLF1BrqJ/ArmWd55PLl9XQJz32d3+4zEYRCfqkJoJEez4LQAiXI4Yt4wAJMCCgINBpbzaqYo5PndXENuaDbeVjhKcQLpWVNnVhn/PvvafG8i6H7inpGb4Ykbfeca15RB8TWbY+BHZ6JczLrh/Mza7dcTb6mC8JIr+bxqP6ff+AU7vwCn7MOqmCzCHRkpsRSMmGTnsQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Whbzs++rI/XV6s8TWdA5w31OLv7xizB5diHMAUB0rSY=;
 b=FGTnC2q+HwOilQQB6y/V3gH2MyUduCyMZ+YXmlN7rXqSicxk4oRUnvWdYVI2xfy5n6jMrqgTGMxUFXiUSOwnsOaQnM449Hs3jtT4Z5jrM8GzdSrkLsBSEAx2A7CrpEr4DkGsath1h/npmYGbKIJtpcvML3ULmRmldiXwiMsU6Xk=
Received: from HE1PR0202MB2714.eurprd02.prod.outlook.com (10.168.189.16) by
 HE1PR0202MB2572.eurprd02.prod.outlook.com (10.168.183.138) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.25; Wed, 27 Nov 2019 13:06:34 +0000
Received: from HE1PR0202MB2714.eurprd02.prod.outlook.com
 ([fe80::fc30:8b3d:e3b0:60da]) by HE1PR0202MB2714.eurprd02.prod.outlook.com
 ([fe80::fc30:8b3d:e3b0:60da%8]) with mapi id 15.20.2474.023; Wed, 27 Nov 2019
 13:06:34 +0000
From: "Daniels Umanovskis" <du@axentia.se>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
CC: Daniels Umanovskis <du@axentia.se>
Subject: [PULL] [PATCH 0/1] gattlib: add the recipe
Thread-Topic: [PULL] [PATCH 0/1] gattlib: add the recipe
Thread-Index: AQHVpSN+wkag4Wvqx0SzSPvkc3+Jig==
Date: Wed, 27 Nov 2019 13:06:34 +0000
Message-ID: <cover.1574858887.git.du@axentia.se>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR0102CA0027.eurprd01.prod.exchangelabs.com
 (2603:10a6:7:14::40) To HE1PR0202MB2714.eurprd02.prod.outlook.com
 (2603:10a6:3:9a::16)
authentication-results: spf=none (sender IP is ) smtp.mailfrom=du@axentia.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.20.1
x-originating-ip: [87.96.186.165]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 48291a27-1cfc-4a51-2161-08d7733aa0ed
x-ms-traffictypediagnostic: HE1PR0202MB2572:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: 
 <HE1PR0202MB257283B049898C05EAA389F3BD440@HE1PR0202MB2572.eurprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 023495660C
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(396003)(366004)(376002)(346002)(136003)(39830400003)(199004)(189003)(6512007)(8676002)(4744005)(6916009)(66066001)(81156014)(1730700003)(2906002)(256004)(3846002)(6116002)(81166006)(316002)(2616005)(8936002)(2501003)(99286004)(508600001)(2351001)(4326008)(107886003)(25786009)(86362001)(14454004)(66476007)(6486002)(66556008)(36756003)(66946007)(26005)(52116002)(6436002)(305945005)(5660300002)(50226002)(186003)(71190400001)(7736002)(386003)(5640700003)(64756008)(66446008)(6506007)(71200400001)(102836004);DIR:OUT;SFP:1102;SCL:1;SRVR:HE1PR0202MB2572;H:HE1PR0202MB2714.eurprd02.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: axentia.se does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 wSoQ6mbhX16Rfz329b7Ir+gBzcfedDKglvcLuUF5XzAAkQ2wibAXhVnPP7K189UWLtsYXkzDdJgSL2E4ytirLmTKkWHNLlPZljvudcFko6xNH1mx8L1UZF+ayx/OAweMopswPaxqbKs5kvCK/EUW6qarwd42IzPGV3+9MtSK9VroRC0jN44Bi7OicQ3weXihHVLGZJAlxUcozLc1whJeQgcro8Vyhg1Dm6InEd6WBhqi32ygA01Ga/IbNT/JrA85U1XyeGt7i9znBWo6Uk8U3fgQiGx9605YkJlheRzYCb2dK6mtys+hU4AU6rS+Pipl7rOpcd3/l9qDtEmurOQ/6HSt1tW9Njqlp0uHzX9krM7L6Y2knFcLdliskTsBimHQU23z/rg2u5vHX2ix4wzdoxrh5F14tMVAC9za6eVTJ1C0Y7zsHzubKteKnX9YZiCC
MIME-Version: 1.0
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: 48291a27-1cfc-4a51-2161-08d7733aa0ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2019 13:06:34.2816
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Lo+zD2XhsN8ys2pVqVKJry6Auh3nHNhTkoQ4B0Wkc9lPJQZvquX2mYVSTIss3ouv
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0202MB2572
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

gattlib is a C library for talking to Bluetooth, including BLE, devices.
It's the only compact, embedded-appropriate library for easily scanning
BLE devices and subscribing to notifications

Signed-off-by: Daniels Umanovskis <du@axentia.se>

Daniels Umanovskis (1):
  gattlib: add the recipe

 .../gattlib/files/LICENSE                     | 339 ++++++++++++++++++
 ...oid-strange-chars-from-the-build-dir.patch |  70 ++++
 .../gattlib/gattlib_git.bb                    |  31 ++
 3 files changed, 440 insertions(+)
 create mode 100644 meta/recipes-connectivity/gattlib/files/LICENSE
 create mode 100644 meta/recipes-connectivity/gattlib/files/dbus-avoid-stra=
nge-chars-from-the-build-dir.patch
 create mode 100644 meta/recipes-connectivity/gattlib/gattlib_git.bb

--=20
2.20.1

