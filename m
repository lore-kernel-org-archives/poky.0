Return-Path: <marc.pernia@redaptiveinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B477E01333; Fri, 15 Jun 2018 05:23:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.32.80 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 10751 seconds by postgrey-1.32 at yocto-www;
	Fri, 15 Jun 2018 05:23:55 PDT
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0080.outbound.protection.outlook.com [104.47.32.80])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15B40E00A28
	for <poky@yoctoproject.org>; Fri, 15 Jun 2018 05:23:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=redaptiveinc.onmicrosoft.com; s=selector1-redaptiveinc-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=FxAWtXbX+ymfjEz/SnPTFDaMX9rwoXiHA/DRpp6xe1M=;
	b=PSDKVRcZMfXMqMJYC5vKu+FuX94sXCX4p/zhuof6gXmKRMZUcp7dIKsMntB5t3IT2/ls9rUo1d5bSOIYPsHVg4sDaxFPb4qp03ckRfrBzWphr01WVbrv9z9ApbrjoLy8oMq1xR/vZN7H0Au1HEb/EX02PSbazxD2tEq6/oWshq0=
Received: from MW2PR1501MB1995.namprd15.prod.outlook.com (52.132.149.159) by
	MW2PR1501MB2091.namprd15.prod.outlook.com (52.132.150.31) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.841.17; Fri, 15 Jun 2018 06:51:41 +0000
Received: from MW2PR1501MB1995.namprd15.prod.outlook.com
	([fe80::9ca8:cb77:804d:d066]) by
	MW2PR1501MB1995.namprd15.prod.outlook.com
	([fe80::9ca8:cb77:804d:d066%5]) with mapi id 15.20.0841.021;
	Fri, 15 Jun 2018 06:51:41 +0000
From: Marc Pernia <marc.pernia@redaptiveinc.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: How do I apply a patch to a wic configuration file (beagle
	bone-yocto.wks)?
Thread-Index: AQHUBHVQdaXuwhjXDUW5vfPsMQy4vA==
Date: Fri, 15 Jun 2018 06:51:41 +0000
Message-ID: <941E6EEF-B2B6-4022-8FA1-C74869EE3673@contoso.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=marc.pernia@redaptiveinc.com; 
x-originating-ip: [2600:1700:3680:39f0:6c79:ad15:d6cc:9174]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MW2PR1501MB2091;
	7:Dt76P2VX+1HMQte3mmASmy3g/i3WF68lZdF5yOJ0Gz+iuHQu411bdwg75Od/1fzwc+gRbBzT4Xdwh3BOUWadRHX7snKx4cubUU9yS+Xwa12FkXQWrXIMfsVJeAJItsuZIxYTJ1430FNNvD6/aBkwm6B+p3R/EZO88TjAqlXB1knbMyBnSWdeMqqsUMPlgkXAJDIyvl7Fp/Hbj5ObIGgZzPTkQdhTOC0F+SMdnHGiwFBhF4CAlrY2yGPQVq7w9A/u;
	20:UU6THsSg+XHe5bTcENTVd10m/ISX9cKM+ltLWvGaFbWgOEEuQjvDeI6PmEh+jrKkBe316ZqP61bGsgAm6ZGuKg23p9JPWiDK9l1TN/ofcNSIvZOSqyrji0ABCA5QGhBllRzoA3Mrexz8r8Bz1FB7bwl5ww6pISaD6k+Ghgh34YY=
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 6e1f477e-40b3-4380-96bf-08d5d28c735f
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(711020)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:MW2PR1501MB2091; 
x-ms-traffictypediagnostic: MW2PR1501MB2091:
x-microsoft-antispam-prvs: <MW2PR1501MB20910A4E4AFC3B294CA1386C8F7C0@MW2PR1501MB2091.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(28532068793085)(21748063052155);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(3231254)(944501410)(52105095)(93006095)(93001095)(3002001)(10201501046)(149027)(150027)(6041310)(2016111802025)(20161123560045)(20161123562045)(20161123558120)(20161123564045)(6043046)(6072148)(201708071742011)(7699016);
	SRVR:MW2PR1501MB2091; BCL:0; PCL:0; RULEID:;
	SRVR:MW2PR1501MB2091; 
