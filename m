Return-Path: <brett.grandbois@opengear.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B26EE00CB9; Fri,  8 Feb 2019 06:30:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.77.57 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 41784 seconds by postgrey-1.32 at yocto-www;
	Fri, 08 Feb 2019 06:30:10 PST
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-eopbgr770057.outbound.protection.outlook.com [40.107.77.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3453E00C93
	for <poky@yoctoproject.org>; Fri,  8 Feb 2019 06:30:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=opengear.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=d/mAva9RrlHAV2ZfBih6IsFF1atlKKZbVzbm/OPYp3Q=;
	b=vwNt0/YVVTCy9FZHrdzEjAlTXpGImfPyrD8oIOj49C9sC7L0PzXS8M9Ud3EjOeqBXKxHzwG3zZLnw84PbFnTuKPS2Lc54QkFUNu3zAFdZIlYbeV7EmJ0NWdQnMIBVyUaWLDRQAHUvsB1k6yPW3Okiyad0V+kJnLgZLf8Y7x4jtA=
Received: from MW2PR1501MB2059.namprd15.prod.outlook.com (52.132.150.23) by
	MW2PR1501MB1996.namprd15.prod.outlook.com (52.132.149.160) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1580.22; Fri, 8 Feb 2019 01:19:41 +0000
Received: from MW2PR1501MB2059.namprd15.prod.outlook.com
	([fe80::580d:3cb2:b0dc:8f6f]) by
	MW2PR1501MB2059.namprd15.prod.outlook.com
	([fe80::580d:3cb2:b0dc:8f6f%4]) with mapi id 15.20.1601.016;
	Fri, 8 Feb 2019 01:19:41 +0000
From: "Grandbois, Brett" <brett.grandbois@opengear.com>
To: akuster808 <akuster808@gmail.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Thread-Topic: [poky] [PATCH] ruby: remove CVE-2018-1000073.patch as already
	fixed
Thread-Index: AQHUvnaygqmYLv76p0uCq/mhP7P1JqXVFm8AgAAFUQA=
Date: Fri, 8 Feb 2019 01:19:40 +0000
Message-ID: <e8c17f54-c147-1fa3-c2cd-e66af6d40f93@opengear.com>
References: <20190206234956.23897-1-brett.grandbois@opengear.com>
	<3b933464-f797-5f11-391e-59a365265752@gmail.com>
In-Reply-To: <3b933464-f797-5f11-391e-59a365265752@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SG2PR06CA0225.apcprd06.prod.outlook.com
	(2603:1096:4:68::33) To MW2PR1501MB2059.namprd15.prod.outlook.com
	(2603:10b6:302:c::23)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=brett.grandbois@opengear.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [60.241.24.90]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MW2PR1501MB1996;
	6:P7aAf0JZavxJ0FkB2nZbvSk216cO5RT6aivBGhPqlWUKEKMGMzFIlhJZK9oz0eC0ek3wTbF1X2aGb0L9LCHBU/CcM8yaPpqt8PAruwsXk+lcJjupBxEgzCqrQ66Qy2bU3sBGmMFRzs3JlglrJVEJG5ZWYjL+xsXtkVRU6kupmEwZ7ZHvFjY8p8ngO4gztnozK0h0ZtVXLrNXdbnrEIulZ/T6JTcWvwS8s9y3JdqDS70Je0F+AFX030wBjjf2Zsdzimmi5Pb1fQJOmtgw/AtLXO216IYEsHMxVM2129aSdekwvUwvI8c2hTbWksQM+yy6op+OL7CdlkhGKHC5rn7u2PqqV8ZBowYdPo5kf5W8Ldb1GXLT4mBwP4VhUDxyxofrZ2mN1chixoCouJNorr6nN0xhtcO6W3DarU7vlDgeV/nESuc4C8zIAiNYsXrP8KIkKRwLX08LSY46nphMQmzWBA==;
	5:GMClSAh+7QZ5P+43VHZf3+d7c5W7+6AowL0IqOEBYccJuNoFD0h3+3ZaIDzSMsmteM5UjWLsjpCXTl47V4j2dfY3zEsmBeQfO/gCssoNAJQaGW+pL+8CfN8sWgDIcqNpVfZkWPA++X0FZsDE0RihdLEVMyKjk+WN3pEz1Vfl59nTmFpQFyFgR2qFUvnKY43/adwft0NjASl6nzZ5izP5tA==;
	7:47orv/SZMkENshLb0NQFoeA2n9ncFR0/OBPiVmCOCH49MQjPv2kH1BCVRUmsrqvvuudDqOOlh+p6Z9cLjwNKT6SFUl5JQgZbt6LbxYnl4LsWQ4XFDBTdb0zhRAjCdmw9E5I9ZAugrzJ39cNaJuJ0tA==
x-ms-office365-filtering-correlation-id: f715c953-5c05-4119-0f58-08d68d637f84
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600110)(711020)(4605077)(2017052603328)(7153060)(7193020);
	SRVR:MW2PR1501MB1996; 
