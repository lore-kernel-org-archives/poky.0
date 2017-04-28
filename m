Return-Path: <saul.wold@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DECA2E007EE; Fri, 28 Apr 2017 05:30:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DD1FE00724
	for <poky@yoctoproject.org>; Fri, 28 Apr 2017 05:30:26 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga104.jf.intel.com with ESMTP; 28 Apr 2017 05:30:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,388,1488873600"; d="scan'208";a="94969142"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by fmsmga005.fm.intel.com with ESMTP; 28 Apr 2017 05:30:25 -0700
Received: from orsmsx113.amr.corp.intel.com ([169.254.9.59]) by
	ORSMSX101.amr.corp.intel.com ([169.254.8.57]) with mapi id
	14.03.0319.002; Fri, 28 Apr 2017 05:30:24 -0700
From: "Wold, Saul" <saul.wold@intel.com>
To: "star@gmx.li" <star@gmx.li>, "Kukkonen, Jussi" <jussi.kukkonen@intel.com>
Thread-Topic: [poky] gnupg strip down
Thread-Index: AQHSv/qtXxOKa2/ZQ0KFon6pv0PSjqHbK8kA
Date: Fri, 28 Apr 2017 12:30:23 +0000
Message-ID: <1493382620.10199.3.camel@intel.com>
References: <trinity-1c5fd78a-c6ca-41a1-8dea-dcfe8bf1ff35-1493125020120@3capp-gmx-bs23>
	<29aeb088-beb1-7fa2-b95a-c534f853b374@linux.intel.com>
	<trinity-040eafa5-27ea-4b5a-9493-1dedc3b445c8-1493185325827@3capp-gmx-bs77>
	<d69a7c4a-03e0-7447-c956-231244fda704@linux.intel.com>
	<trinity-0305ba43-e510-46b7-a11d-a31e69a15283-1493211120829@3capp-gmx-bs77>
	<26682ce6-84e6-8477-4323-ab0979afe89d@linux.intel.com>
	<trinity-847348e3-eb40-41b0-8cf4-a93cdd046688-1493364663957@3capp-gmx-bs03>
	<CAHiDW_FWzvCn7t0qzmrzSMpcbkqPRABNqgqA+gy-dWMW9U9sWA@mail.gmail.com>
In-Reply-To: <CAHiDW_FWzvCn7t0qzmrzSMpcbkqPRABNqgqA+gy-dWMW9U9sWA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.255.137.85]
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: gnupg strip down
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 28 Apr 2017 12:30:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <C810D2933005F24A9D6508AAB97B7B22@intel.com>
Content-Transfer-Encoding: base64

