Return-Path: <AMardegan@luxoft.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3412CE00E46; Wed, 24 Jan 2018 05:32:24 -0800 (PST)
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
X-Greylist: delayed 67 seconds by postgrey-1.32 at yocto-www;
	Wed, 24 Jan 2018 05:32:22 PST
Received: from ORO-EDGE-01.luxoft.com (oro-edge-01.luxoft.com [109.166.244.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BA45E00CE8
	for <poky@yoctoproject.org>; Wed, 24 Jan 2018 05:32:22 -0800 (PST)
Received: from ORO-HUBT-02.luxoft.com (172.30.115.36) by
	oro-edge-01.luxoft.com (172.30.19.21) with Microsoft SMTP Server (TLS)
	id 14.3.319.2; Wed, 24 Jan 2018 15:31:13 +0200
Received: from ORO-MBOX-05.luxoft.com ([fe80::1137:8dc2:bce5:c3fc]) by
	ORO-HUBT-02.luxoft.com ([::1]) with mapi id 14.03.0319.002;
	Wed, 24 Jan 2018 15:31:13 +0200
From: "Mardegan, Alberto" <AMardegan@luxoft.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: Getting python-dbusmock into the SDK
Thread-Index: AQHTlReatVT580XHy0qPLYUcO3Czlg==
Date: Wed, 24 Jan 2018 13:31:12 +0000
Message-ID: <af197fb8-a676-bbfd-91fc-183a2aed77b9@luxoft.com>
Accept-Language: it-IT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [213.21.44.132]
MIME-Version: 1.0
Subject: Getting python-dbusmock into the SDK
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
X-List-Received-Date: Wed, 24 Jan 2018 13:32:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <54E97C638623FE45B1D58B4252A8BFCD@luxoft.com>
Content-Transfer-Encoding: base64

SGkgdGhlcmUgOi0pDQogIEkgd2FudCB0byBhZGQgcHl0aG9uLWRidXNtb2NrICh3aGljaCBoYXMg
YSByZWNpcGUgaW4gb2UvbWV0YS1weXRob24pDQp0byBvdXIgU0RLLiBTbywgSSBhZGRlZA0KDQog
IFRPT0xDSEFJTl9IT1NUX1RBU0tfYXBwZW5kID0gIiBuYXRpdmVzZGstcHl0aG9uLWRidXNtb2Nr
Ig0KDQp0byBvdXIgaW1hZ2UgcmVjaXBlIGFuZCBtYWRlIGEgYmJhcHBlbmQgZm9yIHB5dGhvbi1k
YnVzbW9jayBjb250YWluaW5nDQp0aGlzIGxpbmU6DQoNCiAgQkJDTEFTU0VYVEVORCArPSAiIG5h
dGl2ZXNkayINCg0KV2hlbiBJIHJhbiBiaXRiYWtlIHdpdGggdGhlIHBvcHVsYXRlLXNkayB0YXNr
IEkgZ290IGFuIGVycm9yIGFib3V0IGENCm5hdGl2ZXNkay1weXRob24tcHlnb2JqZWN0LCB3aGlj
aCB3YXMgbm90IHByb3ZpZGVkIGJ5IGFueSBwYWNrYWdlLiBTbyBJDQphZGRlZCB0aGUgc2FtZSBC
QkNMQVNTRVhURU5EIHRyaWNrIHRvIGl0cyBiYmFwcGVuZCwgYW5kIEkgZGlkIHRoZSBzYW1lDQpm
b3IgbmF0aXZlc2RrLXB5dGhvbi1kYnVzIHdoaWNoIHdhcyBhbHNvIGRlY2xhcmVkIGFzIG1pc3Np
bmcuDQoNCkF0IHRoaXMgcG9pbnQgKGFmdGVyIGFkZGluZyB0aGUgQkJDTEFTU0VYVEVORCB0byBw
eXRob24tZGJ1cykgSSBnb3QgdGhpcw0KZXJyb3I6DQoNCj09PT09PT09PT09PQ0KRVJST1I6IE5v
dGhpbmcgUFJPVklERVMgJ25hdGl2ZXNkay1kYnVzLWdsaWInIChidXQNCnZpcnR1YWw6bmF0aXZl
c2RrOi9ob21lL21hcmR5L3BlbHV4L2J1aWxkLy4uL3NvdXJjZXMvbWV0YS1vcGVuZW1iZWRkZWQv
bWV0YS1weXRob24vcmVjaXBlcy1kZXZ0b29scy9weXRob24vcHl0aG9uLWRidXNfMS4yLjQuYmIN
CkRFUEVORFMgb24gb3Igb3RoZXJ3aXNlIHJlcXVpcmVzIGl0KS4gQ2xvc2UgbWF0Y2hlczoNCiAg
bmF0aXZlc2RrLWRidXMNCiAgbmF0aXZlc2RrLWpzb24tZ2xpYg0KICBuYXRpdmVzZGstZ2xpYmMN
Cj09PT09PT09PT09PQ0KDQpEbyBJIG5lZWQgdG8gY29udGludWUgYWRkaW5nIEJCQ0xBU1NFWFRF
TkQrPSIgbmF0aXZlc2RrIiB0byB0aGUgcGFja2FnZXMNCmFzIEkgZ2V0IG5ldyBmYWlsdXJlcywg
b3IgYW0gSSBkb2luZyBzb21ldGhpbmcgd3Jvbmc/DQpJIGJlY2FtZSBzdXNwaWNpb3VzIHdoZW4g
SSBzYXcgIm5hdGl2ZXNkay1nbGliIiBhcHBlYXJpbmcgaW4gdGhlIGxvZ3MNCmFib3ZlOyBJIGd1
ZXNzIHdlIGNhbiBzYWZlbHkgYXNzdW1lIHRoYXQgZ2xpYmMgaXMgYXZhaWxhYmxlIGluIHRoZSBo
b3N0DQpzeXN0ZW0sIHNvIHRoZSBuZWVkIHRvIGFkZCBpdCBhcyBhIG5hdGl2ZSBTREsgcGFja2Fn
ZSBnb3QgbWUgcHV6emxlZC4NCg0KU2hvdWxkIEkgY29udGludWUgZG93biB0aGlzIHJvYWQsIG9y
IGlzIGl0IGEgZGVhZCBlbmQ/DQoNCkNpYW8sDQogIEFsYmVydG8NCg0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18NCg0KVGhpcyBlLW1haWwgYW5kIGFueSBhdHRhY2htZW50KHMpIGFy
ZSBpbnRlbmRlZCBvbmx5IGZvciB0aGUgcmVjaXBpZW50KHMpIG5hbWVkIGFib3ZlIGFuZCBvdGhl
cnMgd2hvIGhhdmUgYmVlbiBzcGVjaWZpY2FsbHkgYXV0aG9yaXplZCB0byByZWNlaXZlIHRoZW0u
IFRoZXkgbWF5IGNvbnRhaW4gY29uZmlkZW50aWFsIGluZm9ybWF0aW9uLiBJZiB5b3UgYXJlIG5v
dCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50LCBwbGVhc2UgZG8gbm90IHJlYWQgdGhpcyBlbWFpbCBv
ciBpdHMgYXR0YWNobWVudChzKS4gRnVydGhlcm1vcmUsIHlvdSBhcmUgaGVyZWJ5IG5vdGlmaWVk
IHRoYXQgYW55IGRpc3NlbWluYXRpb24sIGRpc3RyaWJ1dGlvbiBvciBjb3B5aW5nIG9mIHRoaXMg
ZS1tYWlsIGFuZCBhbnkgYXR0YWNobWVudChzKSBpcyBzdHJpY3RseSBwcm9oaWJpdGVkLiBJZiB5
b3UgaGF2ZSByZWNlaXZlZCB0aGlzIGUtbWFpbCBpbiBlcnJvciwgcGxlYXNlIGltbWVkaWF0ZWx5
IG5vdGlmeSB0aGUgc2VuZGVyIGJ5IHJlcGx5aW5nIHRvIHRoaXMgZS1tYWlsIGFuZCB0aGVuIGRl
bGV0ZSB0aGlzIGUtbWFpbCBhbmQgYW55IGF0dGFjaG1lbnQocykgb3IgY29waWVzIHRoZXJlb2Yg
ZnJvbSB5b3VyIHN5c3RlbS4gVGhhbmsgeW91Lg0K

