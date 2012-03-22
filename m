Return-Path: <lianhao.lu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26E11E00746
	for <poky@yoctoproject.org>; Thu, 22 Mar 2012 03:42:52 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 22 Mar 2012 03:42:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="80352372"
Received: from azsmsx601.amr.corp.intel.com ([10.2.121.193])
	by AZSMGA002.ch.intel.com with ESMTP; 22 Mar 2012 03:42:51 -0700
Received: from shsmsx101.ccr.corp.intel.com (10.239.4.153) by
	azsmsx601.amr.corp.intel.com (10.2.121.193) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 22 Mar 2012 03:42:51 -0700
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.36]) by
	SHSMSX101.ccr.corp.intel.com ([169.254.1.142]) with mapi id
	14.01.0355.002; Thu, 22 Mar 2012 18:42:49 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky] [question]how to defined my own distro
Thread-Index: Ac0IE+TOS+sZF0HgQ5evuYEzsAmNsf//fRoA//90STA=
Date: Thu, 22 Mar 2012 10:42:48 +0000
Message-ID: <857BE142E5399E46B20FD45B9DB8A7BC0FD04EC6@SHSMSX102.ccr.corp.intel.com>
References: <857BE142E5399E46B20FD45B9DB8A7BC0FD04E6E@SHSMSX102.ccr.corp.intel.com>
	<7E29EF69110C17499E6B3A9844CD4FD91341F82E@szxeml526-mbs.china.huawei.com>
In-Reply-To: <7E29EF69110C17499E6B3A9844CD4FD91341F82E@szxeml526-mbs.china.huawei.com>
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
X-List-Received-Date: Thu, 22 Mar 2012 10:42:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

