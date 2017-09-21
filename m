Return-Path: <AMardegan@luxoft.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44471E00C99; Thu, 21 Sep 2017 07:23:39 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8896CE00C45
	for <poky@yoctoproject.org>; Thu, 21 Sep 2017 07:23:38 -0700 (PDT)
Received: from ORO-HYBRID-01.luxoft.com (172.30.115.193) by
	oro-edge-03.luxoft.com (172.30.19.23) with Microsoft SMTP Server (TLS)
	id 14.3.319.2; Thu, 21 Sep 2017 17:23:35 +0300
Received: from ORO-MBOX-01.luxoft.com ([fe80::387f:bf07:869c:b95e]) by
	oro-hybrid-01.luxoft.com ([fe80::94b2:3f2:b715:23bd%11]) with mapi id
	14.03.0319.002; Thu, 21 Sep 2017 17:23:36 +0300
From: "Mardegan, Alberto" <AMardegan@luxoft.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky] [PATCH] bitbake: lib/bb/utils: fix movefile() copy to
	dir fallback
Thread-Index: AQHTMuMQ/wm2bWcuoUyJZqdBgkJCPKK/LyAAgAADOoA=
Date: Thu, 21 Sep 2017 14:23:36 +0000
Message-ID: <b212c6aa-616d-9cc6-ad92-4c0b75ef74d2@luxoft.com>
References: <4c4a33cb-b2d8-f56f-f037-6769b77f70f0@luxoft.com>
	<b38912a5-efce-d3e7-3d84-aba0867ebf56@linux.intel.com>
In-Reply-To: <b38912a5-efce-d3e7-3d84-aba0867ebf56@linux.intel.com>
Accept-Language: it-IT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.31.240.120]
MIME-Version: 1.0
Subject: Re: [PATCH] bitbake: lib/bb/utils: fix movefile() copy to dir fallback
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
X-List-Received-Date: Thu, 21 Sep 2017 14:23:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <977585264EDD6F44939E4F575E7C2F01@luxoft.com>
Content-Transfer-Encoding: base64

T24gMDkvMjEvMjAxNyAwNDoxMiBQTSwgQWxleGFuZGVyIEthbmF2aW4gd3JvdGU6DQpbLi4uXQ0K
PiBUaGlzIHBhdGNoIHNob3VsZCBnbyB0byBiaXRiYWtlLWRldmVsIGxpc3QuIEFsc28sIHBsZWFz
ZSB1c2UgZ2l0DQo+IHNlbmQtZW1haWwgOikNCg0KT29wcyEgV2lsbCBkbyA6LSkNCg0KQ2lhbywN
CiAgIEFsYmVydG8NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCg0KVGhpcyBl
LW1haWwgYW5kIGFueSBhdHRhY2htZW50KHMpIGFyZSBpbnRlbmRlZCBvbmx5IGZvciB0aGUgcmVj
aXBpZW50KHMpIG5hbWVkIGFib3ZlIGFuZCBvdGhlcnMgd2hvIGhhdmUgYmVlbiBzcGVjaWZpY2Fs
bHkgYXV0aG9yaXplZCB0byByZWNlaXZlIHRoZW0uIFRoZXkgbWF5IGNvbnRhaW4gY29uZmlkZW50
aWFsIGluZm9ybWF0aW9uLiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50LCBw
bGVhc2UgZG8gbm90IHJlYWQgdGhpcyBlbWFpbCBvciBpdHMgYXR0YWNobWVudChzKS4gRnVydGhl
cm1vcmUsIHlvdSBhcmUgaGVyZWJ5IG5vdGlmaWVkIHRoYXQgYW55IGRpc3NlbWluYXRpb24sIGRp
c3RyaWJ1dGlvbiBvciBjb3B5aW5nIG9mIHRoaXMgZS1tYWlsIGFuZCBhbnkgYXR0YWNobWVudChz
KSBpcyBzdHJpY3RseSBwcm9oaWJpdGVkLiBJZiB5b3UgaGF2ZSByZWNlaXZlZCB0aGlzIGUtbWFp
bCBpbiBlcnJvciwgcGxlYXNlIGltbWVkaWF0ZWx5IG5vdGlmeSB0aGUgc2VuZGVyIGJ5IHJlcGx5
aW5nIHRvIHRoaXMgZS1tYWlsIGFuZCB0aGVuIGRlbGV0ZSB0aGlzIGUtbWFpbCBhbmQgYW55IGF0
dGFjaG1lbnQocykgb3IgY29waWVzIHRoZXJlb2YgZnJvbSB5b3VyIHN5c3RlbS4gVGhhbmsgeW91
Lg0K

