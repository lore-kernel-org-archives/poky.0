Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9B3344C803D6
	for <poky@yoctoproject.org>; Sun,  7 Nov 2010 18:50:03 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 07 Nov 2010 16:50:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,311,1286175600"; d="scan'208";a="855111638"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 07 Nov 2010 16:50:02 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 8 Nov 2010 08:49:15 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Mon, 8 Nov 2010
	08:49:14 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Date: Mon, 8 Nov 2010 08:49:04 +0800
Thread-Topic: [poky] [PULL] two sstate fixes
Thread-Index: Act+vED422e6f+f1Sw2BVkPse2sUEgAIjkGg
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D190FD851@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504D190FD631@shsmsx502.ccr.corp.intel.com>
	<1289162495.28481.16096.camel@rex>
In-Reply-To: <1289162495.28481.16096.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: Af3E AyJh BJja DYmE EDDm ErMR FFmh F5uo Jt/f KAHr KdkQ
	K/ZW MJDC NJ+N O9tQ O/DY; 2;
	cABvAGsAeQBAAHkAbwBjAHQAbwBwAHIAbwBqAGUAYwB0AC4AbwByAGcAOwByAHAAdQByAGQAaQBlAEAAbABpAG4AdQB4AC4AaQBuAHQAZQBsAC4AYwBvAG0A;
	Sosha1_v1; 7; {3E3B3026-299D-4EC2-8B50-28B63F6F8CC1};
	awBlAHYAaQBuAC4AdABpAGEAbgBAAGkAbgB0AGUAbAAuAGMAbwBtAA==; Mon,
	08 Nov 2010 00:49:04 GMT;
	UgBFADoAIABbAHAAbwBrAHkAXQAgAFsAUABVAEwATABdACAAdAB3AG8AIABzAHMAdABhAHQAZQAgAGYAaQB4AGUAcwA=