V2FuZ2Rhd2VpIChTaXZhbikgd3JvdGUgb24gMjAxMi0wMy0yMjoNCj4gSXMgdGhlcmUgc29tZSBt
ZXRob2QgdG8gdXNlIHRoZSBjb21tYW5kIGxpbmUgdG8gZmluaXNoIHRoaXMgd29yayA/bm90IHRo
ZSBHVUkgPw0KDQpQbHMgcmVmZXIgdG8gdGhlIFBBQ0tBR0VfSU5TVEFMTCB2YXJpYWJsZSBpbiBp
bWFnZS5iYmNsYXNzLCB5b3UgbWF5IG92ZXJ3cml0ZSBpdCBpbiB5b3VyIG93biBpbWFnZSByZWNp
cGUuDQotTGlhbmhhbw0KDQo+IC0tLS0t08q8/tStvP4tLS0tLQ0KPiC3orz+yMs6IHBva3ktYm91
bmNlc0B5b2N0b3Byb2plY3Qub3JnIFttYWlsdG86cG9reS1ib3VuY2VzQHlvY3RvcHJvamVjdC5v
cmddILT6se0gTHUsIExpYW5oYW8NCj4gt6LLzcqxvOQ6IDIwMTLE6jPUwjIyyNUgMTg6MTANCj4g
ytW8/sjLOiBwb2t5QHlvY3RvcHJvamVjdC5vcmcNCj4g1vfM4jogUmU6IFtwb2t5XSBbcXVlc3Rp
b25daG93IHRvIGRlZmluZWQgbXkgb3duIGRpc3Rybw0KPiANCj4gV2FuZ2Rhd2VpIChTaXZhbikg
d3JvdGUgb24gMjAxMi0wMy0yMjoNCj4+IFllcyAsSSBoYXZlIGNoZWNrZWQgdGhpcyAsIGJ1dCBJ
IGp1c3QgY2FuIGZpbmQgaG93IHRvIGFkZCBhIHBhY2thZ2UgLCBJDQo+PiBkb26hr3QgZmluZCBo
b3cgdG8gcmVkdWNlIHRoZSBwYWNrYWdlcyAsSSBkb26hr3QgbmVlZCBzbyBtdWNoIHBhY2thZ2Vz
DQo+PiBsaWtlIGl0IGluIGNvcmUtaW1hZ2UgLkRvIEkgbmVlZCB0byBjaGFuZ2UgdGhlIGNvcmUt
aW1hZ2UuYmJjbGFzcyA/IG9yDQo+PiB0aGVyZSBpcyBhbm90aGVyIGNvbmZpZ3VyZSBmaWxlIGNh
biBmaW5pc2ggdGhpcyB3b3JrID8NCj4+IA0KPiANCj4gTWF5YmUgeW91IGNvdWxkIHRyeSBob2Is
IHRoZSBndGsgYmFzZWQgR1VJIGZyb250ZW5kIHRvIGN1c3RvbWl6ZSBpbWFnZSBjb250ZW50Lg0K
PiANCj4gQmVzdCBSZWdhcmRzLA0KPiBMaWFuaGFvDQo+IA0KPj4gDQo+PiC3orz+yMs6IHBva3kt
Ym91bmNlc0B5b2N0b3Byb2plY3Qub3JnIFttYWlsdG86cG9reS1ib3VuY2VzQHlvY3RvcHJvamVj
dC5vcmddILT6se0gSmFjayBNaXRjaGVsbA0KPj4gt6LLzcqxvOQ6IDIwMTLE6jPUwjIyyNUgMTc6
MjgNCj4+IMrVvP7IyzogcG9reUB5b2N0b3Byb2plY3Qub3JnDQo+PiDW98ziOiBSZTogW3Bva3ld
IFtxdWVzdGlvbl1ob3cgdG8gZGVmaW5lZCBteSBvd24gZGlzdHJvDQo+PiANCj4+IA0KPj4gDQo+
PiBPbiAyMi8wMy8xMiAwNzoyNywgV2FuZ2Rhd2VpIChTaXZhbikgd3JvdGU6DQo+PiANCj4+IA0K
Pj4gDQo+PiBIaSBndXlzLA0KPj4gDQo+PiANCj4+IA0KPj4gICAgICAgICAgSSB3YW50IHRvIGJ1
aWxkIGEgcm9vdGZzICwgdGhhdCBJIGNhbiBkZWNpZGUgd2hpY2ggcGFja2FnZSBJIHdpbGwgYnVp
bGQgaW50byB0aGUgaW1hZ2UgLiBpcyB0aGVyZSBzb21lIGNvbmZpZyBmaWxlIHRvIGRvIHRoaXMg
P0kNCj4gY2Fuoa90DQo+PiBmaW5kIHRoZSBjb25maWcgZmlsZSBpbiBwb2t5IC4gSXMgdGhlcmUg
YW55IHdheSB0byBjb21wbGV0ZSB0aGlzID9mb3IgZXhhbXBsZSBJIGp1c3Qgd2FudCB0byBidWls
ZCBidXN5Ym94IGFuZCBnbGliYyBmb3IgbXkgaW1hZ2UgLGhvdyBjYW4gSQ0KPj4gY29uZmlnIHRo
aXMgPw0KPj4gDQo+PiANCj4+IA0KPj4gQmVzdCBSZWdhcmRzDQo+PiANCj4+IA0KPj4gDQo+PiBr
eWxlIHNpdmFuDQo+PiANCj4+IEh1YXdlaSBUZWNobm9sb2dpZXMgQ28uLCBMdGQuDQo+PiANCj4+
IGNlbGwgcGhvbmU6ICs4Ni0xODY2NTMyNjU0MA0KPj4gDQo+PiAoT2ZmaWNlKSA3NTUtMjgzODQ0
OTUNCj4+IA0KPj4gc2l2YW4ud2FuZ0BodWF3ZWkuY29tIDxtYWlsdG86c2l2YW4ud2FuZ0BodWF3
ZWkuY29tPg0KPj4gDQo+PiANCj4+IA0KPj4gDQo+PiANCj4+IA0KPj4gDQo+PiANCj4+IA0KPj4g
DQo+PiANCj4+IA0KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18gcG9reSBtYWlsaW5nIGxpc3QNCj4+IHBva3lAeW9jdG9wcm9qZWN0Lm9yZyBodHRwczov
L2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8vcG9reQ0KPj4gDQo+PiANCj4+IEhpIEt5
bGUsDQo+PiANCj4+IFRoZXJlIGFyZSByZWFtcyBvZiBkb2N1bWVudGF0aW9uIHRoYXQgcGVvcGxl
IGhhdmUgd29ya2VkIHZlcnkgaGFyZCBvbiwgd2hpY2ggYXJlIGJlIGxvY2F0ZWQgaGVyZToNCj4+
IGh0dHA6Ly93d3cueW9jdG9wcm9qZWN0Lm9yZy9kb2N1bWVudGF0aW9uLiBPbmUgb2YgdGhlbSBj
b3ZlcnMgYWRkaW5nIHBhY2thZ2VzIHRvIHlvdXIgYnVpbGQuDQo+PiANCj4+IFJlZ2FyZHMsDQo+
PiBKYWNrLg0KPj4gDQo+PiANCj4+IA0KPj4gDQo+IA0KPiANCj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gcG9reSBtYWlsaW5nIGxpc3QNCj4gcG9r
eUB5b2N0b3Byb2plY3Qub3JnDQo+IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0
aW5mby9wb2t5DQoNCkJlc3QgUmVnYXJkcywNCkxpYW5oYW8NCg0KDQo=

