Return-Path: <apoorv.sangal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FA9FE00CDC; Fri,  1 Jun 2018 02:26:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.151 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A69FE00A0C
	for <poky@yoctoproject.org>; Fri,  1 Jun 2018 02:25:11 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 Jun 2018 02:25:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,465,1520924400"; d="scan'208";a="55709799"
Received: from kmsmsx152.gar.corp.intel.com ([172.21.73.87])
	by orsmga003.jf.intel.com with ESMTP; 01 Jun 2018 02:25:10 -0700
Received: from pgsmsx104.gar.corp.intel.com ([169.254.3.168]) by
	KMSMSX152.gar.corp.intel.com ([169.254.11.56]) with mapi id
	14.03.0319.002; Fri, 1 Jun 2018 17:25:09 +0800
From: "Sangal, Apoorv" <apoorv.sangal@intel.com>
To: Anand Ingale <anand.build1985@gmail.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Thread-Topic: [poky] testimage feature ( automated tests for qemu images )
	not working for qemuarm virt machine
Thread-Index: AQHT+K9t9KArrOGo1kyIw+vyTS1eqqRJd9rA//+BjwCAAIca0P//hHoAgAAKywCAAhI4QA==
Date: Fri, 1 Jun 2018 09:25:09 +0000
Message-ID: <D4F5B5CFEF9DBB4A9DDB70CFEF737641029EFEC7@PGSMSX104.gar.corp.intel.com>
References: <CA+=TBV4mm5aUmcCbhobgtZt7AN=4oJYe3n-wTC_kL7vmUGLKkQ@mail.gmail.com>
	<D4F5B5CFEF9DBB4A9DDB70CFEF737641029EE5D7@PGSMSX104.gar.corp.intel.com>
	<CA+=TBV5Sx_p_0xa77b5FFb=swc68k49MzOj5ugHEthVNmY=bxA@mail.gmail.com>
	<D4F5B5CFEF9DBB4A9DDB70CFEF737641029EE689@PGSMSX104.gar.corp.intel.com>
	<CA+=TBV6bQSXr8XcmvgTg5gUTmy8qESwKumNUNpm8cksh4QA8kQ@mail.gmail.com>
	<CA+=TBV57imMQ+NjwfC6k53Dp3CWYhwAJNyZhZ_gCLFv8F69N_g@mail.gmail.com>
