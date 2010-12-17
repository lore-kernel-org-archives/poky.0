Return-Path: <kevin.tian@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id A125D4C80FA8
	for <poky@pokylinux.org>; Thu, 16 Dec 2010 19:03:24 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Dec 2010 17:03:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,358,1288594800"; d="scan'208";a="869137856"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga001.fm.intel.com with ESMTP; 16 Dec 2010 17:03:23 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 17 Dec 2010 09:01:34 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 17 Dec 2010 09:01:33 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Fri, 17 Dec 2010 09:01:31 +0800
Thread-Topic: [PATCH 2/3] kernel.bbclass: rename do_deploy and add
	vardepsexclusive accordingly
Thread-Index: AcudNkRutvUJNDnPQN2ZB33LES7eJwAT3iGg
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F40979F@shsmsx502.ccr.corp.intel.com>
References: <0d30dc$kfrh4k@orsmga001.jf.intel.com>
	<1292513357.26558.4007.camel@rex>
In-Reply-To: <1292513357.26558.4007.camel@rex>
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
X-List-Received-Date: Fri, 17 Dec 2010 01:03:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PkZyb206IFJpY2hhcmQgUHVyZGllIFttYWlsdG86cmljaGFyZC5wdXJkaWVAbGludXhmb3VuZGF0
aW9uLm9yZ10NCj5TZW50OiBUaHVyc2RheSwgRGVjZW1iZXIgMTYsIDIwMTAgMTE6MjkgUE0NCj4N
Cj5PbiBUaHUsIDIwMTAtMTItMTYgYXQgMTY6NTYgKzA4MDAsIEtldmluIFRpYW4gd3JvdGU6DQo+
PiByZW5hbWUgZG9fZGVwbG95IHRvIGtlcm5lbF9kb19kZXBsb3kgYW5kIGV4cG9ydCBpdC4gVGhl
biBhZGQgZXhjbHVzaXZlDQo+PiBsaXN0IGZvciB0d28gdmFyaWFibGVzIGl0IHJlZmVycyB0bzoN
Cj4+DQo+PiAra2VybmVsX2RvX2RlcGxveVt2YXJkZXBzZXhjbHVkZV0gPSAiREFURVRJTUUiDQo+
PiArS0VSTkVMX0lNQUdFX0JBU0VfTkFNRVt2YXJkZXBzZXhjbHVkZV0gPSAiREFURVRJTUUiDQo+
Pg0KPj4gVGhpcyBhdm9pZHMgdGhlIGxhc3Qgcm9hZCBibG9jayBsaW51eC15b2N0byBmb3Igc3N0
YXRlLg0KPg0KPlNob3VsZG4ndCB0aGlzIGp1c3QgbmVlZCBvbmx5IHRoZQ0KPg0KPktFUk5FTF9J
TUFHRV9CQVNFX05BTUVbdmFyZGVwc2V4Y2x1ZGVdID0gIkRBVEVUSU1FIg0KPg0KPmNoYW5nZT8N
Cj4NCg0KVGhlIHJlYXNvbiBpcyB0aGF0IGtlcm5lbF9kb19kZXBsb3kgaXRzZWxmIGFsc28gcmVm
ZXJzIHRvIERBVEVUSU1FOg0KDQpjcCBhcmNoLyR7QVJDSH0vYm9vdC91SW1hZ2UgJHtERVBMT1lE
SVJ9L3VJbWFnZS0ke1BWfS0ke1BSfS0ke01BQ0hJTkV9LSR7REFURVRJTUV9LmJpbg0KDQpJJ2xs
IHNlbmQgb3V0IGEgc2VwYXJhdGUgZml4IGZvciB0aGlzLg0KDQpUaGFua3MNCktldmluDQo=

