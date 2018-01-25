Return-Path: <AMardegan@luxoft.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3A66E00DBD; Thu, 25 Jan 2018 02:36:50 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E16FE00A75
	for <poky@yoctoproject.org>; Thu, 25 Jan 2018 02:36:48 -0800 (PST)
Received: from ORO-HUBT-01.luxoft.com (172.30.115.41) by
	oro-edge-01.luxoft.com (172.30.19.21) with Microsoft SMTP Server (TLS)
	id 14.3.319.2; Thu, 25 Jan 2018 12:36:45 +0200
Received: from ORO-MBOX-05.luxoft.com ([fe80::1137:8dc2:bce5:c3fc]) by
	ORO-HUBT-01.luxoft.com ([::1]) with mapi id 14.03.0319.002;
	Thu, 25 Jan 2018 12:36:46 +0200
From: "Mardegan, Alberto" <AMardegan@luxoft.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky] Getting python-dbusmock into the SDK
Thread-Index: AQHTlReatVT580XHy0qPLYUcO3CzlqOC5heAgAFe+QA=
Date: Thu, 25 Jan 2018 10:36:45 +0000
Message-ID: <8bf1b928-c37a-0590-5ead-e240b7d64eab@luxoft.com>
References: <af197fb8-a676-bbfd-91fc-183a2aed77b9@luxoft.com>
	<CAJTo0LZfHC8SOOqPTDMyVh1=wDiVxkD9toy-TfgEw1daEpzwog@mail.gmail.com>
In-Reply-To: <CAJTo0LZfHC8SOOqPTDMyVh1=wDiVxkD9toy-TfgEw1daEpzwog@mail.gmail.com>
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
X-List-Received-Date: Thu, 25 Jan 2018 10:36:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <192F57C49EA5E549A1EE3A33D9D5B24B@luxoft.com>
Content-Transfer-Encoding: base64

T24gMjQvMDEvMjAxOCAxNjo0MCwgQnVydG9uLCBSb3NzIHdyb3RlOg0KPiBUaG9zZSBhcmUgY2xv
c2UgbWF0Y2hlcyBvbiB0aGUgYXNzdW1wdGlvbiB0aGF0IG1heWJlIHlvdSBkaWQgYSB0eXBvLg0K
DQpSaWdodCwgSSBoYWQgY29tcGxldGVseSBtaXNyZWFkIHRoZSBlcnJvciBtZXNzYWdlIDotKQ0K
DQo+IFllcywgeW91IG5lZWQgdG8gYWRkIEJCQ0xBU1NFWFRFTkQgYXMgYXBwcm9wcmlhdGUuICBP
bmNlIHlvdSd2ZSB2ZXJpZmllZA0KPiB0aGF0IHRoZSByZWNpcGVzIGFjdHVhbGx5IGJ1aWxkIGNv
cnJlY3RseSBpbiBuYXRpdmVzayBwbGVhc2Ugc2VuZCB0aG9zZQ0KPiBhZGRpdGlvbnMgdG8gb2Ut
Y29yZS4NCg0KT0suIEZZSSwgdGhlcmUncyBhbm90aGVyIGNoYW5nZSB0aGF0IHdhcyBuZWVkZWQ6
IHRoZSBkYnVzIHJlY2lwZSBoYXM6DQoNCiAgT0xEUEtHTkFNRSA9ICJkYnVzLXgxMSINCiAgT0xE
UEtHTkFNRV9jbGFzcy1uYXRpdmVzZGsgPSAiIg0KDQpJIGhhZCB0byBjaGFuZ2UgdGhlIHNlY29u
ZCBsaW5lIGFuZCBzZXQgdGhlIHZhbHVlIHRvICJkYnVzLXgxMSIgdGhlcmUgYXMNCndlbGwsIG9y
IEkgd291bGQgZ2V0IGFuIHVuc29sdmVkIGRlcGVuZGVuY3kgKGRidXMtZ2xpYiByZXF1aXJlcyBp
dCkuDQoNCkNpYW8sDQogIEFsYmVydG8NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18NCg0KVGhpcyBlLW1haWwgYW5kIGFueSBhdHRhY2htZW50KHMpIGFyZSBpbnRlbmRlZCBvbmx5
IGZvciB0aGUgcmVjaXBpZW50KHMpIG5hbWVkIGFib3ZlIGFuZCBvdGhlcnMgd2hvIGhhdmUgYmVl
biBzcGVjaWZpY2FsbHkgYXV0aG9yaXplZCB0byByZWNlaXZlIHRoZW0uIFRoZXkgbWF5IGNvbnRh
aW4gY29uZmlkZW50aWFsIGluZm9ybWF0aW9uLiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQg
cmVjaXBpZW50LCBwbGVhc2UgZG8gbm90IHJlYWQgdGhpcyBlbWFpbCBvciBpdHMgYXR0YWNobWVu
dChzKS4gRnVydGhlcm1vcmUsIHlvdSBhcmUgaGVyZWJ5IG5vdGlmaWVkIHRoYXQgYW55IGRpc3Nl
bWluYXRpb24sIGRpc3RyaWJ1dGlvbiBvciBjb3B5aW5nIG9mIHRoaXMgZS1tYWlsIGFuZCBhbnkg
YXR0YWNobWVudChzKSBpcyBzdHJpY3RseSBwcm9oaWJpdGVkLiBJZiB5b3UgaGF2ZSByZWNlaXZl
ZCB0aGlzIGUtbWFpbCBpbiBlcnJvciwgcGxlYXNlIGltbWVkaWF0ZWx5IG5vdGlmeSB0aGUgc2Vu
ZGVyIGJ5IHJlcGx5aW5nIHRvIHRoaXMgZS1tYWlsIGFuZCB0aGVuIGRlbGV0ZSB0aGlzIGUtbWFp
bCBhbmQgYW55IGF0dGFjaG1lbnQocykgb3IgY29waWVzIHRoZXJlb2YgZnJvbSB5b3VyIHN5c3Rl
bS4gVGhhbmsgeW91Lg0K

