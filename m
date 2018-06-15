Return-Path: <marc.pernia@redaptiveinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2198E00D4A; Fri, 15 Jun 2018 18:18:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.57 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 66429 seconds by postgrey-1.32 at yocto-www;
	Fri, 15 Jun 2018 18:18:54 PDT
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0057.outbound.protection.outlook.com [104.47.41.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D978E00791
	for <poky@yoctoproject.org>; Fri, 15 Jun 2018 18:18:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=redaptiveinc.onmicrosoft.com; s=selector1-redaptiveinc-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=jR9uvCIGwAICcG6OK+d2+QEoljp410NjZEKNrfiNOgc=;
	b=o8/0H2BW5roppT/FYUscUe0fMvZhtQNCqL6xeaCEnthXqg/dKzg7ZU009/cNshNYH0uuOjnipVjAnfvveCfDgMNeRdy87u3sADQPkWM4I9e7XVwcEUZcLYLH2nHfoU8v8mnCd9/PIxlCmE2Nrzs9ENMWWWbWnHMOyt7RbNzSgLM=
Received: from MW2PR1501MB1995.namprd15.prod.outlook.com (52.132.149.159) by
	MW2PR1501MB2009.namprd15.prod.outlook.com (52.132.149.161) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.841.17; Fri, 15 Jun 2018 22:47:29 +0000
Received: from MW2PR1501MB1995.namprd15.prod.outlook.com
	([fe80::9ca8:cb77:804d:d066]) by
	MW2PR1501MB1995.namprd15.prod.outlook.com
	([fe80::9ca8:cb77:804d:d066%5]) with mapi id 15.20.0841.021;
	Fri, 15 Jun 2018 22:47:29 +0000
From: Marc Pernia <marc.pernia@redaptiveinc.com>
To: Khem Raj <raj.khem@gmail.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Thread-Topic: [poky] How do I apply a patch to a wic configuration file
	(beagle bone-yocto.wks)?
Thread-Index: AQHUBHVQdaXuwhjXDUW5vfPsMQy4vKRh2EEA//+fJwA=
Date: Fri, 15 Jun 2018 22:47:29 +0000
Message-ID: <2C921F74-76FD-47E7-BB5B-5C39A59B22F8@redaptiveinc.com>
References: <941E6EEF-B2B6-4022-8FA1-C74869EE3673@contoso.com>
	<5684131f-fc72-c11e-ddf4-98e1c90e938e@gmail.com>
In-Reply-To: <5684131f-fc72-c11e-ddf4-98e1c90e938e@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=marc.pernia@redaptiveinc.com; 
x-originating-ip: [50.76.44.130]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MW2PR1501MB2009;
	7:MXZcdOZlt2Ipk115k1UYAAfLXLnsdGRZzbespvh4HjCpkxMVA2+yE7785uNDHeL2MObvnsbCUCmF2LYvOUQpSApwljk7jndBzOmrwQ7KX1eMoRhxQzdHXDATOfn4JI8yAbRyml1Ul3CUfAvbfJ3YuzYOn0jTOOyeYmWtO5rgphxWZhD97xaL8Rwjgkuim0gdEh5K0Cg3IpanOrTLpnDSEvLmxg36cyDHwfcbXO4eTVqr9oaVni4LQI1XqWqORiwd;
	20:pLhlHCEBnpEywizO7EynzXrkrv5mXqwqMyUjcONaSPx7aoy6tvMlAecDVc87X/3GkDzJjkaku+FWhhaWmeTXHAjtx02P+tCkEhOYlHSCHFyMnrlzIghmY2ShtVjNd+iUb1yxyFCazjNp11Isai1WWqwUfiS16JpaE9zpW0yFW00=
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 71c790f8-282b-467e-0011-08d5d311f98a
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(711020)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:MW2PR1501MB2009; 
x-ms-traffictypediagnostic: MW2PR1501MB2009:
x-microsoft-antispam-prvs: <MW2PR1501MB2009AC594D497AE87DF7B88F8F7C0@MW2PR1501MB2009.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(85827821059158);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(93006095)(93001095)(3231254)(944501410)(52105095)(10201501046)(3002001)(149027)(150027)(6041310)(20161123562045)(20161123564045)(20161123558120)(20161123560045)(2016111802025)(6072148)(6043046)(201708071742011)(7699016);
	SRVR:MW2PR1501MB2009; BCL:0; PCL:0; RULEID:;
	SRVR:MW2PR1501MB2009; 
x-forefront-prvs: 0704670F76
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(396003)(39380400002)(39840400004)(366004)(346002)(376002)(189003)(199004)(53546011)(186003)(2616005)(5660300001)(11346002)(6512007)(3660700001)(33656002)(476003)(3280700002)(6436002)(486006)(76176011)(6246003)(2906002)(6486002)(53936002)(14454004)(6506007)(82746002)(229853002)(102836004)(44832011)(97736004)(83716003)(316002)(25786009)(26005)(5250100002)(8676002)(86362001)(36756003)(81166006)(2900100001)(110136005)(7736002)(99286004)(8936002)(446003)(105586002)(305945005)(81156014)(39060400002)(478600001)(2501003)(68736007)(3846002)(66066001)(106356001)(6116002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MW2PR1501MB2009;
	H:MW2PR1501MB1995.namprd15.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: redaptiveinc.com does not
	designate permitted sender hosts)
x-microsoft-antispam-message-info: 7roMUJqMbHNNvxlhjPH4eGXTwAsj0HVoFRJdor3SLTnbuaYwfzQ2Fb6Z+ix2F9zMo9/z3kdLbyQVhWleMthEWvTg2VzjdRkxxtlACDc+Z02PFnegOR6jUQ2PQW7af7DWV9Uj1Q5UWBsG0jEbnMbSyiCU+rsUgkUSwEmv1S8hiN4o6y4UoL+51E1LJUtBz+Zu
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: redaptiveinc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71c790f8-282b-467e-0011-08d5d311f98a
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2018 22:47:29.5847 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c9b2e971-e3f7-4532-8cbc-7d658551d558
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR1501MB2009
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
X-List-Received-Date: Sat, 16 Jun 2018 01:18:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <A7F173AD07C43C43ABBA6FF981D20A20@namprd15.prod.outlook.com>
Content-Transfer-Encoding: base64

SGV5IEtoZW0sIHRoYW5rcyBmb3IgeW91ciBwcm9tcHQgcmVzcG9uc2UhDQoNCkhvdyB3b3VsZCBJ
IGdvIGFib3V0IGRlZmluaW5nIG15IG93biBraWNrc3RhcnQgZmlsZT8gIE91ciBib2FyZCB3YXMg
ZGVzaWduZWQgYmFzZWQgb24gdGhlIEJCRyByZWZlcmVuY2UgZGVzaWduLCBzbyB3ZSB1c2UgdGhl
IGJlYWdsZWJvbmUteW9jdG8gYnNwIGxheWVyLCBhbGFzLCB3ZSBkb27igJl0IG1hbmFnZSBhIG1h
Y2hpbmUgY29uZmlndXJhdGlvbiBpbiBvdXIgbGF5ZXIuICANCklzIHRoZXJlIGFub3RoZXIgd2F5
IHRvIGRlZmluZSBXS1NfRklMRSBmcm9tIG91ciBsYXllcj8gLi4uaW4gcGxhY2Ugb2YgdGhlIFdL
U19GSUxFIGRlZmluZWQgaW4gdGhlIGJzcCBsYXllciB0aGF0IGlzbuKAmXQgb3duZWQgYnkgdXM/
IA0KDQpTTFItDQoNCu+7v09uIDYvMTUvMTgsIDI6MzQgUE0sICJLaGVtIFJhaiIgPHJhai5raGVt
QGdtYWlsLmNvbT4gd3JvdGU6DQoNCiAgICBIaSBNYXJjDQogICAgDQogICAgT24gNi8xNC8xOCAx
MTo1MSBQTSwgTWFyYyBQZXJuaWEgd3JvdGU6DQogICAgPiBJIG5lZWQgdG8gcGF0Y2ggbWV0YS15
YWN0by1ic3Avd2ljL2JlYWdsZWJvbmUteW9jdG8ud2tzLiAgSSBoYXZlIGEgcGF0Y2gNCiAgICA+
IHJlYWR5LCBidXQgaG93IGNhbiBJIGFwcGx5IHRoYXQgcGF0Y2ggZnJvbSBhIHJlY2lwZSBpbiBt
eSBjdXN0b20gbGF5ZXIuIA0KICAgID4gQWxsIHRoZSBwYXRjaGluZyBJIGhhdmUgZG9uZSBpbiB0
aGUgcGFzdCBoYXMgYmVlbiBkb25lIHdpdGggYSBiYmFwcGVuZA0KICAgID4gY3JlYXRlZCBmb3Ig
YW4gZXhpc3RpbmcgYmIgZmlsZTsgIHRoaXMgdGltZSB0aGUgdGFyZ2V0IGhhcyBubyBiYiBmaWxl
LA0KICAgID4gaXRzIGEgLndrcyBmaWxlLg0KICAgID4gDQogICAgDQogICAgWW91IGNhbiBkZWZp
bmUgYSBuZXcgd2tzIGZpbGUgaW4geW91ciBsYXllciBzaW5jZSB0aGUgZGVmYXVsdCB5b3UgYXJl
DQogICAgcmVmZXJyaW5nIHRvIGFib3ZlIGlzIGEgcmVmZXJlbmNlLiBBbmQgaWYgeW91ciBjaGFu
Z2VzIGFyZSBnb29kIGZvciB0aGlzDQogICAgcmVmZXJlbmNlIHRoZW4gcGxlYXNlIHBvc3QgdGhl
c2UgbW9kaWZpY2F0aW9ucyB0byB5b2N0byBtYWlsaW5nIGxpc3QuDQogICAgDQogICAgT3RoZXJ3
aXNlLCBpZiB0aGUgd2tzIGZpbGUgaXMgc3BlY2lmaWMgdG8gaW1hZ2UgZm9ybWF0IHlvdSB3YW50
IGZvciB5b3VyDQogICAgZGV2aWNlcyB0aGVuIGtlZXBpbmcgdGhhdCB0byB5b3VyIGxheWVyIHdv
dWxkIGJlIHJpZ2h0IHRoaW5nIHRvIGRvLg0KICAgIA0KICAgID4gIA0KICAgID4gDQogICAgPiBT
TFItDQogICAgPiANCiAgICA+IA0KICAgIA0KICAgIA0KICAgIA0KDQo=

