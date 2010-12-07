Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id A03274C80050
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 01:56:01 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 06 Dec 2010 23:56:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,310,1288594800"; d="scan'208";a="684633522"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga001.jf.intel.com with ESMTP; 06 Dec 2010 23:55:59 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 7 Dec 2010 15:55:55 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Tue, 7 Dec 2010
	15:55:54 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Date: Tue, 7 Dec 2010 15:55:45 +0800
Thread-Topic: [poky] [PATCH 1/1] curl: fix native dependency
Thread-Index: AcuU4YobUpEYSPT3TweeL6k7hS6CygBAYmLw
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D47543B3B@shsmsx502.ccr.corp.intel.com>
References: <cover.1289982751.git.qing.he@intel.com>
	<a03c4017a13bda3f20b8f39a4c099cb28f349968.1289982751.git.qing.he@intel.com>
	<1290954166.27143.217.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D42C686F3@shsmsx502.ccr.corp.intel.com>
	<AANLkTi=oxv9goiEMAfpkDAvq7n_GfGUMSXsonXDdzixd@mail.gmail.com>
	<1291033557.14277.944.camel@rex>
	<AANLkTinYx+43yRYFu=BYQPVJHox6CmBgOMFF199z3BC=@mail.gmail.com>
	<625BA99ED14B2D499DC4E29D8138F1504D475430EC@shsmsx502.ccr.corp.intel.com>
	<1291597457.14277.2931.camel@rex>
In-Reply-To: <1291597457.14277.2931.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: BFd7 DKzw Djff GaZ0 JJqj K/9P PYnQ P4b3 Rr2/ SMwI VCxs
	VhL3 XUoG X1e1 ZsKo crbA; 3;
	YwBsAGEAcgBzAG8AbgBAAGsAZQByAGcAbwB0AGgALgBjAG8AbQA7AHAAbwBrAHkAQAB5AG8AYwB0AG8AcAByAG8AagBlAGMAdAAuAG8AcgBnADsAcgBwAHUAcgBkAGkAZQBAAGwAaQBuAHUAeAAuAGkAbgB0AGUAbAAuAGMAbwBtAA==;
	Sosha1_v1; 7; {7C2E6BD7-8431-44DD-819C-FEB0B2CF8198};
	awBlAHYAaQBuAC4AdABpAGEAbgBAAGkAbgB0AGUAbAAuAGMAbwBtAA==; Tue,
	07 Dec 2010 07:55:45 GMT;
	UgBFADoAIABbAHAAbwBrAHkAXQAgAFsAUABBAFQAQwBIACAAMQAvADEAXQAgAGMAdQByAGwAOgAgAGYAaQB4ACAAbgBhAHQAaQB2AGUAIABkAGUAcABlAG4AZABlAG4AYwB5AA==