X-MS-TrafficTypeDiagnostic: MW2PR1501MB1996:|MW2PR1501MB1996:|MW2PR1501MB1996:
x-microsoft-antispam-prvs: <MW2PR1501MB19966906162FF76FCFB428D782690@MW2PR1501MB1996.namprd15.prod.outlook.com>
x-forefront-prvs: 094213BFEA
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(376002)(136003)(39830400003)(366004)(346002)(396003)(199004)(189003)(51914003)(6246003)(6512007)(2906002)(6116002)(14454004)(486006)(3846002)(2616005)(476003)(102836004)(26005)(53936002)(25786009)(76176011)(186003)(52116002)(478600001)(11346002)(446003)(36756003)(2501003)(99286004)(6506007)(8676002)(110136005)(229853002)(386003)(31696002)(66066001)(97736004)(316002)(86362001)(31686004)(105586002)(71200400001)(71190400001)(53546011)(8936002)(106356001)(81166006)(305945005)(7736002)(81156014)(6436002)(6486002)(68736007)(14444005)(256004);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MW2PR1501MB1996;
	H:MW2PR1501MB2059.namprd15.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: opengear.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: NAvtd5WPxjgmPb0yzVr+SLMtacQXagox0DKQ73R3LKM9adK59Xhg2vOGtiky7Ur9AjPu0gtrY5fK8k0kYQT51m3AXkWT2VkgJ/JLSrLyigmzE7Q4Z+uP4j133611UnSJaXk7D7UbYMUjVvpwKmeEfaCLYLDEsq9c74mm/eUACsknwBikdwehlcRoKQE4cNC2UJ3PV8u9UKCNA2sVM4XNXg3dZ1HPLK6jaVp13Poq5x8M6l69eg0+7eT45UiJ7xXav1F35Boc1Getbrz9Rr4JusI15NtgMkqZvQnoUK6mkpP2HnJ+eHL3Zt8oqRaQJUH3mJLcEZTfqV3qvNImjO6TIEyj1Ey93IDb1T8pEJ8g+Dve7hWV2UxNFl0OTbHgkuDc+b50gRtEWUjl1oMZdfv0Sj3YtgtFnl/p5zZOzUWi97E=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f715c953-5c05-4119-0f58-08d68d637f84
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Feb 2019 01:19:38.7064 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-id: a6251c26-d21f-4164-a225-1f4eaebf5f9a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2PR1501MB1996
X-Microsoft-Exchange-Diagnostics: 1; MW2PR1501MB1996;
	23:GQb0xsecgM+2NlHQY55NY5RYdeOLCwgtUfrYDIN9d1Ojx0mdGOFoHmh8TF65jOtr/TbKH2yqiab75Yjltjp1ANgQ1h7IOPn0/846HOjOxO93CrYM9EIvCnfBzMZwKvFr2J6XSWhVYzsDcB2+hgIq3g==;
	23:fu7dsViRW8sCKyLUe0Jv+zkm8BDeFW2GM2OZGGj9MWUd5PJM1gho/PvmdHq9xv8unX3cmXvLbs+xB9wVUge1DvrnKcHV0gN5hlnhkdTbA1y4KO/iQOnzP6g3DvqW6SlNyQF/oZWQqpXMtlXZ1BUZ4g==
X-OriginatorOrg: opengear.com
Subject: Re: [PATCH] ruby: remove CVE-2018-1000073.patch as already fixed
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
X-List-Received-Date: Fri, 08 Feb 2019 14:30:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <45308902266F524CB3F46F688AEF980B@namprd15.prod.outlook.com>
Content-Transfer-Encoding: base64

