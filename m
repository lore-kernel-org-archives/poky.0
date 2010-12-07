Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 918F14C80050
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 01:56:44 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 06 Dec 2010 23:56:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,310,1288594800"; d="scan'208";a="684633701"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga001.jf.intel.com with ESMTP; 06 Dec 2010 23:56:43 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 7 Dec 2010 15:56:35 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Tue, 7 Dec 2010
	15:56:11 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Date: Tue, 7 Dec 2010 15:56:09 +0800
Thread-Topic: [poky] [PATCH 1/1] curl: fix native dependency
Thread-Index: AcuU4lx4fWi9ZsiORtabL0CPzLd9DgBAc6DQ
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D47543B3C@shsmsx502.ccr.corp.intel.com>
References: <cover.1289982751.git.qing.he@intel.com>
	<a03c4017a13bda3f20b8f39a4c099cb28f349968.1289982751.git.qing.he@intel.com>
	<1290954166.27143.217.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D42C686F3@shsmsx502.ccr.corp.intel.com>
	<AANLkTi=oxv9goiEMAfpkDAvq7n_GfGUMSXsonXDdzixd@mail.gmail.com>
	<1291033557.14277.944.camel@rex> <20101130014427.GA6584@qhe2-db>
	<625BA99ED14B2D499DC4E29D8138F1504D475430ED@shsmsx502.ccr.corp.intel.com>
	<1291597808.14277.2932.camel@rex>
In-Reply-To: <1291597808.14277.2932.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Chris Larson <clarson@kergoth.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Tue, 07 Dec 2010 07:56:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PkZyb206IFJpY2hhcmQgUHVyZGllIFttYWlsdG86cnB1cmRpZUBsaW51eC5pbnRlbC5jb21dDQo+
U2VudDogTW9uZGF5LCBEZWNlbWJlciAwNiwgMjAxMCA5OjEwIEFNDQo+DQo+T24gU3VuLCAyMDEw
LTEyLTA1IGF0IDE3OjQzICswODAwLCBUaWFuLCBLZXZpbiB3cm90ZToNCj4+ID5Gcm9tOiBIZSwg
UWluZw0KPj4gPlNlbnQ6IFR1ZXNkYXksIE5vdmVtYmVyIDMwLCAyMDEwIDk6NDQgQU0NCj4+ID5U
byBiZSBtb3JlIHNwZWNpZmljLCBpZiBhcHBlbmQgaXMgdG8gYmUgaGFuZGxlZCBlYXJsaWVyIHRo
YW4gdmlydGNsYXNzLA0KPj4gPkZPTyBtYXkgbm90IGJlIGFibGUgdG8gYmUgZXZhbHVhdGVkIGF0
IHRoZSB0aW1lIHdoZW4gYXBwZW5kL3ByZXBlbmQgaXMNCj4+ID5wcm9jZXNzZWQsIGFzIHRoZSBm
b2xsb3dpbmcgdGVzdCBjYXNlOg0KPj4gPg0KPj4gPkZPTyA9ICJBIg0KPj4gPkZPT192aXJ0Y2xh
c3MtbmF0aXZlID0gIkIiDQo+PiA+Rk9PX2FwcGVuZCA9ICJDIg0KPj4gPkZPT19hcHBlbmRfdmly
dGNsYXNzLW5hdGl2ZXNkayA9ICJEIg0KPj4gPg0KPj4gPkhvdyBzaG91bGQgaXQgYmUgaGFuZGxl
ZD8NCj4+ID4NCj4+DQo+PiBUaGUgZXhwZWN0ZWQgcmVzdWx0IHdpbGwgYmU6DQo+Pg0KPj4gYSkg
aWYgeW91IGJ1aWxkIHBrZ25hbWUsIHlvdSdsbCBnZXQgRk9PID0gIkFDIiBhcyB0aGUgZWZmZWN0
IG9mIF9hcHBlbmQNCj4+DQo+PiBiKSBpZiB5b3UgYnVpbGQgcGtnbmFtZS1uYXRpdmUsIHlvdSds
bCBnZXQgRk9PID0gIkJDIiBiZWNhdXNlIG92ZXJyaWRlcyBhcmUNCj4+IGhhbmRsZWQgYmVmb3Jl
IF9hcHBlbmQvX3ByZXBlbmQNCj4+DQo+PiBhKSBpZiB5b3UgYnVpbGQgcGtnbmFtZS1uYXRpdmVz
ZGssIHlvdSdsbCBnZXQgRk9PID0gIkFEIiBiZWNhdXNlIG92ZXJyaWRlDQo+PiBhcHBlbmRpeCBp
cyB1c2VkDQo+DQo+YnV0IHRoaXMgbGFzdCBjYXNlIHNob3VsZCBiZSBBQ0QgYXMgSSB0aGluayB3
ZSd2ZSBkZXRlcm1pbmVkIHRoZXJlIGlzIGENCj5idWcgaW4gYml0YmFrZSA6KQ0KPg0KDQp5ZXMs
IHlvdSBhcmUgY29ycmVjdC4gOi0pDQoNClRoYW5rcw0KS2V2aW4NCg==