In-Reply-To: <CA+=TBV57imMQ+NjwfC6k53Dp3CWYhwAJNyZhZ_gCLFv8F69N_g@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.200.100
dlp-reaction: no-action
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOGM0MzljOGUtYzk0OC00MjkxLTk1OGQtZTg0ZWRlNDdmZmU1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZWdjUlpIb1JHMm00a0NFZTZSXC84cEgxbThlb2tqV1lyNU1UMFUwNmFWVjRUNnJTdTJkM2ZwRFJNeGlWU1pabWkifQ==
x-ctpclassification: CTP_NT
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Subject: Re: testimage feature ( automated tests for qemu images ) not working for qemuarm virt machine
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
X-List-Received-Date: Fri, 01 Jun 2018 09:26:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBBbmFuZCBJbmdhbGUgW21haWx0
bzphbmFuZC5idWlsZDE5ODVAZ21haWwuY29tXQ0KPiBTZW50OiBUaHVyc2RheSwgTWF5IDMxLCAy
MDE4IDU6NDIgUE0NCj4gVG86IFNhbmdhbCwgQXBvb3J2IDxhcG9vcnYuc2FuZ2FsQGludGVsLmNv
bT47IHBva3lAeW9jdG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBSZTogW3Bva3ldIHRlc3RpbWFn
ZSBmZWF0dXJlICggYXV0b21hdGVkIHRlc3RzIGZvciBxZW11IGltYWdlcyApIG5vdA0KPiB3b3Jr
aW5nIGZvciBxZW11YXJtIHZpcnQgbWFjaGluZQ0KPiANCj4gQXR0YWNoaW5nICBsb2cuZG9fdGVz
dGltYWdlDQo+IA0KPiBPbiBUaHUsIE1heSAzMSwgMjAxOCBhdCAyOjMzIFBNIEFuYW5kIEluZ2Fs
ZSA8YW5hbmQuYnVpbGQxOTg1QGdtYWlsLmNvbQ0KPiA8bWFpbHRvOmFuYW5kLmJ1aWxkMTk4NUBn
bWFpbC5jb20+ID4gd3JvdGU6DQo+IA0KPiANCj4gCUFJbmdhbGVAc3dwZmludGJsZDAzOn4vUG9r
eS0xL3Bva3ktdmlydC9idWlsZC0yJCBiaXRiYWtlIGNvcmUtaW1hZ2UtDQo+IG1pbmltYWwgLWMg
dGVzdGltYWdlDQo+IAlXQVJOSU5HOiBIb3N0IGRpc3RyaWJ1dGlvbiAidWJ1bnR1LTE0LjA0IiBo
YXMgbm90IGJlZW4gdmFsaWRhdGVkIHdpdGgNCj4gdGhpcyB2ZXJzaW9uIG9mIHRoZSBidWlsZCBz
eXN0ZW07IHlvdSBtYXkgcG9zc2libHkgZXhwZXJpZW5jZSB1bmV4cGVjdGVkDQo+IGZhaWx1cmVz
LiBJdCBpcyByZWNvbW1lbmRlZCB0aGF0IHlvdSB1c2UgYSB0ZXN0ZWQgZGlzdHJpYnV0aW9uLg0K
SW1hZ2Ugd2FzIGJ1aWxkIG9uIGhvc3QgZGlzdHJpYnV0aW9uIFVidW50dSAxNC4wNCwgdGhlcmUg
d2FzIGEgd2FybmluZyBtZXNzYWdlIGluZGljYXRlIHRoaXMgZHVyaW5nIGJpdGJha2UuDQpUaGUg
aGlnaGVzdCBLZXJuZWwgU3VwcG9ydGVkIHZlcnNpb24gZm9yIFVidW50dSAxNC4wNCBEaXN0cmli
dXRpb24gaXMgdXAgdG8gdjQuNCAoVWJ1bnR1IDE0LjA0LjUpLg0KVGhpcyBjYW4gYmUgc291cmNl
IGZyb20gaHR0cHM6Ly93aWtpLnVidW50dS5jb20vS2VybmVsL1N1cHBvcnQuDQpUaGUga2VybmVs
IGltYWdlIHJlY2lwZSBhZGQgYXMgY29yZS1pbWFnZS1taW5pbWFsIHdhcyBLZXJuZWwgdmVyc2lv
biA0LjE3LjAtcmM1IHdoaWNoIHdhcyAzIHdlZWtzIGFnbyByZWxlYXNlcyBieSBrZXJuZWwub3Jn
LiBFdmVuIHRoZSBsYXRlc3QgRGlzdHJpYnV0aW9uIGZvciAxOC4wNCBzdXBwb3J0cyBrZXJuZWwg
dXAgdG8gdjQuMTUgb25seS4NCg0KICAgIHJvb3RAcWVtdWFybTp+IyB1bmFtZSAtYQ0KPiAgTGlu
dXggcWVtdWFybSA0LjE3LjAtcmM1LW15a2VyICMxIFNNUCBTYXQgTWF5IDE5IDE3OjI1OjQxIFVU
QyAyMDE4IGFybXY3bEdOVS9MaW51eA0KTXkgcmVjb21tZW5kYXRpb24gd291bGQgYmUgdG8gdXNl
IEtlcm5lbCBZb2N0byBzdXBwb3J0ZWQgYW5kIHJlYnVpbGQgdGhlIGNvcmUtaW1hZ2UtbWluaW1h
bCBhIHZlcnNpb24gdXAgKDE2LjA0KSBvbiBIb3N0IERpc3RyaWJ1dGlvbg0KDQotQXBvb3J2DQo=

