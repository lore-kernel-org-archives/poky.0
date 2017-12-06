Return-Path: <AMardegan@luxoft.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70115E00CE8; Wed,  6 Dec 2017 06:37:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [109.166.244.23 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from ORO-EDGE-03.luxoft.com (oro-edge-03.luxoft.com [109.166.244.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3E7BE00B5F
	for <poky@yoctoproject.org>; Wed,  6 Dec 2017 06:37:22 -0800 (PST)
Received: from ORO-HUBT-02.luxoft.com (172.30.115.36) by
	oro-edge-03.luxoft.com (172.30.19.23) with Microsoft SMTP Server (TLS)
	id 14.3.319.2; Wed, 6 Dec 2017 16:37:17 +0200
Received: from ORO-MBOX-05.luxoft.com ([fe80::1137:8dc2:bce5:c3fc]) by
	ORO-HUBT-02.luxoft.com ([::1]) with mapi id 14.03.0319.002;
	Wed, 6 Dec 2017 16:37:20 +0200
From: "Mardegan, Alberto" <AMardegan@luxoft.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky] Error when running testimage
Thread-Index: AQHTbeoOM3kBTV0gREG7e0aZ3feSkKM05EuAgAFdyAA=
Date: Wed, 6 Dec 2017 14:37:17 +0000
Message-ID: <858700ad-c4e3-782c-7888-00ff7168db0f@luxoft.com>
References: <52d725e1-221d-43c0-5a81-42100be4f7cd@luxoft.com>
	<1512495923.19417.68.camel@linuxfoundation.org>
In-Reply-To: <1512495923.19417.68.camel@linuxfoundation.org>
Accept-Language: it-IT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.127.21]
MIME-Version: 1.0
Subject: Re: Error when running testimage
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
X-List-Received-Date: Wed, 06 Dec 2017 14:37:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <5AA502DA72B9FA4C83BB93098C85D7B4@luxoft.com>
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDA1LzEyLzIwMTcgMjA6NDUsIFJpY2hhcmQgUHVyZGllIHdyb3RlOg0KPiBXaGlj
aCBNQUNISU5FIGlzIHRoaXMgZm9yPyBJdCBzb3VuZHMgYXMgaWYgdGhlIHN5c3RlbSBoYXMgbm8g
aWRlYSBob3cNCj4gdG8gY29ubmVjdCB0byB0aGUgbWFjaGluZSBiZWluZyB0ZXN0ZWQgKGUuZy4g
aXQgZG9lc24ndCBrbm93IGlmIHFlbXUNCj4gY2FuIGJlIHVzZWQgb3Igd2hhdCB0aGUgcWVtdSBw
YXJhbWV0ZXJzIG1pZ2h0IGJlLCBvciBpZiBpdCBuZWVkcyB0bw0KPiBjb25uZWN0IHJlbW90ZWx5
IHRvIGEgbWFjaGluZSkuDQo+DQo+IFRoZSBlcnJvciBtZXNzYWdlL2ZhaWx1cmUgbW9kZSBjZXJ0
YWlubHkgbmVlZHMgaW1wcm92aW5nIGlmIHRoYXQgaXMgdGhlDQo+IGlzc3VlLi4uDQoNCkkgaGFk
IHRoZSBmb2xsb3dpbmcgbGluZSBsZWZ0IGluIGNvbmYvbG9jYWwuY29uZiBmcm9tIHNvbWUgcHJl
dmlvdXMNCmV4cGVyaW1lbnRzOg0KDQogIFRFU1RfVEFSR0VUID0gIlN5c3RlbWRib290VGFyZ2V0
Ig0KDQpSZW1vdmluZyB0aGF0IGxpbmUgZml4ZXMgdGhlIGlzc3VlLiBNeSBtaXN0YWtlISA6LSkg
U3RpbGwsIGl0IG1pZ2h0IGJlIGENCmdvb2QgaWRlYSB0byByZXBvcnQgYSBtb3JlIGluZm9ybWF0
aXZlIGVycm9yIG1lc3NhZ2UgaW4gdGhhdCBjYXNlLg0KDQpDaWFvLA0KICBBbGJlcnRvDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQoNClRoaXMgZS1tYWlsIGFuZCBhbnkgYXR0
YWNobWVudChzKSBhcmUgaW50ZW5kZWQgb25seSBmb3IgdGhlIHJlY2lwaWVudChzKSBuYW1lZCBh
Ym92ZSBhbmQgb3RoZXJzIHdobyBoYXZlIGJlZW4gc3BlY2lmaWNhbGx5IGF1dGhvcml6ZWQgdG8g
cmVjZWl2ZSB0aGVtLiBUaGV5IG1heSBjb250YWluIGNvbmZpZGVudGlhbCBpbmZvcm1hdGlvbi4g
SWYgeW91IGFyZSBub3QgdGhlIGludGVuZGVkIHJlY2lwaWVudCwgcGxlYXNlIGRvIG5vdCByZWFk
IHRoaXMgZW1haWwgb3IgaXRzIGF0dGFjaG1lbnQocykuIEZ1cnRoZXJtb3JlLCB5b3UgYXJlIGhl
cmVieSBub3RpZmllZCB0aGF0IGFueSBkaXNzZW1pbmF0aW9uLCBkaXN0cmlidXRpb24gb3IgY29w
eWluZyBvZiB0aGlzIGUtbWFpbCBhbmQgYW55IGF0dGFjaG1lbnQocykgaXMgc3RyaWN0bHkgcHJv
aGliaXRlZC4gSWYgeW91IGhhdmUgcmVjZWl2ZWQgdGhpcyBlLW1haWwgaW4gZXJyb3IsIHBsZWFz
ZSBpbW1lZGlhdGVseSBub3RpZnkgdGhlIHNlbmRlciBieSByZXBseWluZyB0byB0aGlzIGUtbWFp
bCBhbmQgdGhlbiBkZWxldGUgdGhpcyBlLW1haWwgYW5kIGFueSBhdHRhY2htZW50KHMpIG9yIGNv
cGllcyB0aGVyZW9mIGZyb20geW91ciBzeXN0ZW0uIFRoYW5rIHlvdS4NCg==

