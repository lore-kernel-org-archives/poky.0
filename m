Return-Path: <nitin.a.kamble@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id C68F24C800A8
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 18:33:34 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 01 Feb 2011 16:33:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,412,1291622400"; d="scan'208";a="703025947"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga001.jf.intel.com with ESMTP; 01 Feb 2011 16:33:34 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.226.128) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 1 Feb 2011 16:33:33 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx606.amr.corp.intel.com ([10.22.226.128]) with mapi;
	Tue, 1 Feb 2011 16:33:33 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Tue, 1 Feb 2011 16:33:31 -0800
Thread-Topic: [poky] [PATCH 2/4] elfutils: add a missing depedancy
Thread-Index: AcvCW38xMFRda2MyQb+mUjMiJYMVSgAFRSaQ
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE9411BF1F66@orsmsx504.amr.corp.intel.com>
References: <cover.1296560850.git.nitin.a.kamble@intel.com>
	<406a52d39863e35b5013c23b886e885d44a83e32.1296560850.git.nitin.a.kamble@intel.com>
	<1296597628.13501.21256.camel@rex>
In-Reply-To: <1296597628.13501.21256.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 2/4] elfutils: add a missing depedancy
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
X-List-Received-Date: Wed, 02 Feb 2011 00:33:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUmljaGFyZCBQdXJkaWUg
W21haWx0bzpyaWNoYXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnXQ0KPiBTZW50OiBUdWVz
ZGF5LCBGZWJydWFyeSAwMSwgMjAxMSAyOjAwIFBNDQo+IFRvOiBLYW1ibGUsIE5pdGluIEENCj4g
Q2M6IHBva3lAeW9jdG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBSZTogW3Bva3ldIFtQQVRDSCAy
LzRdIGVsZnV0aWxzOiBhZGQgYSBtaXNzaW5nIGRlcGVkYW5jeQ0KPiANCj4gT24gVHVlLCAyMDEx
LTAyLTAxIGF0IDAzOjU3IC0wODAwLCBOaXRpbiBBIEthbWJsZSB3cm90ZToNCj4gPiBGcm9tOiBO
aXRpbiBBIEthbWJsZSA8bml0aW4uYS5rYW1ibGVAaW50ZWwuY29tPg0KPiA+DQo+ID4gd2hpbGUg
aW1wbGVtZW50aW5nIHRoZSBta2xpYnMgb3B0aW1pemF0aW9uLCBmb3VuZCBvdXQgdGhhdCBhbg0K
PiBleGVjdXRhYmxlIGZyb20NCj4gPiBlbGZ1dGlscyBwYWNrYWdlLCB2aXogZXUtZmluZHRleHRy
ZWwgaXMgZHluYW1pY2FsbHkgbGlua2VkIHRvDQo+IGxpYmJ6Mi5zbw0KPiA+IGxpYnJhcnkuIEJ1
dCB0aGUgcG9reS1pbWFnZS1taW5pbWFsIGRpZCBub3QgaGF2ZSB0aGF0IGxpYnJhcnkuDQo+ID4g
ICBhZGRpbmcgdGhlIGRlcGVkZW5jeSB0byB0aGUgYnppcDIgdG8gZ2V0IHRoYXQgbGlicmFyeSBm
b3IgZXUtDQo+IGZ1bmR0ZXh0cmVsDQo+ID4gZXhlY3V0YWJsZS4NCj4gPg0KPiA+IFNpZ25lZC1v
ZmYtYnk6IE5pdGluIEEgS2FtYmxlIDxuaXRpbi5hLmthbWJsZUBpbnRlbC5jb20+DQo+ID4gLS0t
DQo+ID4gIG1ldGEvcmVjaXBlcy1kZXZ0b29scy9lbGZ1dGlscy9lbGZ1dGlsc18wLjE0OC5iYiB8
ICAgIDMgKystDQo+ID4gIDEgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL21ldGEvcmVjaXBlcy1kZXZ0b29scy9lbGZ1
dGlscy9lbGZ1dGlsc18wLjE0OC5iYg0KPiBiL21ldGEvcmVjaXBlcy1kZXZ0b29scy9lbGZ1dGls
cy9lbGZ1dGlsc18wLjE0OC5iYg0KPiA+IGluZGV4IDQ0YjNjNTIuLjE0MDYwZTYgMTAwNjQ0DQo+
ID4gLS0tIGEvbWV0YS9yZWNpcGVzLWRldnRvb2xzL2VsZnV0aWxzL2VsZnV0aWxzXzAuMTQ4LmJi
DQo+ID4gKysrIGIvbWV0YS9yZWNpcGVzLWRldnRvb2xzL2VsZnV0aWxzL2VsZnV0aWxzXzAuMTQ4
LmJiDQo+ID4gQEAgLTUsOCArNSw5IEBAIExJQ0VOU0UgPSAiR1BMdjIgd2l0aCBleGNlcHRpb25z
Ig0KPiA+ICBMSUNfRklMRVNfQ0hLU1VNID0NCj4gImZpbGU6Ly9DT1BZSU5HO21kNT0wNjM2ZTcz
ZmYwMjE1ZThkNjcyZGM0YzMyYzMxN2JiM1wNCj4gPg0KPiBmaWxlOi8vRVhDRVBUSU9OO21kNT01
NzBhZGNiMGMxMjE4YWI1N2YyMjQ5YzY3ZDBjZTQxNyINCj4gPiAgREVQRU5EUyA9ICJsaWJ0b29s
IHpsaWIiDQo+ID4gK1JERVBFTkRTID0gImJ6aXAyIg0KPiANClRoYW5rcyBSaWNoYXJkIGZvciB0
aGUgcmV2aWV3LA0KDQo+IFRoZXJlIHNob3VsZCBiZSBhIHBhY2thZ2UgbmFtZSBoZXJlLCBlLmcu
IFJERVBFTkRTXyR7UE59Lg0KSSB3aWxsIGZpeCB0aGUgUkRFUEVORFNfJHtQTn0sIGFuZCBhbHNv
IGZpeCB0aGUgZ3BsdjMgcmVjaXBlDQoNCj4gDQo+IEFsc28sIHdoeSBpcyB0aGUgc2hsaWJzIGNv
ZGUgbm90IHBpY2tpbmcgdXAgdGhlIGRlcGVuZGVuY3kNCj4gYXV0b21hdGljYWxseT8gSXMgaXQg
ZGxvcGVuJ2Q/DQpEb24ndCBrbm93LiBOb3Qgc3VyZSB3aGF0IHlvdSBhcmUgYXNraW5nLg0KDQpU
aGFua3MsDQpOaXRpbg0KDQo+IA0KPiBDaGVlcnMsDQo+IA0KPiBSaWNoYXJkDQoNCg0K

