Return-Path: <saul.wold@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15B60E00E36; Tue,  6 Feb 2018 21:18:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4665EE00A44
	for <poky@yoctoproject.org>; Tue,  6 Feb 2018 21:18:07 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Feb 2018 21:18:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,471,1511856000"; d="scan'208";a="16570187"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by orsmga006.jf.intel.com with ESMTP; 06 Feb 2018 21:18:07 -0800
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
	ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server
	(TLS) id 14.3.319.2; Tue, 6 Feb 2018 21:18:07 -0800
Received: from orsmsx113.amr.corp.intel.com ([169.254.9.97]) by
	ORSMSX154.amr.corp.intel.com ([169.254.11.77]) with mapi id
	14.03.0319.002; Tue, 6 Feb 2018 21:18:06 -0800
From: "Wold, Saul" <saul.wold@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>, "Palleti, Avinash Reddy"
	<avinash.reddy.palleti@intel.com>
Thread-Topic: [PATCH] linux-firmware: Add reference to iwlwifi-8000C firmware
Thread-Index: AQHTn88cr1Wy9zulREabD/gzY78dOqOY7I0A
Date: Wed, 7 Feb 2018 05:18:06 +0000
Message-ID: <1517980684.23314.14.camel@intel.com>
References: <1517978948-29740-1-git-send-email-avinash.reddy.palleti@intel.com>
	<1517978948-29740-2-git-send-email-avinash.reddy.palleti@intel.com>
In-Reply-To: <1517978948-29740-2-git-send-email-avinash.reddy.palleti@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.254.64.234]
MIME-Version: 1.0
Cc: "akuster@mvista.com" <akuster@mvista.com>
Subject: Re: [PATCH] linux-firmware: Add reference to iwlwifi-8000C firmware
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
X-List-Received-Date: Wed, 07 Feb 2018 05:18:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <2A3C70731EDF4F4F8AF2A6446AAFC7C0@intel.com>
Content-Transfer-Encoding: base64

