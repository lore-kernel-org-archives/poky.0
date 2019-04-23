Return-Path: <AMardegan@luxoft.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88C74E00950; Tue, 23 Apr 2019 05:36:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [109.166.244.72 listed in list.dnswl.org]
Received: from mx02.luxoft.com (mx02.luxoft.com [109.166.244.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7269E00927
	for <poky@yoctoproject.org>; Tue, 23 Apr 2019 05:36:41 -0700 (PDT)
X-AuditID: ac1e1348-4edff70000000417-da-5cbf06d7e419
Received: from ORO-EDGE-01.luxoft.com (oro-edge-01.luxoft.com [172.30.19.21])
	(using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by mx02.luxoft.com (Symantec Messaging Gateway) with SMTP id
	F7.0A.01047.7D60FBC5; Tue, 23 Apr 2019 15:36:39 +0300 (EEST)
Received: from oro-exch-04.luxoft.com (172.25.192.34) by
	oro-edge-01.luxoft.com (172.30.19.21) with Microsoft SMTP Server (TLS)
	id 14.3.408.0; Tue, 23 Apr 2019 15:36:36 +0300
Received: from oro-exch-01.luxoft.com (172.25.192.30) by
	oro-exch-04.luxoft.com (172.25.192.34) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P521) id
	15.1.1466.3; Tue, 23 Apr 2019 15:36:38 +0300
Received: from oro-exch-01.luxoft.com ([fe80::1da3:c392:32fa:ad13]) by
	oro-exch-01.luxoft.com ([fe80::1da3:c392:32fa:ad13%13]) with mapi id
	15.01.1466.003; Tue, 23 Apr 2019 15:36:38 +0300
From: "Mardegan, Alberto" <AMardegan@luxoft.com>
To: Poky Project <poky@yoctoproject.org>
Thread-Topic: [PATCH 1/1] XML test runner, or how to override Poky's python
	code
Thread-Index: AQHU+dExO2fLoWFA1Ua5MVK9pCuJbg==
Date: Tue, 23 Apr 2019 12:36:38 +0000
Message-ID: <f8913de6-e793-f7cb-ef56-a6f3b348fc0c@luxoft.com>
References: <8828ebbf-bc9d-3633-b8a7-8ccaa2101733@luxoft.com>
	<a2f3a0a281b75d06300d38ebd62e9c138cf6f9a5.camel@linuxfoundation.org>
In-Reply-To: <a2f3a0a281b75d06300d38ebd62e9c138cf6f9a5.camel@linuxfoundation.org>
Accept-Language: it-IT, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.19.68]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrBLMWRmVeSWpSXmKPExsWyRk5YVPc62/4Yg+aVghbT/61hd2D0aD/R
	xxbAGMVlk5Kak1mWWqRvl8CV0drZw1hwQ7/iw4ojjA2ME/S6GDk5JARMJJb838LWxcjFISSw
	mUli3fU+RghnE6PEiXPrmSGcL4wS+5c/YYFw9jNK3Ppzjw2kn03AQOLv7rWsILaIgIZE25e/
	YLawgLfEvQUr2SHiQRI9V26yQNh6Ep9ufgOKc3CwCKhKvHmqAWLyCthKnJrpBjG+hVHi7ovr
	jCDlnAKBEo0vzoKNYRSQlZiwexFYnFlAXOLWk/lMEC+ISDy8eJoNwhaVePn4HyuErSDR+bSR
	HaI+WuL38mVgcV4BQYmTM5+AnSMkoCix/Nt8pgmMYrOQjJ2FpGUWkpYFjMyrGEXzi/J1i3PT
	dQ1M9HJKK/LTSvSS83M3MULiwmMH48fDKYcYmTg4pRoY3Zy2rX7Z95l/Lf+N+yfKp9YIHJFX
	F7wvoMdsP5fZLq055u4ZuVu+Jnw+bCqb2wun/BJde7Dtv/zej5r3fIND1rnt0ayv/XD7xuvA
	a9YXYkw6zm1/JdjzOqHdq2Lt53bPxfN5lRkf9P55K9h70mNLzrWDJtNf327e+OvqiuSexJbr
	9kGfvktrKLEUZyQaajEXFScCAKTsMqU7AgAA
Subject: [PATCH 1/1] XML test runner, or how to override Poky's python code
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
X-List-Received-Date: Tue, 23 Apr 2019 12:36:43 -0000
X-Groupsio-MsgNum: 11632
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_f8913de6e793f7cbef56a6f3b348fc0cluxoftcom_"

--_002_f8913de6e793f7cbef56a6f3b348fc0cluxoftcom_
Content-Type: text/plain; charset="utf-8"
Content-ID: <3E5C187994C08442B194405323BDB9EE@luxoft.com>
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDE4LzA0LzE5IDExOjMxLCBSaWNoYXJkIFB1cmRpZSB3cm90ZToNCj4gSXRzIGNl
cnRhaW5seSBwb3NzaWJsZSB0byBhbHRlciBwcmV0dHkgbXVjaCBhbnkgb2YgdGhlIGNvZGUgYnV0
IGl0DQo+IHdvdWxkIHByb2JhYmx5IGludm9sdmUgZHVwbGljYXRpb24gd2hpY2ggd291bGQgYmUg
dWdseS4gQSBiZXR0ZXIgd2F5DQo+IG1heSBiZSB0byBzZW5kIHBhdGNoZXMgd2hpY2ggb3B0aW9u
YWxseSBhbGxvdyB0aGUgdGVzdCBvdXRwdXQgdG8gYmUNCj4gc3RvcmVkIGluIHRoZSBqc29uIG91
dHB1dCBiYXNlZCB1cG9uIGNvbmZpZ3VyYXRpb24/DQoNCkhlcmUncyB0aGUgcGF0Y2g7IEkgaG9w
ZSB0aGF0IFRodW5kZXJiaXJkIHdvbid0IHBsYXkgdG9vIG11Y2ggd2l0aCBpdCA6LSkNCg0KQ2lh
bywNCiAgQWxiZXJ0bw0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQoNClRo
aXMgZS1tYWlsIGFuZCBhbnkgYXR0YWNobWVudChzKSBhcmUgaW50ZW5kZWQgb25seSBmb3IgdGhl
IHJlY2lwaWVudChzKSBuYW1lZCBhYm92ZSBhbmQgb3RoZXJzIHdobyBoYXZlIGJlZW4gc3BlY2lm
aWNhbGx5IGF1dGhvcml6ZWQgdG8gcmVjZWl2ZSB0aGVtLiBUaGV5IG1heSBjb250YWluIGNvbmZp
ZGVudGlhbCBpbmZvcm1hdGlvbi4gSWYgeW91IGFyZSBub3QgdGhlIGludGVuZGVkIHJlY2lwaWVu
dCwgcGxlYXNlIGRvIG5vdCByZWFkIHRoaXMgZW1haWwgb3IgaXRzIGF0dGFjaG1lbnQocykuIEZ1
cnRoZXJtb3JlLCB5b3UgYXJlIGhlcmVieSBub3RpZmllZCB0aGF0IGFueSBkaXNzZW1pbmF0aW9u
LCBkaXN0cmlidXRpb24gb3IgY29weWluZyBvZiB0aGlzIGUtbWFpbCBhbmQgYW55IGF0dGFjaG1l
bnQocykgaXMgc3RyaWN0bHkgcHJvaGliaXRlZC4gSWYgeW91IGhhdmUgcmVjZWl2ZWQgdGhpcyBl
LW1haWwgaW4gZXJyb3IsIHBsZWFzZSBpbW1lZGlhdGVseSBub3RpZnkgdGhlIHNlbmRlciBieSBy
ZXBseWluZyB0byB0aGlzIGUtbWFpbCBhbmQgdGhlbiBkZWxldGUgdGhpcyBlLW1haWwgYW5kIGFu
eSBhdHRhY2htZW50KHMpIG9yIGNvcGllcyB0aGVyZW9mIGZyb20geW91ciBzeXN0ZW0uIFRoYW5r
IHlvdS4NCg==

--_002_f8913de6e793f7cbef56a6f3b348fc0cluxoftcom_
Content-Type: text/x-patch;
	name="0001-oeqa-core-runner-dump-stdout-and-stderr-of-each-test.patch"
Content-Description: 0001-oeqa-core-runner-dump-stdout-and-stderr-of-each-test.patch
Content-Disposition: attachment;
	filename="0001-oeqa-core-runner-dump-stdout-and-stderr-of-each-test.patch";
	size=2778; creation-date="Tue, 23 Apr 2019 12:36:38 GMT";
	modification-date="Tue, 23 Apr 2019 12:36:38 GMT"
Content-ID: <C96D834733469C4E8F902ACF06C5942E@luxoft.com>
Content-Transfer-Encoding: base64

RnJvbSBlZjAxZjczYzYxYjdmMjAyZTkwNWZjNGQ5YWU3ZmI1MDU3MjEwODA1IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQ0KRnJvbTogQWxiZXJ0byBNYXJkZWdhbiA8YW1hcmRlZ2FuQGx1eG9mdC5j
b20+DQpEYXRlOiBUdWUsIDIzIEFwciAyMDE5IDE1OjI1OjM2ICswMzAwDQpTdWJqZWN0OiBbUEFU
Q0hdIG9lcWEvY29yZS9ydW5uZXI6IGR1bXAgc3Rkb3V0IGFuZCBzdGRlcnIgb2YgZWFjaCB0ZXN0
IGNhc2UNCg0KU29tZSBDSSBwaXBlbGluZXMgbWlnaHQgcGVyZm9ybSBmdXJ0aGVyIHByb2Nlc3Np
bmcgb2YgdGhlIHRlc3Qgb3V0cHV0DQooZm9yIGluc3RhbmNlLCB0byBwbG90IHNvbWUgbWV0cmlj
cyBpbnRvIGEgY2hhcnQpLiBIb3dldmVyLCBTaW5jZSBgdGh1ZGANCndlIHN3aXRjaGVkIGF3YXkg
ZnJvbSB0aGUgWE1MLWJhc2VkIGpVbml0IHJlcG9ydGluZywgYW5kIGF0IHRoZSBzYW1lDQp0aW1l
IHdlIGxvc3QgdGhlIGFiaWxpdHkgb2YgY29sbGVjdGluZyB0aGUgc3Rkb3V0IGFuZCBzdGRlcnIg
b2YgdGhlDQp2YXJpb3VzIHRlc3RzLg0KDQpXZSBub3cgcmVzdG9yZSB0aGlzIGZ1bmN0aW9uYWxp
dHkgYnkgYWRkaW5nIGBzdGRvdXRgIGFuZCBgc3RkZXJyYCBrZXlzDQp0byB0aGUgSlNPTiByZXBv
cnRzLg0KDQpTaWduZWQtb2ZmLWJ5OiBBbGJlcnRvIE1hcmRlZ2FuIDxhbWFyZGVnYW5AbHV4b2Z0
LmNvbT4NCi0tLQ0KIG1ldGEvbGliL29lcWEvY29yZS9ydW5uZXIucHkgfCAxNyArKysrKysrKysr
KysrKy0tLQ0KIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygt
KQ0KDQpkaWZmIC0tZ2l0IGEvbWV0YS9saWIvb2VxYS9jb3JlL3J1bm5lci5weSBiL21ldGEvbGli
L29lcWEvY29yZS9ydW5uZXIucHkNCmluZGV4IGRmODhiODVmMWMuLjI4OGIzYWU2MTQgMTAwNjQ0
DQotLS0gYS9tZXRhL2xpYi9vZXFhL2NvcmUvcnVubmVyLnB5DQorKysgYi9tZXRhL2xpYi9vZXFh
L2NvcmUvcnVubmVyLnB5DQpAQCAtNyw2ICs3LDcgQEAgaW1wb3J0IHVuaXR0ZXN0DQogaW1wb3J0
IGxvZ2dpbmcNCiBpbXBvcnQgcmUNCiBpbXBvcnQganNvbg0KK2ltcG9ydCBzeXMNCiANCiBmcm9t
IHVuaXR0ZXN0IGltcG9ydCBUZXh0VGVzdFJlc3VsdCBhcyBfVGVzdFJlc3VsdA0KIGZyb20gdW5p
dHRlc3QgaW1wb3J0IFRleHRUZXN0UnVubmVyIGFzIF9UZXN0UnVubmVyDQpAQCAtNDUsNiArNDYs
OSBAQCBjbGFzcyBPRVRlc3RSZXN1bHQoX1Rlc3RSZXN1bHQpOg0KIA0KICAgICAgICAgc2VsZi50
YyA9IHRjDQogDQorICAgICAgICAjIHN0ZG91dCBhbmQgc3RkZXJyIGZvciBlYWNoIHRlc3QgY2Fz
ZQ0KKyAgICAgICAgc2VsZi5sb2dnZWRfb3V0cHV0ID0ge30NCisNCiAgICAgZGVmIHN0YXJ0VGVz
dChzZWxmLCB0ZXN0KToNCiAgICAgICAgICMgTWF5IGhhdmUgYmVlbiBzZXQgYnkgY29uY3VycmVu
Y3l0ZXN0DQogICAgICAgICBpZiB0ZXN0LmlkKCkgbm90IGluIHNlbGYuc3RhcnR0aW1lOg0KQEAg
LTUzLDYgKzU3LDkgQEAgY2xhc3MgT0VUZXN0UmVzdWx0KF9UZXN0UmVzdWx0KToNCiANCiAgICAg
ZGVmIHN0b3BUZXN0KHNlbGYsIHRlc3QpOg0KICAgICAgICAgc2VsZi5lbmR0aW1lW3Rlc3QuaWQo
KV0gPSB0aW1lLnRpbWUoKQ0KKyAgICAgICAgaWYgc2VsZi5idWZmZXI6DQorICAgICAgICAgICAg
c2VsZi5sb2dnZWRfb3V0cHV0W3Rlc3QuaWQoKV0gPSAoDQorICAgICAgICAgICAgICAgICAgICBz
eXMuc3Rkb3V0LmdldHZhbHVlKCksIHN5cy5zdGRlcnIuZ2V0dmFsdWUoKSkNCiAgICAgICAgIHN1
cGVyKE9FVGVzdFJlc3VsdCwgc2VsZikuc3RvcFRlc3QodGVzdCkNCiAgICAgICAgIGlmIHRlc3Qu
aWQoKSBpbiBzZWxmLnByb2dyZXNzaW5mbzoNCiAgICAgICAgICAgICBzZWxmLnRjLmxvZ2dlci5p
bmZvKHNlbGYucHJvZ3Jlc3NpbmZvW3Rlc3QuaWQoKV0pDQpAQCAtMTQ0LDEwICsxNTEsMTQgQEAg
Y2xhc3MgT0VUZXN0UmVzdWx0KF9UZXN0UmVzdWx0KToNCiAgICAgICAgICAgICBpZiBzdGF0dXMg
bm90IGluIGxvZ3M6DQogICAgICAgICAgICAgICAgIGxvZ3Nbc3RhdHVzXSA9IFtdDQogICAgICAg
ICAgICAgbG9nc1tzdGF0dXNdLmFwcGVuZCgiUkVTVUxUUyAtICVzIC0gVGVzdGNhc2UgJXM6ICVz
JXMiICUgKGNhc2UuaWQoKSwgb2VpZCwgc3RhdHVzLCB0KSkNCisgICAgICAgICAgICByZXBvcnQg
PSB7J3N0YXR1cyc6IHN0YXR1c30NCiAgICAgICAgICAgICBpZiBsb2c6DQotICAgICAgICAgICAg
ICAgIHJlc3VsdFtjYXNlLmlkKCldID0geydzdGF0dXMnOiBzdGF0dXMsICdsb2cnOiBsb2d9DQot
ICAgICAgICAgICAgZWxzZToNCi0gICAgICAgICAgICAgICAgcmVzdWx0W2Nhc2UuaWQoKV0gPSB7
J3N0YXR1cyc6IHN0YXR1c30NCisgICAgICAgICAgICAgICAgcmVwb3J0Wydsb2cnXSA9IGxvZw0K
KyAgICAgICAgICAgIGlmIGNhc2UuaWQoKSBpbiBzZWxmLmxvZ2dlZF9vdXRwdXQ6DQorICAgICAg
ICAgICAgICAgIChzdGRvdXQsIHN0ZGVycikgPSBzZWxmLmxvZ2dlZF9vdXRwdXRbY2FzZS5pZCgp
XQ0KKyAgICAgICAgICAgICAgICByZXBvcnRbJ3N0ZG91dCddID0gc3Rkb3V0DQorICAgICAgICAg
ICAgICAgIHJlcG9ydFsnc3RkZXJyJ10gPSBzdGRlcnINCisgICAgICAgICAgICByZXN1bHRbY2Fz
ZS5pZCgpXSA9IHJlcG9ydA0KIA0KICAgICAgICAgZm9yIGkgaW4gWydQQVNTRUQnLCAnU0tJUFBF
RCcsICdFWFBFQ1RFREZBSUwnLCAnRVJST1InLCAnRkFJTEVEJywgJ1VOS05PV04nXToNCiAgICAg
ICAgICAgICBpZiBpIG5vdCBpbiBsb2dzOg0KLS0gDQoyLjE3LjENCg0K

--_002_f8913de6e793f7cbef56a6f3b348fc0cluxoftcom_--
