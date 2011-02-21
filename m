Return-Path: <dexuan.cui@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6E6984C80479;
	Mon, 21 Feb 2011 00:39:52 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 20 Feb 2011 22:39:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,198,1297065600"; d="scan'208";a="889609706"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 20 Feb 2011 22:39:51 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 21 Feb 2011 14:39:11 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 21 Feb 2011 14:38:56 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Date: Mon, 21 Feb 2011 14:38:55 +0800
Thread-Topic: [poky] autobuilders in flux today.
Thread-Index: AcvPOUwQ0st9SHqLQBamp/ljx8HV8ACV33cg
Message-ID: <1865303E0DED764181A9D882DEF65FB68642392C29@shsmsx502.ccr.corp.intel.com>
References: <4D5C2359.6040007@intel.com>
	<1865303E0DED764181A9D882DEF65FB68637101D4A@shsmsx502.ccr.corp.intel.com>
	<4D5E181C.5050208@intel.com>
In-Reply-To: <4D5E181C.5050208@intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: autobuilders in flux today.
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
X-List-Received-Date: Mon, 21 Feb 2011 06:39:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGkgQmV0aCwNClRvZGF5IEkgZm91bmQgdGhlIGZvbGxvd2luZyBpc3N1ZXMgb24gYXV0b2J1aWxk
ZXJzIGFnYWluLiBBcmUgdGhleSBhdXRvYnVpbGRlcidzIGNvbmZpZ3VyZSBpc3N1ZT8gDQoNCkNv
cHlpbmcgSVBLIGZlZWQgb3V0cHV0IGZhaWxlZDogaHR0cDovL2F1dG9idWlsZGVyLnBva3lsaW51
eC5vcmc6ODAxMC9idWlsZGVycy9uaWdodGx5LWV4dGVybmFsL2J1aWxkcy8zNy9zdGVwcy9zaGVs
bF8zNi9sb2dzL3N0ZGlvDQoNCkNvcHlpbmcgUlBNIGZlZWQgb3V0cHV0IGZhaWxlZCAtLSBFcnJv
cjogdG1wL2RlcGxveS9ycG0gZG9lcyBub3QgZXhpc3QsIGNhbm5vdCBjb3B5ITogaHR0cDovL2F1
dG9idWlsZGVyLnBva3lsaW51eC5vcmc6ODAxMC9idWlsZGVycy9uaWdodGx5LWludGVybmFsL2J1
aWxkcy81NC9zdGVwcy9zaGVsbF8yMS9sb2dzL3N0ZGlvDQoNCkdlbmVyYXRpbmcgUG9reSByZWxl
YXNlIHRhcmJhbGwgZmFpbGVkIC0tIGZhdGFsOiBOb3QgYSBnaXQgcmVwb3NpdG9yeSAob3IgYW55
IG9mIHRoZSBwYXJlbnQgZGlyZWN0b3JpZXMpOiAuZ2l0OiBodHRwOi8vYXV0b2J1aWxkZXIucG9r
eWxpbnV4Lm9yZzo4MDEwL2J1aWxkZXJzL25pZ2h0bHktaW50ZXJuYWwvYnVpbGRzLzU0L3N0ZXBz
L3NoZWxsXzE5L2xvZ3Mvc3RkaW8NCg0KVGhhbmtzLA0KLS0gRGV4dWFuIA0KDQotLS0tLU9yaWdp
bmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogRmxhbmFnYW4sIEVsaXphYmV0aCANClNlbnQ6IDIwMTHE
6jLUwjE4yNUgMTQ6NTYNClRvOiBDdWksIERleHVhbg0KQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5v
cmc7IHBva3lAeW9jdG9wcm9qZWN0Lm9yZzsgV29sZCwgU2F1bA0KU3ViamVjdDogUmU6IFtwb2t5
XSBhdXRvYnVpbGRlcnMgaW4gZmx1eCB0b2RheS4NCg0KWWVzLCB0aGVyZSB3YXMgc29tZSBpc3N1
ZXMgd2l0aCB0aGUgYXV0b2J1aWxkZXIgZHVlIHRvIHNvbWUgb2xkIHByb2Nlc3Nlcy4gQSBxdWlj
ayByZXNldCBvZiB0aGUgYXV0b2J1aWxkZXIgc2VydmljZSB0aGlzDQphZnRlcm5vb24gYW5kIHRo
ZSBjdXJyZW50IGJ1aWxkIGlzIG1vc3RseSBncmVlbiB3aXRoIHRoZSBleGNlcHRpb24gb2Ygb25l
IHNhbml0eSB0ZXN0IGZhaWx1cmUuDQoNCi1iDQoNCk9uIDAyLzE3LzIwMTEgMDk6MTEgUE0sIEN1
aSwgRGV4dWFuIHdyb3RlOg0KPiBIaSBCZXRoLA0KPiBMb29rcyBhdXRvYnVpbGRlciBpcyBzdGls
bCB1bnN0YWJsZT8gDQo+IEkgZm91bmQgdGhlIGZvbGxvd2luZyBpc3N1ZXMuDQo+IEFjdHVhbGx5
IGR1ZSB0byB0aGUgM3JkIGZhaWx1cmUoLi9wb2t5LWluaXQtYnVpbGQtZW52OiBObyBzdWNoIGZp
bGUgb3IgZGlyZWN0b3J5KSwgYWxtb3N0IGFsbCB0aGUgYnVpbGRzIGZhaWxlZC4uLg0KPiBDb3Vs
ZCB5b3UgcGxlYXNlIGhhdmUgYSBsb29rPw0KPiANCj4gQ29weWluZyBSUE0gZmVlZCBvdXRwdXQg
ZmFpbGVkOiBFcnJvcjogdG1wL2RlcGxveS9ycG0gZG9lcyBub3QgZXhpc3QsIGNhbm5vdCBjb3B5
IQ0KPiBodHRwOi8vYXV0b2J1aWxkZXIucG9reWxpbnV4Lm9yZzo4MDEwL2J1aWxkZXJzL25pZ2h0
bHktaW50ZXJuYWwvYnVpbGRzLzU0L3N0ZXBzL3NoZWxsXzIxL2xvZ3Mvc3RkaW8NCj4gDQo+IA0K
PiBHZW5lcmF0aW5nIFBva3kgcmVsZWFzZSB0YXJiYWxsIGZhaWxlZDogZmF0YWw6IE5vdCBhIGdp
dCByZXBvc2l0b3J5IChvciBhbnkgb2YgdGhlIHBhcmVudCBkaXJlY3Rvcmllcyk6IC5naXQNCj4g
aHR0cDovL2F1dG9idWlsZGVyLnBva3lsaW51eC5vcmc6ODAxMC9idWlsZGVycy9uaWdodGx5LWlu
dGVybmFsL2J1aWxkcy81NC9zdGVwcy9zaGVsbF8xOS9sb2dzL3N0ZGlvDQo+IA0KPiBCdWlsZGlu
ZyBxZW11eDg2LTY0IG1ldGEtdG9vbGNoYWluLXNkayBmYWlsZWQ6DQo+IC9ob21lL3Bva3lidWls
ZC9wb2t5LWF1dG9idWlsZGVyL3NjcmlwdHMvcG9reS1hdXRvYnVpbGQ6IGxpbmUgMzU6IC4vcG9r
eS1pbml0LWJ1aWxkLWVudjogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQ0KPiAvaG9tZS9wb2t5
YnVpbGQvcG9reS1hdXRvYnVpbGRlci9zY3JpcHRzL3Bva3ktYXV0b2J1aWxkOiBsaW5lIDgwOiBi
aXRiYWtlOiBjb21tYW5kIG5vdCBmb3VuZA0KPiBodHRwOi8vYXV0b2J1aWxkZXIucG9reWxpbnV4
Lm9yZzo4MDEwL2J1aWxkZXJzL25pZ2h0bHktaW50ZXJuYWwvYnVpbGRzLzU0L3N0ZXBzL3NoZWxs
XzE3L2xvZ3Mvc3RkaW8NCj4gDQo+IA0KPiBUaGFua3MsDQo+IC0tIERleHVhbg0KPiANCj4gLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogcG9reS1ib3VuY2VzQHlvY3RvcHJvamVj
dC5vcmcgW21haWx0bzpwb2t5LWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZ10gT24gQmVoYWxmIE9m
IEVsaXphYmV0aCBGbGFuYWdhbg0KPiBTZW50OiAyMDExxOoy1MIxN8jVIDM6MjANCj4gVG86IHlv
Y3RvQHlvY3RvcHJvamVjdC5vcmc7IHBva3lAeW9jdG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBb
cG9reV0gYXV0b2J1aWxkZXJzIGluIGZsdXggdG9kYXkuDQo+IA0KPiBJIGNhbWUgaW4gdGhpcyBt
b3JuaW5nIHRvIDE0MCB6b21iaWVzIGFuZCBhIGJ1aWxkIHRoYXQgd2FzIGNob2tpbmcgb24gYnVp
bGRlcjIuIEknbSByZWJvb3RpbmcgdGhlIHNlcnZlciByaWdodCBub3cuIEp1c3QNCj4gYW4gRllJ
LCB0aGlzIGlzIGEgcmVsYXRpdmVseSByZWNlbnQgZGV2ZWxvcG1lbnQgKGxhc3QgbmlnaHQgdGhl
cmUgd2VyZSAxNyB6b21iaWVzKS4gTm90IHN1cmUgd2hhdCBpcyBnb2luZyBvbiBidXQgSSdsbA0K
PiBrZWVwIGV2ZXJ5b25lIGluZm9ybWVkLg0KPiANCj4gQWxsIHRoYXQgc2FpZCwgdGhlIGF1dG9i
dWlsZGVycyB3aWxsIGJlIGluIGZsdXggdG9kYXkgd2hpbGUgSSBicmluZyBidWlsZGVyMyBvbmxp
bmUuIFBsZWFzZSBkb24ndCBraWNrIG9mZiBhbnl0aGluZyB2aXRhbC4NCj4gDQo+IFRoYW5rcw0K
PiANCj4gDQo+IC0tLS0tLS0tLS0tLS0tLS0tLQ0KPiBFbGl6YWJldGggRmxhbmFnYW4NCj4gWW9j
dG8gUHJvamVjdA0KPiBSZWxlYXNlIEVuZ2luZWVyDQo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fDQo+IHBva3kgbWFpbGluZyBsaXN0DQo+IHBva3lAeW9j
dG9wcm9qZWN0Lm9yZw0KPiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8v
cG9reQ0KDQotLSANCi0tLS0tLS0tLS0tLS0tLS0tLQ0KRWxpemFiZXRoIEZsYW5hZ2FuDQpZb2N0
byBQcm9qZWN0DQpSZWxlYXNlIEVuZ2luZWVyDQo=

