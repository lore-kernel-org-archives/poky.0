Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id A9E5A4C80039
	for <poky@yoctoproject.org>; Sun,  5 Dec 2010 03:32:17 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 05 Dec 2010 01:32:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,301,1288594800"; d="scan'208";a="864637958"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 05 Dec 2010 01:32:16 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sun, 5 Dec 2010 17:32:15 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Sun, 5 Dec 2010
	17:32:14 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Chris Larson <clarson@kergoth.com>, Richard Purdie
	<rpurdie@linux.intel.com>
Date: Sun, 5 Dec 2010 17:32:00 +0800
Thread-Topic: [poky] [PATCH 1/1] curl: fix native dependency
Thread-Index: AcuP2aNiSvR2LVlgQmW0nGqoNcXY6wEfQQLg
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D475430EC@shsmsx502.ccr.corp.intel.com>
References: <cover.1289982751.git.qing.he@intel.com>
	<a03c4017a13bda3f20b8f39a4c099cb28f349968.1289982751.git.qing.he@intel.com>
	<1290954166.27143.217.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D42C686F3@shsmsx502.ccr.corp.intel.com>
	<AANLkTi=oxv9goiEMAfpkDAvq7n_GfGUMSXsonXDdzixd@mail.gmail.com>
	<1291033557.14277.944.camel@rex>
	<AANLkTinYx+43yRYFu=BYQPVJHox6CmBgOMFF199z3BC=@mail.gmail.com>
In-Reply-To: <AANLkTinYx+43yRYFu=BYQPVJHox6CmBgOMFF199z3BC=@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: AzOn BuzF CBYs EaTq ErBg GLVB G5G4 IVYt Ls8l NNsk OJ9t
	PQoM RDUA Sqnd cP86 gjEo; 3;
	YwBsAGEAcgBzAG8AbgBAAGsAZQByAGcAbwB0AGgALgBjAG8AbQA7AHAAbwBrAHkAQAB5AG8AYwB0AG8AcAByAG8AagBlAGMAdAAuAG8AcgBnADsAcgBwAHUAcgBkAGkAZQBAAGwAaQBuAHUAeAAuAGkAbgB0AGUAbAAuAGMAbwBtAA==;
	Sosha1_v1; 7; {89CFCCA3-A934-4E95-90A4-293E4B16DB3C};
	awBlAHYAaQBuAC4AdABpAGEAbgBAAGkAbgB0AGUAbAAuAGMAbwBtAA==; Sun,
	05 Dec 2010 09:32:00 GMT;
	UgBFADoAIABbAHAAbwBrAHkAXQAgAFsAUABBAFQAQwBIACAAMQAvADEAXQAgAGMAdQByAGwAOgAgAGYAaQB4ACAAbgBhAHQAaQB2AGUAIABkAGUAcABlAG4AZABlAG4AYwB5AA==
