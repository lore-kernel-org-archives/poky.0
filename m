Return-Path: <lianhao.lu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 166F74C800A3
	for <poky@yoctoproject.org>; Wed, 16 Feb 2011 21:12:56 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Feb 2011 19:12:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,483,1291622400"; d="scan'208";a="658497427"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga002.fm.intel.com with ESMTP; 16 Feb 2011 19:12:54 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 17 Feb 2011 11:12:32 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Thu, 17 Feb 2011 11:12:30 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Thu, 17 Feb 2011 11:12:28 +0800
Thread-Topic: [poky] [PATCH 0/3] [Bug#728] corrected environment files content
Thread-Index: AcvN++f1Vmra2Ju3TMWFKikZA5sQgAAVEE7w
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F213D06EBED@shsmsx502.ccr.corp.intel.com>
References: <cover.1297848716.git.lianhao.lu@intel.com>
	<1297875958.11289.290.camel@rex>
In-Reply-To: <1297875958.11289.290.camel@rex>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/3] [Bug#728] corrected environment files content
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
X-List-Received-Date: Thu, 17 Feb 2011 03:12:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UmljaGFyZCBQdXJkaWUgd3JvdGUgb24gMjAxMS0wMi0xNzoNCj4gT24gV2VkLCAyMDExLTAyLTE2
IGF0IDE3OjM1ICswODAwLCBMaWFuaGFvIEx1IHdyb3RlOg0KPj4gRnJvbTogTGlhbmhhbyBMdSA8
bGlhbmhhby5sdUBpbnRlbC5jb20+DQo+PiANCj4+IDEuIEFkZGVkIGxpYnRvb2wgc3lzcm9vdCBy
ZWxhdGVkIHBhcmFtIHZhbHVlIGludG8gZW52aXJvbm1lbnQgZmlsZXMuIDIuDQo+PiBNb3ZlZCBj
b21tb24gY29kZSBiZXR3ZWVuIG1ldGEtZW52aXJvbm1lbnQuYmIgYW5kIHBvcHVsYXRlX3Nkay5i
YmNsYXNzDQo+PiBpbnRvIHRvb2xjaGFpbi1zY3JpcHQuYmJjbGFzcy4gMy4gU2V0IENPTkZJR19T
SVRFIHRvIHBrZ2NvbmZpZyBzaXRlDQo+PiBmaWxlcyBmb3IgbWV0YS10b29sY2hhaW4uYmIuDQo+
PiANCj4+IFB1bGwgVVJMOiBnaXQ6Ly9naXQucG9reWxpbnV4Lm9yZy9wb2t5LWNvbnRyaWIuZ2l0
DQo+PiAgIEJyYW5jaDogbGx1L2J1ZzcyOA0KPj4gICBCcm93c2U6DQo+PiBodHRwOi8vZ2l0LnBv
a3lsaW51eC5vcmcvY2dpdC5jZ2kvcG9reS1jb250cmliL2xvZy8/aD1sbHUvYnVnNzI4DQo+PiAN
Cj4+IFRoYW5rcywNCj4+ICAgICBMaWFuaGFvIEx1IDxsaWFuaGFvLmx1QGludGVsLmNvbT4NCj4g
DQo+IEhpIExpYW5oYW8sDQo+IA0KPiBJdCBsb29rcyBsaWtlIHBhcnQgb2YgdGhlIGZpcnN0IHBh
dGNoIHNob3VsZCByZWFsbHkgYmUgaW4gdGhlIHNlY29uZCBwYXRjaD8NCg0KSSd2ZSByZS1vcmdl
ZCB0aGUgcGF0Y2ggYW5kIHJlc2VudCB0aGUgcHVsbCByZXF1ZXN0cy4NCg0KPiBJIGFsc28gZG9u
J3QgdW5kZXJzdGFuZCB0aGUgdGhpcmQgY2hhbmdlLCBob3cgYXJlIENPTkZJR19TSVRFIGFuZA0K
PiBwa2djb25maWcgY29ubmVjdGVkPw0KDQpTb3JyeSwgaXQgc2hvdWxkIGJlIGNvbmZpZyBzaXRl
IGZvciBhdXRvY29uZiwgbm90IHBrZ2NvbmZpZy4gVGhlIG9yaWdpbmFsIGNvbmZpZyBzaXRlIGZp
bGUgZ2VuZXJhdGVkIGJ5IG1ldGEtdG9vbGNoYWluLmJiIHdhcyBlbXB0eSBiZWNhdXNlIHRoZSBD
T05GSUdfU0lURSB3YXMgbmV2ZXIgc2V0IGluIGl0LiANCg0KQmVzdCBSZWdhcmRzLA0KTGlhbmhh
bw0KDQoNCg==