DQpKdXN0IHRvIGJlIGNsZWFyIHRoaXMgaXMgZm9yIFBZUk8NCg0KQWNrZWQtYnk6IFNhdWwgV29s
ZCA8c2d3QGxpbnV4LmludGVsLmNvbT4NCg0KT2ggYW5kIGJ5IHRoZSB3YXkuIHBsZWFzZSBzZW5k
IHRvIG9lLWNvcmVAbGlzdHMub3BlbmVtYmVkZGVkLm9yZyBhbmQNCkNjOiBBcm1pbiBLdXN0ZXIg
PGFrdXN0ZXJAbXZpc3RhLmNvbT4sIA0KDQpBbHNvIG1ha2Ugc3VyZSB0aGlzIHBhdGNoIGVtYWls
IGhhcyB0aGUgW3B5cm9dIHN1YmplY3QgdGFnIQ0KDQpTYXUhDQoNCk9uIFdlZCwgMjAxOC0wMi0w
NyBhdCAxMDoxOSArMDUzMCwgYXZpbmFzaC5yZWRkeS5wYWxsZXRpQGludGVsLmNvbQ0Kd3JvdGU6
DQo+IEZyb206IEF2aW5hc2ggUmVkZHkgUGFsbGV0aSA8YXZpbmFzaC5yZWRkeS5wYWxsZXRpQGlu
dGVsLmNvbT4NCj4gDQo+IEFkZGluZyByZWZlcmVuY2UgdG8gaXdsd2lmaS04MDAwYyBmaXJtd2Fy
ZSB3aGljaCB3YXMgcmVtb3ZlZA0KPiBlcnJvbmVvdXNseSBpbg0KPiBjb21taXQgIDNlNGIzODJj
MGM2ODdhNzZmODI0Y2Q4NGI0NzhjNGY3NzhlMTVlM2UNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEF2
aW5hc2ggUmVkZHkgUGFsbGV0aSA8YXZpbmFzaC5yZWRkeS5wYWxsZXRpQGludGVsLmNvbQ0KPiA+
DQo+IC0tLQ0KPiAgbWV0YS9yZWNpcGVzLWtlcm5lbC9saW51eC1maXJtd2FyZS9saW51eC1maXJt
d2FyZV9naXQuYmIgfCAzICsrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21ldGEvcmVjaXBlcy1rZXJuZWwvbGlu
dXgtZmlybXdhcmUvbGludXgtZmlybXdhcmVfZ2l0LmJiIA0KPiBiL21ldGEvcmVjaXBlcy1rZXJu
ZWwvbGludXgtZmlybXdhcmUvbGludXgtZmlybXdhcmVfZ2l0LmJiDQo+IGluZGV4IGZmNjBkMzAu
LjNhMjE0OGQgMTAwNjQ0DQo+IC0tLSBhL21ldGEvcmVjaXBlcy1rZXJuZWwvbGludXgtZmlybXdh
cmUvbGludXgtZmlybXdhcmVfZ2l0LmJiDQo+ICsrKyBiL21ldGEvcmVjaXBlcy1rZXJuZWwvbGlu
dXgtZmlybXdhcmUvbGludXgtZmlybXdhcmVfZ2l0LmJiDQo+IEBAIC0yNDcsNyArMjQ3LDcgQEAg
UEFDS0FHRVMgPSsgIiR7UE59LXJhbGluay1saWNlbnNlICR7UE59LXJhbGluayBcDQo+ICAgICAg
ICAgICAgICAgJHtQTn0taXdsd2lmaS02MDUwLTQgJHtQTn0taXdsd2lmaS02MDUwLTUgXA0KPiAg
ICAgICAgICAgICAgICR7UE59LWl3bHdpZmktNzI2MCBcDQo+ICAgICAgICAgICAgICAgJHtQTn0t
aXdsd2lmaS03MjY1IFwNCj4gLSAgICAgICAgICAgICAke1BOfS1pd2x3aWZpLTcyNjVkICR7UE59
LWl3bHdpZmktODI2NSBcDQo+ICsgICAgICAgICAgICAgJHtQTn0taXdsd2lmaS03MjY1ZCAke1BO
fS1pd2x3aWZpLTgwMDBjICR7UE59LWl3bHdpZmktDQo+IDgyNjUgXA0KPiAgICAgICAgICAgICAg
ICR7UE59LWl3bHdpZmktbWlzYyBcDQo+ICAgICAgICAgICAgICAgJHtQTn0taWJ0LWxpY2Vuc2Ug
JHtQTn0taWJ0ICR7UE59LWlidC1taXNjIFwNCj4gICAgICAgICAgICAgICAke1BOfS1pYnQtMTEt
NSAke1BOfS1pYnQtMTItMTYgJHtQTn0taWJ0LWh3LTM3LTcgJHtQTn0tDQo+IGlidC1ody0zNy04
IFwNCj4gQEAgLTYxOSw2ICs2MTksNyBAQCBGSUxFU18ke1BOfS1pd2x3aWZpLTYwNTAtNSA9DQo+
ICIke25vbmFyY2hfYmFzZV9saWJkaXJ9L2Zpcm13YXJlL2l3bHdpZmktNjA1MC01LnVjbw0KPiAg
RklMRVNfJHtQTn0taXdsd2lmaS03MjYwICAgPQ0KPiAiJHtub25hcmNoX2Jhc2VfbGliZGlyfS9m
aXJtd2FyZS9pd2x3aWZpLTcyNjAtKi51Y29kZSINCj4gIEZJTEVTXyR7UE59LWl3bHdpZmktNzI2
NSAgID0NCj4gIiR7bm9uYXJjaF9iYXNlX2xpYmRpcn0vZmlybXdhcmUvaXdsd2lmaS03MjY1LSou
dWNvZGUiDQo+ICBGSUxFU18ke1BOfS1pd2x3aWZpLTcyNjVkICAgPQ0KPiAiJHtub25hcmNoX2Jh
c2VfbGliZGlyfS9maXJtd2FyZS9pd2x3aWZpLTcyNjVELSoudWNvZGUiDQo+ICtGSUxFU18ke1BO
fS1pd2x3aWZpLTgwMDBjICAgPQ0KPiAiJHtub25hcmNoX2Jhc2VfbGliZGlyfS9maXJtd2FyZS9p
d2x3aWZpLTgwMDBDLSoudWNvZGUiDQo+ICBGSUxFU18ke1BOfS1pd2x3aWZpLTgyNjUgICA9DQo+
ICIke25vbmFyY2hfYmFzZV9saWJkaXJ9L2Zpcm13YXJlL2l3bHdpZmktODI2NS0qLnVjb2RlIg0K
PiAgRklMRVNfJHtQTn0taXdsd2lmaS1taXNjICAgPQ0KPiAiJHtub25hcmNoX2Jhc2VfbGliZGly
fS9maXJtd2FyZS9pd2x3aWZpLSoudWNvZGUiDQo+ICA=

