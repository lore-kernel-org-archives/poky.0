Return-Path: <kevin.tian@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id C393B4C80B71
	for <poky@pokylinux.org>; Wed, 15 Dec 2010 05:13:03 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 15 Dec 2010 03:13:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,347,1288594800"; d="scan'208";a="361967137"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 15 Dec 2010 03:13:02 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 15 Dec 2010 19:13:01 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 15 Dec 2010 19:13:00 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Wed, 15 Dec 2010 19:12:55 +0800
Thread-Topic: [PATCH 0/1] Fix weird rebuild issue even when sstate signature
	doesn't change
Thread-Index: AcucODcmFGEdE8GGSNiSv21lPtyf1QAEFzXw
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F4091F9@shsmsx502.ccr.corp.intel.com>
References: <0d30dc$kf5f5e@orsmga001.jf.intel.com>
	<1292404338.26558.1582.camel@rex>
In-Reply-To: <1292404338.26558.1582.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>,
	"poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: [PATCH 0/1] Fix weird rebuild issue even when sstate signature doesn't change
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
X-List-Received-Date: Wed, 15 Dec 2010 11:13:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PkZyb206IFJpY2hhcmQgUHVyZGllIFttYWlsdG86cmljaGFyZC5wdXJkaWVAbGludXhmb3VuZGF0
aW9uLm9yZ10NCj5TZW50OiBXZWRuZXNkYXksIERlY2VtYmVyIDE1LCAyMDEwIDU6MTIgUE0NCj4N
Cj5PbiBUdWUsIDIwMTAtMTItMTQgYXQgMjE6NDAgKzA4MDAsIEtldmluIFRpYW4gd3JvdGU6DQo+
PiBUaGlzIHBhdGNoIGlzIHRvIGZpeCBvbmUgd2VpcmQgaXNzdWUgSSd2ZSBrZWVwaW5nIHNlZWlu
ZyByZWNlbnRseSB3aGVuIHVzaW5nIHNzdGF0ZS4NCj4+IEV2ZW4gd2l0aCBhIG1pbmltYWwgYnVp
bGQsIHRoZXJlJ3JlIGFyb3VuZCA1MCByZWNpcGVzIHJlYnVpbHQgZnJvbSBzY3JhdGNoIGV2ZW4g
dGhvdWdoDQo+PiBzc3RhdGUgcGFja2FnZXMgaW4gc3N0YXRlX2NhY2hlIGRvIG1hdGNoLiBBY3R1
YWxseSB0aGUgZW5kIHJlc3VsdCBpcyB0byBqdXN0IG92ZXJ3cml0ZQ0KPj4gc3N0YXRlIHBhY2th
Z2VzIGFnYWluIHdpdGggc2FtZSBzaWdhdHVyZSBmb3IgdGhvc2UgcmVjaXBlcy4NCj4+IGh0dHBz
Oi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9waXBlcm1haWwvcG9reS8yMDEwLURlY2VtYmVyLzAw
MTA2My5odG1sDQo+Pg0KPj4gVGhlIGNhdXNlIGZvciB0aGlzIG1lc3MgaXMgZnJvbSBtaXNpbnRl
cnByZXRhdGlvbiBvZiB0aGUgaW5kZXggb2YgYSBsaXN0LCB3aGljaCB0aGVuDQo+PiBwb2ludHMg
dG8gd3Jvbmcgc2V0c2NlbmUgdGFza3MgaW5zdGVhZCBvZiBkZXNpcmVkIG9uZXMuIFRoZSBlbmQg
cmVzdWx0IGlzIHRoYXQgc29tZQ0KPj4gdGFza3Mgd2hpY2ggZG9uJ3QgbmVlZCBleGVjdXRpb24g
YXJlIHNjaGVkdWxlZCB3aGlsZSBvdGhlciBzZXRzY2VuZSB0YXNrcyB3aGljaCBuZWVkDQo+PiBy
dW4gYXJlIHNpbXBseSBza2lwcGVkLg0KPj4NCj4+IEl0J3MgYmFzZWQgb24gUGF1bCdzIHNzdGF0
ZSBicmFuY2guDQo+DQo+SSd2ZSBtZXJnZWQgdGhpcyBwYXRjaCBpbnRvIG1hc3RlciwgZ29vZCBj
YXRjaCBhbmQgaG9wZWZ1bGx5IHRoaXMgZ2V0cw0KPnNzdGF0ZSBpbnRvIGEgZ29vZCB3b3JraW5n
IHN0YXRlLg0KPg0KPkkndmUgbWVyZ2VkIGFuIHVwZGF0ZWQgdmVyc2lvbiBvZiBQYXVsJ3Mgc3N0
YXRlIGJyYW5jaCB0b28uDQo+DQo+SSdtIGhvcGluZyB0aGlzIG1ha2VzIHNzdGF0ZSBwYWNrYWdl
cyBmaW5hbGx5IHVzYWJsZSENCj4NCg0KSSB0aGluayBub3cgaXQncyBvbiBtdWNoIGJldHRlciBz
aGFwZS4gSSB0cmllZCBtaW5pbWFsIGJ1aWxkIHdpdGggYm90aCBzYW1lIGFuZCBkaWZmZXJlbnQN
CnNvdXJjZSBkaXIuIE9ubHkgdGhyZWUgcGFja2FnZXMgYXJlIG91dCBvZiB0aGUgc2NvcGU6DQoJ
bGludXgteW9jdG8NCgl0YXNrLXBva3ktYm9vdA0KCXBva3ktaW1hZ2UtbWluaW1hbA0KDQpwb2t5
LWltYWdlLW1pbmltYWwgaXMgZXhwZWN0ZWQuIHRhc2stcG9reS1ib290IGlzIGNhdXNlZCBieSBs
aW51eC15b2N0by5kb19kZXBsb3kuIFRoZQ0KcmVhc29uIHdoeSBsaW51eC15b2N0by5kb19kZXBs
b3kgZmFpbHMgdG8gbWF0Y2ggaXMgYmVjYXVzZSBpdCBkZXBlbmRzIG9uIERBVEVUSU1FLg0KDQpI
b3dldmVyIHRoZXJlJ3Mgb25lIGlzc3VlIHByZXZlbnRpbmcgbWUgdG8gY29tZSB1cCBhIGZpeCwg
d2hpY2ggd2lsbCBiZSBzZW50IG91dCBpbiBhDQpzZXBhcmF0ZSB0aHJlYWQgZm9yIHN1Z2dlc3Rp
b24uDQoNClRoYW5rcw0KS2V2aW4NCg==

