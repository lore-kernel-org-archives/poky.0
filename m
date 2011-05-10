Return-Path: <liping.ke@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E4CEE4C80578
	for <poky@yoctoproject.org>; Mon,  9 May 2011 20:27:26 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 May 2011 18:27:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,343,1301900400"; d="scan'208";a="640407055"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 09 May 2011 18:27:25 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 10 May 2011 09:26:08 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 10 May 2011 09:26:08 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Tue, 10 May 2011 09:26:07 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Tue, 10 May 2011 09:26:06 +0800
Thread-Topic: [poky] [PATCH 0/4][Image Creator]Put extra requested fields
	into different cache files
Thread-Index: AcwOP5PEQGUxFfm8TjuFKsEaqZacTwAbkg/Q
Message-ID: <789F9655DD1B8F43B48D77C5D30659734C510EFC@shsmsx501.ccr.corp.intel.com>
References: <cover.1304922517.git.liping.ke@intel.com>
	<1304941939.30391.205.camel@rex>
In-Reply-To: <1304941939.30391.205.camel@rex>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/4][Image Creator]Put extra requested fields into different cache files
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
X-List-Received-Date: Tue, 10 May 2011 01:27:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksIFJpY2hhcmQsDQoNClRoYW5rcyBmb3IgeW91ciBmZWVkYmFjayEhISBwbGVhc2Ugc2VlIGJl
bG93IGFuc3dlcnMuDQoNCmNyaXBpbmcNCg0KPiBUaGVzZSBwYXRjaGVzIGFyZSBnb29kIGFuZCBJ
IGxpa2UgdGhlIHVsdGltYXRlIHJlc3VsdCBidXQgdGhlIHBhdGNoZXMNCj4gdGhlbXNlbHZlcyBj
b3VsZCB1c2Ugc29tZSB0d2Vha3MgaW4gdGhlIG9yZGVyIHRoZXkgbWFrZSBjaGFuZ2VzLiBJZGVh
bGx5DQo+IGNoYW5nZXMgbmVlZCB0byBiZSBtYWRlIGluIGEgd2F5IHRoYXQgZWFjaCBwYXRjaCBj
YW4gc3RhbmQgb24gaXRzIG93biBzbw0KPiBJIGNvdWxkIGFwcGx5IHBhdGNoZXMgMSBhbmQgMiwg
bGVhdmUgMyBhbmQgNCBvdXQgYW5kIHRoZSBjb2RlIHNob3VsZA0KPiBzdGlsbCB3b3JrLg0KPiAN
Cj4gSW4gdGhpcyBzZW5zZSwgdGhlIHNlcmllcyBzaG91bGQgcmVhbGx5IGJlIGEgc2V0IG9mIHBh
dGNoZXMgd2hpY2g6DQo+IA0KPiBhKSBBZGRzICJiaXRiYWtlX21vZGUiIGFuZCBhbGxvd3MgVUlz
IHRvIGRlZmluZSBjYWNoZSBkYXRhDQo+IGIpIEFkZHMgdGhlIGNhY2hlIGRhdGEgdG8gaG9iDQo+
IGMpIERyb3BzIHRoZSBjYWNoZSBkYXRhIHVzZWQgb25seSBieSBob2IgZnJvbSB0aGUgY29yZQ0K
WWVzLCBpbiBnZW5lcmFsIEkgd2FudCB0byBkbyB0aGUgc2FtZSB0aGluZy4gRWFjaCBwYXRjaCBp
biB0aGUgc2VyaWFsIHdpbGwNCm5vdCBicmVhayB0aGUgY3VycmVudCBjcy4gUGF0Y2hbMS80XSwg
cGF0Y2hbMi80XSYgcGF0Y2ggWzMvNF0gYXJlIGZvciBhKSBhbmQgYikuDQpCdXQgZm9yIGMpLCBi
ZWNhdXNlIG9mIHRoZSBpbXBsYW50YXRpb24gYWxnb3JpdGhtIEkgYWRvcHRlZCwgaXQncyBtZXJn
ZWQgd2l0aA0KZXh0cmEgY2FjaGUgZGF0YSBpbXBsZW1lbnRhdGlvbiAodGhlIGJpZ2dlc3QgcGF0
Y2gpLg0KDQogDQo+IEkndmUgYWxzbyB0aGUgZm9sbG93aW5nIGNvbW1lbnRzIG9uIHRoZSBjb2Rl
IGluIGdlbmVyYWw6DQo+IA0KPiBhKSBDb3VsZCB3ZSBtb3ZlIHRoZSBob2Igc3BlY2lmaWMgY2Fj
aGUgZGF0YSBmcm9tIGNhY2hlLnB5IHRvIGhvYi5weS4gSWYNCj4gbm90LCBJJ2QgbGlrZSB0byB1
bmRlcnN0YW5kIHdoeSBub3QgYW5kIG1heWJlIGFkZHJlc3MgdGhvc2UgaXNzdWVzLiBNeQ0KPiBw
b2ludCBpcyB5b3Ugc2hvdWxkbid0IG5lZWQgdG8gY2hhbmdlIGNhY2hlLnB5IHRvIGFkZCBleHRy
YSBjYWNoZSBkYXRhLg0KDQp5b3UgbWVhbiB0aGF0IHdlIHdpbGwgaGF2ZSBhIHNlcGFyYXRlIEV4
dHJhQ2FjaGUgKEkgZ3Vlc3MgaG9iIG9yIGFkdC1pbnN0YWxsZXIgc2hvdWxkIGhhdmUgdGhlIHNp
bWlsYXIgbG9naWM/KQ0KaW1wbGVtZW50YXRpb24gZmlsZSwgd2hpY2ggaGFzIHNpbWlsYXIgZnVu
Y3Rpb25hbGl0eSB3aXRoIGNhY2hlLnB5PyANCk9oLCBJIGRpZCBub3QgdGhpbmsgb2YgdGhpcyBp
bXBsZW1lbnRhdGlvbiBhdCBhbGwgd2hlbiBpbXBsZW1lbnQuIEluIG15IG1pbmQsIGNoYW5nZSBs
ZXNzIGNvZGUgaXMgdGhlIHByaW5jaXBsZSBzaW5jZQ0KdGhpcyBwYXJ0IG9mIHRoZSBjb2RlIGlz
IHRoZSBjb3JlIG9mIGJpdGJha2U6KSAgSWYgc3BsaXQsIG1hbnkgY29kZXMgaW4gY2FjaGUgY291
bGQgYmUgcmV1c2VkIGJ5IGJvdGggY2FjaGUucHkgYW5kIGhvYi5weT8NCg0KQW5kIGFsc28sIGlm
IHlvdSB0aGluayBpdCBpcyBhIG11c3QsIGNvdWxkIHdlIHNwbGl0IHRoZSB0YXNrLCBmb3IgdGhp
cyBwaGFzZSwga2VlcCBpdCBpbiB0aGUgc2FtZSBmaWxlLiANCkFuZCB0aGVuIHJlZmFjdG9yeSB0
aGVtIGluIGFub3RoZXIgcGF0Y2ggbGF0ZXI/IFNlZW1zIHRoZXJlJ3JlIG1hbnkgdGFza3MgZm9y
IGltYWdlIGNyZWF0b3I/IFNlZW1zIHRoZSBzY2hlZHVsZSBpcw0KdGlnaHQ/DQoNCj4gYikgQ291
bGQgd2UgcmVuYW1lICJiaXRiYWtlX21vZGUiIHRvICJleHRyYWNhY2hlcyIgb3Igc29tZXRoaW5n
Pw0KPiAiYml0YmFrZV9tb2RlIiBpcyBhIGJpdCB0b28gZ2VuZXJpYyBhbmQgbWVhbmluZ2xlc3Mu
DQpTdXJlLiBJdCdzIG5pY2UuDQoNCj4gYykgSSB3YXMgYWxzbyB3b25kZXJpbmcgaG93IGhhcmQg
aXQgd291bGQgYmUgdG8gbWFrZSB0aGlzIGFuIGFycmF5IGFuZA0KPiBhbGxvdyBtb3JlIHRoYW4g
b25lIHRvIGJlIGxvYWRlZD8gSSdtIHRoaW5raW5nIG9mIHRoZSB1c2UgY2FzZSB3aGVyZSB3ZQ0K
PiBtYXkgaGF2ZSBtb3JlIHRoYW4gb25lICJVSSIgaW4gZnV0dXJlIGFuZCBjb25maWd1cmUgdGhp
bmdzIHNvIHRoZSB1c2VyDQo+IGNhbiBzd2l0Y2ggYmV0d2VlbiB0aGVtIHdpdGhvdXQgcmUtcGFy
c2luZy4NCj4gDQpIaSwgUmljaGFyZCwgYWN0dWFsbHkgdXNlciBjb3VsZCBoYXZlIG1vcmUgdGhh
biBvbmUgZGF0YSBmaWxlLiBJZiB3ZSBoYXZlIGF1dG9idWlsZGVyIGV4dHJhIHJlcXVlc3RzLA0K
d2UgY2FuIGVhc2lseSBleHRlbmQgd2l0aCBmZXcgY29kZXM6IChqdXN0IGxpa2UgcGF0Y2ggMykN
CjEpZGVmaW5lIGF1dG9idWlsZGVyX2V4dHJhX2ZpZWxkcywNCjIpIGRlY2xhcmUgYXV0b2J1aWxk
ZXIgbmFtZWR0dXBsZSBjbGFzcw0KMykgYWRkIGVsc2UgaW4gRXh0cmFDbGFzc0ZhY3RvcnkgZm9y
IGRlZmluaW5nIGZyb21fbWV0YWRhdGEuDQpUaGVuIHRoZSBiYl9jYWNoZWF1dG9idWlsZGVyLmRh
dCB3aWxsIGJlIGxvYWRlZCBhbmQgcHJvY2Vzc2VkLiANClRoZW4gdGhlcmUgd291bGQgYmUgbW9y
ZSB0aGFuIHR3byBjYWNoZSBkYXRhIGZpbGVzIChiYl9jYWNoZS5kYXQsIGJiX2NhY2hlaG9iLmRh
dCwgYmJfY2FjaGVhdXRvYnVpbGRlci5kYXQsIGV0YykuDQpCdXQgZWFjaCB0aW1lIHdoZW4gYml0
YmFrZSBpcyBydW5uaW5nLCBvbmx5IHR3byBmaWxlcyB3aWxsIGJlIGxvYWRlZC9zYXZlZC4gKGJi
X2NhY2hlLmRhdCwgYmJfY2FjaGVob2IuZGF0KQ0Kb3IgKGJiX2NhY2hlLmRhdCwgYmJfY2FjaGVh
dXRvYnVpbGRlci5kYXQpLiBiaXRiYWtlX21vZGUgYXJlIHVzZWQgZm9yIHBhc3NpbmcgdGhlIHBh
cmFtZXRlcnMsICdob2InIG9yICdhdXRvYnVpbGRlcic/DQpJcyB0aGlzIHdoYXQgeW91IG1lYW4/
DQoNCj4gQ2hlZXJzLA0KPiANCj4gUmljaGFyZA0K

