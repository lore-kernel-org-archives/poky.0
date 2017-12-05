Return-Path: <AMardegan@luxoft.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01538E00B5F; Tue,  5 Dec 2017 08:57:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [109.166.244.22 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from ORO-EDGE-02.luxoft.com (oro-edge-02.luxoft.com [109.166.244.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D5C9E00AD7
	for <poky@yoctoproject.org>; Tue,  5 Dec 2017 08:57:03 -0800 (PST)
Received: from ORO-HUBT-03.luxoft.com (172.30.115.38) by
	oro-edge-02.luxoft.com (172.30.19.22) with Microsoft SMTP Server (TLS)
	id 14.3.319.2; Tue, 5 Dec 2017 18:56:55 +0200
Received: from ORO-MBOX-05.luxoft.com ([fe80::1137:8dc2:bce5:c3fc]) by
	ORO-HUBT-03.luxoft.com ([::1]) with mapi id 14.03.0319.002;
	Tue, 5 Dec 2017 18:56:56 +0200
From: "Mardegan, Alberto" <AMardegan@luxoft.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: Error when running testimage
Thread-Index: AQHTbeoOM3kBTV0gREG7e0aZ3feSkA==
Date: Tue, 5 Dec 2017 16:56:55 +0000
Message-ID: <52d725e1-221d-43c0-5a81-42100be4f7cd@luxoft.com>
Accept-Language: it-IT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.160.192]
MIME-Version: 1.0
Subject: Error when running testimage
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
X-List-Received-Date: Tue, 05 Dec 2017 16:57:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <0BD8BF4219741948A5CCA5D55C9A59A5@luxoft.com>
Content-Transfer-Encoding: base64

SGkgYWxsIQ0KICBJJ20gZ2V0dGluZyB0aGlzIGVycm9yIHdoaWxlIHJ1bm5pbmcgYml0YmFrZSAt
YyB0ZXN0aW1hZ2UgPG15aW1hZ2U+Og0KDQo9PT09PT09PT09PT09PT09PT09PT0NCk9FUnVudGlt
ZVRlc3RDb250ZXh0RXhlY3V0b3IuZ2V0Q29udHJvbGxlck1vZHVsZSh0YXJnZXRfdHlwZSwNCnRh
cmdldF9tb2R1bGVzX3BhdGgpDQogKioqIDAxMTI6ICAgICAgICAgICAgICAgIHRhcmdldCA9IGNv
bnRyb2xsZXIobG9nZ2VyLCB0YXJnZXRfaXAsDQpzZXJ2ZXJfaXAsICoqa3dhcmdzKQ0KICAgICAw
MTEzOiAgICAgICAgICAgIGV4Y2VwdCBJbXBvcnRFcnJvciBhcyBlOg0KICAgICAwMTE0OiAgICAg
ICAgICAgICAgICByYWlzZSBUeXBlRXJyb3IoIkZhaWxlZCB0byBpbXBvcnQgJXMgZnJvbQ0KYXZh
aWxhYmxlIGNvbnRyb2xsZXIgbW9kdWxlcyIgJSB0YXJnZXRfdHlwZSkNCiAgICAgMDExNToNCiAg
ICAgMDExNjogICAgICAgIHJldHVybiB0YXJnZXQNCkV4Y2VwdGlvbjogVHlwZUVycm9yOiBfX2lu
aXRfXygpIGdvdCBhbiB1bmV4cGVjdGVkIGtleXdvcmQgYXJndW1lbnQNCidtYWNoaW5lJw0KPT09
PT09PT09PT09PT09PT09PT09DQoNCkZ1bGwgbG9ncyBoZXJlOiBodHRwOi8vcGFzdGUudWJ1bnR1
LmNvbS8yNjExOTYzMS8NCg0KQW55IGlkZWFzIG9uIHdoYXQncyBnb2luZyB3cm9uZz8NCg0KVElB
LA0KICBBbGJlcnRvDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQoNClRoaXMg
ZS1tYWlsIGFuZCBhbnkgYXR0YWNobWVudChzKSBhcmUgaW50ZW5kZWQgb25seSBmb3IgdGhlIHJl
Y2lwaWVudChzKSBuYW1lZCBhYm92ZSBhbmQgb3RoZXJzIHdobyBoYXZlIGJlZW4gc3BlY2lmaWNh
bGx5IGF1dGhvcml6ZWQgdG8gcmVjZWl2ZSB0aGVtLiBUaGV5IG1heSBjb250YWluIGNvbmZpZGVu
dGlhbCBpbmZvcm1hdGlvbi4gSWYgeW91IGFyZSBub3QgdGhlIGludGVuZGVkIHJlY2lwaWVudCwg
cGxlYXNlIGRvIG5vdCByZWFkIHRoaXMgZW1haWwgb3IgaXRzIGF0dGFjaG1lbnQocykuIEZ1cnRo
ZXJtb3JlLCB5b3UgYXJlIGhlcmVieSBub3RpZmllZCB0aGF0IGFueSBkaXNzZW1pbmF0aW9uLCBk
aXN0cmlidXRpb24gb3IgY29weWluZyBvZiB0aGlzIGUtbWFpbCBhbmQgYW55IGF0dGFjaG1lbnQo
cykgaXMgc3RyaWN0bHkgcHJvaGliaXRlZC4gSWYgeW91IGhhdmUgcmVjZWl2ZWQgdGhpcyBlLW1h
aWwgaW4gZXJyb3IsIHBsZWFzZSBpbW1lZGlhdGVseSBub3RpZnkgdGhlIHNlbmRlciBieSByZXBs
eWluZyB0byB0aGlzIGUtbWFpbCBhbmQgdGhlbiBkZWxldGUgdGhpcyBlLW1haWwgYW5kIGFueSBh
dHRhY2htZW50KHMpIG9yIGNvcGllcyB0aGVyZW9mIGZyb20geW91ciBzeXN0ZW0uIFRoYW5rIHlv
dS4NCg==

