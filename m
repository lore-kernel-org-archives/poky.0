Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 657064C810B6
	for <poky@pokylinux.org>; Fri,  7 Jan 2011 05:24:11 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 07 Jan 2011 03:24:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,288,1291622400"; d="scan'208";a="875354898"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga001.fm.intel.com with ESMTP; 07 Jan 2011 03:24:10 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 7 Jan 2011 19:23:14 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Fri, 7 Jan 2011
	19:23:14 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Fri, 7 Jan 2011 19:23:03 +0800
Thread-Topic: [poky] RFC/RFT Checksums as part of stamp files
Thread-Index: AcuuW1C5gzMERx19RSu2nv49T+k/NgAAabBw
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D786EE929@shsmsx502.ccr.corp.intel.com>
References: <1294354570.17519.25325.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D786EE679@shsmsx502.ccr.corp.intel.com>
	<1294398518.17519.26801.camel@rex>
In-Reply-To: <1294398518.17519.26801.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: poky <poky@pokylinux.org>
Subject: Re: RFC/RFT Checksums as part of stamp files
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
X-List-Received-Date: Fri, 07 Jan 2011 11:24:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PkZyb206IFJpY2hhcmQgUHVyZGllIFttYWlsdG86cmljaGFyZC5wdXJkaWVAbGludXhmb3VuZGF0
aW9uLm9yZ10NCj5TZW50OiBGcmlkYXksIEphbnVhcnkgMDcsIDIwMTEgNzowOSBQTQ0KPg0KPk9u
IEZyaSwgMjAxMS0wMS0wNyBhdCAxMjo0OSArMDgwMCwgVGlhbiwgS2V2aW4gd3JvdGU6DQo+PiA+
SSdtIGFsc28gYXdhcmUgdGhhdCB0aGlzIGlkZWEgaXNuJ3QgZ29pbmcgdG8gYmUgdW5pdmVyc2Fs
bHkgbGlrZWQsDQo+PiA+cGFydGljdWxhcmx5IEkgY2FuIGd1ZXNzIHRoYXQgS29lbiBpcyBnb2lu
ZyB0byBoYXZlIGNvbmNlcm5zIGFib3V0IHRoaXMNCj4+ID5hbmQgQW5nc3Ryb20gc2luY2UgdGhl
IGxhY2sgb2YgUFIgYnVtcHMgbWVhbnMgcGFja2FnZSBmZWVkcyBjb3VsZCBzdGFydA0KPj4gPnRv
IHN1ZmZlci4NCj4+DQo+PiB3b3J0aHkgb2YgYSBjb25maWcgb3B0aW9uPyBXZSBtYXkgbmVlZCBz
ZWUgZnJvbSByZWFsIHVzZSB3aGV0aGVyIHRoaXMgd2lsbA0KPj4gdHJpZ2dlciBtYW55IHVubmVj
ZXNzYXJ5IHJlYnVpbGRzIGFuZCBob3cgbXVjaCBpbXBhY3QgdG8gcGVvcGxlJ3MgZGFpbHkNCj4+
IHdvcmsuIEJhc2ljYWxseSB0aGUgaW5jcmVtZW50YWwgYnVpbGRzIHdpbGwgYmUgbXVjaCBtb3Jl
IGhlYXZpZXIgdGhhbiBiZWZvcmUsDQo+PiB0aG91Z2ggdGhpcyBpbiBjb25jZXB0IGlzIG1vcmUg
Y29ycmVjdC4uLg0KPg0KPlRoZXkgYXJlIHBvdGVudGlhbGx5IGhlYXZpZXIsIHllcy4NCj4NCj5X
aXRoIHRoaXMgYW5kIG90aGVyIGZhY3RvcnMgaW4gbWluZCwgSSd2ZSBtZXJnZWQgYSBuZXcgc2ln
bmF0dXJlDQo+Z2VuZXJhdG9yIGNsYXNzIGludG8gcG9reSB3aXRoIHRoaXMgYXMgdGhlIG9ubHkg
YWRkZWQgZmVhdHVyZS4gTm93IHdpdGgNCj5wb2t5J3MgbWFzdGVyIGJyYW5jaCB5b3UgY2FuIGFk
ZDoNCj4NCj5CQl9TSUdOQVRVUkVfSEFORExFUiA9ICJiYXNpY2hhc2giDQo+DQo+dG8gbG9jYWwu
Y29uZiB0byBlbmFibGUgdGhpcyBmdW5jdGlvbmFsaXR5ICh0aGUgZGVmYXVsdCBpcyAiYmFzaWMi
KS4NCj4NCj5BdCBzb21lIHBvaW50IHdlIGFyZSBsaWtlbHkgdG8gZGVjaWRlIHRvIGNoYW5nZSB0
aGUgZGVmYXVsdCBpbg0KPmJpdGJha2UuY29uZiBidXQgdGhpcyBtYWtlcyBpdCBlYXNpZXIgZm9y
IHBlb3BsZSB0byB0ZXN0Lg0KPg0KPkZvciByZWZlcmVuY2UsIG15IHRlc3QgYnVpbGRzIGNvbXBs
ZXRlZCBzdWNjZXNzZnVsbHkuDQo+DQoNCm15IGJ1aWxkIGZpbmlzaGVzIHN1Y2Nlc3NmdWxseSB0
b28uIEkgd2lsbCBtYW51YWxseSBidW1wIFBSIHRvIHRlc3QgaXRzIGNoYWluDQpyZWJ1aWxkIGVm
ZmVjdCBmb3Igc29tZSBndXQtZmVlbGluZy4gOi0pDQoNClRoYW5rcw0KS2V2aW4NCg==

