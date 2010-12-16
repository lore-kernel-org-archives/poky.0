Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 578304C80BD4
	for <poky@pokylinux.org>; Wed, 15 Dec 2010 19:48:31 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 15 Dec 2010 17:48:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,352,1288594800"; d="scan'208";a="636811407"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga002.fm.intel.com with ESMTP; 15 Dec 2010 17:48:30 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 16 Dec 2010 09:47:45 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 16 Dec 2010 09:47:44 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Thu, 16 Dec 2010 09:47:42 +0800
Thread-Topic: question about task override
Thread-Index: AcucWZM6bPpLD037R0+HsL/tJHQatQAaT9bA
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F409363@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D5F4091FC@shsmsx502.ccr.corp.intel.com>
	<1292418663.26558.2234.camel@rex>
In-Reply-To: <1292418663.26558.2234.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>,
	"poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: question about task override
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
X-List-Received-Date: Thu, 16 Dec 2010 01:48:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PkZyb206IFJpY2hhcmQgUHVyZGllIFttYWlsdG86cmljaGFyZC5wdXJkaWVAbGludXhmb3VuZGF0
aW9uLm9yZ10NCj5TZW50OiBXZWRuZXNkYXksIERlY2VtYmVyIDE1LCAyMDEwIDk6MTEgUE0NCj4N
Cj5PbiBXZWQsIDIwMTAtMTItMTUgYXQgMDM6MjQgLTA4MDAsIFRpYW4sIEtldmluIHdyb3RlOg0K
Pj4gSSdtIG5vdCBzdXJlIHdoZXRoZXIgInRhc2sgb3ZlcnJpZGUiIGlzIHRoZSByaWdodCB0ZXJt
IGhlcmUuIExldCBtZSBkZXNjcmliZSBpdDoNCj4+DQo+PiBJdCdzIHBvc3NpYmxlIHRvIGhhdmUg
bXVsdGlwbGUgcGxhY2VzIGRlZmluZSBzYW1lIHRhc2ssIGUuZzoNCj4+DQo+PiBhLmJiY2xhc3M6
DQo+PiAJZG9faW5zdGFsbCAoKSB7DQo+PiAgICAgIC4uLg0KPj4gICAgICB9DQo+Pg0KPj4gYi5i
YmNsYXNzOg0KPj4gICAgICBiX2RvX2luc3RhbGwoKSB7DQo+PiAgICAgIC4uLg0KPj4gICAgICB9
DQo+Pg0KPj4gYy5iYjoNCj4+IAlpbmhlcml0IGEgYg0KPj4NCj4+IEkga25vdyB0aGF0IGlmIGMu
YmIgZGVmaW5lcyBpdHMgb3duIGRvX2luc3RhbGwsIHRoYXQgd291bGQgYmUgdGhlIG9uZSBiZWlu
ZyB1c2VkIHdoaWNoDQo+PiBzaW1wbHkgb3ZlcnJpZGVzIGEuYmJjbGFzcyBhbmQgYi5iYmNsYXNz
Lg0KPj4NCj4+IEhvd2V2ZXIgSSBkb24ndCBrbm93IGlmIGMuYmIgZG9lc24ndCBkZWZpbmUgaXRz
IG93biBkb19pbnN0YWxsLCB3aGljaCBvbmUgZnJvbSBhLmJiY2xhc3MNCj4+IG9yIGIuYmJjbGFz
cyB3aWxsIHRha2UgZWZmZWN0IGhlcmU/IEluIGluaGVyaXQgb3JkZXI/DQo+DQo+QXMgYW4gZXhh
bXBsZSB5b3Ugd2lsbCBzZWUgYmFzZS5iYmNsYXNzIGRlZmluZXMgYmFzZV9kb19pbnN0YWxsIGFu
ZCB0aGVuDQo+bGF0ZXIgdGhlcmUgaXMgRVhQT1JUX0ZVTkNUSU9OUyBkb19pbnN0YWxsLg0KPg0K
PldoYXQgdGhpcyBtZWFucyBpcyB0aGF0IGlmIHRoZXJlIGlzIG5vIGRvX2luc3RhbGwgZGVmaW5l
ZCwNCj5iYXNlX2RvX2luc3RhbGwgYWxzbyBiZWNvbWVzIGRvX2luc3RhbGwuDQo+DQo+VGhlIHJl
YXNvbiBmb3IgdGhpcyBpcyB0aGF0IGl0IG1lYW5zIGEgcmVjaXBlIGNhbiBkZWZpbmUgZG9faW5z
dGFsbCBhbmQNCj55ZXQgc3RpbGwgY2FsbCBiYXNlX2RvX2luc3RhbGwuDQo+DQo+U28gaW4geW91
ciBhYm92ZSBleGFtcGxlLCB5b3UnZCByZWFsbHkgd2FudCBjLmJiIHRvIGJlIGFibGUgdG8gZG86
DQo+DQo+ZG9faW5zdGFsbCAoKSB7DQo+ICAgICAgICBhX2RvX2luc3RhbGwNCj4gICAgICAgIGJf
ZG9faW5zdGFsbA0KPn0NCg0KVGhhdCdzIHZlcnkgY2xlYXIuIHRoYW5rcy4NCg0KPg0KPj4gQSBz
ZWNvbmQgcXVlc3Rpb24gaXMgaG93IGFuZCB3aGVyZSBiX2RvX2luc3RhbGwgaXMgY29udmVydGVk
IGludG8gYSBwbGFpbiBkb19pbnN0YWxsLiBJIHRyaWVkDQo+PiB0byBzZWFyY2ggdGhlIHNvdXJj
ZSBidXQgZmFpbGVkIHRvIGxvY2F0ZSB0aGUgZXhhY3QgbGluZXMuIEZvciBleGFtcGxlLCBwYXRj
aF9kb19wYXRjaCBpcw0KPj4gb25lIG15c3RlcmlvdXMgZnVuY3Rpb24gd2hpY2ggSSBkb24ndCBo
b3cgaXQgYmVjb21lcyBkb19wYXRjaC4NCj4NCj5JdHMgZG9uZSB3aXRoIEVYUE9SVF9GVU5DVElP
TlMuDQo+DQo+PiBUaGVuIGNvbWVzIHRoZSB0aGlyZCBxdWVzdGlvbi4gSG93IHRvIHJlZmVyZW5j
ZSBhIHNwZWNpZmljIHZlcnNpb24gb2YgZG9faW5zdGFsbCBmcm9tDQo+PiBhbm90aGVyIHBsYWNl
PyBJIHdhbnQgdG8gYWRkIG9uZSBleGNsdXNpdmUgdmFyaWFibGUgZGVwZW5kZW5jeSBmb3IgZG9f
ZGVwbG95IGluDQo+PiBrZXJuZWwuYmJjbGFzcywgaG93ZXZlciBuZWl0aGVyIG9mIGJlbG93IHdv
cmtzOg0KPj4NCj4+IChtZXRhL2NvbmYvZGlzdHJvL3Bva3kuY29uZikNCj4+IGRvX2RlcGxveVt2
YXJkZXBzZXhjbHVkZV0gPSAiREFURSBUSU1FIg0KPj4ga2VybmVsX2RvX2RlcGxveVt2YXJkZXBz
ZXhjbHVkZV0gPSAiREFURSBUSU1FIg0KPj4NCj4+IFRoZXJlJ3Mgb25lIGV4YW1wbGUgaW4gcG9r
eS5jb25mOg0KPj4NCj4+IHBhdGNoX2RvX3BhdGNoW3ZhcmRlcHNleGNsdWRlXSA9ICJEQVRFIFNS
Q0RBVEUiDQo+Pg0KPj4gd2hpY2ggd29ya3MuIERvZXMgdGhhdCBtZWFuIEkgaGF2ZSB0byBjaGFu
Z2UgZG9fZGVwbG95IGluIGtlcm5lbC5iYmNsYXNzIHRvDQo+PiBrZXJuZWxfZG9fZGVwbG95IHdo
aWNoIGlzIHVuaXF1ZSBpbiBnbG9iYWwgbmFtZXNwYWNlIGFuZCB0aGVuIGNhbiBiZSByZWZlcmVu
Y2VkDQo+PiBmcm9tIG90aGVyIHBsYWNlcz8NCj4NCj5Zb3Ugc2hvdWxkIHByb2JhYmx5IGFkZA0K
Pg0KPmRvX2RlcGxveVt2YXJkZXBzZXhjbHVkZV0gPSAiREFURSBUSU1FIg0KPg0KPmFsb25nc2lk
ZSB0aGUgZGVmaW5pdGlvbiBvZiB0aGUgZnVuY3Rpb24gaW4ga2VybmVsLmJiY2xhc3MuIElmIHRo
YXQNCj5kb2Vzbid0IHdvcmsgd2UgbmVlZCB0byB3b3JrIG91dCB3aHkgYXMgaXQgc2hvdWxkLg0K
Pg0KPmtlcm5lbC5iYmNsYXNzIGNvdWxkIGNoYW5nZSB0byBiZSBrZXJuZWxfZG9fZGVwbG95IGFu
ZCBhZGQgYW4NCj5FWFBPUlRfRlVOQ1RJT04sIHdlJ3ZlIGp1c3Qgbm90IGhhZCB0aGUgbmVlZCBm
b3IgYSBkb19kZXBsb3koKSB3aGljaA0KPmNhbGxlZCBrZXJuZWxfZG9fZGVwbG95KCkgYmVmb3Jl
Lg0KPg0KDQpPSywgSSdsbCB0cnkgYm90aCBtZXRob2RzLiBJZiBib3RoIHdvcmsgSSBwZXJoYXBz
IHdhbnQgdG8gY2hvb3NlIHRoZSBsYXRlciBvbmUgd2hpY2gNCm1ha2VzIGFsbCB0aGUgcmVsZXZh
bnQgbGluZXMgaW4gb25lIHBsYWNlIGZvciBlYXN5IG1haW50ZW5hbmNlLg0KDQpUaGFua3MNCktl
dmluDQo=

