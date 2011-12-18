Return-Path: <jiajun.xu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 336C3E0030F
	for <poky@pokylinux.org>; Sun, 18 Dec 2011 00:56:42 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 18 Dec 2011 00:56:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="48318811"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by AZSMGA002.ch.intel.com with ESMTP; 18 Dec 2011 00:56:40 -0800
Received: from pgsmsx104.gar.corp.intel.com (10.221.44.91) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Sun, 18 Dec 2011 16:56:39 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX104.gar.corp.intel.com (10.221.44.91) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Sun, 18 Dec 2011 16:56:39 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Sun, 18 Dec 2011 16:56:38 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: Wolfgang Denk <wd@denx.de>
Date: Sun, 18 Dec 2011 16:56:36 +0800
Thread-Topic: [yocto] Weekly Test Report for Yocto 1.2 M1 RC2 Build
Thread-Index: Acy9YNuRli39w1QZSiaDLDug4LL1RQAAe9pw
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A12ED44B239@shsmsx501.ccr.corp.intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A12ED44B22A@shsmsx501.ccr.corp.intel.com>
	<20111218084132.16A6F138EEA1@gemini.denx.de>
In-Reply-To: <20111218084132.16A6F138EEA1@gemini.denx.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: [yocto] Weekly Test Report for Yocto 1.2 M1 RC2 Build
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
X-List-Received-Date: Sun, 18 Dec 2011 08:56:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIGEgbG90IGZvciB0ZXN0aW5nIGFuZCByZXBvcnRpbmcsIFdvbGZnYW5nLg0KSSB3aWxs
IGluY2x1ZGUgdGhpcyBpbnRvIGZpbmFsIHRlc3QgcmVwb3J0Lg0KDQo+IERlYXIgSmlhanVuIEh1
LA0KPiANCj4gSW4gbWVzc2FnZQ0KPiA8RDVBQjZFNjM4RTVBM0U0QjhGNDQwNkIxMTNBNUExOUEx
MkVENDRCMjJBQHNoc21zeDUwMS5jY3IuY29ycC5pDQo+IG50ZWwuY29tPiB5b3Ugd3JvdGU6DQo+
PiANCj4+IA0KPj4gVGhpcyBpcyB0aGUgd2Vla2x5IHRlc3QgcmVwb3J0IGZvciBZb2N0byAxLjIg
TTEgUkMyIGJ1aWxkLiBUaGVyZSBhcmUNCj4+IDIgbmV3IGJ1Z3MgZm91bmQgZm9yIHRoaXMgYnVp
bGQuIEh1cm9uUml2ZXIgYm9hcmQgaXMgYnJva2VuLCBzbw0KPiANCj4gVGhpIGlzIG5vdCBjb21w
bGV0ZS4gIEkgcmVwb3J0ZWQgYW5vdGhlciBidWcgKGJ1aWxkIGZhaWx1cmUpIHllc3RlcmRheS4N
Cj4gDQo+PiBJc3N1ZSBzdW1tYXJ5IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tIC4uLg0KPj4gDQo+PiBCdWcgTnVtYmVyIC4uLiBCdWcgMzEwIC0gW2VNZW5sb3ddIGkyY190
cmFuc2ZlciBlcnJvciBvbiBlLU1lbmxvdyBCdWcNCj4+IDE3NzkgLSBnc2V0dGluZ3MtZGF0YS1j
b252ZXJ0IHNlZ2ZhdWx0IG9uIHNkayBpbWFnZSBCdWcgMTgyMyAtDQo+PiBbQmVhbGdlYm9hcmQg
QzRdIGtleWJvYXJkIGNvdWxkIG5vdCB3b3JrIHdpdGggMjAxMTEyMDcgYnVpbGQgQnVnIDE4MjU6
DQo+PiBBcHBsaWNhdGlvbiAnRGF0ZXMnIGNhbiBub3QgYmUgbGF1bmNoZWQgd2l0aCAyMDExMTIw
NyBidWlsZCBOZXchIEJ1Zw0KPj4gMTg0MCAtIGdseGdlYXJzIGZhaWwgdG8gcnVuIG9uIEJsYWNr
c2FuZCBCdWcgMTgyNjogW0h1cm9uUml2ZXJdIG9ubHkNCj4+IDMvNCBzY3JlZW4gaXMgdXNlZCB3
aGVuIHBzcGxhc2ggbG9hZGluZyBOZXchIEJ1ZyAxODQyIC0gW0hvYjJdIHRoZXJlDQo+PiBzaG91
bGQgYmUgYSB3YXJuaW5nIHdoZW4gbWV0YS1pbnRlbCBsYXllciBub3QgYWRkZWQgZm9yIEJTUCBi
dWlsZA0KPiANCj4gUGxlYXNlIGFkZDoNCj4gDQo+IEJ1ZyAxODQxIC0gMS4yX00xIGJ1aWxkIGJy
b2tlbiBmb3IgbWV0YS10b29sY2hhaW4tc2RrDQo+IA0KPiANCj4gVGhhbmtzIQ0KPiANCj4gQmVz
dCByZWdhcmRzLA0KPiANCj4gV29sZmdhbmcgRGVuaw0KPg0KDQpCZXN0IFJlZ2FyZHMsDQpKaWFq
dW4NCg0K

