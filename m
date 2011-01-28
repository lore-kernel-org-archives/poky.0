Return-Path: <lianhao.lu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8D8D34C811FB
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 22:13:44 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 27 Jan 2011 20:13:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,390,1291622400"; d="scan'208";a="881766803"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 27 Jan 2011 20:13:43 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 28 Jan 2011 12:13:42 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 28 Jan 2011 12:13:41 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Fri, 28 Jan 2011 12:13:40 +0800
Thread-Topic: [poky] [PATCH 0/6] Added rpm support in meta-toolchain
Thread-Index: Acu+biF1HnvUVnDRSKWOCXvHB4vYnwAM3B0Q
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F20A85DA2A3@shsmsx502.ccr.corp.intel.com>
References: <cover.1296095614.git.lianhao.lu@intel.com>
	<1296165816.27814.8796.camel@rex>
In-Reply-To: <1296165816.27814.8796.camel@rex>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/6] Added rpm support in meta-toolchain
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 28 Jan 2011 04:13:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUmljaGFyZCwNCg0KUmljaGFyZCBQdXJkaWUgd3JvdGUgb24gMjAxMS0wMS0yODoNCj4gSGkg
TGlhbmhhbywNCj4gDQo+IE9uIFRodSwgMjAxMS0wMS0yNyBhdCAxMDo1MSArMDgwMCwgTGlhbmhh
byBMdSB3cm90ZToNCj4+IEZyb206IExpYW5oYW8gTHUgPGxpYW5oYW8ubHVAaW50ZWwuY29tPg0K
Pj4gDQo+PiBUaGUgcHVycG9zZSBvZiB0aGlzIHNlcmllcyBvZiBwYXRjaGVzIGlzIHRvIGFkZCBy
cG0gc3VwcG9ydCBpbg0KPj4gbWV0YS10b29sY2hhaW4gY3JlYXRpb24sIGFuZCBhbHNvIHRvIGZp
eCBidWcgIzIyNy4NCj4+IA0KPj4gSXQgbWFrZXMgdGhlIHRhc2sgcG9wdWxhdGVfc2RrIGluDQo+
PiBtZXRhL3JlY2lwZXMtY29yZS9tZXRhL21ldGEtdG9vbGNoYWluLmJiIG1vcmUgZ2VuZXJpYyB0
byBzdXBwb3J0DQo+PiBpbnN0YWxsaW5nIHBhY2thZ2VzIGZyb20gaXBrLCBycG0sIGFuZCBkZWIg
ZmlsZXMgaW4gY3JlYXRpbmcNCj4+IG1ldGEtdG9vbGNoYWluDQo+IHRhcmJhbGwsIGFuZCBtb3Zl
IHRoZSBwb3B1bGF0ZV9zZGsgdGFzayBvdXQgb2YgbWV0YS10b29sY2hhaW4uYmINCj4gcmVjaXBl
IGludG8gYSBiYmNsYXNzLg0KPj4gDQo+PiBJdCBhZGRlZCBwb3B1bGF0ZV9zZGtfeHh4LmJiY2xh
c3MgZm9yIGRpZmZlcmVudCBwYWNrYWdlIGZpbGUgZm9ybWF0Lg0KPj4gDQo+PiBUaGUgbWV0YS10
b29sY2hhaW4gaW5zdGFsbGluZyBwcm9jZXNzIGludm9sZXMgMiBzZXQgb2YgcGFja2FnZXMsIG9u
ZQ0KPj4gaXMgdGhlIGhvc3Qgc2RrIHNldCB3aGljaCBjb250YWlucyBwYWNrYWdlcyBvZiBhcHBs
aWNhdGlvbnMoZS5nLg0KPj4gY3Jvc3MtY2FuYWRpYW4gY29tcGlsZXJzLCBxZW11LCBldGMuKSBh
bmQgcmVsZXZhbnQgcnVuLXRpbWUNCj4+IGxpYnJhcmllcywgdGhlIG90aGVyIGlzIHRoZSB0YXJn
ZXQgc2RrIHNldCB3aGljaCBjb250YWlucyBwYWNrYWdlcw0KPj4gb2YgdGFyZ2V0IGFyY2gncyBs
aWJyYXJpZXMgYW5kIGhlYWRlciBmaWxlcyB0byBjcmVhdGUgYSB0YXJnZXQNCj4+IHJvb3RmcyBm
b3IgY3Jvc3MgY29tcGlsaW5nIHB1cnBvc2UuU28gdGhlIHBhdGNoZXMgYWxzbyBtb2RpZmVzDQo+
PiBhbmQvb3IgYWRkcyBmdW5jdGlvbnMgaW4gcGFja2FnZV9kZWIuYmJjbGFzcyAmIHBhY2thZ2Vf
cnBtLmJiY2xhc3MNCj4+IHRvIHVwZGF0ZSB0aGUgcGFja2FnZSBpbmRleA0KPiBhbmQgdG8gZ2Vu
ZXJhdGUgZGlmZmVyZW50IGluc3RhbGxpbmcgY29uZmlndXJhdGlvbiBmaWxlcyBmb3IgdGhlIHRv
dw0KPiBkaWZmZXJlbnQgc2V0cy4NCj4+IA0KPj4gSXQgYWxzbyBmaXhlZCBhIGJ1ZyBpbiBjcm9z
cy1jYW5hZGlhbi5iYmNsYXNzIHRvIGVuYWJsZSB0aGUNCj4+IHBhY2thZ2VfZGViLmJiY2xhc3Mg
Z2VuZXJhdGUgY29ycmVjdCBkZWIgcGFja2FnZSBmaWxlcyBmb3INCj4+IGNyb3NzLWNhbmFkaWFu
DQo+IHJlY2lwaWVzLg0KPiANCj4gSXRzIGdyZWF0IHRvIHNlZSB0aGlzIGJ1dCBJIHRoaW5rIHdl
IG5lZWQgdG8gcmVzdHJ1Y3R1cmUgdGhlIGNvZGUgYQ0KPiBsaXR0bGUgbW9yZSBhZ2dyZXNzaXZl
bHkgYW5kIGNyZWF0ZSBzb21lIGdlbmVyYWwgZnVuY3Rpb25zIHRvIGNvbXBsZXRlIHRoaXMgcHJv
cGVybHkuDQo+IA0KPiBXaGF0IEkgbWVhbiBpcyB0aGF0IGJvdGggcm9vdGZzX2lwayBhbmQgcG9w
dWxhdGVfc2RrX2lwayBzaGFyZSBjb2RlLA0KPiByb290ZnNfZGViIGFuZCBwb3B1bGF0ZV9zZGtf
ZGViIHNoYXJlIGNvZGUgYW5kIGxpa2V3aXNlIGZvciBycG0uDQo+IA0KPiBXaGF0IHdlIG5lZWQg
aXMgYSBnZW5lcmljIGZ1bmN0aW9uIHdoZXJlIHdlIHNwZWNpZnkgd2hlcmUgdGhlIHRhcmdldA0K
PiBkaXJlY3RvcnkgaXMgYW5kIGEgbGlzdCBvZiBwYWNrYWdlcyB3ZSB3YW50IHRvIGluc3RhbGwg
YWxvbmcgd2l0aCBzb21lDQo+IGFyY2hpdGVjdHVyZSBpbmZvcm1hdGlvbiBhbmQgaXQgdGhlbiBn
b2VzIGFuZCBkb2VzIGl0LiBUaG9zZSBmdW5jdGlvbnMNCj4gd291bGQgbGlrZSBpbiBwYWNrYWdl
X3h4eC5iYmNsYXNzLiBXZSBzaG91bGQgZG8gc2ltaWxhciB0aGluZ3Mgd2VsbCBpbg0KPiBvbmUg
cGxhY2UgcmF0aGVyIHRoYW4gaW4gdHdvIHdpdGggc2xpZ2h0bHkgZGlmZmVyZW50IGltcGxlbWVu
dGF0aW9ucy4NCj4gDQo+IERvIHlvdSBhZ3JlZT8NCj4gDQpPaywgSSdsbCBtZXJnZSB0aGUgY29t
bW9uIHBhcnQgYmV0d2VlbiByb290ZnNfWFhYIGFuZCBwb3B1bGF0ZV9zZGtfWFhYIGludG8gcGFj
a2FnZV9YWFguDQoNCkJlc3QgUmVnYXJkcywNCkxpYW5oYW8NCg0KDQo=

