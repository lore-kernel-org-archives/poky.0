Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9DFAA4C8120A
	for <poky@yoctoproject.org>; Fri, 13 May 2011 15:27:40 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 13 May 2011 13:27:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,366,1301900400"; 
   d="scan'208";a="1430307"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga002.fm.intel.com with ESMTP; 13 May 2011 13:27:40 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.226.213) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 13 May 2011 13:27:40 -0700
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx601.amr.corp.intel.com ([10.22.226.213]) with mapi;
	Fri, 13 May 2011 13:27:40 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Fri, 13 May 2011 13:27:39 -0700
Thread-Topic: [poky] [PATCH 25/25] m4: update upstream-status for patches
Thread-Index: AcwRVIMI6VkkuAbLSuirqOOMn5dnSwAV5t4w
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE94D89C51C9@orsmsx504.amr.corp.intel.com>
References: <cover.1305245922.git.nitin.a.kamble@intel.com>
	<483456db6f26684d977870434bbf3b51891c171c.1305245924.git.nitin.a.kamble@intel.com>
	<1305280774.19606.39.camel@rex>
In-Reply-To: <1305280774.19606.39.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 25/25] m4: update upstream-status for patches
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
X-List-Received-Date: Fri, 13 May 2011 20:27:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUmljaGFyZCwNCiBUaGFua3MgZm9yIGRldGVjdGluZyB0aGlzLiANCk5pdGluDQoNCg0KPiAt
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBSaWNoYXJkIFB1cmRpZSBbbWFpbHRv
OnJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmddDQo+IFNlbnQ6IEZyaWRheSwgTWF5
IDEzLCAyMDExIDM6MDAgQU0NCj4gVG86IEthbWJsZSwgTml0aW4gQQ0KPiBDYzogcG9reUB5b2N0
b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6IFJlOiBbcG9reV0gW1BBVENIIDI1LzI1XSBtNDogdXBk
YXRlIHVwc3RyZWFtLXN0YXR1cyBmb3INCj4gcGF0Y2hlcw0KPiANCj4gSGkgTml0aW4sDQo+IA0K
PiBPbiBUaHUsIDIwMTEtMDUtMTIgYXQgMTc6MjAgLTA3MDAsIE5pdGluIEEgS2FtYmxlIHdyb3Rl
Og0KPiA+IEZyb206IE5pdGluIEEgS2FtYmxlIDxuaXRpbi5hLmthbWJsZUBpbnRlbC5jb20+DQo+
ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBOaXRpbiBBIEthbWJsZSA8bml0aW4uYS5rYW1ibGVAaW50
ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBtZXRhL3JlY2lwZXMtZGV2dG9vbHMvbTQvbTQvYWNfY29u
ZmlnX2xpbmtzLnBhdGNoICB8ICAgIDIgKw0KPiA+ICAuLi4vbTQvbTQvZml4X2Zvcl9jaXJjdWxh
cl9kZXBlbmRlbmN5LnBhdGNoICAgICAgICB8ICAgIDIgKw0KPiA+ICAuLi4vbTQvbTQvbTQtMS40
LjlfZXh0cmFfb3B0aW9ucy5wYXRjaCAgICAgICAgICAgICB8ICAxNjkNCj4gKysrKysrKysrKysr
KysrKysrKysNCj4gPiAgbWV0YS9yZWNpcGVzLWRldnRvb2xzL200L200L21ha2UucGF0Y2ggICAg
ICAgICAgICAgfCAgICAxICsNCj4gPiAgNCBmaWxlcyBjaGFuZ2VkLCAxNzQgaW5zZXJ0aW9ucygr
KSwgMCBkZWxldGlvbnMoLSkNCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IG1ldGEvcmVjaXBlcy1k
ZXZ0b29scy9tNC9tNC9tNC0NCj4gMS40LjlfZXh0cmFfb3B0aW9ucy5wYXRjaA0KPiANCj4gSSBk
aWRuJ3QgdGFrZSB0aGlzIHBhdGNoIGFzIHRoZXJlIHNlZW1lZCB0byBiZSBtb3JlIHRoYW4gYSBw
YXRjaCBoZWFkZXINCj4gYWRkaXRpb24gaW4gdGhpcyBwYXRjaC4uLg0KPiANCj4gQ2hlZXJzLA0K
PiANCj4gUmljaGFyZA0KDQo=