VGhhbmtzIEFybWluLA0KDQpJIG1hZGUgYSBndWVzcyBhcyB0byB3aGVyZSB0aGlzIHNob3VsZCBn
bywgaG9waW5nIHNvbWVvbmUgd291bGQgcG9pbnQgbWUgDQppbiB0aGUgcmlnaHQgZGlyZWN0aW9u
LsKgIEknbGwgc3VibWl0IHRvIG9wZW5lbWJlZGRlZC1jb3JlLg0KDQpCcmV0dA0KDQpPbiA4LzIv
MTkgMTE6MDAgYW0sIGFrdXN0ZXI4MDggd3JvdGU6DQo+IEJyZXR0LA0KPg0KPiBUaGFua3MgZm9y
IHRoZSBwYXRjaC4gVGhpcyBjaGFuZ2UgZ29lcyBhZ2FpbnN0IHdoYXQgd2UgcmVmZXIgdG8gYXMN
Cj4gImNvcmUiIGFuZCB0aGVyZSBpcyBhIG1haWxpbmcgbGlzdCBmb3IgdGhlc2UgY2hhbmdlcy4N
Cj4NCj4gVGhlIGNvb2wgdGhpbmcgaXMgd2UgaGF2ZSBhIHN5c3RlbSB0aGF0IHRyaWVzIHRvIGFw
cGx5IGNoYW5nZXMgdG8gY29yZQ0KPiBhbmQgaWYgdGhlcmUgaXMgYW4gaXNzdWUsIGl0IHdpbGwg
ZW1haWwgYmFjayB3aGF0IGl0IHRoaW5rc8KgIHRoZSBpc3N1ZXMNCj4gYXJlLiBDYW4geW91IHJl
c2VuZCB0aGlzIHRvOg0KPiBvcGVuZW1iZWRkZWQtY29yZUBsaXN0cy5vcGVuZW1iZWRkZWQub3Jn
DQo+DQo+IHJlZ2FyZHMsDQo+IEFybWluDQo+DQo+DQo+IE9uIDIvNi8xOSAzOjUwIFBNLCBHcmFu
ZGJvaXMsIEJyZXR0IHdyb3RlOg0KPj4gcnVieWdlbXMgMi43LjYgd2hpY2ggaXMgaW4gcnVieSAy
LjUuMyBoYXMgdGhpcyBmaXggYW5kIGFzIGN1cnJlbnRseQ0KPj4gYXBwbGllZCBhbGwgZ2VtIGV4
dHJhY3Rpb24gZmFpbHMgYXMgdGhlIHJlYWxwYXRoIGNoZWNrIGlzIGRvbmUgYWdhaW5zdA0KPj4g
dGhlIGZ1bGwgcGF0aCBpbmNsdWRpbmcgdGhlIGZpbGUgdG8gYmUgZXh0cmFjdGVkIHdoaWNoIHdp
bGwgYWx3YXlzIGZhaWwNCj4+IGFzIHRoZSBmaWxlIGhhc250IGJlZW4gZXh0cmFjdGVkIHlldA0K
Pj4NCj4+IFNpZ25lZC1vZmYtYnk6IEJyZXR0IEdyYW5kYm9pcyA8YnJldHQuZ3JhbmRib2lzQG9w
ZW5nZWFyLmNvbT4NCj4+IC0tLQ0KPj4gICAuLi4vcnVieS9ydWJ5L0NWRS0yMDE4LTEwMDAwNzMu
cGF0Y2ggICAgICAgICAgfCAzNCAtLS0tLS0tLS0tLS0tLS0tLS0tDQo+PiAgIG1ldGEvcmVjaXBl
cy1kZXZ0b29scy9ydWJ5L3J1YnlfMi41LjMuYmIgICAgICB8ICAxIC0NCj4+ICAgMiBmaWxlcyBj
aGFuZ2VkLCAzNSBkZWxldGlvbnMoLSkNCj4+ICAgZGVsZXRlIG1vZGUgMTAwNjQ0IG1ldGEvcmVj
aXBlcy1kZXZ0b29scy9ydWJ5L3J1YnkvQ1ZFLTIwMTgtMTAwMDA3My5wYXRjaA0KPj4NCj4+IGRp
ZmYgLS1naXQgYS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvcnVieS9ydWJ5L0NWRS0yMDE4LTEwMDAw
NzMucGF0Y2ggYi9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvcnVieS9ydWJ5L0NWRS0yMDE4LTEwMDAw
NzMucGF0Y2gNCj4+IGRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NA0KPj4gaW5kZXggMjJmYTFiNWY0
ZC4uMDAwMDAwMDAwMA0KPj4gLS0tIGEvbWV0YS9yZWNpcGVzLWRldnRvb2xzL3J1YnkvcnVieS9D
VkUtMjAxOC0xMDAwMDczLnBhdGNoDQo+PiArKysgL2Rldi9udWxsDQo+PiBAQCAtMSwzNCArMCww
IEBADQo+PiAtRnJvbSAxYjkzMWZjMDNiODE5YjlhMDIxNGJlM2VhY2E4NDRlZjUzNDE3NWUyIE1v
biBTZXAgMTcgMDA6MDA6MDAgMjAwMQ0KPj4gLUZyb206IEpvbmF0aGFuIENsYXVkaXVzIDxqY2xh
dWRpdXNAbW96aWxsYS5jb20+DQo+PiAtRGF0ZTogV2VkLCA3IEZlYiAyMDE4IDIzOjU0OjUyIC0w
NTAwDQo+PiAtU3ViamVjdDogW1BBVENIXSBOb24td29ya2luZyBwYXRjaCBmb3IgZGVkdWNpbmcg
c3ltbGlua2VkIGJhc2UtZGlycw0KPj4gLQ0KPj4gLS0tLQ0KPj4gLUNWRTogQ1ZFLTIwMTgtMTAw
MDA3Mw0KPj4gLQ0KPj4gLUZpeGVkIGluIHJ1YnkgMi43LjYuDQo+PiAtDQo+PiAtVXBzdHJlYW0t
U3RhdHVzOiBCYWNrcG9ydCBbZ2l0aHViLmNvbS9ydWJ5Z2Vtcy9ydWJ5Z2Vtcy9jb21taXQvMWI5
MzFmYy4uLl0NCj4+IC0NCj4+IC1TaWduZWQtb2ZmLWJ5OiBKb2UgU2xhdGVyIDxqb2Uuc2xhdGVy
QHdpbmRyaXZlci5jb20+DQo+PiAtDQo+PiAtLS0tDQo+PiAtIGxpYi9ydWJ5Z2Vtcy9wYWNrYWdl
LnJiIHwgICAgMiArKw0KPj4gLSAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspDQo+PiAt
DQo+PiAtZGlmZiAtLWdpdCBhL2xpYi9ydWJ5Z2Vtcy9wYWNrYWdlLnJiIGIvbGliL3J1YnlnZW1z
L3BhY2thZ2UucmINCj4+IC1pbmRleCBkZWRlOTU5Li5jYjljNzRhIDEwMDY0NA0KPj4gLS0tLSBh
L2xpYi9ydWJ5Z2Vtcy9wYWNrYWdlLnJiDQo+PiAtKysrIGIvbGliL3J1YnlnZW1zL3BhY2thZ2Uu
cmINCj4+IC1AQCAtNDIxLDYgKzQyMSw4IEBAIEVPTQ0KPj4gLSAgICAgZGVzdGluYXRpb25fZGly
ID0gRmlsZS5leHBhbmRfcGF0aCBkZXN0aW5hdGlvbl9kaXINCj4+IC0NCj4+IC0gICAgIGRlc3Rp
bmF0aW9uID0gRmlsZS5qb2luIGRlc3RpbmF0aW9uX2RpciwgZmlsZW5hbWUNCj4+IC0rICAgIGRl
c3RpbmF0aW9uID0gRmlsZS5yZWFscGF0aCBkZXN0aW5hdGlvbiBpZg0KPj4gLSsgICAgICBGaWxl
LnJlc3BvbmRfdG8/IDpyZWFscGF0aA0KPj4gLSAgICAgZGVzdGluYXRpb24gPSBGaWxlLmV4cGFu
ZF9wYXRoIGRlc3RpbmF0aW9uDQo+PiAtDQo+PiAtICAgICByYWlzZSBHZW06OlBhY2thZ2U6OlBh
dGhFcnJvci5uZXcoZGVzdGluYXRpb24sIGRlc3RpbmF0aW9uX2RpcikgdW5sZXNzDQo+PiAtLS0N
Cj4+IC0xLjcuOS41DQo+PiAtDQo+PiBkaWZmIC0tZ2l0IGEvbWV0YS9yZWNpcGVzLWRldnRvb2xz
L3J1YnkvcnVieV8yLjUuMy5iYiBiL21ldGEvcmVjaXBlcy1kZXZ0b29scy9ydWJ5L3J1YnlfMi41
LjMuYmINCj4+IGluZGV4IGU5ZjA0NTM3ODguLjNmYjQyN2U5MGUgMTAwNjQ0DQo+PiAtLS0gYS9t
ZXRhL3JlY2lwZXMtZGV2dG9vbHMvcnVieS9ydWJ5XzIuNS4zLmJiDQo+PiArKysgYi9tZXRhL3Jl
Y2lwZXMtZGV2dG9vbHMvcnVieS9ydWJ5XzIuNS4zLmJiDQo+PiBAQCAtMyw3ICszLDYgQEAgcmVx
dWlyZSBydWJ5LmluYw0KPj4gICBTUkNfVVJJICs9ICIgXA0KPj4gICAgICAgICAgICAgIGZpbGU6
Ly9ydWJ5LUNWRS0yMDE3LTkyMjYucGF0Y2ggXA0KPj4gICAgICAgICAgICAgIGZpbGU6Ly9ydWJ5
LUNWRS0yMDE3LTkyMjgucGF0Y2ggXA0KPj4gLSAgICAgICAgICAgZmlsZTovL0NWRS0yMDE4LTEw
MDAwNzMucGF0Y2ggXA0KPj4gICAgICAgICAgICAgICINCj4+ICAgDQo+PiAgIFNSQ19VUklbbWQ1
c3VtXSA9ICIyMGM4NWI2Nzg0NmQ0OTYyMmVmM2IyNDIzMDgwM2ZlZiINCg==