x-forefront-prvs: 0704670F76
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(366004)(39380400002)(39840400004)(396003)(376002)(346002)(189003)(199004)(6506007)(68736007)(3660700001)(476003)(2351001)(6436002)(8936002)(486006)(14454004)(2900100001)(99286004)(5660300001)(5250100002)(36756003)(86362001)(82746002)(186003)(8676002)(6486002)(33656002)(6916009)(1730700003)(81156014)(81166006)(44832011)(102836004)(2501003)(478600001)(3280700002)(54896002)(2906002)(46003)(316002)(25786009)(105586002)(7736002)(6512007)(9686003)(33896004)(106356001)(53936002)(97736004)(6116002)(6306002)(5640700003)(83716003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MW2PR1501MB2091;
	H:MW2PR1501MB1995.namprd15.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: redaptiveinc.com does not
	designate permitted sender hosts)
x-microsoft-antispam-message-info: tSs7tb4pnOuutx5egmoyLeDC4oCSJuyuSJYF0ahxcm+BpuHxgiWRGji3NfaY0Y2D2kAFomoztZivCi0c1v/hRW0mla9mSGLBJWmmjpa01my9I5z6txHY3fctkZveAsp5xZ+6IaPY7ViZObT69vWDaD0TNlewZ9Sw4agAm4t12PJhYV8H+wjBoAhjOa9UhxE2
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: redaptiveinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e1f477e-40b3-4380-96bf-08d5d28c735f
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2018 06:51:41.5001 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c9b2e971-e3f7-4532-8cbc-7d658551d558
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR1501MB2091
Subject: How do I apply a patch to a wic configuration file (beagle bone-yocto.wks)?
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
X-List-Received-Date: Fri, 15 Jun 2018 12:23:57 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_941E6EEFB2B640228FA1C74869EE3673contosocom_"

--_000_941E6EEFB2B640228FA1C74869EE3673contosocom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBuZWVkIHRvIHBhdGNoIG1ldGEteWFjdG8tYnNwL3dpYy9iZWFnbGVib25lLXlvY3RvLndrcy4g
IEkgaGF2ZSBhIHBhdGNoIHJlYWR5LCBidXQgaG93IGNhbiBJIGFwcGx5IHRoYXQgcGF0Y2ggZnJv
bSBhIHJlY2lwZSBpbiBteSBjdXN0b20gbGF5ZXIuICBBbGwgdGhlIHBhdGNoaW5nIEkgaGF2ZSBk
b25lIGluIHRoZSBwYXN0IGhhcyBiZWVuIGRvbmUgd2l0aCBhIGJiYXBwZW5kIGNyZWF0ZWQgZm9y
IGFuIGV4aXN0aW5nIGJiIGZpbGU7ICB0aGlzIHRpbWUgdGhlIHRhcmdldCBoYXMgbm8gYmIgZmls
ZSwgaXRzIGEgLndrcyBmaWxlLg0KDQpTTFItDQo=

