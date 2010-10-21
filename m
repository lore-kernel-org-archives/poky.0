Return-Path: <lei.mei@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 565EC4C803C9
	for <poky@pokylinux.org>; Thu, 21 Oct 2010 00:17:52 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 20 Oct 2010 22:17:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,215,1286175600"; d="scan'208";a="566021908"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga002.jf.intel.com with ESMTP; 20 Oct 2010 22:17:51 -0700
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 21 Oct 2010 13:17:48 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 21 Oct 2010 13:17:47 +0800
From: "Mei, Lei" <lei.mei@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Date: Thu, 21 Oct 2010 13:17:47 +0800
Thread-Topic: [PULL] at: Non root install patch is not necessary (Bug 246)
Thread-Index: ActwOLWN+xUFMG3FSAW1+3NawxkXvgApB4nw
Message-ID: <749B9D3DBF0F054390025D9EAFF47F222FE902E6@shsmsx501.ccr.corp.intel.com>
References: <749B9D3DBF0F054390025D9EAFF47F222FE8FA5E@shsmsx501.ccr.corp.intel.com>
	<1287489755.1720.1284.camel@rex>
	<749B9D3DBF0F054390025D9EAFF47F222FE8FF87@shsmsx501.ccr.corp.intel.com>
	<1287566700.16386.33.camel@rex>
