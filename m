Return-Path: <liping.ke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 511164C80FFA
	for <poky@yoctoproject.org>; Wed, 11 May 2011 20:58:16 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 11 May 2011 18:58:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,355,1301900400"; d="scan'208";a="641536493"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga002.jf.intel.com with ESMTP; 11 May 2011 18:58:06 -0700
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 12 May 2011 09:56:47 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 12 May 2011 09:56:46 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Thu, 12 May 2011 09:56:44 +0800
Thread-Topic: [poky] [PATCH 0/4][Image Creator]Put extra requested fields
	into different cache files
Thread-Index: AcwP9Y4Ko1NOOrRXQae2ilhMX/W0FgAUH2/Q
Message-ID: <789F9655DD1B8F43B48D77C5D30659734C574190@shsmsx501.ccr.corp.intel.com>
References: <cover.1304922517.git.liping.ke@intel.com>
	<1304941939.30391.205.camel@rex>
	<789F9655DD1B8F43B48D77C5D30659734C510EFC@shsmsx501.ccr.corp.intel.com>
	<1305130036.30391.391.camel@rex>
In-Reply-To: <1305130036.30391.391.camel@rex>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/4][Image Creator]Put extra requested fields into different cache files
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
X-List-Received-Date: Thu, 12 May 2011 01:58:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksIFJpY2hhcmQNCg0KPiA+ID4NCj4gPiA+IGEpIEFkZHMgImJpdGJha2VfbW9kZSIgYW5kIGFs
bG93cyBVSXMgdG8gZGVmaW5lIGNhY2hlIGRhdGENCj4gPiA+IGIpIEFkZHMgdGhlIGNhY2hlIGRh
dGEgdG8gaG9iDQo+ID4gPiBjKSBEcm9wcyB0aGUgY2FjaGUgZGF0YSB1c2VkIG9ubHkgYnkgaG9i
IGZyb20gdGhlIGNvcmUNCj4gPiBZZXMsIGluIGdlbmVyYWwgSSB3YW50IHRvIGRvIHRoZSBzYW1l
IHRoaW5nLiBFYWNoIHBhdGNoIGluIHRoZSBzZXJpYWwgd2lsbA0KPiA+IG5vdCBicmVhayB0aGUg
Y3VycmVudCBjcy4gUGF0Y2hbMS80XSwgcGF0Y2hbMi80XSYgcGF0Y2ggWzMvNF0gYXJlIGZvciBh
KSBhbmQNCj4gYikuDQo+ID4gQnV0IGZvciBjKSwgYmVjYXVzZSBvZiB0aGUgaW1wbGFudGF0aW9u
IGFsZ29yaXRobSBJIGFkb3B0ZWQsIGl0J3MgbWVyZ2VkIHdpdGgNCj4gPiBleHRyYSBjYWNoZSBk
YXRhIGltcGxlbWVudGF0aW9uICh0aGUgYmlnZ2VzdCBwYXRjaCkuDQo+IA0KPiBUaGF0J3MgZmlu
ZSwgeW91ciBvcmlnaW5hbCBzZXJpZXMgZGlkbid0IHNlZW0gdG8gd29yayBxdWl0ZSBsaWtlIHRo
aXMNCj4gdGhvdWdoIGFuZCBsb29rZWQgbGlrZSBJJ2QgZ2V0IGZhaWx1cmVzIGlmIEkgb25seSBh
cHBsaWVkIHRoZSBlYXJseQ0KPiBwYXRjaGVzIGZyb20gd2hhdCBJIHJlbWVtYmVyLg0KDQpzdXJl
LCBJIHVuZGVyc3RhbmQgdGhpcy4gSSB3aWxsIG1ha2Ugc3VyZSB0aGF0IHRoZSBzZXJpZXMgb2Yg
cGF0Y2hlcyB3b3JrcyBpbmRlcGVuZGVudGx5DQp3aGVuIHJlc2VuZGluZyB0aGUgcGF0Y2guDQoN
Cj4gDQo+ID4gPiBJJ3ZlIGFsc28gdGhlIGZvbGxvd2luZyBjb21tZW50cyBvbiB0aGUgY29kZSBp
biBnZW5lcmFsOg0KPiA+ID4NCj4gPiA+IGEpIENvdWxkIHdlIG1vdmUgdGhlIGhvYiBzcGVjaWZp
YyBjYWNoZSBkYXRhIGZyb20gY2FjaGUucHkgdG8gaG9iLnB5LiBJZg0KPiA+ID4gbm90LCBJJ2Qg
bGlrZSB0byB1bmRlcnN0YW5kIHdoeSBub3QgYW5kIG1heWJlIGFkZHJlc3MgdGhvc2UgaXNzdWVz
LiBNeQ0KPiA+ID4gcG9pbnQgaXMgeW91IHNob3VsZG4ndCBuZWVkIHRvIGNoYW5nZSBjYWNoZS5w
eSB0byBhZGQgZXh0cmEgY2FjaGUgZGF0YS4NCj4gPg0KPiA+IHlvdSBtZWFuIHRoYXQgd2Ugd2ls
bCBoYXZlIGEgc2VwYXJhdGUgRXh0cmFDYWNoZSAoSSBndWVzcyBob2Igb3INCj4gYWR0LWluc3Rh
bGxlciBzaG91bGQgaGF2ZSB0aGUgc2ltaWxhciBsb2dpYz8pDQo+ID4gaW1wbGVtZW50YXRpb24g
ZmlsZSwgd2hpY2ggaGFzIHNpbWlsYXIgZnVuY3Rpb25hbGl0eSB3aXRoIGNhY2hlLnB5Pw0KPiA+
IE9oLCBJIGRpZCBub3QgdGhpbmsgb2YgdGhpcyBpbXBsZW1lbnRhdGlvbiBhdCBhbGwgd2hlbiBp
bXBsZW1lbnQuIEluIG15IG1pbmQsDQo+IGNoYW5nZSBsZXNzIGNvZGUgaXMgdGhlIHByaW5jaXBs
ZSBzaW5jZQ0KPiA+IHRoaXMgcGFydCBvZiB0aGUgY29kZSBpcyB0aGUgY29yZSBvZiBiaXRiYWtl
OikgIElmIHNwbGl0LCBtYW55IGNvZGVzIGluIGNhY2hlDQo+IGNvdWxkIGJlIHJldXNlZCBieSBi
b3RoIGNhY2hlLnB5IGFuZCBob2IucHk/DQo+IA0KPiBJJ20gdGhpbmtpbmcgdGhhdCBjYWNoZS5w
eSBkZWZpbmVzIHRoZSBjbGFzcyBidXQgdGhlIGhvYiBzcGVjaWZpYw0KPiBkZWZpbml0aW9uIHVz
aW5nIHRoYXQgY2xhc3MgdG8gZXh0ZW5kIHRoZSBjYWNoZSBkYXRhIHNob3VsZCBiZSBwYXJ0IG9m
DQo+IHRoZSBob2IgY29kZWJhc2UuIEluIHRoZSBmdXR1cmUgdGhlcmUgbWF5IGJlIGV4dGVybmFs
IFVJcyBjYWxsaW5nIGludG8NCj4gdGhpcyBjb2RlIGFuZCBuZWVkaW5nIHRoaXMgZnVuY3Rpb25h
bGl0eSBhbmQgSSdkIHByZWZlciB0aGVtIG5vdCB0byBlYWNoDQo+IG5lZWQgdG8gY2hhbmdlIGNh
Y2hlLnB5Lg0KDQpIaSwgUmljaGFyZCwganVzdCBhIHF1ZXN0aW9uIGhlcmUuIFlvdSBtZWFuIGV4
dC1ob2ItY2FjaGUgZGF0YSB3aWxsIGJlIGEgc3ViLWNsYXNzDQpvZiBjYWNoeSBkYXRhPyBJbmhl
cml0YW5jZSBoZXJlPyBXZSBvcmlnaW5hbGx5IGNvbnNpZGVyIHRoaXMsIHlldCBqdXN0IGZhaWxl
ZCB0byBmaW5kDQphIGdvb2Qgd2F5LiBOYW1lZHR1cGxlIGhhcyB0aGUgc3RhdGljIGRpY3QgZmll
bGRzLiBTbyBuYW1lZHR1cGxlIGNsYXNzIGNhbid0IGJlIGV4dGVuZGVkLg0KRm9yIGluaGVyaXRh
bmNlLCBJIG11c3QgY2hhbmdlIHRoZSBvcmlnaW5hbCBjYWNoZS5weSBpbXBsYW50YXRpb24uIA0K
SnVzdCB3YW50IHRvIGhlYXIgeW91ciBzdWdnZXN0aW9uIGhlcmUuLi4NCg0KPiANCj4gPiBBbmQg
YWxzbywgaWYgeW91IHRoaW5rIGl0IGlzIGEgbXVzdCwgY291bGQgd2Ugc3BsaXQgdGhlIHRhc2ss
IGZvciB0aGlzIHBoYXNlLCBrZWVwDQo+IGl0IGluIHRoZSBzYW1lIGZpbGUuDQo+ID4gQW5kIHRo
ZW4gcmVmYWN0b3J5IHRoZW0gaW4gYW5vdGhlciBwYXRjaCBsYXRlcj8gU2VlbXMgdGhlcmUncmUg
bWFueSB0YXNrcw0KPiBmb3IgaW1hZ2UgY3JlYXRvcj8gU2VlbXMgdGhlIHNjaGVkdWxlIGlzDQo+
ID4gdGlnaHQ/DQo+IA0KPiBJZiB5b3UgZG9uJ3QgdGhpbmsgdGhpcyBpcyByZWFsaXN0aWMgaW4g
dGhlIHRpbWUgYXZhaWxhYmxlLCBJIG1pZ2h0IGJlDQo+IGFibGUgdG8gdGFrZSBhIGxvb2sgYXQg
aXQuDQoNCk9oLCBJIGd1ZXNzIEplc3NpY2Egd2lsbCByZS1hcnJhbmdlIHRoZSBzY2hlZHVsZSB0
b2RheS4uLiBTZWVtcyBmb3IgdGhlIHRhc2ssIHRoZXJlJ3JlDQptYW55IGRpZmZlcmVudCB1bmRl
cnN0YW5kaW5nIGFib3V0IHRoZSByZXF1aXJlbWVudCBhdCB0aGUgdmVyeSBiZWdpbm5pbmcuLi4g
SSB3aWxsIHRyeSB0bw0KdW5kZXJzdGFuZCBhbGwgdGhlIGRldGFpbHMgYmVmb3JlIHdyaXRpbmcg
dGhlIGNvZGUgLTopDQogDQoNCj4gTm8sIEkgbWVhbiBjYW4gd2UgY291bGQgcGFzczoNCj4gDQo+
IGJpdGJha2VfbW9kZSA9IFsnaG9iJywgJ2F1dG9idWlsZGVyJ10NCj4gDQo+IGFuZCBpdCB0aGVu
IHVzZXMgdGhyZWUgY2FjaGUgZmlsZXMgc28gYml0YmFrZV9tb2RlIHdvdWxkIGJlY29tZSBhIGxp
c3QNCj4gcmF0aGVyIHRoYW4gYSBzaW5nbGUgaXRlbS4NCj4gDQpPSywgSSB1bmRlcnN0YW5kIHRo
aXMgcmVxdWlyZW1lbnQgbm93Lg0KQWZ0ZXIgd2Ugc3luYyB1cCB0b2RheSwgSSBzaG91bGQgaGF2
ZSBhIGNsZWFyZXIgdW5kZXJzdGFuZGluZyBhYm91dCB0aGUgcmVxdWlyZW1lbnQgYW5kIEkgd2ls
bCByZWRvIHRoZSBwYXRjaCENCg0KVGhhbmtzIGEgbG90IGZvciB5b3VyIGhlbHAhDQpjcmlwaW5n
DQoNCg0KPiBDaGVlcnMsDQo+IA0KPiBSaWNoYXJkDQoNCg==

