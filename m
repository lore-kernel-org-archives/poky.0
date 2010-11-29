Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 672054C811FD
	for <poky@yoctoproject.org>; Sun, 28 Nov 2010 23:58:59 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 28 Nov 2010 21:58:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,274,1288594800"; d="scan'208";a="578466617"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga002.jf.intel.com with ESMTP; 28 Nov 2010 21:58:58 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 29 Nov 2010 13:58:49 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Mon, 29 Nov 2010 13:58:47 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Chris Larson <clarson@kergoth.com>
Date: Mon, 29 Nov 2010 13:58:46 +0800
Thread-Topic: [poky] [PATCH 1/1] curl: fix native dependency
Thread-Index: AcuPic5h8NX0fCRFRmWYIbWaMlOqswAAHZzw
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D42C68736@shsmsx502.ccr.corp.intel.com>
References: <cover.1289982751.git.qing.he@intel.com>
	<a03c4017a13bda3f20b8f39a4c099cb28f349968.1289982751.git.qing.he@intel.com>
	<1290954166.27143.217.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D42C686F3@shsmsx502.ccr.corp.intel.com>
	<AANLkTi=oxv9goiEMAfpkDAvq7n_GfGUMSXsonXDdzixd@mail.gmail.com>
In-Reply-To: <AANLkTi=oxv9goiEMAfpkDAvq7n_GfGUMSXsonXDdzixd@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Mon, 29 Nov 2010 05:58:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PkZyb206IENocmlzIExhcnNvbg0KPlNlbnQ6IE1vbmRheSwgTm92ZW1iZXIgMjksIDIwMTAgMTo1
NCBQTQ0KPg0KPk9uIFN1biwgTm92IDI4LCAyMDEwIGF0IDEwOjI2IFBNLCBUaWFuLCBLZXZpbiA8
a2V2aW4udGlhbkBpbnRlbC5jb20+IHdyb3RlOg0KPj4gVGhpcyBhbHNvIGNvbmZ1c2VzIG1lIGEg
Yml0LiBXaGVuIHZpcnRjbGFzcy1uYXRpdmUgaXMgZXhwYW5kZWQsIEVYVFJBX09FQ09ORl9hcHBl
bmQNCj4+IGlzIHNpbXBseSBhIHZhcmlhYmxlLiBJbiB0aGF0IGNhc2UgdGhlIGV4cGFuZGVkIHZh
bHVlIHNob3VsZCBvdmVycmlkZSB0aGUgMXN0IGFzc2lnbm1lbnQNCj4+IG9mIEVYVFJBX09FQ09O
Rl9hcHBlbmQsIGFuZCB0aGVuIHdlIHNob3VsZCBnZXQ6DQo+Pg0KPj4gRVhUUkFfT0VDT05GX2Fw
cGVuZCA9ICIgLS13aXRob3V0LWdudXRscyAiDQo+Pg0KPj4gYW5kIHRoZW4gdGhhdCdzIHdoYXQg
d2UgZXhwZWN0Lg0KPj4NCj4+IEkgZ3Vlc3MgSSBtYXkgc3RpbGwgb3Zlcmxvb2sgc29tZXRoaW5n
IGhlcmUsIGFuZCByZWFsbHkgYXBwcmVjaWF0ZSB5b3VyIGV4cGxhbmF0aW9uDQo+PiBvbiB0aGUg
d2hvbGUgZmxvdyB3aGljaCBpcyBoZWxwZnVsLiA6LSkNCj4NCj5ObywgRVhUUkFfT0VDT05GX2Fw
cGVuZCBpcyBuZXZlciBhIHZhcmlhYmxlLiAgX2FwcGVuZC9fcHJlcGVuZCBhcmUNCj5vcGVyYXRp
b25zLCBub3QgcGFydCBvZiB0aGUgbmFtZS4gIFRoZSB2YWx1ZSBnZXRzIHNldCBhc2lkZSBpbiBh
IGxpc3QNCj5vZiBhcHBlbmRzIGZvciB0aGF0IHZhcmlhYmxlLiAgT25lIF9hcHBlbmQgY2Fubm90
IG92ZXJyaWRlL3JlcGxhY2UNCj5hbm90aGVyIG9uIHRoZSBzYW1lIHZhcmlhYmxlLCBpdHMgYWx3
YXlzIGN1bXVsYXRpdmUuDQoNCnllcywgeW91J3JlIGNvcnJlY3QuIFRoYW5rcyBmb3IgcG9pbnRp
bmcgaXQgb3V0Lg0KDQpUaGFua3MsDQpLZXZpbg0K