In-Reply-To: <1287566700.16386.33.camel@rex>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: [PULL] at: Non root install patch is not necessary (Bug 246)
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Thu, 21 Oct 2010 05:17:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUmljaGFyZCwNCiAgICBJIGhhdmUgYWRkZWQgdGhlIGRlc2NyaXB0aW9uIHRvIHRoZSBub25z
dHJpcGJpbmFyaWVzLnBhdGNoLCBwbGVhc2UgY2hlY2sgaXQsIHRoYW5rIHlvdX4NCg0KIG1ldGEv
cmVjaXBlcy1leHRlbmRlZC9hdC9hdF8zLjEuMTIuYmIgICAgICAgICAgICAgICAgIHwgICAgMiAN
CiBtZXRhL3JlY2lwZXMtZXh0ZW5kZWQvYXQvZmlsZXMvbm9ucm9vdGluc3RhbGwucGF0Y2ggICB8
ICAgNzUgLS0tLS0tLS0tLS0tLS0tLS0tDQogbWV0YS9yZWNpcGVzLWV4dGVuZGVkL2F0L2ZpbGVz
L25vbnN0cmlwYmluYXJpZXMucGF0Y2ggfCAgIDI1ICsrKysrKw0KIDMgZmlsZXMgY2hhbmdlZCwg
MjYgaW5zZXJ0aW9ucygrKSwgNzYgZGVsZXRpb25zKC0pDQoNCk1laSBMZWkgKDEpOg0KICAgICAg
YXQ6IHJlbW92ZSBub25yb290aW5zdGFsbCBwYXRjaCBhbmQgbW9kaWZ5IHNvbWUgcmVsZXZhbnQg
ZmlsZXMNCg0KUHVsbCBVUkw6IGh0dHA6Ly9naXQucG9reWxpbnV4Lm9yZy9jZ2l0LmNnaS9wb2t5
LWNvbnRyaWIvbG9nLz9oPWxtZWkzL2Rpc3Rybw0KDQpjb21taXQgM2M2OTVkNWQyMTAyMjdjNTc0
NGZhOTA3MzZmZWI3YzMwOGM2YmYxNQ0KQXV0aG9yOiBNZWkgTGVpIDxsZWkubWVpQGludGVsLmNv
bT4NCkRhdGU6ICAgVGh1IE9jdCAyMSAxMjozNjo1MSAyMDEwICswODAwDQoNCiAgICBhdDogcmVt
b3ZlIG5vbnJvb3RpbnN0YWxsIHBhdGNoIGFuZCBtb2RpZnkgc29tZSByZWxldmFudCBmaWxlcw0K
ICAgIA0KICAgIHJlbW92ZSBub25yb290aW5zdGFsbCBwYXRjaCwgYW5kIHVzZSBhIHBhdGNoIG5h
bWVkIG5vbnN0cmlwYmluYXJpZXMgdG8gbW9kaWZ5IHRoZSAvYXQtMy4xLjEwLjIvTWFrZWZpbGUu
aW4sIHNvIGl0IGNhbiBhbHNvIGhhbmRsZXMgc3RyaXBwaW5nIG9mIHRoZSBiaW5hcmllcw0KICAg
IA0KICAgIEZpeCBbQlVHIDI0Nl0NCiAgICANCiAgICBTaWduZWQtb2ZmLWJ5OiBNZWkgTGVpIDxs
ZWkubWVpQGludGVsLmNvbT4NCg0KVGhhbmtzDQpMZWkNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdl
LS0tLS0NCkZyb206IFJpY2hhcmQgUHVyZGllIFttYWlsdG86cnB1cmRpZUBsaW51eC5pbnRlbC5j
b21dIA0KU2VudDogV2VkbmVzZGF5LCBPY3RvYmVyIDIwLCAyMDEwIDU6MjUgUE0NClRvOiBNZWks
IExlaQ0KU3ViamVjdDogUkU6IFtQVUxMXSBhdDogTm9uIHJvb3QgaW5zdGFsbCBwYXRjaCBpcyBu
b3QgbmVjZXNzYXJ5IChCdWcgMjQ2KQ0KDQpPbiBXZWQsIDIwMTAtMTAtMjAgYXQgMTc6MDUgKzA4
MDAsIE1laSwgTGVpIHdyb3RlOg0KPiBIaSBSaWNoYXJkLA0KPiAgICBJIGhhdmUgcmUtZml4ZWQg
dGhpcyBidWcsIHBsZWFzZSBjaGVjayBpdCwgdGhhbmsgeW91fg0KPiANCj4gIG1ldGEvcmVjaXBl
cy1leHRlbmRlZC9hdC9hdF8zLjEuMTIuYmIgICAgICAgICAgICAgICAgIHwgICAgMiANCj4gIG1l
dGEvcmVjaXBlcy1leHRlbmRlZC9hdC9maWxlcy9ub25yb290aW5zdGFsbC5wYXRjaCAgIHwgICA3
NSAtLS0tLS0tLS0tLS0tLS0tLS0NCj4gIG1ldGEvcmVjaXBlcy1leHRlbmRlZC9hdC9maWxlcy9u
b25zdHJpcGJpbmFyaWVzLnBhdGNoIHwgICAyMSArKysrKw0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAy
MiBpbnNlcnRpb25zKCspLCA3NiBkZWxldGlvbnMoLSkNCj4gDQo+IE1laSBMZWkgKDEpOg0KPiAg
ICAgICBhdDogcmVtb3ZlIG5vbnJvb3RpbnN0YWxsIHBhdGNoIGFuZCBtb2RpZnkgcmVsZXZhbnQg
ZmlsZXMNCg0KVGhhbmtzLCBtdWNoIGJldHRlci4gT25lIG1vcmUgc21hbGwgdGhpbmcgdGhvdWdo
IC0gY291bGQgeW91IGFkZCBhDQpoZWFkZXIgdG8gdGhlIHBhdGNoIHdpdGggYSBkZXNjcmlwdGlv
biBvZiB3aGF0IGl0IGRvZXMsIHdoeSBhbmQgd2hvIG1hZGUNCnRoZSBjaGFuZ2UuIEluIHRoaXMg
Y2FzZSBpdHMgZmFpcmx5IG9idmlvdXMgYnV0IGl0cyBhIGdvb2QgaWRlYSBpbg0KZ2VuZXJhbCBh
cyB3aGVuIHlvdSBjb21lIGJhY2sgdG8gYSBwYXRjaCBzaXggbW9udGhzIGxhdGVyIHlvdSBjYW4N
CnJlbWVtYmVyIHdoeSBpdHMgdGhlcmUhDQoNCkFsc28sIHBva3kgcHVsbCByZXF1ZXN0cyBsaWtl
IHRoaXMgc2hvdWxkIGJlIGdvaW5nIHRvIHRoZSBQb2t5IG1haWxpbmcNCmxpc3QuDQoNCkNoZWVy
cywNCg0KUmljaGFyZA0KDQoNCg0K

