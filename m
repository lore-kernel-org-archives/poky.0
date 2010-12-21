Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 40AE14C80BD8
	for <poky@pokylinux.org>; Mon, 20 Dec 2010 18:35:58 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 20 Dec 2010 16:35:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,205,1291622400"; d="scan'208";a="689104612"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga001.jf.intel.com with ESMTP; 20 Dec 2010 16:35:56 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 21 Dec 2010 08:35:54 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Tue, 21 Dec 2010 08:35:53 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, Khem Raj
	<raj.khem@gmail.com>
Date: Tue, 21 Dec 2010 08:35:51 +0800
Thread-Topic: [poky] [PATCH 2/3] kernel.bbclass: introduce UIMAGE_BASE_NAME
Thread-Index: Acugi0iIRm5neUqdTYm5XFUWgvFY2wAG5yIg
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F6A3C43@shsmsx502.ccr.corp.intel.com>
References: <b9dded$hdep5f@orsmga002.jf.intel.com>
	<20101220032118.GD26429@gmail.com> <1292879752.25087.5050.camel@rex>
In-Reply-To: <1292879752.25087.5050.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>,
	"poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: [PATCH 2/3] kernel.bbclass: introduce UIMAGE_BASE_NAME
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
X-List-Received-Date: Tue, 21 Dec 2010 00:35:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PkZyb206IFJpY2hhcmQgUHVyZGllIFttYWlsdG86cmljaGFyZC5wdXJkaWVAbGludXhmb3VuZGF0
aW9uLm9yZ10NCj5TZW50OiBUdWVzZGF5LCBEZWNlbWJlciAyMSwgMjAxMCA1OjE2IEFNDQo+DQo+
T24gU3VuLCAyMDEwLTEyLTE5IGF0IDE5OjIxIC0wODAwLCBLaGVtIFJhaiB3cm90ZToNCj4+IE9u
ICgxNy8xMi8xMCAwODo1MSksIEtldmluIFRpYW4gd3JvdGU6DQo+PiA+ICBhZGR0YXNrIHNpemVj
aGVjayBiZWZvcmUgZG9faW5zdGFsbCBhZnRlciBkb19jb21waWxlDQo+PiA+DQo+PiA+ICBLRVJO
RUxfSU1BR0VfQkFTRV9OQU1FID89DQo+IiR7S0VSTkVMX0lNQUdFVFlQRX0tJHtQVn0tJHtQUn0t
JHtNQUNISU5FfS0ke0RBVEVUSU1FfSINCj4+ID4gK1VJTUFHRV9CQVNFX05BTUUgPz0gInVJbWFn
ZS0ke1BWfS0ke1BSfS0ke01BQ0hJTkV9LSR7REFURVRJTUV9Ig0KPj4gPiAgIyBEb24ndCBpbmNs
dWRlIHRoZSBEQVRFVElNRSB2YXJpYWJsZSBpbiB0aGUgc3N0YXRlIHBhY2thZ2Ugc2lnbmF0dXJl
cw0KPj4gPiAgS0VSTkVMX0lNQUdFX0JBU0VfTkFNRVt2YXJkZXBzZXhjbHVkZV0gPSAiREFURVRJ
TUUiDQo+PiA+ICBLRVJORUxfSU1BR0VfU1lNTElOS19OQU1FID89ICIke0tFUk5FTF9JTUFHRVRZ
UEV9LSR7TUFDSElORX0iDQo+PiA+IEBAIC00ODQsMTYgKzQ4NSwxNiBAQCBrZXJuZWxfZG9fZGVw
bG95KCkgew0KPj4gPg0KPj4gPiAgCWlmIHRlc3QgIngke0tFUk5FTF9JTUFHRVRZUEV9IiA9ICJ4
dUltYWdlIiA7IHRoZW4NCj4+ID4gIAkJaWYgdGVzdCAtZSBhcmNoLyR7QVJDSH0vYm9vdC91SW1h
Z2UgOyB0aGVuDQo+PiA+IC0JCQljcCBhcmNoLyR7QVJDSH0vYm9vdC91SW1hZ2UNCj4ke0RFUExP
WURJUn0vdUltYWdlLSR7UFZ9LSR7UFJ9LSR7TUFDSElORX0tJHtEQVRFVElNRX0uYmluDQo+PiA+
ICsJCQljcCBhcmNoLyR7QVJDSH0vYm9vdC91SW1hZ2UNCj4ke0RFUExPWURJUn0vJHtVSU1BR0Vf
QkFTRV9OQU1FfS5iaW4NCj4+DQo+PiB3aHkgdXNpbmcgS0VSTkVMX0lNQUdFX0JBU0VfTkFNRSBk
b2VzIG5vdCB3b3JrIGhlcmUgPw0KPg0KPkFncmVlZCwgdGhpcyBkb2Vzbid0IG1ha2Ugc2Vuc2Uu
IEkndmUgcHVzaGVkOg0KPg0KPmh0dHA6Ly9naXQucG9reWxpbnV4Lm9yZy9jZ2l0LmNnaS9wb2t5
L2NvbW1pdC8/aWQ9MmU5NGU5YTRmZWQzM2IxYzdjNWIwY2UxZGJjNTY2ZTI0DQo+MzQ0MjgwYw0K
Pg0KPnNpbmNlIGl0cyBjbGVhciB0aGF0IEtFUk5FTF9JTUFHRVRZUEUgPSAidUltYWdlIi4NCj4N
Cg0KdGhhbmtzIGZvciBjYXRjaGluZyBpdC4gSSBkaWRuJ3QgY2hlY2sgaXQgY2FyZWZ1bGx5LiA6
LSkNCg0KVGhhbmtzDQpLZXZpbg0K

