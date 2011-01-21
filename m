Return-Path: <nitin.a.kamble@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 276CD4C811FA
	for <poky@yoctoproject.org>; Fri, 21 Jan 2011 10:39:35 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 21 Jan 2011 08:39:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,359,1291622400"; d="scan'208";a="699224769"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga001.jf.intel.com with ESMTP; 21 Jan 2011 08:39:34 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.226.128) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 21 Jan 2011 08:39:34 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx606.amr.corp.intel.com ([10.22.226.128]) with mapi;
	Fri, 21 Jan 2011 08:39:34 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Fri, 21 Jan 2011 08:39:30 -0800
Thread-Topic: [poky] [PATCH 00/12] gcc dso linking change, and related fixes
Thread-Index: Acu5ADlnl+Ku2fblTY6A5mEVzsEi/AAiJHIQ
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE9409F706B6@orsmsx504.amr.corp.intel.com>
References: <cover.1295304080.git.nitin.a.kamble@intel.com>
	<1295568823.14388.28132.camel@rex>
In-Reply-To: <1295568823.14388.28132.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 00/12] gcc dso linking change, and related fixes
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
X-List-Received-Date: Fri, 21 Jan 2011 16:39:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUmljaGFyZCBQdXJkaWUg
W21haWx0bzpyaWNoYXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnXQ0KPiBTZW50OiBUaHVy
c2RheSwgSmFudWFyeSAyMCwgMjAxMSA0OjE0IFBNDQo+IFRvOiBLYW1ibGUsIE5pdGluIEENCj4g
Q2M6IHBva3lAeW9jdG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBSZTogW3Bva3ldIFtQQVRDSCAw
MC8xMl0gZ2NjIGRzbyBsaW5raW5nIGNoYW5nZSwgYW5kIHJlbGF0ZWQNCj4gZml4ZXMNCj4gDQo+
IEhpIE5pdGluLA0KPiANCj4gT24gTW9uLCAyMDExLTAxLTE3IGF0IDE0OjQ1IC0wODAwLCBOaXRp
biBBIEthbWJsZSB3cm90ZToNCj4gPiBUaGlzIGNvbW1pdCBzZXQsIGNoYW5nZXMgdGhlIGRzbyBs
aW5raW5nIHRvIGF2b2lkIGF1dG9tYXRpYyBsaW5raW5nDQo+IG9mDQo+ID4gc2hhcmVkIGxpYnJh
cmllcy4gVGhpcyBjYXVzZWQsIGFzIGV4cGVjdGVkLCBsaW5raW5nIG9mIGZldyByZWNpcGVzIHRv
DQo+IGZhaWwuDQo+ID4gQWxsIHRoZXNlIHJlY2lwZXMgYXJlIGZpeGVkIGJ5IHNwZWNpZnlpbmcg
dGhlIGxpbmtlZCBsaWJyYXJpZXMNCj4gZXhwbGljaXRlbHkuDQo+ID4NCj4gPiBQdWxsIFVSTDog
Z2l0Oi8vZ2l0LnBva3lsaW51eC5vcmcvcG9reS1jb250cmliLmdpdA0KPiA+ICAgQnJhbmNoOiBu
aXRpbi9kc29fbGlua2luZ19jaGFuZ2UNCj4gPiAgIEJyb3dzZTogaHR0cDovL2dpdC5wb2t5bGlu
dXgub3JnL2NnaXQuY2dpL3Bva3ktDQo+IGNvbnRyaWIvbG9nLz9oPW5pdGluL2Rzb19saW5raW5n
X2NoYW5nZQ0KPiA+DQo+ID4gVGhhbmtzLA0KPiA+ICAgICBOaXRpbiBBIEthbWJsZSA8bml0aW4u
YS5rYW1ibGVAaW50ZWwuY29tPg0KPiANCj4gV2UndmUgdGFrZW4gdGhlc2UgaW50byBtYXN0ZXIg
YnV0IEknbSBhIGJpdCB3b3JyaWVkIGFuZCB3ZSBoYXZlIHNvbWUNCj4gYnJlYWthZ2Ugc3RpbGwu
IFNwZWNpZmljYWxseSwgc3lzdGVtdGFwIGZhaWxlZCB3aXRoIGEgcHRocmVhZCBsaW5rYWdlDQo+
IGZhaWx1cmUuDQo+IA0KPiBJIGNvdWxkbid0IGZpbmQgc3lzdGVtdGFwIHVzaW5nIHB0aHJlYWRz
IGFueXdoZXJlIHRoYXQgd291bGQgY2F1c2UgdGhlDQo+IGVycm9yIHNvIEkgaGl0IGdvb2dsZS4g
SSBmb3VuZDoNCj4gDQo+IGh0dHA6Ly9saXN0cy5mZWRvcmFwcm9qZWN0Lm9yZy9waXBlcm1haWwv
ZGV2ZWwvMjAxMC1KYW51YXJ5LzEyOTEzMS5odG1sDQo+IGh0dHA6Ly9saXN0cy5mZWRvcmFwcm9q
ZWN0Lm9yZy9waXBlcm1haWwvZGV2ZWwvMjAxMC1KYW51YXJ5LzEyOTEzNC5odG1sDQo+IA0KPiBT
byBJJ20gd29uZGVyaW5nIGlmIHdlIHNob3VsZCBkaXNhYmxlIHRoZSBnY2MgcGF0Y2ggdW50aWwg
RmVkb3JhIHNvcnQNCj4gdGhpcyBvdXQuIENvdWxkIHlvdSBsb29rIGludG8gdGhpcyBhbmQgc2Vl
IGlmIHRoZXJlIGFyZSBhbnkgcGF0Y2hlcw0KPiBmaXhpbmcgdGhpcyBwcm9wZXJseSBvdXQgdGhl
cmUgeWV0Pw0KPiANCj4gSXQgZG9lcyBjbGVhcmx5IGluZGljYXRlIHRoYXQgYWRkaW5nIC1scHRo
cmVhZCB0byB0aGUgbWFrZWZpbGUgZm9yDQo+IHN5c3RlbXRhcCB3b3VsZCBiZSB3cm9uZy4gSSdt
IGhvcGluZyB0aGF0IHRoZXJlIHdlcmVuJ3QgYW55IG90aGVyIGNhc2VzDQo+IGxpa2UgdGhpcz8N
Cj4gDQo+IENoZWVycywNCj4gDQo+IFJpY2hhcmQNCj4gDQo+IA0KPiANCkhpIFJpY2hhcmQsDQog
QXMgcGVyIG91ciBkaXNjdXNzaW9ucyB5ZXN0ZXJkYXksIEkgZm91bmQgb3V0IHRoYXQgdGhlIGxk
IGZyb20gbmV3ZXIgYmludXRpbHMgMi4yMSByZWNpcGUgd291bGQgc29sdmUgdGhlc2UgaW5jb3Jy
ZWN0IGxpbmtpbmcgaXNzdWVzLiBTY290dCdzIG5ld2VyIGJpbnV0aWxzIHJlY2lwZSBpcyBhbHJl
YWR5IGluIG1hc3RlciBub3cuIFNvIHRoZSBpc3N1ZSBmb3Igc3lzdGVtdGFwIGlzIHRha2VuIGNh
cmUgb2YuIEkgYW0gY2hlY2tpbmcgaWYgdGhlIGZpeGVzIGZvciByZWNpcGVzIHJlbGF0ZWQgdG8g
dGhlIGRzbyBsaW5raW5nIGNoYW5nZSBiZWNvbWVzIHVubmVjZXNzYXJ5IHdpdGggdGhlIG5ldyBs
ZCwgYW5kIGFzIG5lZWRlZCBzZW5kIGEgcHVsbCByZXF1ZXN0IGZvciBpdC4NCg0KVGhhbmtzLA0K
Tml0aW4NCg0K

