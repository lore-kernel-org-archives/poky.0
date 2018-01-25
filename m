Return-Path: <AMardegan@luxoft.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41B5AE00DC6; Thu, 25 Jan 2018 07:05:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [109.166.244.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from ORO-EDGE-01.luxoft.com (oro-edge-01.luxoft.com [109.166.244.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02E1CE00C45
	for <poky@yoctoproject.org>; Thu, 25 Jan 2018 07:05:45 -0800 (PST)
Received: from ORO-HUBT-01.luxoft.com (172.30.115.41) by
	oro-edge-01.luxoft.com (172.30.19.21) with Microsoft SMTP Server (TLS)
	id 14.3.319.2; Thu, 25 Jan 2018 17:05:41 +0200
Received: from ORO-MBOX-05.luxoft.com ([fe80::1137:8dc2:bce5:c3fc]) by
	ORO-HUBT-01.luxoft.com ([::1]) with mapi id 14.03.0319.002;
	Thu, 25 Jan 2018 17:05:43 +0200
From: "Mardegan, Alberto" <AMardegan@luxoft.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky] Getting python-dbusmock into the SDK
Thread-Index: AQHTlReatVT580XHy0qPLYUcO3CzlqOC5heAgAFe+QCAABAyAIAAOvaA
Date: Thu, 25 Jan 2018 15:05:42 +0000
Message-ID: <2b452f27-7df9-34e3-a01b-80151312dc8f@luxoft.com>
References: <af197fb8-a676-bbfd-91fc-183a2aed77b9@luxoft.com>
	<CAJTo0LZfHC8SOOqPTDMyVh1=wDiVxkD9toy-TfgEw1daEpzwog@mail.gmail.com>
	<8bf1b928-c37a-0590-5ead-e240b7d64eab@luxoft.com>
	<1516880080.24502.181.camel@linuxfoundation.org>
In-Reply-To: <1516880080.24502.181.camel@linuxfoundation.org>
Accept-Language: it-IT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [213.21.44.132]
MIME-Version: 1.0
Subject: Re: Getting python-dbusmock into the SDK
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
X-List-Received-Date: Thu, 25 Jan 2018 15:05:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <2406CE81AC2E6D4787F60AC78AA82B2E@luxoft.com>
Content-Transfer-Encoding: base64

T24gMjUvMDEvMjAxOCAxNDozNCwgUmljaGFyZCBQdXJkaWUgd3JvdGU6DQo+DQo+IEluc3RhbGxp
bmcgZGJ1cyBpbiB0aGUgc2RrIG1ha2VzIHZlcnkgbGl0dGxlIHNlbnNlIHNvIHlvdSBtYXkgd2Fu
dCB0bw0KPiByZXRoaW5rIHRoYXQgKG9yIHRlbGwgdGhlIHNkayBpdHMgYSBzeXN0ZW0gcHJvdmlk
ZWQgZGVwZW5kZW5jeSkuDQoNCkdvb2QgcG9pbnQgKHRoZSBsYXR0ZXIpIQ0KDQpDaWFvLA0KICBB
bGJlcnRvDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQoNClRoaXMgZS1tYWls
IGFuZCBhbnkgYXR0YWNobWVudChzKSBhcmUgaW50ZW5kZWQgb25seSBmb3IgdGhlIHJlY2lwaWVu
dChzKSBuYW1lZCBhYm92ZSBhbmQgb3RoZXJzIHdobyBoYXZlIGJlZW4gc3BlY2lmaWNhbGx5IGF1
dGhvcml6ZWQgdG8gcmVjZWl2ZSB0aGVtLiBUaGV5IG1heSBjb250YWluIGNvbmZpZGVudGlhbCBp
bmZvcm1hdGlvbi4gSWYgeW91IGFyZSBub3QgdGhlIGludGVuZGVkIHJlY2lwaWVudCwgcGxlYXNl
IGRvIG5vdCByZWFkIHRoaXMgZW1haWwgb3IgaXRzIGF0dGFjaG1lbnQocykuIEZ1cnRoZXJtb3Jl
LCB5b3UgYXJlIGhlcmVieSBub3RpZmllZCB0aGF0IGFueSBkaXNzZW1pbmF0aW9uLCBkaXN0cmli
dXRpb24gb3IgY29weWluZyBvZiB0aGlzIGUtbWFpbCBhbmQgYW55IGF0dGFjaG1lbnQocykgaXMg
c3RyaWN0bHkgcHJvaGliaXRlZC4gSWYgeW91IGhhdmUgcmVjZWl2ZWQgdGhpcyBlLW1haWwgaW4g
ZXJyb3IsIHBsZWFzZSBpbW1lZGlhdGVseSBub3RpZnkgdGhlIHNlbmRlciBieSByZXBseWluZyB0
byB0aGlzIGUtbWFpbCBhbmQgdGhlbiBkZWxldGUgdGhpcyBlLW1haWwgYW5kIGFueSBhdHRhY2ht
ZW50KHMpIG9yIGNvcGllcyB0aGVyZW9mIGZyb20geW91ciBzeXN0ZW0uIFRoYW5rIHlvdS4NCg==

