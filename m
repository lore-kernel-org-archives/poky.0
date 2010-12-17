Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B5CD54C810AC
	for <poky@pokylinux.org>; Thu, 16 Dec 2010 19:03:52 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Dec 2010 17:03:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,358,1288594800"; d="scan'208";a="869137915"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga001.fm.intel.com with ESMTP; 16 Dec 2010 17:03:39 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 17 Dec 2010 09:02:15 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 17 Dec 2010 09:02:14 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Fri, 17 Dec 2010 09:02:13 +0800
Thread-Topic: [PATCH 2/3] kernel.bbclass: rename do_deploy and add
	vardepsexclusive accordingly
Thread-Index: AcudN4wBiIZbcxJyTlmvE0tpzZ2RMQATmkgw
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F4097A0@shsmsx502.ccr.corp.intel.com>
References: <0d30dc$kfrh4k@orsmga001.jf.intel.com>
	<1292513999.26558.4022.camel@rex>
In-Reply-To: <1292513999.26558.4022.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>,
	"poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: [PATCH 2/3] kernel.bbclass: rename do_deploy and add vardepsexclusive accordingly
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
X-List-Received-Date: Fri, 17 Dec 2010 01:03:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PkZyb206IFJpY2hhcmQgUHVyZGllIFttYWlsdG86cmljaGFyZC5wdXJkaWVAbGludXhmb3VuZGF0
aW9uLm9yZ10NCj5TZW50OiBUaHVyc2RheSwgRGVjZW1iZXIgMTYsIDIwMTAgMTE6NDAgUE0NCj4N
Cj5PbiBUaHUsIDIwMTAtMTItMTYgYXQgMTY6NTYgKzA4MDAsIEtldmluIFRpYW4gd3JvdGU6DQo+
PiByZW5hbWUgZG9fZGVwbG95IHRvIGtlcm5lbF9kb19kZXBsb3kgYW5kIGV4cG9ydCBpdC4gVGhl
biBhZGQgZXhjbHVzaXZlDQo+PiBsaXN0IGZvciB0d28gdmFyaWFibGVzIGl0IHJlZmVycyB0bzoN
Cj4+DQo+PiAra2VybmVsX2RvX2RlcGxveVt2YXJkZXBzZXhjbHVkZV0gPSAiREFURVRJTUUiDQo+
PiArS0VSTkVMX0lNQUdFX0JBU0VfTkFNRVt2YXJkZXBzZXhjbHVkZV0gPSAiREFURVRJTUUiDQo+
Pg0KPj4gVGhpcyBhdm9pZHMgdGhlIGxhc3Qgcm9hZCBibG9jayBsaW51eC15b2N0byBmb3Igc3N0
YXRlLg0KPj4NCj4+IFNpZ25lZC1vZmYtYnk6IEtldmluIFRpYW4gPGtldmluLnRpYW5AaW50ZWwu
Y29tPg0KPg0KPkluIHRoZSBpbnRlcmVzdHMgb2YgZ2V0dGluZyB0aGlzIHJlc29sdmVkLCBJJ3Zl
IHNwbGl0IHRoaXMgY29tbWl0IGludG8NCj50d28gYW5kIHB1c2hlZCB0aGUgcGllY2VzIEkgdGhp
bmsgYXJlIG5lZWRlZCwgSSdtIGhvcGluZyB5b3UgZG9uJ3QgbWluZC4NCg0Kbm8gcHJvYmxlbS4g
dGhlIHNwbGl0IGlzIGNsZWFyZXIuDQoNCj4NCj5JZiB3ZSBuZWVkIGFueSBmdXJ0aGVyIGNoYW5n
ZXMsIHBsZWFzZSBsZXQgbWUga25vdy4NCj4NCg0KSSdsbCBzZW5kIG9uZSBmb3IgdGhhdC4gDQoN
ClRoYW5rcywNCktldmluDQoNCg==