T24gRnJpLCAyMDE3LTA0LTI4IGF0IDExOjM1ICswMzAwLCBKdXNzaSBLdWtrb25lbiB3cm90ZToN
Cj4gT24gMjggQXByaWwgMjAxNyBhdCAxMDozMSwgQXJubyBTdGVmZmVucyA8c3RhckBnbXgubGk+
IHdyb3RlOg0KPiA+IEkgZGlkIGFzIGFkdmlzZWQsIGNyZWF0ZWQgYSBiYmFwcGVuZCBmb3IgZ251
cGcsIGxpa2UgdGhhdDoNCj4gPiANCj4gPiBkb19pbnN0YWxsX2FwcGVuZCgpIHsNCj4gPiDCoCDC
oCDCoCDCoCBybSAke0R9JHtiaW5kaXJ9L2dwZ3YNCj4gPiDCoCDCoCDCoCDCoCBybSAke0R9JHti
aW5kaXJ9L2dwZ3NtDQo+ID4gwqAgwqAgwqAgwqAgcm0gJHtEfSR7YmluZGlyfS9ncGctY29ubmVj
dC1hZ2VudA0KPiA+IMKgIMKgIMKgIMKgIHJtICR7RH0ke2JpbmRpcn0vZGlybW5nci1jbGllbnQN
Cj4gPiDCoCDCoCDCoCDCoCBybSAke0R9JHtiaW5kaXJ9L2dwZ3NjbQ0KPiA+IMKgIMKgIMKgIMKg
IHJtICR7RH0ke2JpbmRpcn0vd2F0Y2hnbnVwZw0KPiA+IMKgIMKgIMKgIMKgIHJtICR7RH0ke2Jp
bmRpcn0vZ3BncGFyc2VtYWlsDQo+ID4gwqAgwqAgwqAgwqAgcm0gJHtEfSR7YmluZGlyfS9ncGdj
b25mDQo+ID4gwqAgwqAgwqAgwqAgcm0gJHtEfSR7YmluZGlyfS9kaXJtbmdyDQo+ID4gwqAgwqAg
wqAgwqAgcm0gJHtEfSR7YmluZGlyfS9ncGd0YXINCj4gPiDCoCDCoCDCoCDCoCBybSAke0R9JHti
aW5kaXJ9L2dwZ3YyDQo+ID4gwqAgwqAgwqAgwqAgcm0gJHtEfSR7YmluZGlyfS9ncGctYWdlbnQN
Cj4gPiDCoCDCoCDCoCDCoCBybSAke0R9JHtiaW5kaXJ9L2tieHV0aWwNCj4gPiDCoCDCoCDCoCDC
oCBybSAke0R9L3Vzci9zYmluLyoNCj4gPiDCoCDCoCDCoCDCoCBybWRpciAke0R9L3Vzci9zYmlu
DQo+ID4gwqAgwqAgwqAgwqAgcm0gJHtEfS91c3Ivc2hhcmUvZ251cGcvaGVscCoNCj4gPiDCoCDC
oCDCoCDCoCBybSAke0R9L3Vzci9saWJleGVjL2dwZy0qDQo+ID4gwqAgwqAgwqAgwqAgcm0gJHtE
fS91c3IvbGliZXhlYy9zY2RhZW1vbg0KPiA+IMKgIMKgIMKgIMKgIHJtZGlyICR7RH0vdXNyL2xp
YmV4ZWMNCj4gPiB9DQo+ID4gDQo+ID4gRmlyc3QgSSBnZXQgZXJyb3JzLCBjbGVhbmluZyBmaWxl
cyBhbmQgbGVhdmUgZGlyZWN0b3J5LCBidXQgdGhhbiBJDQo+ID4gZ2V0IGl0LCB0aGF0IEkgaGF2
ZSB0byByZW1vdmUgZW1wdHkgZm9sZGVycyB0b28uIE9rLCB0aGF0IGNvdWxkIGJlDQo+ID4gZG9u
ZSBzbWFydGVyLiBTbyBqdXN0IGdwZyBhbmQgZmV3IHNtYWxsIGZpbGVzIGxlZnQuDQo+ID4gDQo+
ID4gQnV0IEkgZG9uJ3QgaGF2ZSBhbiBpZGVhIGhvd3RvIHJlbW92ZSB0aGUgbGlicywgdGhhdCBz
ZWVtcyB0byBiZQ0KPiA+IHJlcXVpcmVkIG9ubHkgYnkgdGhlIHJlbW92ZWQgYmluYXJpZXMsDQo+
ID4gbGlrZSBsaWJnbnV0aWxzLnNvLCBsaWJnbXAuc28gLSB3aGljaCBhcmUgcmF0aGVyIGJpZyAu
Li7CoA0KPiANCj4gSSBkb24ndCBzZWUgZXZpZGVuY2UgdGhhdCB0aGUgYmluYXJpZXMgeW91IG1l
bnRpb25lZCB3b3VsZCBkZXBlbmQgb24NCj4gdGhvc2UgbGlicmFyaWVzIChhdCBsZWFzdCB3aXRo
IGN1cnJlbnQgc3lzcm9vdCBiZWhhdmlvdXIgLS0gaXQgbWlnaHQNCj4gaGFwcGVuIGJ5IG1pc3Rh
a2Ugb24gb2xkZXIgcmVsZWFzZXMpLiBCdXQgdGhlcmUgaXMgdGhpcyBsaW5lIGluIHRoZQ0KPiBy
ZWNpcGU6DQo+IFJERVBFTkRTXyR7UE59ID0gImdudXRscyINCj4gDQo+IFNhdWwsIGRvIHlvdSBo
YXBwZW4gdG8gcmVtZW1iZXIgd2h5IHRoYXQgd2FzIGFkZGVkIChtb3JlIHRoYW4gdHdvDQo+IHll
YXJzIGFnbyBpbiBwb2t5IDMxMDU5YmU5KS4NCj4gDQpTb3JyeSBubywgdG9vIGxvbmcgYWdvLCBi
dXQgbG9va2luZyBhdCB0aGUgcGF0Y2ggaXQgc2VlbXMgdGhhdCB0aGUNCmRpcm1uZ3JfTERBREQg
aGFkIExJQkdOVVRMUyBiZWZvcmUgYW5kIGFmdGVyIHRoZSBjaGFuZ2Ugc28gcG9zc2libHkNCnRo
YXQgc2hvd2VkIGl0IHNob3VsZCBoYXZlIGJlZW4gYXZhaWxhYmxlLg0KDQpJZiBzb21ldGhpbmcg
aGFzIGNoYW5nZWQgd2l0aCBkaXJtbmdyIHRoYW4gbWF5YmUgdGhhdCBjYW4gYmUgcmVtb3ZlZC4N
Cg0KDQo+IMKgLSBKdXNzaQ==

