Return-Path: <lianhao.lu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AB6AE00746
	for <poky@yoctoproject.org>; Thu, 22 Mar 2012 03:09:44 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 22 Mar 2012 03:09:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="121897654"
Received: from azsmsx603.amr.corp.intel.com ([10.2.161.23])
	by azsmga001.ch.intel.com with ESMTP; 22 Mar 2012 03:09:43 -0700
Received: from shsmsx101.ccr.corp.intel.com (10.239.4.153) by
	azsmsx603.amr.corp.intel.com (10.2.161.23) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 22 Mar 2012 03:09:43 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.36]) by
	SHSMSX101.ccr.corp.intel.com ([169.254.1.142]) with mapi id
	14.01.0355.002; Thu, 22 Mar 2012 18:09:41 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky] [question]how to defined my own distro
Thread-Index: Ac0IE+TOS+sZF0HgQ5evuYEzsAmNsQ==
Date: Thu, 22 Mar 2012 10:09:41 +0000
Message-ID: <857BE142E5399E46B20FD45B9DB8A7BC0FD04E6E@SHSMSX102.ccr.corp.intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: Re: [question]how to defined my own distro
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
X-List-Received-Date: Thu, 22 Mar 2012 10:09:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

V2FuZ2Rhd2VpIChTaXZhbikgd3JvdGUgb24gMjAxMi0wMy0yMjoNCj4gWWVzICxJIGhhdmUgY2hl
Y2tlZCB0aGlzICwgYnV0IEkganVzdCBjYW4gZmluZCBob3cgdG8gYWRkIGEgcGFja2FnZSAsIEkg
ZG9uoa90IGZpbmQgaG93IHRvIHJlZHVjZSB0aGUgcGFja2FnZXMgLEkgZG9uoa90IG5lZWQgc28g
bXVjaCBwYWNrYWdlcw0KPiBsaWtlIGl0IGluIGNvcmUtaW1hZ2UgLkRvIEkgbmVlZCB0byBjaGFu
Z2UgdGhlIGNvcmUtaW1hZ2UuYmJjbGFzcyA/IG9yIHRoZXJlIGlzIGFub3RoZXIgY29uZmlndXJl
IGZpbGUgY2FuIGZpbmlzaCB0aGlzIHdvcmsgPw0KPiANCg0KTWF5YmUgeW91IGNvdWxkIHRyeSBo
b2IsIHRoZSBndGsgYmFzZWQgR1VJIGZyb250ZW5kIHRvIGN1c3RvbWl6ZSBpbWFnZSBjb250ZW50
LiANCg0KQmVzdCBSZWdhcmRzLA0KTGlhbmhhbw0KDQo+IA0KPiC3orz+yMs6IHBva3ktYm91bmNl
c0B5b2N0b3Byb2plY3Qub3JnIFttYWlsdG86cG9reS1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmdd
ILT6se0gSmFjayBNaXRjaGVsbA0KPiC3osvNyrG85DogMjAxMsTqM9TCMjLI1SAxNzoyOA0KPiDK
1bz+yMs6IHBva3lAeW9jdG9wcm9qZWN0Lm9yZw0KPiDW98ziOiBSZTogW3Bva3ldIFtxdWVzdGlv
bl1ob3cgdG8gZGVmaW5lZCBteSBvd24gZGlzdHJvDQo+IA0KPiANCj4gDQo+IE9uIDIyLzAzLzEy
IDA3OjI3LCBXYW5nZGF3ZWkgKFNpdmFuKSB3cm90ZToNCj4gDQo+IA0KPiANCj4gSGkgZ3V5cywN
Cj4gDQo+IA0KPiANCj4gICAgICAgICAgSSB3YW50IHRvIGJ1aWxkIGEgcm9vdGZzICwgdGhhdCBJ
IGNhbiBkZWNpZGUgd2hpY2ggcGFja2FnZSBJIHdpbGwgYnVpbGQgaW50byB0aGUgaW1hZ2UgLiBp
cyB0aGVyZSBzb21lIGNvbmZpZyBmaWxlIHRvIGRvIHRoaXMgP0kgY2Fuoa90DQo+IGZpbmQgdGhl
IGNvbmZpZyBmaWxlIGluIHBva3kgLiBJcyB0aGVyZSBhbnkgd2F5IHRvIGNvbXBsZXRlIHRoaXMg
P2ZvciBleGFtcGxlIEkganVzdCB3YW50IHRvIGJ1aWxkIGJ1c3lib3ggYW5kIGdsaWJjIGZvciBt
eSBpbWFnZSAsaG93IGNhbiBJDQo+IGNvbmZpZyB0aGlzID8NCj4gDQo+IA0KPiANCj4gQmVzdCBS
ZWdhcmRzDQo+IA0KPiANCj4gDQo+IGt5bGUgc2l2YW4NCj4gDQo+IEh1YXdlaSBUZWNobm9sb2dp
ZXMgQ28uLCBMdGQuDQo+IA0KPiBjZWxsIHBob25lOiArODYtMTg2NjUzMjY1NDANCj4gDQo+IChP
ZmZpY2UpIDc1NS0yODM4NDQ5NQ0KPiANCj4gc2l2YW4ud2FuZ0BodWF3ZWkuY29tIDxtYWlsdG86
c2l2YW4ud2FuZ0BodWF3ZWkuY29tPg0KPiANCj4gDQo+IA0KPiANCj4gDQo+IA0KPiANCj4gDQo+
IA0KPiANCj4gDQo+IA0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXyBwb2t5IG1haWxpbmcgbGlzdA0KPiBwb2t5QHlvY3RvcHJvamVjdC5vcmcgaHR0cHM6
Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL3Bva3kNCj4gDQo+IA0KPiBIaSBLeWxl
LA0KPiANCj4gVGhlcmUgYXJlIHJlYW1zIG9mIGRvY3VtZW50YXRpb24gdGhhdCBwZW9wbGUgaGF2
ZSB3b3JrZWQgdmVyeSBoYXJkIG9uLCB3aGljaCBhcmUgYmUgbG9jYXRlZCBoZXJlOg0KPiBodHRw
Oi8vd3d3LnlvY3RvcHJvamVjdC5vcmcvZG9jdW1lbnRhdGlvbi4gT25lIG9mIHRoZW0gY292ZXJz
IGFkZGluZyBwYWNrYWdlcyB0byB5b3VyIGJ1aWxkLg0KPiANCj4gUmVnYXJkcywNCj4gSmFjay4N
Cj4gDQo+IA0KPiANCj4NCg0KDQo=

