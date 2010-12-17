Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3570B4C811D9
	for <poky@pokylinux.org>; Thu, 16 Dec 2010 19:04:19 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Dec 2010 17:04:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,358,1288594800"; d="scan'208";a="688009135"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga001.jf.intel.com with ESMTP; 16 Dec 2010 17:04:17 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 17 Dec 2010 09:03:46 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 17 Dec 2010 09:03:45 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Fri, 17 Dec 2010 09:03:42 +0800
Thread-Topic: [PATCH 0/3] miscellaneous sstate fixes
Thread-Index: AcudN7Ww+EABSuXJSEq+LP+wvq05xAATlcNw
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F4097A4@shsmsx502.ccr.corp.intel.com>
References: <5b55a1$ivdmfp@fmsmga002.fm.intel.com>
	<1292514056.26558.4024.camel@rex>
In-Reply-To: <1292514056.26558.4024.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>,
	"poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: [PATCH 0/3] miscellaneous sstate fixes
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
X-List-Received-Date: Fri, 17 Dec 2010 01:04:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PkZyb206IFJpY2hhcmQgUHVyZGllIFttYWlsdG86cmljaGFyZC5wdXJkaWVAbGludXhmb3VuZGF0
aW9uLm9yZ10NCj5TZW50OiBUaHVyc2RheSwgRGVjZW1iZXIgMTYsIDIwMTAgMTE6NDEgUE0NCj4N
Cj5PbiBUaHUsIDIwMTAtMTItMTYgYXQgMTc6MDIgKzA4MDAsIEtldmluIFRpYW4gd3JvdGU6DQo+
PiBUaGUgbWFqb3IgZml4IGluIHRoaXMgcGF0Y2hzZXQgaXMgYWJvdXQgbGludXgteW9jdG8sIHdo
aWNoIGlzIHRoZSByZXN0IGJsb2NrZXIgZnJvbQ0KPj4gYSBjb21wbGV0ZSBzc3RhdGUgcmV1c2Ug
KGl0IGZ1cnRoZXIgaW1wYWN0cyB0YXNrLXBva3ktYm9vdCBhbmQgdGhlIGJ1aWxkIHRpbWUgaXMN
Cj4+IGxvbmcpLiBIb3dldmVyIHRoaXMgZml4IHdpbGwgY2F1c2Ugb25lIGRpZmZlcmVudCBiZWhh
dmlvci4gQWZ0ZXIgd2lwaW5nIG91dCBEQVRFVElNRQ0KPj4gZnJvbSBkZXBzLCBub3cgdGhlIGtl
cm5lbCBpbWFnZSBuYW1lIHdpbGwgYmUgc2FtZSBhcyB0aGUgb25lIGV4dHJhY3RlZCBmcm9tIHNz
dGF0ZQ0KPj4gcGFja2FnZSBhZnRlciByZXVzaW5nIGl0LiBJIHRoaW5rIHRoaXMgc2hvdWxkIGJl
IGZpbmUgc2luY2UgYXQgcmVsZWFzZSB0aW1lIERBVEVUSU1FDQo+PiB3aWxsIGJlIHJlbW92ZWQg
YW55d2F5DQo+Pg0KPj4gUHVsbCBVUkw6IGdpdDovL2dpdC5wb2t5bGludXgub3JnL3Bva3ktY29u
dHJpYi5naXQNCj4+ICAgQnJhbmNoOiB0ay9tYXN0ZXINCj4+ICAgQnJvd3NlOiBodHRwOi8vZ2l0
LnBva3lsaW51eC5vcmcvY2dpdC5jZ2kvcG9reS1jb250cmliL2xvZy8/aD10ay9tYXN0ZXINCj4+
DQo+PiBUaGFua3MsDQo+PiAgICAgS2V2aW4gVGlhbiA8a2V2aW4udGlhbkBpbnRlbC5jb20+DQo+
DQo+SSd2ZSB0YWtlbiB0d28gb2YgdGhlc2UsIHRoYW5rcy4gVGhlIG90aGVyIEkndmUgbWFkZSBz
b21lIGNoYW5nZXMgdG8gYXMNCj5kaXNjdXNzZWQgaW4gc2VwYXJhdGUgZW1haWxzLg0KPg0KDQpJ
dCBsb29rcyBvbmUgY29tbWl0IGlzIG5vdCBhY2NlcHRlZDoNCg0KY29tbWl0CTU3MDczY2EyMDNk
YzEwM2EwMzllNjVmM2Y3ZjI3NDM5ZTNmOTFjMzcNCnNpZ2dlbi5weTogcHJpbnQgdGFza25hbWUg
d2hlbiBzZWVpbmcgbWlzbWF0Y2hlZCBoYXNoIGluIGNhY2hldGsvbWFzdGVyDQpTaWduZWQtb2Zm
LWJ5OiBLZXZpbiBUaWFuIDxrZXZpbi50aWFuQGludGVsLmNvbT4NCg0KSSdsbCByZXNlbmQgdGhh
dCB0b2dldGhlciB3aXRoIG15IGFub3RoZXIgZml4IG1lbnRpb25lZCBpbiBhbm90aGVyIHRocmVh
ZA0KDQpUaGFua3MsDQpLZXZpbg0K

