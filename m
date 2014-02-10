Return-Path: <cristian.iorga@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02BBAE006F6
	for <poky@yoctoproject.org>; Mon, 10 Feb 2014 07:06:41 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 10 Feb 2014 07:06:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,818,1384329600"; d="scan'208";a="479047366"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by fmsmga002.fm.intel.com with ESMTP; 10 Feb 2014 07:05:32 -0800
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.202]) by
	IRSMSX104.ger.corp.intel.com ([169.254.5.244]) with mapi id
	14.03.0123.003; Mon, 10 Feb 2014 15:05:31 +0000
From: "Iorga, Cristian" <cristian.iorga@intel.com>
To: =?utf-8?B?U8OpYmFzdGllbiBNZW5uZXRyaWVy?= <s.mennetrier@innotis.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky] [PATCH][for-dora] Fix issue to build pulseaudio without
	x11
Thread-Index: AQHPJmx4MbX+k7AcikOmkUUDWq3mgJquli1g
Date: Mon, 10 Feb 2014 15:05:31 +0000
Message-ID: <969F26A8BAB325438E7EB80D3C3134FB16CFE1CE@IRSMSX105.ger.corp.intel.com>
References: <1392042495-13533-1-git-send-email-s.mennetrier@innotis.org>
In-Reply-To: <1392042495-13533-1-git-send-email-s.mennetrier@innotis.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Re: [PATCH][for-dora] Fix issue to build pulseaudio without x11
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
X-List-Received-Date: Mon, 10 Feb 2014 15:06:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T0suDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBwb2t5LWJvdW5jZXNAeW9j
dG9wcm9qZWN0Lm9yZyBbbWFpbHRvOnBva3ktYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnXSBPbiBC
ZWhhbGYgT2YgU8OpYmFzdGllbiBNZW5uZXRyaWVyDQpTZW50OiBNb25kYXksIEZlYnJ1YXJ5IDEw
LCAyMDE0IDQ6MjggUE0NClRvOiBwb2t5QHlvY3RvcHJvamVjdC5vcmcNClN1YmplY3Q6IFtwb2t5
XSBbUEFUQ0hdW2Zvci1kb3JhXSBGaXggaXNzdWUgdG8gYnVpbGQgcHVsc2VhdWRpbyB3aXRob3V0
IHgxMQ0KDQpUaGlzIG1vZGlmaWNhdGlvbiBjb21lIGZyb20gbWFzdGVyIGJyYW5jaGUNCg0KSWYg
eDExIGlzIG5vdCBlbmFibGVkLCB0aGUgcHVsc2VhdWRpby1tb2R1bGUtY29uc29sZS1raXQgY291
bGRuJ3QgYmUgYnVpbHQuDQoNClNpZ25lZC1vZmYtYnk6IFPDqWJhc3RpZW4gTWVubmV0cmllciA8
cy5tZW5uZXRyaWVyQGlubm90aXMub3JnPg0KLS0tDQogbWV0YS9yZWNpcGVzLW11bHRpbWVkaWEv
cHVsc2VhdWRpby9wdWxzZWF1ZGlvLmluYyB8IDIgKy0NCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkNCg0KZGlmZiAtLWdpdCBhL21ldGEvcmVjaXBlcy1tdWx0
aW1lZGlhL3B1bHNlYXVkaW8vcHVsc2VhdWRpby5pbmMgYi9tZXRhL3JlY2lwZXMtbXVsdGltZWRp
YS9wdWxzZWF1ZGlvL3B1bHNlYXVkaW8uaW5jDQppbmRleCBiN2E2ZWJhLi4yNzg3OWNlIDEwMDY0
NA0KLS0tIGEvbWV0YS9yZWNpcGVzLW11bHRpbWVkaWEvcHVsc2VhdWRpby9wdWxzZWF1ZGlvLmlu
Yw0KKysrIGIvbWV0YS9yZWNpcGVzLW11bHRpbWVkaWEvcHVsc2VhdWRpby9wdWxzZWF1ZGlvLmlu
Yw0KQEAgLTc0LDcgKzc0LDcgQEAgVVNFUkFERF9QQVJBTV9wdWxzZWF1ZGlvLXNlcnZlciA9ICIt
LXN5c3RlbSAtLWhvbWUgL3Zhci9ydW4vcHVsc2UgXCAgIyBhZGRpbmcgdGhlIGNvbnNvbGUta2l0
IG1vZHVsZSB0byBhbiBpbWFnZSwgd2UgYWxzbyBnZXQgdGhlIG5lY2Vzc2FyeSAgIyBjb25zb2xl
a2l0IHBhY2thZ2UgcHJvZHVjZWQuDQogUEFDS0FHRVMgPSsgImxpYnB1bHNlY29yZSBsaWJwdWxz
ZWNvbW1vbiBsaWJwdWxzZSBsaWJwdWxzZS1zaW1wbGUgbGlicHVsc2UtbWFpbmxvb3AtZ2xpYiBc
DQotICAgICAgICAgICAgIHB1bHNlYXVkaW8tc2VydmVyIHB1bHNlYXVkaW8tbWlzYyBwdWxzZWF1
ZGlvLW1vZHVsZS1jb25zb2xlLWtpdCINCisgICAgICAgICAgICAgcHVsc2VhdWRpby1zZXJ2ZXIg
cHVsc2VhdWRpby1taXNjICR7QGJhc2VfY29udGFpbnMoJ1BBQ0tBR0VDT05GSUcnLCAneDExJywg
J3B1bHNlYXVkaW8tbW9kdWxlLWNvbnNvbGUta2l0JywgJycsIGQpfSINCiANCiAjdXBncmFkZSBw
YXRoOg0KIFJSRVBMQUNFU19wdWxzZWF1ZGlvLXNlcnZlciA9ICJsaWJwdWxzZS1iaW4gbGlicHVs
c2UtY29uZiINCi0tDQoxLjguMS4yDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fDQpwb2t5IG1haWxpbmcgbGlzdA0KcG9reUB5b2N0b3Byb2plY3Qub3Jn
DQpodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8vcG9reQ0K

