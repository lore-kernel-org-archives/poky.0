Return-Path: <lianhao.lu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id BA93C4C80594
	for <poky@yoctoproject.org>; Sun, 30 Jan 2011 02:25:35 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 30 Jan 2011 00:25:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,400,1291622400"; d="scan'208";a="702072683"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 30 Jan 2011 00:25:32 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sun, 30 Jan 2011 16:23:37 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Sun, 30 Jan 2011 16:23:36 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Sun, 30 Jan 2011 16:23:35 +0800
Thread-Topic: [poky] [PATCH 0/5] [BUG# 227] rpm/deb support for meta-toolchain.
Thread-Index: Acu/uGjdbgyNmhTcQry+1yFSYWRHcAAnlIjg
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F20F8C329C1@shsmsx502.ccr.corp.intel.com>
References: <cover.1296208216.git.lianhao.lu@intel.com>
	<1296307687.13501.4152.camel@rex>
In-Reply-To: <1296307687.13501.4152.camel@rex>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/5] [BUG# 227] rpm/deb support for meta-toolchain.
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
X-List-Received-Date: Sun, 30 Jan 2011 08:25:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UmljaGFyZCBQdXJkaWUgd3JvdGUgb24gMjAxMS0wMS0yOToNCj4gT24gRnJpLCAyMDExLTAxLTI4
IGF0IDE4OjAxICswODAwLCBMaWFuaGFvIEx1IHdyb3RlOg0KPj4gRnJvbTogTGlhbmhhbyBMdSA8
bGlhbmhhby5sdUBpbnRlbC5jb20+DQo+PiANCj4+IFRoZSBwdXJwb3NlIG9mIHRoaXMgc2VyaWVz
IG9mIHBhdGNoZXMgaXMgdG8gYWRkIHJwbS9kZWIgc3VwcG9ydCBpbg0KPj4gbWV0YS10b29sY2hh
aW4gY3JlYXRpb24sIGFuZCBhbHNvIHRvIGZpeCBidWcgIzIyNy4NCj4+IA0KPj4gSXQgbWFrZXMg
dGhlIHRhc2sgcG9wdWxhdGVfc2RrIGluDQo+PiBtZXRhL3JlY2lwZXMtY29yZS9tZXRhL21ldGEt
dG9vbGNoYWluLmJiIG1vcmUgZ2VuZXJpYyB0byBzdXBwb3J0DQo+PiBpbnN0YWxsaW5nIHBhY2th
Z2VzIGZyb20gaXBrLCBycG0sIGFuZCBkZWIgZmlsZXMgaW4gY3JlYXRpbmcNCj4+IG1ldGEtdG9v
bGNoYWluDQo+IHRhcmJhbGwsIGFuZCBtb3ZlIHRoZSBwb3B1bGF0ZV9zZGsgdGFzayBvdXQgb2Yg
bWV0YS10b29sY2hhaW4uYmINCj4gcmVjaXBlIGludG8gYSBiYmNsYXNzLg0KPj4gDQo+PiBJdCBh
ZGRlZCBwb3B1bGF0ZV9zZGtfeHh4LmJiY2xhc3MgZm9yIGRpZmZlcmVudCBwYWNrYWdlIGZpbGUg
Zm9ybWF0Lg0KPj4gDQo+PiBTaW5jZSB0aGVyZSBhcmUgcXVpdGUgbWFueSBjb2RlIGR1cGxpY2F0
aW9uIGJldHdlZW4gcmVsZXZhbnQNCj4+IHBvcHVwbGFnZV9zZGtfeHh4IGFuZCByb290ZnNfeHh4
IGJiY2xhc3NlcywgaXQgYWxzbyBtb3ZlZCB0aGUgY29tbW9uDQo+PiBjb2RlIGludG8gdGhlIHBh
Y2thZ2VfeHh4LmJiY2xhc3MsIGJhc2VkIG9uIFJQJ3Mgc3VnZ2VzdGlvbi4gVGhlDQo+PiBnZW5l
cmljIGZ1bmN0aW9uIHBhY2thZ2VfaW5zdGFsbF9pbnRlcm5hbF94eHgoKSBtYXkgaW5zdGFsbHMg
YSBsaXN0IG9mDQo+PiBwYWNrYWdlcywgYmFzZWQgb24gdGhlIGluZm9ybWF0aW9uIHNwZWNpZmll
ZCBieSB2YXJpb3VzIHNoZWxsDQo+PiBlbnZpcm9ubWVudCB2YXJpYWJsZXMgYWJvdXQgd2hlcmUg
dGhlIHRhcmdldCBkaXJlY3RvcnkgdG8gYmUgaW5zdGFsbGVkDQo+PiB0bywgcGFja2FnZSBhcmNo
aXRlY3R1cmUgaW5mb3JtYXRpb24sIGV0Yy4NCj4+IA0KPj4gSXQgYWxzbyBmaXhlZCBhIGJ1ZyBp
biBjcm9zcy1jYW5hZGlhbi5iYmNsYXNzIHRvIGVuYWJsZSB0aGUNCj4+IHBhY2thZ2VfZGViLmJi
Y2xhc3MgZ2VuZXJhdGUgY29ycmVjdCBkZWIgcGFja2FnZSBmaWxlcyBmb3INCj4+IGNyb3NzLWNh
bmFkaWFuDQo+IHJlY2lwaWVzLg0KPiANCj4gVGhlc2UgcGF0Y2hlcyBhcmUgZ29vZCwgaWYgeW91
IGhhdmUgdGltZSBjb3VsZCB5b3U6DQo+IA0KPiBhKSByZWJhc2UgdGhlc2UgcGF0Y2hlcyBhZ2Fp
bnN0IHRoZSBtZXJnZWQgcnBtIGNoYW5nZXMgZnJvbSBNYXJrIEhhdGxlDQo+ICAgIGZyb20gdGhl
IHJwbSB1cGRhdGUgdG8gNS40DQo+IGIpIFRyeSBoYXJkIHRvIHNwbGl0IG91dCBhbnkgbG9naWNh
bCBjaGFuZ2VzIHlvdSBjYW4gZnJvbSB0aGUgYmlnZ2VyDQo+IHBhdGNoZXMgaW50byBzcGVjaWZp
YyBzdGVwcy4gRm9yIGV4YW1wbGUsIGVuaGFuY2luZyB0aGUgbG9nX2NoZWNrDQo+IGZ1bmN0aW9u
IGFuZCBtb3ZpbmcgdGhvc2UgYXJvdW5kIGNvdWxkIGJlIGEgc2VwYXJhdGUgY29tbWl0Lg0KPiAN
Cj4gVGhlIGlkZWEgaXMgdG8gbWFrZSBjaGFuZ2VzIGluIGNsZWFyIGxvZ2ljYWwgc3RlcHMgd2hl
cmUgYXQgYWxsDQo+IHBvc3NpYmxlIHNvIGFueW9uZSByZXZpZXdpbmcgdGhlIGNoYW5nZXMgKHN1
Y2ggYXMgU2F1bCwgTWFyayBhbmQNCj4gbXlzZWxmKSBjYW4gdGhlbiBtb3JlIHF1aWNrbHkgInNl
ZSIgdGhlIGNoYW5nZXMgYXJlIGNvcnJlY3QgYW5kIGFsc28sDQo+IGlmIHRoZXJlIGFyZSBwcm9i
bGVtcywgd2UgY2FuIGJpc2VjdCB0aGUgY29tbWl0cyB0byB0cmFjayBkb3duIHdoaWNoIGNoYW5n
ZSB0aGUgcHJvYmxlbSBpcyBmcm9tLg0KDQpIaSBSUCwNCg0KUGxlYXNlIHVzZSBteSBsYXRlc3Qg
YnJhbmNoIGF0IA0KUHVsbCBVUkw6IGdpdDovL2dpdC5wb2t5bGludXgub3JnL3Bva3ktY29udHJp
Yi5naXQNCiAgQnJhbmNoOiBsbHUvYnVnMjI3DQogIEJyb3dzZTogaHR0cDovL2dpdC5wb2t5bGlu
dXgub3JnL2NnaXQuY2dpL3Bva3ktY29udHJpYi9sb2cvP2g9bGx1L2J1ZzIyNw0KDQpJdCdzIGJh
c2VkIHRvIE1hcmsncyBSUE0gNS40IHVwZ3JhZGUgYW5kIHNwbGl0IHRoZSBiaWcgcGF0Y2hlcyBp
bnRvIHNtYWxsZXIgb25lcy4NCg0KLSBCZXN0IFJlZ2FyZHMsDQpMaWFuaGFvDQoNCg0K

