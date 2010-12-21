Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id A689B4C808B0
	for <poky@pokylinux.org>; Tue, 21 Dec 2010 05:43:40 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 21 Dec 2010 03:43:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,207,1291622400"; d="scan'208";a="689259076"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 21 Dec 2010 03:43:38 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 21 Dec 2010 19:43:37 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Tue, 21 Dec 2010 19:43:37 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, Chris Larson
	<clarson@kergoth.com>
Date: Tue, 21 Dec 2010 19:43:14 +0800
Thread-Topic: [poky] perl binary hard-code path hurts sstate
Thread-Index: Acud8uDM+JpiPb/DQLiWW2AipImIoADEOSxg
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F6A40F9@shsmsx502.ccr.corp.intel.com>
References: <4D0ABF1C.6090706@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F40984C@shsmsx502.ccr.corp.intel.com>
	<4D0AC7D8.8080001@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F409868@shsmsx502.ccr.corp.intel.com>
	<4D0ACB43.8050909@intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F409997@shsmsx502.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F4099DD@shsmsx502.ccr.corp.intel.com>
	<AANLkTi=ViynyC5=Dmm_MDqOLz8_R-ThxxPwHYYRWBU9a@mail.gmail.com>
	<1292594329.25087.40.camel@rex>
In-Reply-To: <1292594329.25087.40.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>,
	"poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: perl binary hard-code path hurts sstate
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
X-List-Received-Date: Tue, 21 Dec 2010 11:43:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PkZyb206IFJpY2hhcmQgUHVyZGllIFttYWlsdG86cmljaGFyZC5wdXJkaWVAbGludXhmb3VuZGF0
aW9uLm9yZ10NCj5TZW50OiBGcmlkYXksIERlY2VtYmVyIDE3LCAyMDEwIDk6NTkgUE0NCj4NCj5P
biBGcmksIDIwMTAtMTItMTcgYXQgMDY6NDkgLTA3MDAsIENocmlzIExhcnNvbiB3cm90ZToNCj4+
IFRoZXNlIHNvcnRzIG9mIGlzc3VlcyBhcmVuJ3QgbmV3LCBvciBmdW4sIHNhZGx5LiAgV2UndmUg
cnVuIGludG8gbWFueQ0KPj4gbGlrZSB0aGlzIHVzaW5nIHBhY2thZ2VkIHN0YWdpbmcuICBXZSBo
YWQgdG8gdXNlIHRoZSB2YXJpYWJsZSB0bw0KPj4gZGlzYWJsZSBwYWNrYWdlZC1zdGFnaW5nIGZv
ciBleGFjdGx5IHRoaXMgcmVhc29uLCBzbyBzb21ldGhpbmcgc2ltaWxhcg0KPj4gZm9yIHNzdGF0
ZSB3b3VsZCBpbmRlZWQgYmUgdXNlZnVsIGZvciB0aGlzLg0KPg0KPkluIGNhc2VzIGxpa2UgdGhp
cyBJJ2Qgc3VnZ2VzdCBhZGRpbmcgdGhlIGVuY29kZWQgcGF0aCBpbnRvIHRoZSBjaGVja3N1bQ0K
PnZpYSB2YXJkZXBzLiBUaGlzIG1lYW5zIHRoZSBzc3RhdGUgcGFja2FnZSB3aWxsIGJlIHJldXNl
ZCB3aGVuIHRoZSBwYXRoDQo+bWF0Y2hlcyBidXQgbm90IG90aGVyd2lzZS4NCj4NCj5XZSBjYW4g
dGhlbiB3b3JrIG9uIHJlbW92aW5nIHRoZSBkZXBlbmRlbmNpZXMgd2hpY2ggSSBhZ3JlZSBpcyB0
aGUgZ29hbA0KPmJ1dCB3ZSBzaG91bGQgZ2V0IHRoZW0gaWRlbnRpZmllZCBmaXJzdC4NCj4NCg0K
d2l0aCBSUCdzIG5ldyBmaXgsIEkgY2FuIHZlcmlmeSB0aGlzIGlzc3VlIGF0IGxlYXN0IHNvbHZl
ZCBmb3Igbm93LiBJJ2xsIHRoaW5rIGFib3V0DQpob3cgdG8gaW1wcm92ZSBpdCBsYXRlci4NCg0K
QlRXLCB3aXRoIHRoaXMgY2hhbmdlLCBub3cgdGhlcmUncmUgMTAgbmF0aXZlIHJlY2lwZXMgcmVx
dWlyaW5nIHJlYnVpbGQgY29uc2VxdWVudGx5Og0KDQpwZXJsLW5hdGl2ZSAtPiBvcGVuc3NsLW5h
dGl2ZSAtPiBnaXQtbmF0aXZlIC0+IHBzZXVkby1uYXRpdmUgLT4gbGlidG9vbC1jcm9zcw0KICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgfD4gcHJlbGluay1u
YXRpdmUNCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgIHw+
IGtlcm4tdG9vbHMtbmF0aXZlDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8PiBw
eXRob24tbmF0aXZlIC0+IGxpYnhtbDItbmF0aXZlIC0+bGlieHNsdC1uYXRpdmUNCg0KVGhhbmtz
DQpLZXZpbg0KDQo=

