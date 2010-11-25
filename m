Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5228C4C810B1
	for <poky@pokylinux.org>; Wed, 24 Nov 2010 18:33:22 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 24 Nov 2010 16:33:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,250,1288594800"; d="scan'208";a="680832240"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 24 Nov 2010 16:33:21 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 25 Nov 2010 08:32:10 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 25 Nov 2010 08:32:09 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Date: Thu, 25 Nov 2010 08:32:07 +0800
Thread-Topic: [poky] [PATCH 1/1] *.bbappend: don't expand FILESEXTRAPATHS
	immediately
Thread-Index: AcuMIVHIZS+jiraeQi+8r/7dSfKR4gAFqSqg
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D3E152C77@shsmsx502.ccr.corp.intel.com>
References: <c6d829$pkuj17@fmsmga001.fm.intel.com>
	<1290635279.26464.142.camel@rex>
In-Reply-To: <1290635279.26464.142.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: [PATCH 1/1] *.bbappend: don't expand FILESEXTRAPATHS immediately
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
X-List-Received-Date: Thu, 25 Nov 2010 00:33:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PkZyb206IFJpY2hhcmQgUHVyZGllIFttYWlsdG86cnB1cmRpZUBsaW51eC5pbnRlbC5jb21dDQo+
U2VudDogVGh1cnNkYXksIE5vdmVtYmVyIDI1LCAyMDEwIDU6NDggQU0NCj4NCj5PbiBXZWQsIDIw
MTAtMTEtMjQgYXQgMTI6MjcgKzA4MDAsIEtldmluIFRpYW4gd3JvdGU6DQo+PiBUaGVyZSdzIG5v
IHBvaW50IHRvIGV4cGFuZCBGSUxFU0VYVFJBUEFUSFMgaW1tZWRpYXRlbHksIHNpbmNlIHRoZSBw
bGFjZSB3aGVyZQ0KPj4gaXQncyByZWZlcmVuY2VkIHN0aWxsIHVzZSBub3JtYWwgZ2V0VmFyKEZJ
TEVTRVhUUkFQQVRIUywgZCwgVHJ1ZSkuIFRoaXMgd2F5DQo+PiBpdCBkb2Vzbid0IGhlbHAgYW55
dGhpbmcgZXhjZXB0IGFkZGluZyBvbmUgbW9yZSBicmVha2luZyB2YXJpYWJsZSBvbiBzc3RhdGUu
DQo+DQo+VGhlcmUgaXMgYSB2ZXJ5IHNpZ25pZmljYW50IHJlYXNvbiBmb3IgZG9pbmcgaW1tZWRp
YXRlIGV4cGFuc2lvbiB3aXRoDQo+dGhlc2UgdmFyaWFibGVzLg0KPg0KPlRoZSA6PSBlbnN1cmVz
IHRoYXQgdGhlIGV4cGFuc2lvbiBoYXBwZW5zIGluIHRoZSBjb250ZXh0IG9mIHRoZSBjdXJyZW50
DQo+ZmlsZS4gTG9vayBhdCB0aGUgdmFsdWUgb2YNCj4NCj5iaXRiYWtlIGZvcm1mYWN0b3IgLWUg
fCBncmVwIF5GSUxFU0VYVFJBUEFUSA0KPg0KPmJlZm9yZSBhbmQgYWZ0ZXIgdGhpcyBwYXRjaCBh
bmQgeW91J2xsIHNlZSB3aGF0IEkgbWVhbi4gSXQgZW5zdXJlcyB0aGUNCj5kaXJlY3RvcnkgY29u
dGFpbmluZyB0aGUgYmJhcHBlbmQgaXMgc2VhcmNoZWQgZm9yIHNvdXJjZSBmaWxlcyBhcyB3ZWxs
DQo+YXMgdGhlIGRpcmVjdG9yeSBjb250YWluaW5nIHRoZSAuYmIgZmlsZS4NCg0KR29vZCB0byBr
bm93IHRoYXQuIEludGVyZXN0aW5nIHRoaW5nIGlzIHdoeSB3aXRoIHRoaXMgY2hhbmdlIHRoZXJl
J3Mgbm8gZXJyb3INCmV4cG9zZWQuIDovDQoNCkFueXdheSwgSm9zaCBhbHNvIHJlbWluZGVkIG1l
IGFib3V0IHRoaXMgYW5kIEkndmUgc2VudCBvdXQgYW4gdXBkYXRlZCBvbmUgbm90DQp0b3VjaGlu
ZyBhYm92ZSBzZW5zaXRpdmUgcGxhY2VzLiA6LSkNCg0KVGhhbmtzDQpLZXZpbg0KDQo+DQo+Q2hl
ZXJzLA0KPg0KPlJpY2hhcmQNCj4NCj4NCj4NCj4+IFNpZ25lZC1vZmYtYnk6IEtldmluIFRpYW4g
PGtldmluLnRpYW5AaW50ZWwuY29tPg0KPj4gLS0tDQo+PiAgZG9jdW1lbnRhdGlvbi9ic3AtZ3Vp
ZGUvYnNwLnhtbCAgICAgICAgICAgICAgICAgICAgfCAgICAyICstDQo+PiAgLi4uL3JlY2lwZXMv
Zm9ybWZhY3Rvci9mb3JtZmFjdG9yXzAuMC5iYmFwcGVuZCAgICAgfCAgICAyICstDQo+PiAgLi4u
L3JlY2lwZXMvbGludXgvbGludXgteW9jdG9fZ2l0LmJiYXBwZW5kICAgICAgICAgfCAgICAyICst
DQo+PiAgbWV0YS1lbWVubG93L3JlY2lwZXMvbGludXgvbGludXhfMi42LjMzLjIuYmJhcHBlbmQg
fCAgICAyICstDQo+PiAgNCBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRp
b25zKC0pDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2RvY3VtZW50YXRpb24vYnNwLWd1aWRlL2JzcC54
bWwgYi9kb2N1bWVudGF0aW9uL2JzcC1ndWlkZS9ic3AueG1sDQo+PiBpbmRleCA5ZTI1MDY4Li4w
ZDcxNmEzIDEwMDY0NA0KPj4gLS0tIGEvZG9jdW1lbnRhdGlvbi9ic3AtZ3VpZGUvYnNwLnhtbA0K
Pj4gKysrIGIvZG9jdW1lbnRhdGlvbi9ic3AtZ3VpZGUvYnNwLnhtbA0KPj4gQEAgLTMwNyw3ICsz
MDcsNyBAQA0KPm1ldGEtYnNwL3BhY2thZ2VzL2ltYWdlLWNyZWF0b3IvaW1hZ2UtY3JlYXRvci1u
YXRpdmVfMC4xLmJiDQo+PiAgICAgICAgICAgICAgICAgIFRoZSBleGFtcGxlIGJlbG93IHNob3dz
IGV4dHJhIGZpbGVzIGNvbnRhaW5lZCBpbiBhIGZvbGRlciBjYWxsZWQgJHtQTn0NCj4odGhlIHBh
Y2thZ2UgbmFtZSkuDQo+PiAgICAgICAgICAgICAgPC9wYXJhPg0KPj4gICAgICAgICAgICAgIDxw
cm9ncmFtbGlzdGluZz4NCj4+IC1GSUxFU0VYVFJBUEFUSFMgOj0gIiR7VEhJU0RJUn0vJHtQTn0i
DQo+PiArRklMRVNFWFRSQVBBVEhTID0gIiR7VEhJU0RJUn0vJHtQTn0iDQo+PiAgICAgICAgICAg
ICAgPC9wcm9ncmFtbGlzdGluZz4NCj4+ICAgICAgICAgICAgICA8cGFyYT4NCj4+ICAgICAgICAg
ICAgICBUaGlzIHRlY2huaXF1ZSBhbGxvd3MgdGhlIEJTUCB0byBhZGQgbWFjaGluZS1zcGVjaWZp
YyBjb25maWd1cmF0aW9uIGZpbGVzIHRvDQo+dGhlIGxheWVyIGRpcmVjdG9yeSwNCj4+IGRpZmYg
LS1naXQgYS9tZXRhLWVtZW5sb3cvcmVjaXBlcy9mb3JtZmFjdG9yL2Zvcm1mYWN0b3JfMC4wLmJi
YXBwZW5kDQo+Yi9tZXRhLWVtZW5sb3cvcmVjaXBlcy9mb3JtZmFjdG9yL2Zvcm1mYWN0b3JfMC4w
LmJiYXBwZW5kDQo+PiBpbmRleCA0YTQxZDQ4Li5hNjRmMzY3IDEwMDY0NA0KPj4gLS0tIGEvbWV0
YS1lbWVubG93L3JlY2lwZXMvZm9ybWZhY3Rvci9mb3JtZmFjdG9yXzAuMC5iYmFwcGVuZA0KPj4g
KysrIGIvbWV0YS1lbWVubG93L3JlY2lwZXMvZm9ybWZhY3Rvci9mb3JtZmFjdG9yXzAuMC5iYmFw
cGVuZA0KPj4gQEAgLTEsMyArMSwzIEBADQo+PiAtRklMRVNFWFRSQVBBVEhTIDo9ICIke1RISVNE
SVJ9LyR7UE59Ig0KPj4gK0ZJTEVTRVhUUkFQQVRIUyA9ICIke1RISVNESVJ9LyR7UE59Ig0KPj4N
Cj4+ICBQUklOQyA9ICIxIg0KPj4gZGlmZiAtLWdpdCBhL21ldGEtZW1lbmxvdy9yZWNpcGVzL2xp
bnV4L2xpbnV4LXlvY3RvX2dpdC5iYmFwcGVuZA0KPmIvbWV0YS1lbWVubG93L3JlY2lwZXMvbGlu
dXgvbGludXgteW9jdG9fZ2l0LmJiYXBwZW5kDQo+PiBpbmRleCA5ZmEyOTM3Li43N2M1MjIzIDEw
MDY0NA0KPj4gLS0tIGEvbWV0YS1lbWVubG93L3JlY2lwZXMvbGludXgvbGludXgteW9jdG9fZ2l0
LmJiYXBwZW5kDQo+PiArKysgYi9tZXRhLWVtZW5sb3cvcmVjaXBlcy9saW51eC9saW51eC15b2N0
b19naXQuYmJhcHBlbmQNCj4+IEBAIC0xLDMgKzEsMyBAQA0KPj4gLUZJTEVTRVhUUkFQQVRIUyA6
PSAiJHtUSElTRElSfS8ke1BOfSINCj4+ICtGSUxFU0VYVFJBUEFUSFMgPSAiJHtUSElTRElSfS8k
e1BOfSINCj4+ICBDT01QQVRJQkxFX01BQ0hJTkVfZW1lbmxvdyA9ICJlbWVubG93Ig0KPj4gIEtN
QUNISU5FX2VtZW5sb3cgID0gImVtZW5sb3ciDQo+PiBkaWZmIC0tZ2l0IGEvbWV0YS1lbWVubG93
L3JlY2lwZXMvbGludXgvbGludXhfMi42LjMzLjIuYmJhcHBlbmQNCj5iL21ldGEtZW1lbmxvdy9y
ZWNpcGVzL2xpbnV4L2xpbnV4XzIuNi4zMy4yLmJiYXBwZW5kDQo+PiBpbmRleCBmYWMwOTIxLi5j
NmY4MWQ0IDEwMDY0NA0KPj4gLS0tIGEvbWV0YS1lbWVubG93L3JlY2lwZXMvbGludXgvbGludXhf
Mi42LjMzLjIuYmJhcHBlbmQNCj4+ICsrKyBiL21ldGEtZW1lbmxvdy9yZWNpcGVzL2xpbnV4L2xp
bnV4XzIuNi4zMy4yLmJiYXBwZW5kDQo+PiBAQCAtMSwzICsxLDMgQEANCj4+IC1GSUxFU1BBVEgg
Oj0gIiR7RklMRVNQQVRIfToke0Bvcy5wYXRoLmRpcm5hbWUoYmIuZGF0YS5nZXRWYXIoJ0ZJTEUn
LCBkLCBUcnVlKSl9Ig0KPj4gK0ZJTEVTRVhUUkFQQVRIID0gIiR7VEhJU0RJUn0vJHtQTn0iDQo+
PiAgU1JDX1VSSSArPSAiZmlsZTovL2RlZmNvbmZpZyINCj4+ICBDT01QQVRJQkxFX01BQ0hJTkVf
ZW1lbmxvdyA9ICJlbWVubG93Ig0KPg0KDQo=