x-cr-puzzleid: {7C2E6BD7-8431-44DD-819C-FEB0B2CF8198}
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Chris Larson <clarson@kergoth.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] curl: fix native dependency
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
X-List-Received-Date: Tue, 07 Dec 2010 07:56:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PkZyb206IFJpY2hhcmQgUHVyZGllIFttYWlsdG86cnB1cmRpZUBsaW51eC5pbnRlbC5jb21dDQo+
U2VudDogTW9uZGF5LCBEZWNlbWJlciAwNiwgMjAxMCA5OjA0IEFNDQo+DQo+T24gU3VuLCAyMDEw
LTEyLTA1IGF0IDE3OjMyICswODAwLCBUaWFuLCBLZXZpbiB3cm90ZToNCj4+ID5Gcm9tOiBDaHJp
cyBMYXJzb24NCj4+ID5TZW50OiBNb25kYXksIE5vdmVtYmVyIDI5LCAyMDEwIDExOjI1IFBNDQo+
PiA+T24gTW9uLCBOb3YgMjksIDIwMTAgYXQgNToyNSBBTSwgUmljaGFyZCBQdXJkaWUgPHJwdXJk
aWVAbGludXguaW50ZWwuY29tPiB3cm90ZToNCj4+ID4+IEludGVyZXN0aW5nbHkgdGhvdWdoLCBp
ZiBJIGFkZCB0aGlzIHRvIGN1cmwqLmJiOg0KPj4gPj4NCj4+ID4+IEZPTyA9ICJBIg0KPj4gPj4g
Rk9PX2FwcGVuZCA9ICJCIg0KPj4gPj4gRk9PX2FwcGVuZF92aXJ0Y2xhc3MtbmF0aXZlID0gIkMi
DQo+PiA+Pg0KPj4gPj4gYW5kIHRoZW4gImJpdGJha2UgY3VybC1uYXRpdmUgLWUgfCBncmVwIEZP
TyIgKGhlIHJlY2lwZSBoYXMgYQ0KPj4gPj4gQkJDTEFTU0VYVEVORCBuYXRpdmUpIHdoYXQgc2hv
dWxkIEkgc2VlPw0KPj4gPj4NCj4+ID4+IEkgc2VlIEZPTyA9ICJBQiIgd2hpY2ggaXMgbm90IHdo
YXQgSSB0aG91Z2h0IGl0IHdvdWxkIGRvLi4uDQo+PiA+DQo+PiA+SG1tLCB0aGlzIGlzbid0IHdo
YXQgSSdkIGV4cGVjdCBlaXRoZXIuICBJdCdzIGNlcnRhaW5seSBub3Qgd2hhdCB3YXMNCj4+ID5v
cmlnaW5hbGx5IGludGVuZGVkIC0tIF9hcHBlbmRfPGZvbz4gYW5kIF9wcmVwZW5kXzxmb28+IHdl
cmUgYWx3YXlzDQo+PiA+c3VwcG9zZWQgdG8gYWN0IGxpa2Ugbm9ybWFsIF9hcHBlbmQvX3ByZXBl
bmQsIGp1c3QgY29uZGl0aW9uYWwgb25lcy4NCj4NCj5UaGlzIGlzIHdoYXQgSSdkIGhhdmUgZXhw
ZWN0ZWQgdG9vLg0KPg0KPj4gSSBndWVzcyBpdCdzIHJlbGF0ZWQgdG8gYmVsb3cgbGluZXMgKGZy
b20gZmluYWxpemUoKSk6DQo+Pg0KPj4gICAgICAgICAgICAgICAgICAgICAjIG1heWJlIHRoZSBP
VkVSUklERSB3YXMgbm90IHlldCBhZGRlZCBzbyBrZWVwIHRoZSBhcHBlbmQNCj4+ICAgICAgICAg
ICAgICAgICAgICAgaWYgKG8gYW5kIG8gaW4gb3ZlcnJpZGVzKSBvciBub3QgbzoNCj4+ICAgICAg
ICAgICAgICAgICAgICAgICAgIHNlbGYuZGVsVmFyRmxhZyhhcHBlbmQsICJfYXBwZW5kIikNCj4+
ICAgICAgICAgICAgICAgICAgICAgaWYgbyBhbmQgbm90IG8gaW4gb3ZlcnJpZGVzOg0KPj4gICAg
ICAgICAgICAgICAgICAgICAgICAgY29udGludWUNCj4NCj5Db3JyZWN0LCBpdCBpcyB0aGVzZSBs
aW5lcyB0aGF0IGFyZSB0aGUgcHJvYmxlbS4NCj4NCj4+IEZPT19hcHBlbmQgPSAiQiIgaXMgcGFy
c2VkIGludG8gKCJCIiwgTk9ORSkNCj4+IEZPT19hcHBlbmRfdmlydGNsYXNzLW5hdGl2ZSA9ICJD
IiBpcyBwYXJzZWQgaW50byAoIkMiLCB2aXJ0Y2xhc3MtbmF0aXZlKQ0KPj4NCj4+IElmICgiQyIs
IHZpcnRjbGFzcy1uYXRpdmUpIGlzIGVudW1lcmF0ZWQgZmlyc3QsIHRoZSByZXN1bHQgaXMgZGVz
aXJlZDogIkMiIGlzIGFwcGVuZGVkDQo+PiB0byBGT08gd2l0aCAoIkIiLCBOT05FKSBzaW1wbHkg
cmVtb3ZlZC4NCj4+DQo+PiBJZiAoIkIiLCBOT05FKSBpcyBlbnVtZXJhdGVkIGZpcnN0LCB0aGVu
IHRoZSByZXN0IGFwcGVuZGl4ZXMgYXJlIHJlbW92ZWQgdG9vIHdoaWNoDQo+PiBpcyBub3QgZGVz
aXJlZC4NCj4NCj5UaGlzIGlzIGV4YWN0bHkgdGhlIHByb2JsZW0uDQo+DQo+PiBUaGUgbmV0IGVm
ZmVjdCBpcyB0aGF0IHRoZSAxc3QgYXBwZW5kaXggYWx3YXlzIHRha2VzIGVmZmVjdCBvdmVyIHRo
ZSByZXN0IHVubGVzcyBpdA0KPj4gaGFzIGFuIG92ZXJyaWRlIHdoaWNoIGhhc24ndCBiZWVuIGZv
dW5kIHlldC4NCj4NCj5SaWdodC4gSSBoYWQgYSBwbGF5IHdpdGggdGhlIGNvZGUgYW5kIGNhbiBj
b25maXJtIGEgcGF0Y2ggYXMgZm9sbG93cw0KPmZpeGVzIHRoaXMgcHJvYmxlbS4gSSd2ZSBhbHNv
IG1hZGUgaXQgd2FybiB3aGVuIGl0IGZpbmRzIGNvZGUgdGhhdCB3b3VsZA0KPmVmZmVjdCBiZWhh
dmlvdXIuIEZvciBQb2t5IGl0cyB0aHJvd2luZyB1cCBhIHdhcm5pbmcgYWJvdXQgRVhUUkFfT0VN
QUtFDQo+YnV0IGl0cyBhY3R1YWxseSBmaW5lIGFzIHdoaWxzdCB0aGVyZSBpcyBhbiB1bmV4cGFu
ZGVkIG92ZXJyaWRlLCB0aGVyZQ0KPmlzIG5ldmVyIGFueSBfYXBwZW5kIG9yIF9wcmVwZW5kIHRv
IHRyaWdnZXIgdGhpcyBidWcgKHRoZSB3YXJuaW5nIGNhbg0KPnNob3cgZmFsc2UgcG9zaXRpdmVz
KS4gSXQgd291bGQgYmUgbmljZSB0byBzZWUgaWYgT0UgaXMgc3VmZmVyaW5nIGZyb20NCj50aGlz
IHByb2JsZW0gYW55d2hlcmUgYmVmb3JlIHdlIGFjY2VwdCB0aGlzIGZpeCBpbnRvIGJpdGJha2Ug
dXBzdHJlYW0uDQo+SSdsbCBhbHNvIHJlbW92ZSB0aGlzIGVycm9yIGJlZm9yZSB0aGlzIGdvZXMg
aW50byBQb2t5Lg0KPg0KPmh0dHA6Ly9naXQucG9reWxpbnV4Lm9yZy9jZ2l0LmNnaS9wb2t5LWNv
bnRyaWIvY29tbWl0Lz9oPXJwdXJkaWUvYml0YmFrZSZpZD1jNzc0MTAzMDVmDQo+ZTczNmFhMTk1
Y2U3MjBjODMxN2IzOWRhMDU3MDUyDQoNCnllcywgdGhhdCBsb29rcyBhIGNsZWFyIGZpeC4NCg0K
Pg0KPj4gQmVzaWRlcyB0aGlzIHByb2JsZW0sIHRoZXJlJ3MgYWxzbyBubyBjb25zaWRlcmF0aW9u
IGFib3V0IG92ZXJyaWRlIHByaW9yaXR5LiBJdCBjYW4ndA0KPj4gaGFuZGxlIG11bHRpcGxlIG92
ZXJyaWRlcyBvbiBzYW1lIEZPT19hcHBlbmQuDQo+Pg0KPj4gVG8gc29sdmUgaXQsIHdlIHN0aWxs
IG5lZWQgdG8gaXRlcmF0ZSBvdmVycmlkZSBsaXN0IGZyb20gaGlnaGVzdCBwcmlvcml0eSB0byBs
b3dlc3QgZW5kLA0KPj4gYW5kIHRoZW4gY2hvb3NlIHRoZSB2YWx1ZSBmcm9tIHRoZSBvbmUgZmly
c3RseSBtYXRjaGluZyBhbiBvdmVycmlkZS4gTXkgcmVtb3RlDQo+PiBtYWNoaW5lIGlzIGRvd24g
bm93IGFuZCB0aHVzIHVuYWJsZSB0byB2ZXJpZnkgaXQgdGhvdWdoLg0KPg0KPlRoaXMgaXMgYSBn
b29kIHBvaW50IGJ1dCBpdHMgbm90IGEgc2ltcGxlIG9uZSA6KQ0KPg0KPkZPTyA9ICJBIg0KPkZP
T19hcHBlbmRfT1ZFUkEgPSAiQiINCj5GT09fYXBwZW5kX09WRVJCID0gIkMiDQo+DQo+Y291bGQg
cmVzdWx0IGluIEFCQyBvciBBQ0IgZGVwZW5kaW5nIG9uIHdoZXRoZXIgT1ZFUkEgd2FzIGFkZGVk
IHRvDQo+T1ZFUlJJREVTIGxhdGUgb24uIFRoZXJlIGlzbid0IG11Y2ggd2UgY2FuIHByb2JhYmx5
IGRvIGFib3V0IHRoYXQNCj50aG91Z2guDQo+DQo+Rk9PID0gIkEiDQo+Rk9PX2FwcGVuZF9PVkVS
QV9PVkVSQiA9ICJCIg0KPkZPT19hcHBlbmRfT1ZFUkJfT1ZFUkEgPSAiQyINCj4NCj5wbGFpbiB3
b24ndCB3b3JrIGF0IHByZXNlbnQgaWYgSSByZWFkIHRoZSBjb2RlIGNvcnJlY3RseS4gSSdtIG5v
dCBzdXJlDQo+dGhlcmUgaXMgYW4gb3JkZXJpbmcgY29uc3RyYWludCBoZXJlIHRob3VnaCBhcyAi
QUJDIiBpcyB0aGUgY29ycmVjdA0KPmFuc3dlciBhbmQgZWl0aGVyIGFuIE9WRVJSSURFIGlzIGFw
cGVuZGVkIG9yIGl0IGlzbid0IGFuZCBwcmlvcml0eSBpc24ndA0KPmFuIGlzc3VlPw0KDQpBY3R1
YWxseSBteSBvcmlnaW5hbCB0aG91Z2h0IHdhcyBhIGxpdHRsZSBiaXQgZGlmZmVyZW50LiBBdG0g
SSB0aG91Z2h0IHRoYXQgb25seSBvbmUNCmFwcGVuZGl4IHNob3VsZCB0YWtlIGVmZmVjdCwgaS5l
Og0KDQpGT08gPSAiQSINCkZPT19hcHBlbmRfT1ZFUkEgPSAiQiINCkZPT19hcHBlbmRfT1ZFUkIg
PSAiQyINCg0KSWYgT1ZFUkIgaXMgaGlnaGVyIHByaW9yaXR5IHRoYW4gT1ZFUkEsIHRoZSByZXN1
bHQgd291bGQgYmUgIkFDIiB0aGVuLg0KDQpOb3cgb2J2aW91c2x5IG15IGVhcmxpZXIgdGhvdWdo
dCBpcyB3cm9uZy4gRXZlcnkgX2FwcGVuZCBhcHBlbmRzIGEgbmV3DQp2YWx1ZSBpZiB0aGUgb3Zl
cnJpZGUgaXMgdmFsaWQuIDotKQ0KDQpJIGFsc28gdGhvdWdodCB0aGF0IHRoZXJlJ3Mgbm8gb3Jk
ZXJpbmcgY29uc3RyYWludCBpbiB0aGlzIGRlc2lnbi4gZWl0aGVyICJBIEIgQyINCm9yICJBIEMg
QiIgY291bGQgd29yaywgdW5sZXNzIHRoZSBhcHBlbmRpeCBpdHNlbGYgaGFzIG9yZGVyIGNvbnN0
cmFpbnQsIHNheSANCmEgcGF0Y2ggc2VxdWVuY2UuIEJ1dCBJJ20gbm90IHN1cmUgd2hldGhlciB0
aGVyZSdzIHJlYWwgdXNhZ2UgYW5kIHdlIG5lZWQNCnRvIGhhbmRsZSBpdCBvciBub3QuDQoNCj4N
Cj5DaHJpczogQW55IHRob3VnaHRzIG9uIGFueSBvZiB0aGlzPw0KPg0KPkNoZWVycywNCj4NCj5S
aWNoYXJkDQo+DQoNClRoYW5rcw0KS2V2aW4NCg==

