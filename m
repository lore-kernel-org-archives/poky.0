Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id E0BFF4C81065
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 19:50:13 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 20 Jan 2011 17:50:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,354,1291622400"; d="scan'208";a="879509222"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga001.fm.intel.com with ESMTP; 20 Jan 2011 17:50:13 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 21 Jan 2011 09:50:12 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 21 Jan 2011 09:50:11 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Zhai, Edwin" <edwin.zhai@intel.com>, "Wold, Saul" <saul.wold@intel.com>
Date: Fri, 21 Jan 2011 09:50:09 +0800
Thread-Topic: [poky] [PATCH 0/6] 2nd pull request: UX, gtk+/apr, Edwin,
	Jan19, 2011
Thread-Index: Acu5CaMsRTi9/Ym7Rh6SZRB6tY+Q7QAAnQhA
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D9F1089AB@shsmsx502.ccr.corp.intel.com>
References: <cover.1295397702.git.edwin.zhai@intel.com>
	<4D38BC0B.7080501@intel.com> <4D38DFB5.3000907@intel.com>
In-Reply-To: <4D38DFB5.3000907@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/6] 2nd pull request: UX, gtk+/apr, Edwin, Jan19, 2011
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
X-List-Received-Date: Fri, 21 Jan 2011 01:50:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBGcm9tOiBaaGFpLCBFZHdpbg0KPiBTZW50OiBGcmlkYXksIEphbnVhcnkgMjEsIDIwMTEgOToy
MiBBTQ0KPiANCj4gSSBhbSBhbHdheXMgY2hhbGxlbmdlZCBieSB0aGUgdmVyc2lvbiBjaGVja2lu
ZyBzeXN0ZW0gdGhhdCB3aHkgbm90DQo+IHVwZ3JhZGUgdG8gbGF0ZXN0IHZlcnNpb246KA0KPiBT
ZWUgbXkgY29tbWVudHMgYmVsb3cgZm9yIHRoZXNlIHBhY2thZ2VzLi4uDQo+IA0KPiBXb2xkLCBT
YXVsIHdyb3RlOg0KPiA+IE9uIDAxLzE4LzIwMTEgMDQ6NDYgUE0sIFpoYWkgRWR3aW4gd3JvdGU6
DQo+ID4NCj4gPj4gU2F1bCwNCj4gPj4gVGhpcyBpcyB0aGUgMm5kIHB1bGwgcmVxdWVzdCBmb3Ig
Z3RrKyxnZGstcGl4YnVmLGFwci4gQWxzbyBhZGRlZCB3ZWJraXQtZ3RrLg0KPiA+PiBRZW11IHVw
Z3JhZGUgaXMgdW5kZXIgdGVzdCBhY3Jvc3MgYWxsIHBsYXRmb3JtcywgYW5kIHdpbGwgYmUgb3V0
IHNvb24uDQo+ID4+DQo+ID4+DQo+ID4NCj4gPg0KPiA+IEVkd2luLA0KPiA+DQo+ID4gSXQgd2Fz
IG5vdGljZWQgdGhhdCB5b3UgdXBkYXRlZCBhIGxpdHRsZSB0b28gYWdncmVzc2l2ZWx5ISAgRm9y
IHRoZQ0KPiA+IGd0ayssIHdlYmtpdCwgZWRzLWRidXMgYW5kIGdsaWIsIHlvdSBtb3ZlZCB0byB0
aGUgZGV2ZWxvcG1lbnQgdmVyc2lvbnMuDQoNCkkgdGhpbmsgdGhpcyBpcyBub3QgYSB3aGl0ZS1i
bGFjayBxdWVzdGlvbi4gR2VuZXJhbGx5IHdlIGNob29zZSBhIHN0YWJsZSB2ZXJzaW9uLg0KSWYg
dGhlcmUncyBhIHJlYXNvbiBnb2luZyBmb3IgZGV2ZWxvcG1lbnQgdmVyc2lvbiwgZS5nLiBpbXBv
cnRhbnQgc2VjdXJpdHkgZml4LA0KbmVjZXNzaXR5IHRvIHNob3cgY2FzZSBhIG5ldyBmZWF0dXJl
LCBldGMuIGl0IHN0aWxsIG1ha2VzIHNlbnNlIHRvIGJlIGFnZ3Jlc3NpdmUuDQoNCldoYXQgd2Ug
bGFjayBoZXJlIGlzIHRvIGhhdmUgYW4gZXhwbGFuYXRpb24gZm9yIHdoeSBhIHZlcnNpb24gaXMg
Y2hvc2VuIGZvciB0aGUNCnVwZ3JhZGUgY29tbWl0LiBUaGF0IHdheSBTYXVsL1JQIGNvdWxkIGdl
dCB0aGUgcmF0aW9uYWxlIGluIHRoZSAxc3QgcGxhY2UsIGFuZA0KaW5zdGVhZCBvZiBhIGRlbGF5
ZWQgZGlzY3Vzc2lvbiBsaWtlIHRoaXMuDQoNClNvIEknZCBwcm9wb3NlIHBlb3BsZSB0byBzdGFy
dCBhZGRpbmcgbW9yZSBpbmZvIGluIHRoZSBjb21taXQgbWVzc2FnZSwgZXNwZWNpYWxseQ0Kd2hl
biB5b3UgY2hvb3NlIGEgdmVyc2lvbiBmb3IgYSBzcGVjaWZpYyByZWFzb24sIGxpa2Ugd2hhdCBF
ZHdpbiBleHBsYWlucyBiZWxvdy4NCg0KRG9lcyBpdCBtYWtlIHNlbnNlPw0KDQo+ID4NCj4gPiBJ
biBzb21lIG9wZW4gc291cmNlIHByb2plY3QgZXZlbiByZWxlYXNlcyBhcmUgc3RhYmxlIGFuZCBv
ZGQgcmVsZWFzZXMNCj4gPiBhcmUgdW5zdGFibGUsIHNvIGluIHRoaXMgY2FzZSB3ZSB3YW50IHRv
IGdvIHRvIHRoZSBmb2xsb3dpbmc6DQo+ID4NCj4gPiBndGsrOiAyLjIyLjENCj4gPg0KPiANCj4g
VGhlcmUgaXMgYWxzbyAyLjkwLlggdGhlcmUuIEFuZCBJIHRyZWF0ZWQgaXQgYXMgZGV2ZWxvcG1l
bnQgYnJhbmNoLCBhbmQNCj4gc3RpY2sgdG8gbG93ZXIgdmVyc2lvbi4NCj4gSSBoYXZlIGNvbXBh
cmVkIGJldHdlZW4gMi4yMi4xIGFuZCAyLjIzLjIsIGFuZCBmb3VuZCBubyBtdWNoIGRpZmZlcmVu
Y2UuDQo+IE9uZSBjYXNlIGlzIDIuMjMuMiBzdXBwb3J0IGxpYnRvb2wgMi40LCBidXQgMi4yMi4x
IGRvZXNuJ3QsIHNvIHdlIG1heQ0KPiBoYXZlIHNvbWUgYXV0b2NvbmYgaXNzdWUgdGhlcmUuIEFu
eXdheSwgaWYgeW91IHdhbnQgdG8gc3RpY2sgd2l0aCBzdGFibGUNCj4gdmVyc2lvbu+8jCBJIGNh
biBkb3duZ3JhZGUgaXQgdG8gMi4yMi4xLg0KDQpUaGlzIHdheSBJJ2QgYWdyZWUgd2l0aCAyLjIz
LjIgc2luY2UgaXQgYWRkcyBhIG5ldyBmZWF0dXJlIGFuZCBiYXNlZCBvbiB5b3VyDQpjb21wYXJp
c29uIG5vIG11Y2ggb3RoZXIgY2hhbmdlcyB0byBpbmN1ciBpbnN0YWJpbGl0eS4NCg0KPiANCj4g
PiBnbGliOiAyLjI2LjENCj4gPg0KPiANCj4gRG9uZ3hpYW8gb3duZWQgdGhpcz8NCj4gPiBlZHMt
ZGJ1czogMi4zMg0KPiA+DQo+IA0KPiANCj4gTXkgcHJldmlvdXMgdXBncmFkZSBpcyAyLjMyLjEu
IEJ1dCB3aXRoIGFkZGVkIG5zcy9uc3ByLCBpdCdzIHJlamVjdGVkLg0KPiBXb3JraW5nIGlzIGlu
IHByb2dyZXNzLg0KPiANCj4gPiB3ZWJraXQtZ3RrIDEuMi42DQo+ID4NCj4gDQo+IE91ciBwb2t5
IHNlZW1zIG5ldmVyIGhhcyBzdGFibGUgcmVsZWFzZSwgYW5kIGFsd2F5cyB1c2UgZGV2ZWxvcG1l
bnQNCj4gYnJhbmNoLiBNYXliZSB3ZSB3YW50IHNvbWUgbmV3IGZlYXR1cmU/IFJQIGNhbiBjb21t
ZW50LiBBbm90aGVyIGJlbmVmaXQNCj4gaXMgZGV2ZWxvcG1lbnQgYnJhbmNoIGlzIHVuZGVyIHN2
biwgc28gd2UgY2FuIHNlbGVjdGl2ZWx5IHBpY2sgc29tZQ0KPiBtb2R1bGVzIGluc3RlYWQgb2Yg
YmlnIHdob2xlIHJlcG8uIEdpdmVuIGRldmVsb3BtZW50IGJyYW5jaCwgdGhlcmUgaXMgbm8NCj4g
ZXZlbi9vZGQgZGlmZmVyZW5jZS4NCj4gDQo+IEkgaGF2ZSBhIHBsYW4gdG8gY2hhbmdlIGl0IHRv
IHN0YWJsZSByZWxlYXNlIHdpdGggdGhlIGNvc3Qgb2YgbG9uZw0KPiBkb3dubG9hZCAmIGNvbXBp
bGUgdGltZSwgYnV0IEknbSBhZnJhaWQgY2FuJ3QgbWFrZSBpdCBpbiB0aGlzIHJlbGVhc2UgY3lj
bGUuDQoNCklzIGl0IGZlYXNpYmxlIHRvIHVzZSBkZXZlbG9wbWVudCBicmFuY2ggYnV0IG9ubHkg
ZmV0Y2ggdGhlIHRhZyBtYXRjaGluZyB0aGUgc3RhYmxlDQpyZWxlYXNlPyBUaGlzIHdheSB5b3Ug
Z2V0IHRoZSBiZW5lZml0IG9mIHN2biB3aGlsZSBzdGlsbCBzaXRzIGluIHN0YWJsZSB2ZXJzaW9u
Lg0KDQpUaGFua3MNCktldmluDQo=

