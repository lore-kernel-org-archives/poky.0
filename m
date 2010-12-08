Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 04C3F4C811E4
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 18:41:04 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 07 Dec 2010 16:41:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,313,1288594800"; d="scan'208";a="634157293"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga002.fm.intel.com with ESMTP; 07 Dec 2010 16:41:03 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 8 Dec 2010 08:41:02 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Wed, 8 Dec 2010
	08:41:01 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Date: Wed, 8 Dec 2010 08:40:59 +0800
Thread-Topic: [poky] sstate status
Thread-Index: AcuWH9kkUgREZO8qSv27b5cb7ta7PwAUKSLA
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D515D08F3@shsmsx502.ccr.corp.intel.com>
References: <201012031634.56033.paul.eggleton@linux.intel.com>
	<1291414305.14277.2746.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D475430F5@shsmsx502.ccr.corp.intel.com>
	<1291598996.14277.2946.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D47543B26@shsmsx502.ccr.corp.intel.com>
	<1291734165.1554.130.camel@rex>
In-Reply-To: <1291734165.1554.130.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Chris Larson <clarson@kergoth.com>,
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
X-List-Received-Date: Wed, 08 Dec 2010 00:41:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PkZyb206IFJpY2hhcmQgUHVyZGllIFttYWlsdG86cnB1cmRpZUBsaW51eC5pbnRlbC5jb21dDQo+
U2VudDogVHVlc2RheSwgRGVjZW1iZXIgMDcsIDIwMTAgMTE6MDMgUE0NCj4NCj5PbiBUdWUsIDIw
MTAtMTItMDcgYXQgMTU6NDYgKzA4MDAsIFRpYW4sIEtldmluIHdyb3RlOg0KPj4gPkZyb206IFJp
Y2hhcmQgUHVyZGllIFttYWlsdG86cnB1cmRpZUBsaW51eC5pbnRlbC5jb21dDQo+DQo+PiA+aHR0
cDovL2dpdC5wb2t5bGludXgub3JnL2NnaXQvY2dpdC5jZ2kvcG9reS1jb250cmliL2NvbW1pdC8/
aD10ay9zc3RhdGUmaWQ9MGE0YzQ2ZGMNCj4yYzENCj4+ID4yMmVmNWMxMDU3MzgwZTc5Yjc1ZTMw
MjU4M2I0YSwgc2lnZ2VuLnB5OiBmaXggcHl0aG9uIGVycm9yIHdoZW4gY29tcGFyaW5nIHNzdGF0
ZQ0KPj4gPmdlbmVyYXRlZCBmcm9tIGRpZmZlcmVudCBzcmNwYXRoDQo+PiA+DQo+PiA+SSB1bmRl
cnN0YW5kIHRoZSBuZWVkIGZvciB0aGlzIGJ1dCBJIGRvbid0IGxpa2UgdGhlIGltcGxlbWVudGF0
aW9uIDopDQo+PiA+DQo+PiA+V2UgY2FuJ3QgdXNlIE9FUk9PVCBoZXJlIGFzIGl0cyBub3QgYSBz
dGFuZGFyZCB2YXJpYWJsZSBhbmQgaXMNCj4+ID5kZXByZWNhdGVkLiBJIHdhcyBpbml0aWFsbHkg
dGhpbmtpbmcgUE9LWUJBU0UgYnV0IHRoYXQgaXNuJ3QgcmlnaHQNCj4+ID5laXRoZXIgaW4gYml0
YmFrZS4gSG1tLg0KPj4NCj4+IENvdWxkIHlvdSBlbGFib3JhdGUgd2h5IFBPS1lCQVNFIGNhbid0
IGJlIHVzZWQgdG9vPyBCZWNhdXNlIExBWUVSRElSIGlzIGENCj4+IG9uZS10aW1lIGV4cGFuc2lv
biBhY3Rpb24/IElmIHdlJ3JlIHN1cmUgdGhhdCBQT0tZQkFTRSBpcyBleHBhbmRlZCBiZWZvcmUN
Cj4+IGJhc2Ugc2lnbmF0dXJlIGdlbmVyYXRpb24sIHRoZW4gaXQgY291bGQgd29yay4NCj4NCj5Q
T0tZQkFTRSBpcyBwb2t5IHNwZWNpZmljIGFuZCBub3QgYSBiaXRiYWtlIHZhcmlhYmxlLiBVc2lu
ZyBpdCBpbg0KPmdlbmVyaWMgYml0YmFrZSBjb2RlIGlzIHRoZXJlZm9yZSBhIGxheWVyIHZpb2xh
dGlvbi4NCg0KR290IGl0Lg0KDQo+DQo+PiA+Q2hyaXMsIGFueSBzdWdnZXN0aW9ucz8gSSdtIGFj
dHVhbGx5IHN0cnVnZ2xpbmcgYSBiaXQgdG8gY29tZSB1cCB3aXRoIGENCj4+ID52YXJpYWJsZSB0
aGF0IHJlcHJlc2VudHMgYSAiaGVhZCIgb2YgdGhlIG1ldGFkYXRhIDovLiBQZXJoYXBzIGZpbGVu
YW1lDQo+PiA+d291bGQgYmUgZW5vdWdoIGluIHRoaXMgY2FzZT8NCj4+ID4NCj4+ID5JJ2QgYWxz
byBzdWdnZXN0IHdlIHJlbW92ZSB0aGlzIHBhdGggd2hlbiB3ZSBzYXZlIHRoZSBzaWdpbmZvIGZp
bGUsIG5vdA0KPj4gPndoZW4gd2UgbG9hZCBpdCBhbmQgZG8gdGhlIGNvbXBhcmlzb24uDQo+Pg0K
Pj4gWWVzLCB0aGF0J3MgYSBiZXR0ZXIgYXBwcm9hY2guIEknbGwgZ28gdGhhdCBhcHByb2FjaC4N
Cj4NCj5UaGFua3MsIEknbGwgd2FpdCBmb3IgYW4gdXBkYXRlZCBwYXRjaC4NCj4NCj4+IFRoYXQn
cyBteSBpbnRlbnRpb24gdG9vLiBBYm92ZSBsb2dpYyBpcyB0byBmaWx0ZXIgb3V0IG5hdGl2ZS9j
cm9zcyBkZXBlbmRlbmNpZXMuDQo+PiBJZiB3ZSBkbyB0aGF0IGZpbHRlciBmb3IgbmF0aXZlL2Ny
b3NzIHRhc2tzIHRvbywgdGhhdCBtZWFucyBhbGwgZGVwZW5kZW5jaWVzDQo+PiB3b3VsZCBiZSB3
aXBlZCBvdXQgd2hpY2ggaXMgbm90IHdoYXQgd2Ugd2FudCBzaW5jZSB0aGV5IGFsbCBmYWxsIGlu
dG8gdGhlDQo+PiBtYXRjaCBncm91cC4gVGhhdCdzIHdoeSBJIGFkZCB0aGUgaW5pdGlhbCBjb25k
aXRpb24gdG8gcmVzdHJpY3QgdGhlIGZpbHRlcmluZyBvbg0KPj4gb24gdGFyZ2V0IHBhY2thZ2Vz
LiA6LSkNCj4NCj5PaywgdGhpcyBtYWtlcyBzZW5zZS4gSSBtZXJnZWQgaXQgYWZ0ZXIgYWRkaW5n
IGluIHNvbWUgY29tbWVudHMgdG8gdGhlDQo+Y29kZS4NCj4NCj5JJ3ZlIGFza2VkIFBhdWwgdG8g
cHVsbCB0b2dldGhlciBhIGJyYW5jaCB3aXRoIGFsbCB0aGUgY2hhbmdlcyBpbiBmb3INCj5zc3Rh
dGUgYW5kIHNlZSBob3cgd2Ugc3RhbmQuDQo+DQo+DQoNCk9LLCBJJ2xsIHdhaXQgZm9yIHRoYXQg
bmV3IGJyYW5jaCB0byBoYXZlIGFub3RoZXIgdHJ5Lg0KDQpUaGFua3MNCktldmluDQo=

