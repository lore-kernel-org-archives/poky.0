Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B01424C80050
	for <poky@pokylinux.org>; Fri, 31 Dec 2010 03:45:58 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 31 Dec 2010 01:45:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,254,1291622400"; d="scan'208";a="692256192"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga001.jf.intel.com with ESMTP; 31 Dec 2010 01:45:57 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 31 Dec 2010 17:43:51 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 31 Dec 2010 17:43:51 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 31 Dec 2010 17:43:50 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Fri, 31 Dec 2010 17:43:48 +0800
Thread-Topic: [poky] --with-gxx-include-dir and sysroot
Thread-Index: AcuozN8MtS27Q8lgSu6rUuAWfcCenQAAfc+Q
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D64C317A7@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D5F72D6C3@shsmsx502.ccr.corp.intel.com>
	<1293201465.17519.1428.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D64C30AAB@shsmsx502.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D64C314AE@shsmsx502.ccr.corp.intel.com>
	<C10D3FB0CD45994C8A51FEC1227CE22F1DC19AA448@shsmsx502.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D64C314E4@shsmsx502.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D64C3178E@shsmsx502.ccr.corp.intel.com>
	<AANLkTintF_OTytOB0LNPRaaUeXXQNoaUgTW4SkFHVmip@mail.gmail.com>
