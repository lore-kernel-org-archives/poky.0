Return-Path: <marc.pernia@redaptiveinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93854E01DD9; Wed, 20 Jun 2018 23:50:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.48 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1977 seconds by postgrey-1.32 at yocto-www;
	Wed, 20 Jun 2018 23:50:00 PDT
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0048.outbound.protection.outlook.com [104.47.34.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09B52E00EE0
	for <poky@yoctoproject.org>; Wed, 20 Jun 2018 23:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=redaptiveinc.onmicrosoft.com; s=selector1-redaptiveinc-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=gnR/1EKdeZRSVGOvAaGe9jnPBZoI0zc9CyvQ9QKkmS8=;
	b=ZfMh27Yl3Hr20KXGn5cEIK/AkuEOhdEE31xCgC5oP/WTGhKfYxZK9/73Bkp5J9rctSQqRvHwCxT3Abczgbim+66O0tGCKzYLL15dzks90FGm3T+W8zRUHFi4OvTDR2cEJUTgOIqTelFClH0peLjeTW7iMl2prXvHiLk2ldQiYv4=
Received: from MW2PR1501MB1995.namprd15.prod.outlook.com (52.132.149.159) by
	MW2PR1501MB1978.namprd15.prod.outlook.com (52.132.149.154) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.863.19; Thu, 21 Jun 2018 06:17:00 +0000
Received: from MW2PR1501MB1995.namprd15.prod.outlook.com
	([fe80::5486:114c:24fd:18f8]) by
	MW2PR1501MB1995.namprd15.prod.outlook.com
	([fe80::5486:114c:24fd:18f8%2]) with mapi id 15.20.0863.016;
	Thu, 21 Jun 2018 06:17:00 +0000
From: Marc Pernia <marc.pernia@redaptiveinc.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [poky] How do I apply a patch to a wic configuration file
	(beagle bone-yocto.wks)?
Thread-Index: AQHUBHVQdaXuwhjXDUW5vfPsMQy4vKRh2EEA//+fJwCAANU/AIAHhAGA
Date: Thu, 21 Jun 2018 06:17:00 +0000
Message-ID: <958653A1-5B95-4932-BCEB-23139A43CA28@redaptiveinc.com>
References: <941E6EEF-B2B6-4022-8FA1-C74869EE3673@contoso.com>
	<5684131f-fc72-c11e-ddf4-98e1c90e938e@gmail.com>
	<2C921F74-76FD-47E7-BB5B-5C39A59B22F8@redaptiveinc.com>
	<CAMKF1sqymbTpN9LCBs-fqsK20tRLTRksDx37nJxPyuy6K9zv9w@mail.gmail.com>
In-Reply-To: <CAMKF1sqymbTpN9LCBs-fqsK20tRLTRksDx37nJxPyuy6K9zv9w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=marc.pernia@redaptiveinc.com; 
x-originating-ip: [2600:1700:3680:39f0:9cce:13b6:4e52:93f9]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MW2PR1501MB1978;
	7:aXlVli1CVMSJ5TQtxbJ+6mJANDVb29RjQADY0EJitKQ8eGJ1uMznQziVMDK8MZTVze1QI/tGKmd6ex6kzGWYIDS41I/my22PNdtucFJaqqVW8USWrnT1jYwdTMhEfsTAAvw9gHhiqkpHj6WLHeMb0Qgu7URZbTDi82xOedJ/6EKAD6WBHbST34EM89v43J0EZ8DhJ7VEyPFo3jo5w10pCJQtCrvB9MfGkd6NOxKaNVEmv6DtqnGpI3gYirsTOrSt;
	20:DWNIji6UPeb5gAVGKYzCtbBKWfkmzOxc3/6dzGFRc+jH/VyaIaWPoc5G81/b+f+bl1qPVtBv5ix5TEO+dsAnrOm3AjWqXbuWOdu/e8qX16UKAYDgA7KB7D9Ehf1LsiI/gMLM6NByXcWdy+cHex8/qzjwpJb/oKrhAlg5Eq5Oziw=
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 4df4b04f-681a-477e-3950-08d5d73e999f
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(5600026)(711020)(2017052603328)(7153060)(7193020);
	SRVR:MW2PR1501MB1978; 
x-ms-traffictypediagnostic: MW2PR1501MB1978:
x-microsoft-antispam-prvs: <MW2PR1501MB19788677C6119461E866B34C8F760@MW2PR1501MB1978.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(85827821059158);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(3002001)(93006095)(93001095)(10201501046)(3231254)(944501410)(52105095)(149027)(150027)(6041310)(20161123560045)(20161123564045)(20161123558120)(20161123562045)(2016111802025)(6043046)(6072148)(201708071742011)(7699016);
	SRVR:MW2PR1501MB1978; BCL:0; PCL:0; RULEID:;
	SRVR:MW2PR1501MB1978; 
x-forefront-prvs: 07106EF9B9
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39380400002)(376002)(366004)(39840400004)(396003)(346002)(40764003)(199004)(189003)(14454004)(3660700001)(7736002)(316002)(83716003)(25786009)(6246003)(2900100001)(446003)(6916009)(93886005)(3280700002)(11346002)(39060400002)(36756003)(86362001)(476003)(4326008)(2616005)(305945005)(53936002)(44832011)(486006)(46003)(82746002)(478600001)(105586002)(97736004)(2906002)(8676002)(8936002)(229853002)(102836004)(106356001)(33656002)(6116002)(68736007)(186003)(76176011)(6486002)(99286004)(81156014)(5250100002)(81166006)(6436002)(6506007)(5660300001)(6512007);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MW2PR1501MB1978;
	H:MW2PR1501MB1995.namprd15.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: redaptiveinc.com does not
	designate permitted sender hosts)