x-cr-puzzleid: {3E3B3026-299D-4EC2-8B50-28B63F6F8CC1}
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PULL] two sstate fixes
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
X-List-Received-Date: Mon, 08 Nov 2010 00:50:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PkZyb206IFJpY2hhcmQgUHVyZGllIFttYWlsdG86cnB1cmRpZUBsaW51eC5pbnRlbC5jb21dDQo+
U2VudDogTW9uZGF5LCBOb3ZlbWJlciAwOCwgMjAxMCA0OjQyIEFNDQo+DQo+T24gRnJpLCAyMDEw
LTExLTA1IGF0IDE1OjUzICswODAwLCBUaWFuLCBLZXZpbiB3cm90ZToNCj4+IG1ldGEvY2xhc3Nl
cy9wYWNrYWdlLmJiY2xhc3MgfCAgICAxICsNCj4+ICBtZXRhL2NvbmYvZGlzdHJvL3Bva3kuY29u
ZiAgIHwgICAgMiArLQ0KPj4gIDIgZmlsZXMgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRl
bGV0aW9uKC0pDQo+Pg0KPj4gY29tbWl0IGJiOWQ0ZWZhNDA3NmNmY2YwOTk4ZWNhZmI2ZDZiMDk2
OWI5N2QyMjQNCj4+IEF1dGhvcjogS2V2aW4gVGlhbiA8a2V2aW4udGlhbkBpbnRlbC5jb20+DQo+
PiBEYXRlOiAgIEZyaSBOb3YgNSAxNToxNjo1MCAyMDEwICswODAwDQo+Pg0KPj4gICAgIHBva3ku
Y29uZjogYWRkIFBXRCB0byBCQl9IQVNIQkFTRV9XSElURUxJU1QNCj4+DQo+PiAgICAgV2l0aG91
dCBkb2luZyB0aGlzIEkgY2FuJ3QgcmV1c2UgcHJlYnVpbHRzIGdlbmVyYXRlZCBmcm9tIG9uZSBk
aXJlY3RvcnkgaW4gYW5vdGhlcg0KPj4gICAgIGJ1aWxkIGRpcmVjdG9yeSB3aGljaCBpcyByZWFs
bHkgbm90IGNvbWZvcnRhYmxlIGZvciBkZXZlbG9wZXJzLiBEdWUgdG8gZGlmZmVyZW5jZQ0KPj4g
ICAgIG9uIFBXRCB2YXJpYWJsZSwgYmFzZSBoYXNoIGJlY29tZXMgZGlmZmVyZW50IGZvciBldmVy
eSBzc3RhdGUgcGFja2FnZS4NCj4+DQo+PiAgICAgU28gaGVyZSBQV0QgaXMgYWRkZWQgdG8gdGhl
IGhhc2UgYmFzZSB3aGl0ZWxpc3QsIHdoaWNoIG1ha2VzIG1vc3QgcHJlYnVpbHRzIHJldXNhYmxl
DQo+PiAgICAgbm93IGluIGEgZGlmZmVyZW50IGJ1aWxkIGRpcmVjdG9yeS4gSG93ZXZlciB0aGVy
ZSBzdGlsbCByZW1haW5zIG9uZSBpc3N1ZSBhYm91dA0KPj4gICAgIGRvX3BvcHVsYXRlX3N5c3Jv
b3Qgc3N0YXRlIHBhY2thZ2UuIEFic29sdXRlIHBhdGggaXMgZW5jb2RlZCBpbiB0aGlzIHRhc2sg
d2hpY2gNCj4+ICAgICB0aGVuIGJsb2NrcyByZXVzZSBvbiB0aGVtLiBQZXJoYXBzIHdlIG5lZWQg
c29tZSByZWRlc2lnbiBmb3IgZG9fcG9wdWxhdGVfc3lzcm9vdA0KPmludG8NCj4+ICAgICB0d28g
c3RhZ2VzLCB3aXRoIGFsbCBhYnNvbHV0ZSBwYXRoIHJlbGF0ZWQgb3BlcmF0aW9ucyBtb3ZlZCB0
byB0aGUgMm5kIHN0YWdlLiBUaGlzDQo+PiAgICAgd2F5IHRoZW4gdGhlIDFzdCBzdGFnZSBjYW4g
YmUgcmV1c2VkLg0KPg0KPj4gICAgIFBhcnRpYWxseSBmaXggW0JVR0lEICM1MjJdDQo+Pg0KPj4g
ICAgIFNpZ25lZC1vZmYtYnkgS2V2aW4gVGlhbiA8a2V2aW4udGlhbkBpbnRlbC5jb20+DQo+Pg0K
Pj4gY29tbWl0IDU5OWNjZGZhOWQ1M2U0M2ZiMmU0NGZkZmQ1N2RlNWQ5MTg2ODQyOGINCj4+IEF1
dGhvcjogS2V2aW4gVGlhbiA8a2V2aW4udGlhbkBpbnRlbC5jb20+DQo+PiBEYXRlOiAgIFR1ZSBP
Y3QgMjYgMTU6NTQ6NDMgMjAxMCArMDgwMA0KPj4NCj4+ICAgICBwYWNrYWdlLmJiY2xhc3M6IG1h
a2Ugc3VyZSAnc3lzcm9vdHMnIGNyZWF0ZWQgYmVmb3JlIGxvY2tmaWxlDQo+Pg0KPj4gICAgIHBh
Y2thZ2Ugc3N0YXRlIHJlcXVpcmVzIGEgbG9jayB1bmRlciBzeXNyb290cy8sIHdoaWNoIGhvd2V2
ZXIgbWF5IG5vdCBiZQ0KPj4gICAgIGNyZWF0ZWQgd2hlbiBzc3RhdGVfc2V0c2NlbmUgZnVuY3Rp
b25zIGFyZSBleGVjdXRlZCBhbmQgdGhlbiBjYXVzZXMgZmFpbHVyZXMuDQo+PiAgICAgaGVyZSB3
ZSBtYWtlIHN1cmUgJ3N5c3Jvb3RzJyBjcmVhdGVkIGJlZm9yZSBkb19wYWNrYWdlX3NldHNjZW5l
IGlzIGV4ZWN1dGVkLg0KPj4NCj4+ICAgICBTaWduZWQtb2ZmLWJ5OiBLZXZpbiBUaWFuIDxrZXZp
bi50aWFuQGludGVsLmNvbT4NCj4+IFB1bGwgVVJMOiBodHRwOi8vZ2l0LnBva3lsaW51eC5vcmcv
Y2dpdC5jZ2kvcG9reS1jb250cmliL2xvZy8/aD10ay9tYXN0ZXINCj4NCj5Hb29kIGNhdGNoZXMs
IEkndmUgbWVyZ2VkIHRoZXNlLCB0aGFua3MhDQo+DQo+WW91J3JlIHJpZ2h0IGJ0dywgd2Ugc2hv
dWxkbid0IGJlIHVzaW5nIGhhcmRjb2RlZCBwYXRocyBhbmQgd2Ugc2hvdWxkDQo+Zml4IHRoYXQu
IENhbiB5b3UgY29uZmlybSB5b3Ugd2VyZSB1c2luZyBzdGFnaW5nIHBhY2thZ2VzIGZyb20gYSBy
ZWNlbnQNCj5wb2t5IGJ1aWxkIHRob3VnaCAoMC45IHJlbGVhc2UgYXQgbGVhc3QpIGFzIHRoZXJl
IHdlcmUgc29tZSBidWdzIGZpeGVkDQo+aW4gdGhhdCBhcmVhIGNvbWluZyB1cCB0byByZWxlYXNl
Lg0KPg0KDQpJIGZvcmdvdCB0aGUgZXhhY3QgY29tbWl0IGFmdGVyIHRoZSByZWJhc2UgYmVmb3Jl
IHNlbmRpbmcgcHVsbCByZXF1ZXN0LCBidXQgSSBrbm93DQppdCdzIGFyb3VuZCB0aGUgMC45IHJl
bGVhc2UuIFNvIEknbGwgbWFrZSBhbm90aGVyIGJ1aWxkIHRvIG1ha2Ugc3VyZSBpdCdzIHN0aWxs
IHRoZSBwcm9ibGVtLiA6LSkNCg0KVGhhbmtzDQpLZXZpbg0K

