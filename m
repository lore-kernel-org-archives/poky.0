Return-Path: <AMardegan@luxoft.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B8D4E00DD2; Sun, 28 Jan 2018 22:44:18 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E5EAE00D6E
	for <poky@yoctoproject.org>; Sun, 28 Jan 2018 22:44:16 -0800 (PST)
Received: from ORO-HUBT-01.luxoft.com (172.30.115.41) by
	oro-edge-01.luxoft.com (172.30.19.21) with Microsoft SMTP Server (TLS)
	id 14.3.319.2; Mon, 29 Jan 2018 08:44:13 +0200
Received: from ORO-MBOX-05.luxoft.com ([fe80::1137:8dc2:bce5:c3fc]) by
	ORO-HUBT-01.luxoft.com ([::1]) with mapi id 14.03.0319.002;
	Mon, 29 Jan 2018 08:44:13 +0200
From: "Mardegan, Alberto" <AMardegan@luxoft.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky] Error building python-gobject for nativeSDK
Thread-Index: AQHTlsThfnCfvTCT1ku92HASImyFl6OKShWA
Date: Mon, 29 Jan 2018 06:44:13 +0000
Message-ID: <8fa2aaf1-8287-0d59-641a-4f14852fb921@luxoft.com>
References: <af197fb8-a676-bbfd-91fc-183a2aed77b9@luxoft.com>
	<CAJTo0LZfHC8SOOqPTDMyVh1=wDiVxkD9toy-TfgEw1daEpzwog@mail.gmail.com>
	<8bf1b928-c37a-0590-5ead-e240b7d64eab@luxoft.com>
	<1516880080.24502.181.camel@linuxfoundation.org>
	<32335577-b643-1b0f-49d0-870b7bb2bf8a@luxoft.com>
	<fb333d5e-0c43-5aab-39ed-f77da37a1dec@linux.intel.com>
In-Reply-To: <fb333d5e-0c43-5aab-39ed-f77da37a1dec@linux.intel.com>
Accept-Language: it-IT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [213.21.44.132]
MIME-Version: 1.0
Subject: Re: Error building python-gobject for nativeSDK
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
X-List-Received-Date: Mon, 29 Jan 2018 06:44:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <2801198E3C9F6F419947C04D82B6091C@luxoft.com>
Content-Transfer-Encoding: base64

T24gMjYvMDEvMjAxOCAxOTozOCwgQWxleGFuZGVyIEthbmF2aW4gd3JvdGU6DQo+IEkgZGlkIHJl
cHJvZHVjZSB0aGUNCj4NCj4gInwgLi9nLWlyLWNvbXBpbGVyOiBsaW5lIDExNzoNCj4gL2hvbWUv
bWFyZHkvcGVsdXgvYnVpbGQvdG1wL3dvcmsveDg2XzY0LW5hdGl2ZXNkay1wb2t5c2RrLWxpbnV4
L25hdGl2ZXNkay1nb2JqZWN0LWludHJvc3BlY3Rpb24vMS41MC4wLXIwL2J1aWxkLy5saWJzL2x0
LWctaXItY29tcGlsZXI6DQo+IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkiDQo+DQo+IHN0dWZm
LCBzbyBubyBuZWVkIHRvIHB1Ymxpc2ggYW55dGhpbmcgOikuIEkgY2FuJ3QgcHJvbWlzZSBJJ2xs
IGZpbmQgdGltZQ0KPiB0byBsb29rIGludG8gaXQgdmVyeSBzb29uIHRob3VnaCAtIHRoaXMgaXMg
YSBuZXcgZmVhdHVyZSBkZXZlbG9wbWVudCwNCj4gbm90IGEgYnVnLg0KDQpUaGFua3MgQWxleCEg
SW5kZWVkIHRoaXMgbG9va3MgdHJpY2t5Li4uIEFueXdheSwgYWNjb3JkaW5nIHRvIHRoZQ0KZG9j
dW1lbnRhdGlvbiBpdCB3b3VsZCBsb29rcyBsaWtlIHRoZSBHSSB0eXBlbGliIGZpbGVzIHNob3Vs
ZCBiZQ0KYXJjaGl0ZWN0dXJlIGluZGVwZW5kZW50Og0KICBodHRwczovL2RldmVsb3Blci5nbm9t
ZS5vcmcvZ2kvdW5zdGFibGUvZ2ktR0lUeXBlbGliLmh0bWwNClNvIEkgZ3Vlc3MgdGhlIHByb2Js
ZW0gaGVyZSBpcyB0aGF0IGctaXItY29tcGlsZXIgaXMgYmVpbmcgYnVpbHQgZm9yIHRoZQ0KdGFy
Z2V0IGFyY2hpdGVjdHVyZSwgd2hpbGUgaXQncyBzb21ldGhpbmcgdGhhdCBjYW4gYmUgYnVpbHQg
bmF0aXZlbHk/DQoNCkNpYW8sDQogIEFsYmVydG8NCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18NCg0KVGhpcyBlLW1haWwgYW5kIGFueSBhdHRhY2htZW50KHMpIGFyZSBpbnRlbmRl
ZCBvbmx5IGZvciB0aGUgcmVjaXBpZW50KHMpIG5hbWVkIGFib3ZlIGFuZCBvdGhlcnMgd2hvIGhh
dmUgYmVlbiBzcGVjaWZpY2FsbHkgYXV0aG9yaXplZCB0byByZWNlaXZlIHRoZW0uIFRoZXkgbWF5
IGNvbnRhaW4gY29uZmlkZW50aWFsIGluZm9ybWF0aW9uLiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50
ZW5kZWQgcmVjaXBpZW50LCBwbGVhc2UgZG8gbm90IHJlYWQgdGhpcyBlbWFpbCBvciBpdHMgYXR0
YWNobWVudChzKS4gRnVydGhlcm1vcmUsIHlvdSBhcmUgaGVyZWJ5IG5vdGlmaWVkIHRoYXQgYW55
IGRpc3NlbWluYXRpb24sIGRpc3RyaWJ1dGlvbiBvciBjb3B5aW5nIG9mIHRoaXMgZS1tYWlsIGFu
ZCBhbnkgYXR0YWNobWVudChzKSBpcyBzdHJpY3RseSBwcm9oaWJpdGVkLiBJZiB5b3UgaGF2ZSBy
ZWNlaXZlZCB0aGlzIGUtbWFpbCBpbiBlcnJvciwgcGxlYXNlIGltbWVkaWF0ZWx5IG5vdGlmeSB0
aGUgc2VuZGVyIGJ5IHJlcGx5aW5nIHRvIHRoaXMgZS1tYWlsIGFuZCB0aGVuIGRlbGV0ZSB0aGlz
IGUtbWFpbCBhbmQgYW55IGF0dGFjaG1lbnQocykgb3IgY29waWVzIHRoZXJlb2YgZnJvbSB5b3Vy
IHN5c3RlbS4gVGhhbmsgeW91Lg0K