In-Reply-To: <AANLkTintF_OTytOB0LNPRaaUeXXQNoaUgTW4SkFHVmip@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: --with-gxx-include-dir and sysroot
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
X-List-Received-Date: Fri, 31 Dec 2010 09:45:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PkZyb206IEtoZW0gUmFqIFttYWlsdG86cmFqLmtoZW1AZ21haWwuY29tXQ0KPlNlbnQ6IEZyaWRh
eSwgRGVjZW1iZXIgMzEsIDIwMTAgNToyNiBQTQ0KPg0KPk9uIEZyaSwgRGVjIDMxLCAyMDEwIGF0
IDEyOjUyIEFNLCBUaWFuLCBLZXZpbiA8a2V2aW4udGlhbkBpbnRlbC5jb20+IHdyb3RlOg0KPj4+
RnJvbTogVGlhbiwgS2V2aW4NCj4+PlNlbnQ6IFRodXJzZGF5LCBEZWNlbWJlciAzMCwgMjAxMCA3
OjIzIFBNDQo+Pj4+RnJvbTogTHUsIExpYW5oYW8NCj4+Pj5TZW50OiBUaHVyc2RheSwgRGVjZW1i
ZXIgMzAsIDIwMTAgNTo0MyBQTQ0KPj4+Pj4+Pg0KPj4+Pj4+PiBJIHJlYWxseSBkb24ndCB0aGlu
ayBpdHMgdGhpcyBzaW1wbGUuDQo+Pj4+Pj4+DQo+Pj4+Pj4+IExvb2tpbmcgYXQgdGhlIGdjYyBj
b2RlLCBJIHByb3Bvc2Ugd2UgcGF0Y2ggY3BwZGVmYXVsdC5jIHNvIGluc3RlYWQNCj4+Pj4+Pj4g
b2YNCj4+Pj4+Pj4NCj4+Pj4+Pj4gR1BMVVNQTFVTX0lOQ0xVREVfRElSICJHKysiLCAxLCAxLCAw
LCAwDQo+Pj4+Pj4+DQo+Pj4+Pj4+IGlzIHNheXMNCj4+Pj4+Pj4NCj4+Pj4+Pj4gR1BMVVNQTFVT
X0lOQ0xVREVfRElSICJHKysiLCAxLCAxLCAxLCAwDQo+Pj4+Pj4+DQo+Pj4+Pj4+IGFuZCB0aGVu
IHdlIG9ubHkgZXZlciBzcGVjaWZ5Og0KPj4+Pj4+Pg0KPj4+Pj4+PiAtLXdpdGgtZ3h4LWluY2x1
ZGUtZGlyPSR7aW5jbHVkZWRpcn0vYysrLyB0byBidWlsZCB0aGUgY29tcGlsZXIuDQo+Pj4+Pj4+
DQo+Pj4+Pj4+IFNpbmNlIHdlIHNldCBhbHdheXMgc2V0IC0tc3lzcm9vdCBmb3IgdGhlIGNvbXBp
bGVyIGNvcnJlY3RseSwgdGhpcw0KPj4+Pj4+PiBzaG91bGQgdGhlbiBmaXggYWxsIHRoZSBwcm9i
bGVtcyBpbiBhIGNsZWFuIGFuZCBzaW1wbGUgd2F5Lg0KPj4+Pj4+Pg0KPj4+Pj4+PiBXaHk/IENo
YW5naW5nIHRoZSAwIC0+IDEgYWJvdmUgd2lsbCBjYXVzZSBjKysgdG8gYWRkIHRoZSBzeXNyb290
IHRvDQo+Pj4+Pj4+IEdQTFVTUExVU19JTkNMVURFX0RJUiBhbmQgaW4gdHVybiB0aGlzIG1lYW5z
IGl0IHNob3VsZCBzdGFydCB0bw0KPj4+Pj4+PiBiZWhhdmUgc2FuZWx5Lg0KPj4+Pj4+Pg0KPj4+
Pj4+PiBJIGRvbid0IGxpa2UgcGF0Y2hpbmcgZ2NjIGxpa2UgdGhpcyBidXQgaW4gdGhpcyBjYXNl
IEkgYmVsaWV2ZSB0aGUNCj4+Pj4+Pj4gc3RhbmRhcmQgc2V0dGluZ3MgYXJlIGp1c3QgcGxhaW4g
d3JvbmcgYW5kIHdpdGggdGhhdCBzaW1wbGUgY2hhbmdlLA0KPj4+Pj4+PiB0aGluZ3Mgd2lsbCBq
dXN0IHdvcmsgYXMgdGhleSBzaG91bGQuLi4NCj4+Pj4+Pj4NCj4+Pj4+Pj4gT2YgY291cnNlIEkn
dmUgbm90IHRlc3RlZCB0aGlzIHNvIEknZCBhcHByZWNpYXRlIGZlZWRiYWNrIGJ1dCBJDQo+Pj4+
Pj4+IHRoaW5rIGl0IHdpbGwgc29sdmUgdGhlIHByb2JsZW0gaW4gdGhlIHNpbXBsZXN0IHdheSA6
KQ0KPj4+Pj4+Pg0KPj4+Pj4+DQo+Pj4+Pj4gVGhhdCdzIGEgZ29vZCBhbmQgc2ltcGxlIGlkZWEh
IEknbGwgdHJ5IGl0LCBidXQgdGhlIHRlc3QgbWF5IHRha2UNCj4+Pj4+PiB0aW1lLi4uIDotKQ0K
Pj4+Pj4+DQo+Pj4+Pg0KPj4+Pj4gSSd2ZSBhdCBsZWFzdCB2ZXJpZmllZCB0aGlzIGNoYW5nZSB3
b3JraW5nIGluIG9uZSBvZiBteSBzc3RhdGUgYnVpbGQsDQo+Pj4+PiB3aGVyZSBjKysgaW5jbHVk
ZSBkaXIgY291bGQgYmUgc2VhcmNoZWQgc3VjY2Vzc2Z1bGx5IHJlbGF0aXZlIHRvIHN5c3Jvb3Qu
DQo+Pj4+Pg0KPj4+Pj4gTGlhbmhhbyBpcyBoZWxwaW5nIG1lIHRlc3QgU0RLIG11bHRpcGxlIHN5
c3Jvb3Qgc2NlbmFyaW8sIGFuZCBJJ20NCj4+Pj4+IHRlc3RpbmcgbW9yZSBhcmNocyB0byBlbnN1
cmUgaXQgbm90IGJyZWFraW5nIG5vcm1hbCBidWlsZC4NCj4+Pj4NCj4+Pj5UaGUgc2ltcGxlIGhl
bGxvd29ybGQgQ1BQIGNhbiBiZSBidWlsdCBzdWNjZXNzZnVsbHkgYnkgS2V2aW4ncyBuZXcgY3Jv
c3MtY2FuZGlhbi1nY2MNCj5ub3cuDQo+Pj4+QnV0IGFub3RoZXIgY29tcGxleCBDUFAgcHJvamVj
dCBTdWRva3Ugc3RpbGwgaGF2ZSB0aGUgYnVpbGRpbmcgcHJvYmxlbXMsIGNvbXBsYWluaW5nDQo+
Pj5hYm91dA0KPj4+Pm5vdCBmaW5kaW5nIGMrKyBoZWFkZXIgIiNpbmNsdWRlIDxhbGdvcml0aG0+
Ii4gVGhlIHN0cmFjZSBvdXRwdXQgc2hvd3MgdGhhdCB0aGUNCj5mYWlsdXJlDQo+Pj4+aXMgY2F1
c2VkIGJ5IG5vdCBmaW5kaW5nIHRoZSBhbGdvcml0aG0uZ2NoIG9uIHRoZSB0YXJnZXQuDQo+Pj4+
DQo+Pj4+PiBodHRwOi8vZ2l0LnBva3lsaW51eC5vcmcvY2dpdC9jZ2l0LmNnaS9wb2t5LWNvbnRy
aWIvbG9nLz9oPXRrL2NwbHVzcGx1IHMNCj4+Pj4+DQo+Pj4+DQo+Pj4NCj4+PndoZXJlIGlzIHRo
YXQgYWxnb3JpdGhtLmdjaCBzdXBwb3NlZCB0byBzdGF5PyBJIHNlYXJjaGVkIG15IHN0YW5kYXJk
IGMrKyBpbmNsdWRlDQo+Pj5kaXIgKHVzci9pbmNsdWRlL2MrKykgd2l0aCBiZWxvdyBmaW5kaW5n
Og0KPj4+DQo+Pj51c3IvaW5jbHVkZS9jKysvZXh0L2FsZ29yaXRobQ0KPj4+dXNyL2luY2x1ZGUv
YysrL2FsZ29yaXRobQ0KPj4+DQo+Pj5pcyBhYm92ZSAiYWxnb3JpdGhtIiB0aGUgb25lIHlvdSBt
ZW50aW9uZWQgYXMgImFsZ29yaXRobS5nY2giPw0KPj4+DQo+Pg0KPj4gVGhpcyB0dXJucyBvdXQg
cmVsYXRlZCB0byBjb2xsZWN0Mi4gQWN0dWFsbHkgdGhlIGNvbXBpbGF0aW9uIGFscmVhZHkgcmVh
Y2hlZCB0aGUgbGFzdCBzdGVwLA0KPj4gd2hlcmUgYWxsIGdlbmVyYXRlZCAubyBhcmUgbGlua2Vk
IHRvZ2V0aGVyIGFzIG9uZSBleGVjdXRhYmxlLiBUaGlzIHN0ZXAgY29sbGVjdDIgaXMgaW52b2tl
ZA0KPj4gaW1wbGljaXRseSB0byBoYW5kbGUgY29uc3RydWN0b3IgZnVuY3Rpb25zLiBOb3Qgc3Vy
ZSB0aGUgcmVhc29uIHlldCwgSSBzYXcgdGhhdCBjb2xsZWN0Mg0KPj4gd2FudHMgdG8gcmVjb21w
aWxlIHdvcmtzZXQubyBmb3Igd2hhdGV2ZXIgcmVhc29ucy4gVW5mb3J0dW5hdGVseSB0aGlzIHJl
Y29tcGlsYXRpb24gaXMNCj4+IGludm9rZWQgdy9vICItLXN5c3Jvb3QiIG9wdGlvbiwgYW5kIHRo
dXMgbm8gYysrIGhlYWRlciBmaWxlcyBjb3VsZCBiZSBsb2NhdGVkLg0KPj4NCj4+IEknbSBzdGls
bCBpbnZlc3RpZ2F0aW5nIHdoeSB0aGlzIHJlY29tcGlsYXRpb24gaXMgdHJpZ2dlcmVkLCBhbmQg
aG93IGNvbGxlY3QyIGNvbnN0cnVjdHMNCj4+IHRoZSBidWlsZCBmbGFncyBpbXBsaWNpdGx5Li4u
DQo+DQo+dGhlIHByb2plY3QgaXMgdXNpbmcgcHJlY29tcGlsZWQgaGVhZGVycyBhbmQgdGhlIGJ1
aWxkIHN5c3RlbQ0KPm9mIHRoZSBwYWNrYWdlIHNob3VsZCByZWdlbmVyYXRlIHRoZW0gaWYgdGhl
eSBhcmUgbm90IGZvdW5kLiBJdHMNCj5ub3RoaW5nIHRoYXQgZ2NjIGNhbiBkbyBhYm91dC4gWW91
IGNhbiBlaXRoZXIgZml4IHRoZSBidWlsZCBzeXN0ZW0NCj5vZiBwYWNrYWdlIGluIHF1ZXN0aW9u
IG9yIHN0b3AgZ2VuZXJhdGluZyBwcmVjb21waWxlZCBoZWFkZXJzLg0KDQp3aGF0IGRvIHlvdSBt
ZWFuIGJ5ICJwcmVjb21waWxlZCBoZWFkZXJzIj8gSSB0aGluayB0aGUgbWlzc2luZyA8aW9zdHJl
YW0+IG9yDQo8YWxnb3JpdGhtPiBoZXJlIGlzIHRoZSBzdGFuZGFyZCBoZWFkZXIuIEFjdHVhbGx5
IHNhbWUgd29ya3NldC5jcHAgaGFzIGJlZW4NCmNvbXBpbGVkIHN1Y2Nlc3NmdWxseSBiZWZvcmUg
dGhlIGxpbmsgc3RhZ2UuIFRoZSBxdWVzdGlvbiBpcyBob3cgY29sbGVjdDIgbWlzc2VzDQp0aGUg
LS1zeXNyb290IG9wdGlvbiB3aGVuIHRyaWdnZXJpbmcgdGhlIHJlY29tcGlsYXRpb24uLi4NCg0K
VGhhbmtzDQpLZXZpbg0K