x-cr-puzzleid: {89CFCCA3-A934-4E95-90A4-293E4B16DB3C}
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] curl: fix native dependency
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
X-List-Received-Date: Sun, 05 Dec 2010 09:32:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PkZyb206IENocmlzIExhcnNvbg0KPlNlbnQ6IE1vbmRheSwgTm92ZW1iZXIgMjksIDIwMTAgMTE6
MjUgUE0NCj4NCj5PbiBNb24sIE5vdiAyOSwgMjAxMCBhdCA1OjI1IEFNLCBSaWNoYXJkIFB1cmRp
ZSA8cnB1cmRpZUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOg0KPj4gT24gU3VuLCAyMDEwLTExLTI4
IGF0IDIyOjUzIC0wNzAwLCBDaHJpcyBMYXJzb24gd3JvdGU6DQo+Pj4gT24gU3VuLCBOb3YgMjgs
IDIwMTAgYXQgMTA6MjYgUE0sIFRpYW4sIEtldmluIDxrZXZpbi50aWFuQGludGVsLmNvbT4gd3Jv
dGU6DQo+Pj4gPiBUaGlzIGFsc28gY29uZnVzZXMgbWUgYSBiaXQuIFdoZW4gdmlydGNsYXNzLW5h
dGl2ZSBpcyBleHBhbmRlZCwNCj5FWFRSQV9PRUNPTkZfYXBwZW5kDQo+Pj4gPiBpcyBzaW1wbHkg
YSB2YXJpYWJsZS4gSW4gdGhhdCBjYXNlIHRoZSBleHBhbmRlZCB2YWx1ZSBzaG91bGQgb3ZlcnJp
ZGUgdGhlIDFzdA0KPmFzc2lnbm1lbnQNCj4+PiA+IG9mIEVYVFJBX09FQ09ORl9hcHBlbmQsIGFu
ZCB0aGVuIHdlIHNob3VsZCBnZXQ6DQo+Pj4gPg0KPj4+ID4gRVhUUkFfT0VDT05GX2FwcGVuZCA9
ICIgLS13aXRob3V0LWdudXRscyAiDQo+Pj4gPg0KPj4+ID4gYW5kIHRoZW4gdGhhdCdzIHdoYXQg
d2UgZXhwZWN0Lg0KPj4+ID4NCj4+PiA+IEkgZ3Vlc3MgSSBtYXkgc3RpbGwgb3Zlcmxvb2sgc29t
ZXRoaW5nIGhlcmUsIGFuZCByZWFsbHkgYXBwcmVjaWF0ZSB5b3VyIGV4cGxhbmF0aW9uDQo+Pj4g
PiBvbiB0aGUgd2hvbGUgZmxvdyB3aGljaCBpcyBoZWxwZnVsLiA6LSkNCj4+Pg0KPj4+IE5vLCBF
WFRSQV9PRUNPTkZfYXBwZW5kIGlzIG5ldmVyIGEgdmFyaWFibGUuIMKgX2FwcGVuZC9fcHJlcGVu
ZCBhcmUNCj4+PiBvcGVyYXRpb25zLCBub3QgcGFydCBvZiB0aGUgbmFtZS4gwqBUaGUgdmFsdWUg
Z2V0cyBzZXQgYXNpZGUgaW4gYSBsaXN0DQo+Pj4gb2YgYXBwZW5kcyBmb3IgdGhhdCB2YXJpYWJs
ZS4gwqBPbmUgX2FwcGVuZCBjYW5ub3Qgb3ZlcnJpZGUvcmVwbGFjZQ0KPj4+IGFub3RoZXIgb24g
dGhlIHNhbWUgdmFyaWFibGUsIGl0cyBhbHdheXMgY3VtdWxhdGl2ZS4NCj4+DQo+PiBSaWdodC4N
Cj4+DQo+PiBJbnRlcmVzdGluZ2x5IHRob3VnaCwgaWYgSSBhZGQgdGhpcyB0byBjdXJsKi5iYjoN
Cj4+DQo+PiBGT08gPSAiQSINCj4+IEZPT19hcHBlbmQgPSAiQiINCj4+IEZPT19hcHBlbmRfdmly
dGNsYXNzLW5hdGl2ZSA9ICJDIg0KPj4NCj4+IGFuZCB0aGVuICJiaXRiYWtlIGN1cmwtbmF0aXZl
IC1lIHwgZ3JlcCBGT08iIChoZSByZWNpcGUgaGFzIGENCj4+IEJCQ0xBU1NFWFRFTkQgbmF0aXZl
KSB3aGF0IHNob3VsZCBJIHNlZT8NCj4+DQo+PiBJIHNlZSBGT08gPSAiQUIiIHdoaWNoIGlzIG5v
dCB3aGF0IEkgdGhvdWdodCBpdCB3b3VsZCBkby4uLg0KPg0KPkhtbSwgdGhpcyBpc24ndCB3aGF0
IEknZCBleHBlY3QgZWl0aGVyLiAgSXQncyBjZXJ0YWlubHkgbm90IHdoYXQgd2FzDQo+b3JpZ2lu
YWxseSBpbnRlbmRlZCAtLSBfYXBwZW5kXzxmb28+IGFuZCBfcHJlcGVuZF88Zm9vPiB3ZXJlIGFs
d2F5cw0KPnN1cHBvc2VkIHRvIGFjdCBsaWtlIG5vcm1hbCBfYXBwZW5kL19wcmVwZW5kLCBqdXN0
IGNvbmRpdGlvbmFsIG9uZXMuDQoNCkkgZ3Vlc3MgaXQncyByZWxhdGVkIHRvIGJlbG93IGxpbmVz
IChmcm9tIGZpbmFsaXplKCkpOg0KDQogICAgICAgICAgICAgICAgICAgICMgbWF5YmUgdGhlIE9W
RVJSSURFIHdhcyBub3QgeWV0IGFkZGVkIHNvIGtlZXAgdGhlIGFwcGVuZA0KICAgICAgICAgICAg
ICAgICAgICBpZiAobyBhbmQgbyBpbiBvdmVycmlkZXMpIG9yIG5vdCBvOg0KICAgICAgICAgICAg
ICAgICAgICAgICAgc2VsZi5kZWxWYXJGbGFnKGFwcGVuZCwgIl9hcHBlbmQiKQ0KICAgICAgICAg
ICAgICAgICAgICBpZiBvIGFuZCBub3QgbyBpbiBvdmVycmlkZXM6DQogICAgICAgICAgICAgICAg
ICAgICAgICBjb250aW51ZQ0KDQpGT09fYXBwZW5kID0gIkIiIGlzIHBhcnNlZCBpbnRvICgiQiIs
IE5PTkUpDQpGT09fYXBwZW5kX3ZpcnRjbGFzcy1uYXRpdmUgPSAiQyIgaXMgcGFyc2VkIGludG8g
KCJDIiwgdmlydGNsYXNzLW5hdGl2ZSkNCg0KSWYgKCJDIiwgdmlydGNsYXNzLW5hdGl2ZSkgaXMg
ZW51bWVyYXRlZCBmaXJzdCwgdGhlIHJlc3VsdCBpcyBkZXNpcmVkOiAiQyIgaXMgYXBwZW5kZWQN
CnRvIEZPTyB3aXRoICgiQiIsIE5PTkUpIHNpbXBseSByZW1vdmVkLg0KDQpJZiAoIkIiLCBOT05F
KSBpcyBlbnVtZXJhdGVkIGZpcnN0LCB0aGVuIHRoZSByZXN0IGFwcGVuZGl4ZXMgYXJlIHJlbW92
ZWQgdG9vIHdoaWNoDQppcyBub3QgZGVzaXJlZC4NCg0KVGhlIG5ldCBlZmZlY3QgaXMgdGhhdCB0
aGUgMXN0IGFwcGVuZGl4IGFsd2F5cyB0YWtlcyBlZmZlY3Qgb3ZlciB0aGUgcmVzdCB1bmxlc3Mg
aXQNCmhhcyBhbiBvdmVycmlkZSB3aGljaCBoYXNuJ3QgYmVlbiBmb3VuZCB5ZXQuDQoNCkJlc2lk
ZXMgdGhpcyBwcm9ibGVtLCB0aGVyZSdzIGFsc28gbm8gY29uc2lkZXJhdGlvbiBhYm91dCBvdmVy
cmlkZSBwcmlvcml0eS4gSXQgY2FuJ3QNCmhhbmRsZSBtdWx0aXBsZSBvdmVycmlkZXMgb24gc2Ft
ZSBGT09fYXBwZW5kLg0KDQpUbyBzb2x2ZSBpdCwgd2Ugc3RpbGwgbmVlZCB0byBpdGVyYXRlIG92
ZXJyaWRlIGxpc3QgZnJvbSBoaWdoZXN0IHByaW9yaXR5IHRvIGxvd2VzdCBlbmQsDQphbmQgdGhl
biBjaG9vc2UgdGhlIHZhbHVlIGZyb20gdGhlIG9uZSBmaXJzdGx5IG1hdGNoaW5nIGFuIG92ZXJy
aWRlLiBNeSByZW1vdGUgDQptYWNoaW5lIGlzIGRvd24gbm93IGFuZCB0aHVzIHVuYWJsZSB0byB2
ZXJpZnkgaXQgdGhvdWdoLg0KDQpUaGFua3MNCktldmluDQo=