x-microsoft-antispam-message-info: FoA9hrD9xea8OGwoyQbvZ5n0qGW/+jZGBzbzOSYzYnQ6rxMfHVXLRy/p6leetWBGgEKfjx7oF7wVxZh4Y/+dpzciVyOCvJgAuXaqja3bYgRUzEKjZrvdjc1xGiFkjCZl9nKx0WTtLXyRxnhRKSNLLGfC/Y1/7XL7iCoZLapQgjBqYx/kAp6dykw6ZNYfbsD8U+2W10dQT28hHsfNGkSYkHesuEgqNcn6JYXBuXjcgZzdjcj1JxoeE4CABTBnkSepA3bLrjVNU++o0egHvlq6TLO47bF6Bj2w/PBcnSQCAKNcPxAF/9wrKTjHtDkXXpCne2L2+HNDkRQDkQ6qCJ7jqQ==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: redaptiveinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4df4b04f-681a-477e-3950-08d5d73e999f
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2018 06:17:00.6836 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c9b2e971-e3f7-4532-8cbc-7d658551d558
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR1501MB1978
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: How do I apply a patch to a wic configuration file (beagle bone-yocto.wks)?
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
X-List-Received-Date: Thu, 21 Jun 2018 06:50:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <0872E73CCC66204AB279E1F7541B7BE1@namprd15.prod.outlook.com>
Content-Transfer-Encoding: base64

SGV5IEtoZW0sDQoNCk1hbnkgdGhhbmtzIGZvciB5b3VyIGhlbHAuIA0KDQpJIGVuZGVkIHVwIGp1
c3QgY3JlYXRpbmcgYSBXS1NfRklMRV9iZWFnbGVib25lLXlvY3RvID0gIm15V2ljQ29uZmlnLndr
cyIgIGVudHJ5IGluIG1ldGEtbXlsYXllci9jb25mL2xheWVyLmNvbmYNCg0KSSBwbGFjZWQgbXkg
d2ljIGNvbmZpZ3VyYXRpb24gZmlsZSBpbiBtZXRhLW15bGF5ZXIvd2ljLw0KDQouLi5hbmQgYXMg
bG9uZyBhcyBsb2NhbC5jb25mIGluY2x1ZGVzIHdpYyBpbiB0aGUgSU1BR0VfRlNUWVBFUywgaXQg
YWxsIHNlZW1zIHRvIHdvcmsgb3V0Lg0KDQoNCg0K77u/T24gNi8xNS8xOCwgOTozMSBQTSwgIkto
ZW0gUmFqIiA8cmFqLmtoZW1AZ21haWwuY29tPiB3cm90ZToNCg0KICAgIEhleSBLaGVtDQoNCg==

