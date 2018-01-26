Return-Path: <AMardegan@luxoft.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65D3FE00E02; Fri, 26 Jan 2018 02:59:16 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5D98E00CF1
	for <poky@yoctoproject.org>; Fri, 26 Jan 2018 02:59:14 -0800 (PST)
Received: from ORO-HUBT-03.luxoft.com (172.30.115.38) by
	oro-edge-01.luxoft.com (172.30.19.21) with Microsoft SMTP Server (TLS)
	id 14.3.319.2; Fri, 26 Jan 2018 12:59:02 +0200
Received: from ORO-MBOX-05.luxoft.com ([fe80::1137:8dc2:bce5:c3fc]) by
	ORO-HUBT-03.luxoft.com ([::1]) with mapi id 14.03.0319.002;
	Fri, 26 Jan 2018 12:59:06 +0200
From: "Mardegan, Alberto" <AMardegan@luxoft.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky] Error building python-gobject for nativeSDK (was:
	Getting python-dbusmock into the SDK)
Thread-Index: AQHTlpSuqKDS8s3n/UOL0YeFFMvnYQ==
Date: Fri, 26 Jan 2018 10:59:05 +0000
Message-ID: <32335577-b643-1b0f-49d0-870b7bb2bf8a@luxoft.com>
References: <af197fb8-a676-bbfd-91fc-183a2aed77b9@luxoft.com>
	<CAJTo0LZfHC8SOOqPTDMyVh1=wDiVxkD9toy-TfgEw1daEpzwog@mail.gmail.com>
	<8bf1b928-c37a-0590-5ead-e240b7d64eab@luxoft.com>
	<1516880080.24502.181.camel@linuxfoundation.org>
In-Reply-To: <1516880080.24502.181.camel@linuxfoundation.org>
Accept-Language: it-IT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.127.164]
MIME-Version: 1.0
Subject: Error building python-gobject for nativeSDK (was: Getting python-dbusmock into the SDK)
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
X-List-Received-Date: Fri, 26 Jan 2018 10:59:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <F0AED4332AB47C469DACC8740D599F59@luxoft.com>
Content-Transfer-Encoding: base64

SGkhDQogIEkgbWFkZSBhIGxpdHRsZSBwcm9ncmVzcywgYnV0IG5vdyBJJ20gc3R1Y2sgd2l0aCB0
aGlzIGVycm9yIHdoaWxlDQpidWlsZGluZyBweXRob24tZ29iamVjdCBmb3IgbmF0aXZlc2RrOg0K
DQogIGh0dHBzOi8vcGFzdGUudWJ1bnR1LmNvbS8yNjQ2MzQyMy8NCg0KSW4gc2hvcnQsIHRoZSBn
b2JqZWN0LWludHJvc3BlY3Rpb24tMS4wIHBrZy1jb25maWcgZmlsZSBpcyBub3QgZm91bmQuIEkN
CnNlZSB0aGF0IHB5dGhvbi1nb2JqZWN0eSBpbmhlcml0cyBmcm9tIHRoZSBnb2JqZWN0LWludHJv
c3BlY3Rpb24gY2xhc3MsDQp3aGljaCBoYXMgdGhlc2UgdHdvIGxpbmVzOg0KDQogREVQRU5EU19h
cHBlbmRfY2xhc3MtbmF0aXZlID0gIiBnb2JqZWN0LWludHJvc3BlY3Rpb24tbmF0aXZlIg0KIERF
UEVORFNfYXBwZW5kX2NsYXNzLW5hdGl2ZXNkayA9ICIgZ29iamVjdC1pbnRyb3NwZWN0aW9uLW5h
dGl2ZSINCg0KQXNzdW1pbmcgdGhhdCB0aGUgc2Vjb25kIG9uZSB3YXMgYSB0eXBvLCBJIGNoYW5n
ZWQgdGhlIGRlcGVuZGVuY3kgdG8NCnBvaW50IGF0ICJuYXRpdmVzZGstZ29iamVjdC1pbnRyb3Nw
ZWN0aW9uIiwgYW5kIGFkZGVkICJuYXRpdmVzZGsiIHRvDQpCQkNMQVNTX0VYVEVORFMgaW4gdGhl
IGdvYmplY3QtaW50cm9zcGVjdGlvbiByZWNpcGUuDQpUaGlzIGhlbHBlZCB0byBnZXQgYSBiaXQg
ZnVydGhlciwgYW5kIG5vdyBJIGdldCB0aGlzOg0KDQogIGh0dHBzOi8vcGFzdGUudWJ1bnR1LmNv
bS8yNjQ2MzQ1OC8NCg0KKCAvdXNyL2Jpbi9lbnY6DQrigJgvaG9tZS9tYXJkeS9wZWx1eC9idWls
ZC90bXAvd29yay94ODZfNjQtbmF0aXZlc2RrLXBva3lzZGstbGludXgvbmF0aXZlc2RrLWdvYmpl
Y3QtaW50cm9zcGVjdGlvbi8xLjUwLjAtcjAvcmVjaXBl4oCZOg0KTm8gc3VjaCBmaWxlIG9yIGRp
cmVjdG9yeSApDQoNCndoaWNoIGxvb2tzIGEgYml0IHdlaXJkLi4uIEFueSBoaW50cyBvbiB3aGF0
IGNvdWxkIGJlIGNhdXNpbmcgdGhpcz8NCg0KQ2lhbywNCiAgQWxiZXJ0bw0KDQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXw0KDQpUaGlzIGUtbWFpbCBhbmQgYW55IGF0dGFjaG1lbnQo
cykgYXJlIGludGVuZGVkIG9ubHkgZm9yIHRoZSByZWNpcGllbnQocykgbmFtZWQgYWJvdmUgYW5k
IG90aGVycyB3aG8gaGF2ZSBiZWVuIHNwZWNpZmljYWxseSBhdXRob3JpemVkIHRvIHJlY2VpdmUg
dGhlbS4gVGhleSBtYXkgY29udGFpbiBjb25maWRlbnRpYWwgaW5mb3JtYXRpb24uIElmIHlvdSBh
cmUgbm90IHRoZSBpbnRlbmRlZCByZWNpcGllbnQsIHBsZWFzZSBkbyBub3QgcmVhZCB0aGlzIGVt
YWlsIG9yIGl0cyBhdHRhY2htZW50KHMpLiBGdXJ0aGVybW9yZSwgeW91IGFyZSBoZXJlYnkgbm90
aWZpZWQgdGhhdCBhbnkgZGlzc2VtaW5hdGlvbiwgZGlzdHJpYnV0aW9uIG9yIGNvcHlpbmcgb2Yg
dGhpcyBlLW1haWwgYW5kIGFueSBhdHRhY2htZW50KHMpIGlzIHN0cmljdGx5IHByb2hpYml0ZWQu
IElmIHlvdSBoYXZlIHJlY2VpdmVkIHRoaXMgZS1tYWlsIGluIGVycm9yLCBwbGVhc2UgaW1tZWRp
YXRlbHkgbm90aWZ5IHRoZSBzZW5kZXIgYnkgcmVwbHlpbmcgdG8gdGhpcyBlLW1haWwgYW5kIHRo
ZW4gZGVsZXRlIHRoaXMgZS1tYWlsIGFuZCBhbnkgYXR0YWNobWVudChzKSBvciBjb3BpZXMgdGhl
cmVvZiBmcm9tIHlvdXIgc3lzdGVtLiBUaGFuayB5b3UuDQo=