--_000_941E6EEFB2B640228FA1C74869EE3673contosocom_
Content-Type: text/html; charset="utf-8"
Content-ID: <AA768BD6E1562A43973F45AD8222A77D@namprd15.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6bz0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6b2ZmaWNlIiB4
bWxuczp3PSJ1cm46c2NoZW1hcy1taWNyb3NvZnQtY29tOm9mZmljZTp3b3JkIiB4bWxuczptPSJo
dHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL29mZmljZS8yMDA0LzEyL29tbWwiIHhtbG5zPSJo
dHRwOi8vd3d3LnczLm9yZy9UUi9SRUMtaHRtbDQwIj4NCjxoZWFkPg0KPG1ldGEgaHR0cC1lcXVp
dj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9dXRmLTgiPg0KPG1l
dGEgbmFtZT0iR2VuZXJhdG9yIiBjb250ZW50PSJNaWNyb3NvZnQgV29yZCAxNSAoZmlsdGVyZWQg
bWVkaXVtKSI+DQo8c3R5bGU+PCEtLQ0KLyogRm9udCBEZWZpbml0aW9ucyAqLw0KQGZvbnQtZmFj
ZQ0KCXtmb250LWZhbWlseToiQ2FtYnJpYSBNYXRoIjsNCglwYW5vc2UtMToyIDQgNSAzIDUgNCA2
IDMgMiA0O30NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6Q2FsaWJyaTsNCglwYW5vc2UtMToy
IDE1IDUgMiAyIDIgNCAzIDIgNDt9DQovKiBTdHlsZSBEZWZpbml0aW9ucyAqLw0KcC5Nc29Ob3Jt
YWwsIGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0KCXttYXJnaW46MGluOw0KCW1hcmdpbi1i
b3R0b206LjAwMDFwdDsNCglmb250LXNpemU6MTIuMHB0Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJp
IixzYW5zLXNlcmlmO30NCmE6bGluaywgc3Bhbi5Nc29IeXBlcmxpbmsNCgl7bXNvLXN0eWxlLXBy
aW9yaXR5Ojk5Ow0KCWNvbG9yOiMwNTYzQzE7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9
DQphOnZpc2l0ZWQsIHNwYW4uTXNvSHlwZXJsaW5rRm9sbG93ZWQNCgl7bXNvLXN0eWxlLXByaW9y
aXR5Ojk5Ow0KCWNvbG9yOiM5NTRGNzI7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQpz
cGFuLkVtYWlsU3R5bGUxNw0KCXttc28tc3R5bGUtdHlwZTpwZXJzb25hbC1jb21wb3NlOw0KCWZv
bnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmOw0KCWNvbG9yOndpbmRvd3RleHQ7fQ0KLk1z
b0NocERlZmF1bHQNCgl7bXNvLXN0eWxlLXR5cGU6ZXhwb3J0LW9ubHk7DQoJZm9udC1mYW1pbHk6
IkNhbGlicmkiLHNhbnMtc2VyaWY7fQ0KQHBhZ2UgV29yZFNlY3Rpb24xDQoJe3NpemU6OC41aW4g
MTEuMGluOw0KCW1hcmdpbjoxLjBpbiAxLjBpbiAxLjBpbiAxLjBpbjt9DQpkaXYuV29yZFNlY3Rp
b24xDQoJe3BhZ2U6V29yZFNlY3Rpb24xO30NCi0tPjwvc3R5bGU+DQo8L2hlYWQ+DQo8Ym9keSBs
YW5nPSJFTi1VUyIgbGluaz0iIzA1NjNDMSIgdmxpbms9IiM5NTRGNzIiPg0KPGRpdiBjbGFzcz0i
V29yZFNlY3Rpb24xIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNp
emU6MTEuMHB0Ij5JIG5lZWQgdG8gcGF0Y2ggbWV0YS15YWN0by1ic3Avd2ljL2JlYWdsZWJvbmUt
eW9jdG8ud2tzLiZuYnNwOyBJIGhhdmUgYSBwYXRjaCByZWFkeSwgYnV0IGhvdyBjYW4gSSBhcHBs
eSB0aGF0IHBhdGNoIGZyb20gYSByZWNpcGUgaW4gbXkgY3VzdG9tIGxheWVyLiZuYnNwOyBBbGwg
dGhlIHBhdGNoaW5nIEkgaGF2ZSBkb25lIGluIHRoZSBwYXN0IGhhcyBiZWVuIGRvbmUgd2l0aA0K
IGEgYmJhcHBlbmQgY3JlYXRlZCBmb3IgYW4gZXhpc3RpbmcgYmIgZmlsZTsmbmJzcDsgdGhpcyB0
aW1lIHRoZSB0YXJnZXQgaGFzIG5vIGJiIGZpbGUsIGl0cyBhIC53a3MgZmlsZS48bzpwPjwvbzpw
Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXpl
OjExLjBwdCI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQiPlNMUi08bzpwPjwvbzpwPjwvc3Bhbj48
L3A+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_941E6EEFB2B640228FA1C74869EE3673contosocom_--
