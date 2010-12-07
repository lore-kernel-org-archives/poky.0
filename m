Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5582E4C80050
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 01:47:05 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 06 Dec 2010 23:47:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,310,1288594800"; d="scan'208";a="684631063"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga001.jf.intel.com with ESMTP; 06 Dec 2010 23:47:02 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 7 Dec 2010 15:46:38 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Tue, 7 Dec 2010
	15:46:38 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>, Chris Larson
	<clarson@kergoth.com>
Date: Tue, 7 Dec 2010 15:46:36 +0800
Thread-Topic: [poky] sstate status
Thread-Index: AcuU5SDnXKnb4JtaRCO3rSa7pnUC5AA+colw
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D47543B26@shsmsx502.ccr.corp.intel.com>
References: <201012031634.56033.paul.eggleton@linux.intel.com>
	<1291414305.14277.2746.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D475430F5@shsmsx502.ccr.corp.intel.com>
	<1291598996.14277.2946.camel@rex>
In-Reply-To: <1291598996.14277.2946.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: sstate status
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
X-List-Received-Date: Tue, 07 Dec 2010 07:47:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PkZyb206IFJpY2hhcmQgUHVyZGllIFttYWlsdG86cnB1cmRpZUBsaW51eC5pbnRlbC5jb21dDQo+
U2VudDogTW9uZGF5LCBEZWNlbWJlciAwNiwgMjAxMCA5OjMwIEFNDQo+DQo+T24gU3VuLCAyMDEw
LTEyLTA1IGF0IDE5OjEwICswODAwLCBUaWFuLCBLZXZpbiB3cm90ZToNCj4+IFN1cmUuIEhvd2V2
ZXIgbXkgcmVtb3RlIG1hY2hpbmUgaW4gb2ZmaWNlIGlzIGRvd24gdW5leHBlY3RlZGx5LiBJJ2xs
IHZlcmlmeSBpdCBsYXRlcg0KPj4gd2hlbiBnb2luZyB0byBvZmZpY2UgbmV4dCB3ZWVrLg0KPj4N
Cj4+IEJUVywgb24gbXkgYnJhbmNoIHRoZXJlJ3JlIGFsc28gc29tZSBidWcgZml4ZXMgb3V0IG9m
IGVudmlyb25tZW50YWwgdmFyaWFibGVzIGlzc3VlLA0KPj4gd2hpY2ggY291bGQgeW91IHRha2Ug
YSBsb29rIHdoZXRoZXIgdGhleSdyZSBjb3JyZWN0Pw0KPj4NCj4+DQo+aHR0cDovL2dpdC5wb2t5
bGludXgub3JnL2NnaXQvY2dpdC5jZ2kvcG9reS1jb250cmliL2NvbW1pdC8/aD10ay9zc3RhdGUm
aWQ9N2E2ZmM4MTY3NjYNCj5lYTkyNTU5MWEwY2Y2YWUxNzM4M2E5NTNhZTA2MSwgc2lnZ2VuLnB5
OiBzZXQgJ3J1bnRhc2tkZXBzJyBjb3JyZWN0bHkNCj4NCj5JJ3ZlIG1lcmdlZCB0aGlzIG9uZSwg
dGhhbmtzLg0KDQpUaGFua3MNCg0KPg0KPj4NCj5odHRwOi8vZ2l0LnBva3lsaW51eC5vcmcvY2dp
dC9jZ2l0LmNnaS9wb2t5LWNvbnRyaWIvY29tbWl0Lz9oPXRrL3NzdGF0ZSZpZD0wYTRjNDZkYzJj
MQ0KPjIyZWY1YzEwNTczODBlNzliNzVlMzAyNTgzYjRhLCBzaWdnZW4ucHk6IGZpeCBweXRob24g
ZXJyb3Igd2hlbiBjb21wYXJpbmcgc3N0YXRlDQo+Z2VuZXJhdGVkIGZyb20gZGlmZmVyZW50IHNy
Y3BhdGgNCj4NCj5JIHVuZGVyc3RhbmQgdGhlIG5lZWQgZm9yIHRoaXMgYnV0IEkgZG9uJ3QgbGlr
ZSB0aGUgaW1wbGVtZW50YXRpb24gOikNCj4NCj5XZSBjYW4ndCB1c2UgT0VST09UIGhlcmUgYXMg
aXRzIG5vdCBhIHN0YW5kYXJkIHZhcmlhYmxlIGFuZCBpcw0KPmRlcHJlY2F0ZWQuIEkgd2FzIGlu
aXRpYWxseSB0aGlua2luZyBQT0tZQkFTRSBidXQgdGhhdCBpc24ndCByaWdodA0KPmVpdGhlciBp
biBiaXRiYWtlLiBIbW0uDQoNCkNvdWxkIHlvdSBlbGFib3JhdGUgd2h5IFBPS1lCQVNFIGNhbid0
IGJlIHVzZWQgdG9vPyBCZWNhdXNlIExBWUVSRElSIGlzIGENCm9uZS10aW1lIGV4cGFuc2lvbiBh
Y3Rpb24/IElmIHdlJ3JlIHN1cmUgdGhhdCBQT0tZQkFTRSBpcyBleHBhbmRlZCBiZWZvcmUNCmJh
c2Ugc2lnbmF0dXJlIGdlbmVyYXRpb24sIHRoZW4gaXQgY291bGQgd29yay4NCg0KPg0KPkNocmlz
LCBhbnkgc3VnZ2VzdGlvbnM/IEknbSBhY3R1YWxseSBzdHJ1Z2dsaW5nIGEgYml0IHRvIGNvbWUg
dXAgd2l0aCBhDQo+dmFyaWFibGUgdGhhdCByZXByZXNlbnRzIGEgImhlYWQiIG9mIHRoZSBtZXRh
ZGF0YSA6Ly4gUGVyaGFwcyBmaWxlbmFtZQ0KPndvdWxkIGJlIGVub3VnaCBpbiB0aGlzIGNhc2U/
DQo+DQo+SSdkIGFsc28gc3VnZ2VzdCB3ZSByZW1vdmUgdGhpcyBwYXRoIHdoZW4gd2Ugc2F2ZSB0
aGUgc2lnaW5mbyBmaWxlLCBub3QNCj53aGVuIHdlIGxvYWQgaXQgYW5kIGRvIHRoZSBjb21wYXJp
c29uLg0KDQpZZXMsIHRoYXQncyBhIGJldHRlciBhcHByb2FjaC4gSSdsbCBnbyB0aGF0IGFwcHJv
YWNoLg0KDQo+DQo+Pg0KPmh0dHA6Ly9naXQucG9reWxpbnV4Lm9yZy9jZ2l0L2NnaXQuY2dpL3Bv
a3ktY29udHJpYi9jb21taXQvP2g9dGsvc3N0YXRlJmlkPTdkNmRkMGI1NzE3DQo+YjU2NWY0Nzhj
ODhkNTNjZjVlNTNlMTM5ZjExNDEsIHNpZ2dlbi5weTogZml4IHRoZSB3cm9uZyB1c2FnZSBvbg0K
PkJCX1RBU0tIQVNIX1dISVRFTElTVA0KPg0KPldoeSB0aGUgaW5pdGlhbDoNCj4NCj5pZiBzZWxm
LnR3bCBhbmQgbm90IHNlbGYudHdsLnNlYXJjaChkYXRhQ2FjaGUucGtnX2ZuW2ZuXSk6DQo+DQo+
Pw0KPg0KPkkgc3VzcGVjdCBpdCBzaG91bGQganVzdCBiZToNCj4NCj5kZXBfZm4gPSByZS5zZWFy
Y2goIig/UDxmbj4uKilcLi4qIiwgZGVwKS5ncm91cCgnZm4nKQ0KPmlmIHNlbGYudHdsLnNlYXJj
aChkYXRhQ2FjaGUucGtnX2ZuW2RlcF9mbl0pOg0KPiAgICAjYmIubm90ZSgiU2tpcHBpbmcgJXMi
ICUgZGVwKQ0KPiAgICBjb250aW51ZQ0KPg0KPj8NCj4NCj5Gb3IgbmF0aXZlL2Nyb3NzIHRhc2tz
LCBJIHN0aWxsIGV4cGVjdCB0aGVuIHRvIGhhdmUgZGVwZW5kZW5jaWVzIGFuZCBiZQ0KPnJlYnVp
bHQgaWYgc29tZXRoaW5nIGNoYW5nZXMsIEkganVzdCBkb24ndCBleHBlY3QgdGFyZ2V0IHBhY2th
Z2VzIHRvDQo+Y2hhbmdlIHdoZW4gbmF0aXZlL2Nyb3NzIG9uZXMgZG8uDQo+DQoNClRoYXQncyBt
eSBpbnRlbnRpb24gdG9vLiBBYm92ZSBsb2dpYyBpcyB0byBmaWx0ZXIgb3V0IG5hdGl2ZS9jcm9z
cyBkZXBlbmRlbmNpZXMuDQpJZiB3ZSBkbyB0aGF0IGZpbHRlciBmb3IgbmF0aXZlL2Nyb3NzIHRh
c2tzIHRvbywgdGhhdCBtZWFucyBhbGwgZGVwZW5kZW5jaWVzIA0Kd291bGQgYmUgd2lwZWQgb3V0
IHdoaWNoIGlzIG5vdCB3aGF0IHdlIHdhbnQgc2luY2UgdGhleSBhbGwgZmFsbCBpbnRvIHRoZQ0K
bWF0Y2ggZ3JvdXAuIFRoYXQncyB3aHkgSSBhZGQgdGhlIGluaXRpYWwgY29uZGl0aW9uIHRvIHJl
c3RyaWN0IHRoZSBmaWx0ZXJpbmcgb24NCm9uIHRhcmdldCBwYWNrYWdlcy4gOi0pDQoNClRoYW5r
cw0KS2V2aW4NCg==

