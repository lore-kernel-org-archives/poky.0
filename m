Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id CF0154C80FAD
	for <poky@pokylinux.org>; Thu,  6 Jan 2011 04:44:06 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 06 Jan 2011 02:43:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,282,1291622400"; d="scan'208";a="874979331"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 06 Jan 2011 02:43:35 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 6 Jan 2011 18:43:34 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Thu, 6 Jan 2011
	18:43:32 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Thu, 6 Jan 2011 18:43:19 +0800
Thread-Topic: [poky] [PATCH 2/4] flex-native: create a wrapper script for
	sstate installation
Thread-Index: AcutipVAYFnAG/L8TU+VhHVFZdqRDwAA+W5A
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D746B2EF6@shsmsx502.ccr.corp.intel.com>
References: <849307$b15lvd@azsmga001.ch.intel.com>
	<1294308858.17519.24109.camel@rex>
In-Reply-To: <1294308858.17519.24109.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: [PATCH 2/4] flex-native: create a wrapper script for sstate installation
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
X-List-Received-Date: Thu, 06 Jan 2011 10:44:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PkZyb206IFJpY2hhcmQgUHVyZGllIFttYWlsdG86cmljaGFyZC5wdXJkaWVAbGludXhmb3VuZGF0
aW9uLm9yZ10NCj5TZW50OiBUaHVyc2RheSwgSmFudWFyeSAwNiwgMjAxMSA2OjE0IFBNDQo+SGkg
S2V2aW4sDQo+DQo+T24gV2VkLCAyMDExLTAxLTA1IGF0IDE5OjQyICswODAwLCBLZXZpbiBUaWFu
IHdyb3RlOg0KPj4gZmxleC1uYXRpdmUgZW5jb2RlcyBNNCBzdGFnaW5nIHBhdGggaW4gaXRzIGJp
bmFyeSwgd2hpY2ggYnJlYWtzIHNzdGF0ZQ0KPj4gaW5zdGFsbGF0aW9uIGluIGEgbmV3IGJ1aWxk
IGVudmlyb25tZW50LiBVc2UgY3JlYXRlX3dyYXBwZXIgdG8gY3JlYXRlDQo+PiBhIHdyYXBwZXIg
c2NyaXB0IHdoaWNoIGV4cGxpY2l0bHkgc2V0IE00IGVudmlyb25tZW50YWwgdmFyaWFibGUgdG8g
dGhlDQo+PiBuZXcgcGF0aA0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IEtldmluIFRpYW4gPGtldmlu
LnRpYW5AaW50ZWwuY29tPg0KPj4gLS0tDQo+PiAgbWV0YS9yZWNpcGVzLWRldnRvb2xzL2ZsZXgv
ZmxleC5pbmMgICAgICAgfCAgICA2ICsrKysrKw0KPj4gIG1ldGEvcmVjaXBlcy1kZXZ0b29scy9m
bGV4L2ZsZXhfMi41LjM1LmJiIHwgICAgMiArLQ0KPj4gIDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9ucygtKQ0KPj4NCj4+IGRpZmYgLS1naXQgYS9tZXRhL3JlY2lw
ZXMtZGV2dG9vbHMvZmxleC9mbGV4LmluYyBiL21ldGEvcmVjaXBlcy1kZXZ0b29scy9mbGV4L2Zs
ZXguaW5jDQo+PiBpbmRleCA5M2ZhN2U4Li5lNWU0MjNlIDEwMDY0NA0KPj4gLS0tIGEvbWV0YS9y
ZWNpcGVzLWRldnRvb2xzL2ZsZXgvZmxleC5pbmMNCj4+ICsrKyBiL21ldGEvcmVjaXBlcy1kZXZ0
b29scy9mbGV4L2ZsZXguaW5jDQo+PiBAQCAtMTEsMyArMTEsOSBAQCBTUkNfVVJJID0gIiR7U09V
UkNFRk9SR0VfTUlSUk9SfS9mbGV4L2ZsZXgtJHtQVn0udGFyLmJ6MiAiDQo+Pg0KPj4gIGluaGVy
aXQgYXV0b3Rvb2xzDQo+Pg0KPj4gK1NZU1JPT1RfUFJFUFJPQ0VTU19GVU5DU19hcHBlbmRfdmly
dGNsYXNzLW5hdGl2ZSA9ICIgZmxleF9wYXRoX2ZpeHVwIg0KPj4gKw0KPj4gK2ZsZXhfcGF0aF9m
aXh1cCgpIHsNCj4+ICsJY3JlYXRlX3dyYXBwZXIgJHtTWVNST09UX0RFU1RESVJ9LyR7U1RBR0lO
R19ESVJfSE9TVH0vJHtiaW5kaXJ9L2ZsZXggXA0KPj4gKwkJTTQ9JHtTVEFHSU5HX0JJTkRJUl9O
QVRJVkV9L200DQo+PiArfQ0KPg0KPkkgd2FzIHRoaW5raW5nIGFib3V0IHRoaXMgYSBsaXR0bGUg
ZnVydGhlciBhbmQgSSdkIHByZWZlciB0byBhdm9pZCB1c2luZw0KPnRoZSBTWVNST09UXypQUk9D
RVNTX0ZVTkNTIGlmIGF0IGFsbCBwb3NzaWJsZS4gSG93IGFib3V0IHNvbWV0aGluZyBsaWtlOg0K
Pg0KPmRvX2luc3RhbGxfYXBwZW5kX3ZpcnRjbGFzcy1uYXRpdmUoKSB7DQo+CWNyZWF0ZV93cmFw
cGVyICR7U1lTUk9PVF9ERVNURElSfS8ke1NUQUdJTkdfRElSX0hPU1R9LyR7YmluZGlyfS9mbGV4
IFwNCj4JCU00PSR7U1RBR0lOR19CSU5ESVJfTkFUSVZFfS9tNA0KPn0NCj4NCg0Kc3VyZSwgbGV0
IG1lIGRvIHNvbWUgcXVpY2sgdGVzdC4NCg0KVGhhbmtzDQpLZXZpbg0K

