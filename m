Return-Path: <apoorv.sangal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B1DCE00C6A; Thu, 31 May 2018 00:58:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA53BE00AD8
	for <poky@yoctoproject.org>; Thu, 31 May 2018 00:58:39 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	31 May 2018 00:58:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,463,1520924400"; d="scan'208";a="233412536"
Received: from pgsmsx108.gar.corp.intel.com ([10.221.44.103])
	by fmsmga006.fm.intel.com with ESMTP; 31 May 2018 00:58:37 -0700
Received: from pgsmsx104.gar.corp.intel.com ([169.254.3.168]) by
	PGSMSX108.gar.corp.intel.com ([169.254.8.114]) with mapi id
	14.03.0319.002; Thu, 31 May 2018 15:58:36 +0800
From: "Sangal, Apoorv" <apoorv.sangal@intel.com>
To: Anand Ingale <anand.build1985@gmail.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Thread-Topic: [poky] testimage feature ( automated tests for qemu images )
	not working for qemuarm virt machine
Thread-Index: AQHT+K9t9KArrOGo1kyIw+vyTS1eqqRJd9rA
Date: Thu, 31 May 2018 07:58:36 +0000
Message-ID: <D4F5B5CFEF9DBB4A9DDB70CFEF737641029EE5D7@PGSMSX104.gar.corp.intel.com>
References: <CA+=TBV4mm5aUmcCbhobgtZt7AN=4oJYe3n-wTC_kL7vmUGLKkQ@mail.gmail.com>
In-Reply-To: <CA+=TBV4mm5aUmcCbhobgtZt7AN=4oJYe3n-wTC_kL7vmUGLKkQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.200.100
dlp-reaction: no-action
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZjk0YzYxZDgtY2FmYS00YjA4LWJhOWUtODQ5N2UyOTBlZmVjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoidEVLcEVaWFZmVzFZOEl4N3d0dnp5ZEFPUVpwT0RRZmFDMUhEaldQcFwvdzhHeUxOVEFKZjJWcWhoeUJ2Y00xTkIifQ==
x-ctpclassification: CTP_NT
x-originating-ip: [172.30.20.205]
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
X-List-Received-Date: Thu, 31 May 2018 07:58:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IHBva3ktYm91bmNlc0B5b2N0
b3Byb2plY3Qub3JnIFttYWlsdG86cG9reS0NCj4gYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnXSBP
biBCZWhhbGYgT2YgQW5hbmQgSW5nYWxlDQo+IFNlbnQ6IFRodXJzZGF5LCBNYXkgMzEsIDIwMTgg
MzoxNSBQTQ0KPiBUbzogcG9reUB5b2N0b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6IFtwb2t5XSB0
ZXN0aW1hZ2UgZmVhdHVyZSAoIGF1dG9tYXRlZCB0ZXN0cyBmb3IgcWVtdSBpbWFnZXMgKSBub3QN
Cj4gd29ya2luZyBmb3IgcWVtdWFybSB2aXJ0IG1hY2hpbmUNCj4gDQo+IEhpIEFsbCwNCj4gIEkg
aGF2ZSBib290ZWQgcWVtdWFybSAgaW1hZ2UgZm9yIHZpcnQgbWFjaGluZSAoIG5vdCBmb3IgIHZl
cnNhdGlsZXBiIHdoaWNoIGlzDQo+IGF2YWlsYWJsZSBieSBkZWZhdWx0IGluIHBva3kpIC4NCj4g
DQo+IGluIG15IGtlcm5lbCByZWNpcGUgLCBzb3VyY2UgaSBoYXZlIHRha2VuIGZyb20gYmVsb3cg
cmVwb3NpdG9yeQ0KPiB7e3sNCj4gDQo+IFNSQ19VUkkgPSAiZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcv
cHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdA0KPiA8aHR0cDovL2dp
dC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51eC5naXQ+
ICINCj4gDQo+IH19fQ0KPiANCj4gaSBoYXZlIGNyZWF0ZWQgYSBkZWZjb25maWcgZmlsZSB1c2lu
ZyBtdWx0aV92N19kZWZjb25maWcNCj4gICAgICAjIGNsb25lZCBnaXQ6Ly9naXQua2VybmVsLm9y
Zy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0DQo+IDxodHRwOi8v
Z2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4Lmdp
dD4NCj4gICAgICAjIG1ha2UgbXVsdGlfdjdfZGVmY29uZmlnDQo+ICAgICAgIyBjb3BpZWQgLmNv
bmZpZyBnZW5lcmF0ZWQgYXMgZGVmY29uZmlnIHRvIHJlY2lwZXMta2VybmVsIGRpcmVjdG9yeQ0K
PiANCj4gDQo+ICBpIGhhdmUgdXNlZCAgY29yZS1pbWFnZS1taW5pbWFsICB0byBidWlsZCByb290
ZnMNCj4gDQo+ICBpIGFtIGFibGUgdG8gYm9vdCBxZW11IGltYWdlIHdoZW4gaSBydW4gLCAjIHJ1
bnFlbXUgcWVtdWFybSBub2dyYXBoaWMNCj4gIHt7ew0KPiBQb2t5IChZb2N0byBQcm9qZWN0IFJl
ZmVyZW5jZSBEaXN0cm8pIDIuNC4yIHFlbXVhcm0gL2Rldi90dHlBTUEwDQo+IA0KPiBxZW11YXJt
IGxvZ2luOiByb290DQo+IHJvb3RAcWVtdWFybTp+Iw0KPiByb290QHFlbXVhcm06fiMgdW5hbWUg
LWENCj4gTGludXggcWVtdWFybSA0LjE3LjAtcmM1LW15a2VyICMxIFNNUCBTYXQgTWF5IDE5IDE3
OjI1OjQxIFVUQyAyMDE4IGFybXY3bA0KPiBHTlUvTGludXgNCj4gcm9vdEBxZW11YXJtOn4jDQo+
IH19fQ0KPiANCj4gZm9sbG93ZWQgdGhpcyBsaW5rIHRvIHJ1biB0ZXN0aW1hZ2UNCj4gaHR0cHM6
Ly93aWtpLnlvY3RvcHJvamVjdC5vcmcvd2lraS9JbWFnZV90ZXN0cw0KPiANCj4gIHdoZW4gaSBy
dW4gYmVsb3cgY29tbW5hZCAsIGl0ICBmYWlscyB0byBydW4gdGVzdHMNCj4gICAjIGJpdGJha2Ug
Y29yZS1pbWFnZS1taW5pbWFsIC1jIHRlc3RpbWFnZQ0KPiB7e3sNCj4gIFdBUk5JTkc6IFFlbXUg
ZW5kZWQgdW5leHBlY3RlZGx5LCBkdW1wIGRhdGEgZnJvbSBob3N0IGlzIGluIC90bXAvb2UtDQo+
IHNhdmVkLXRlc3RzLzIwMTgwNTMxMDcwN19xZW11DQo+IHwgREVCVUc6IFN0b3BwaW5nIGxvZ2dp
bmcgdGhyZWFkDQo+IHwgREVCVUc6IFN0b3AgZXZlbnQgcmVjZWl2ZWQNCj4gfCBERUJVRzogVGVh
cmluZyBkb3duIGxvZ2dpbmcgdGhyZWFkDQo+IHwgREVCVUc6IFNlbmRpbmcgU0lHVEVSTSB0byBy
dW5xZW11DQo+IHwgRVJST1I6IHRlc3RpbWFnZSByZWNlaXZlZCBTSUdURVJNLCBzaHV0dGluZyBk
b3duLi4uDQo+IHwgRVJST1I6IGNvcmUtaW1hZ2UtbWluaW1hbCAtIEZBSUxFRCAtIHRlc3RzIHdl
cmUgaW50ZXJydXB0ZWQgZHVyaW5nIGV4ZWN1dGlvbg0KPiB8IERFQlVHOiBQeXRob24gZnVuY3Rp
b24gZG9fdGVzdGltYWdlIGZpbmlzaGVkDQo+IHwgRVJST1I6IEZ1bmN0aW9uIGZhaWxlZDogZG9f
dGVzdGltYWdlDQo+IEVSUk9SOiBUYXNrICgvaG9tZS9BSW5nYWxlL1Bva3ktMS9wb2t5LXZpcnQv
bWV0YS9yZWNpcGVzLQ0KPiBjb3JlL2ltYWdlcy9jb3JlLWltYWdlLW1pbmltYWwuYmI6ZG9fdGVz
dGltYWdlKSBmYWlsZWQgd2l0aCBleGl0IGNvZGUgJzEnDQo+IA0KPiB9fX0NCj4gDQo+ICAgZG8g
aSBuZWVkIGVuYWJsZSBhbnkga2VybmVsIGNvbmZpZyBmb3IgdGVzdGltYWdlIGZlYXR1cmUgdG8g
d29yayA/Py4gcGxlYXNlDQo+IHN1Z2dlc3QgIHdoYXQgY2hhbmdlcyBpIG5lZWQgdG8gZG8gLiBJ
IGhhdmUgdHJpZWQgdGhpcyBvbiBwb2t5J3Mgcm9ja28gYnJhbmNoIC4NCj4gDQpUaGVyZSBpcyBu
byBzcGVjaWZpYyBrZXJuZWwgY29uZmlndXJhdGlvbiBuZWVkZWQgZm9yIHRlc3RpbWFnZSBmZWF0
dXJlIHRvIHdvcmsuDQpQbGVhc2UgY2hlY2sgd2hldGhlciB5b3VyIFRBUCBkZXZpY2UgaXMgc2V0
dXAgY29ycmVjdGx5IGZvciBxZW11IHRvIHdvcmsuDQotQXBvb3J2DQo+IEJlc3QgUmVnYXJkcw0K
PiANCg0K

