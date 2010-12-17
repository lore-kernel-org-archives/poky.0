Return-Path: <kevin.tian@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id D4DF04C81081
	for <poky@pokylinux.org>; Thu, 16 Dec 2010 20:48:28 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 Dec 2010 18:48:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,358,1288594800"; d="scan'208";a="869162806"
Received: from unknown (HELO pgsmsx602.gar.corp.intel.com) ([10.221.43.81])
	by fmsmga001.fm.intel.com with ESMTP; 16 Dec 2010 18:48:27 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 17 Dec 2010 10:48:10 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 17 Dec 2010 10:48:09 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Fri, 17 Dec 2010 10:48:07 +0800
Thread-Topic: [poky] about 'noexec' message
Thread-Index: AcudNKa5dm3ZRMmkQbq1P74zRWZejQAXrFZw
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D5F4098B7@shsmsx502.ccr.corp.intel.com>
References: <0d30dc$kf5f5e@orsmga001.jf.intel.com>
	<1292404338.26558.1582.camel@rex> <4D08E868.6090606@mlbassoc.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F40965E@shsmsx502.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D5F4096A4@shsmsx502.ccr.corp.intel.com>
	<1292512754.26558.3993.camel@rex>
In-Reply-To: <1292512754.26558.3993.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "paul.eggleton@linux.intel.com" <paul.eggleton@linux.intel.com>,
	"poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: about 'noexec' message
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
X-List-Received-Date: Fri, 17 Dec 2010 02:48:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PkZyb206IFJpY2hhcmQgUHVyZGllIFttYWlsdG86cmljaGFyZC5wdXJkaWVAbGludXhmb3VuZGF0
aW9uLm9yZ10NCj5TZW50OiBUaHVyc2RheSwgRGVjZW1iZXIgMTYsIDIwMTAgMTE6MTkgUE0NCj4N
Cj5PbiBUaHUsIDIwMTAtMTItMTYgYXQgMTc6NDggKzA4MDAsIFRpYW4sIEtldmluIHdyb3RlOg0K
Pj4gPkZyb206IFRpYW4sIEtldmluDQo+PiA+U2VudDogVGh1cnNkYXksIERlY2VtYmVyIDE2LCAy
MDEwIDQ6NDYgUE0NCj4+ID4NCj4+ID4+RnJvbTogR2FyeSBUaG9tYXMgW21haWx0bzpnYXJ5QG1s
YmFzc29jLmNvbV0NCj4+ID4+U2VudDogVGh1cnNkYXksIERlY2VtYmVyIDE2LCAyMDEwIDEyOjEw
IEFNDQo+PiA+Pg0KPj4gPj5Ob3RlIHRvIFJpY2hhcmQ6IEknbSBzdGlsbCBzZWVpbmcgYSB0b24g
b2YgTm9leGVjIG1lc3NhZ2VzIGV2ZXJ5IHRpbWUgSSByZWJ1aWxkDQo+PiA+PmEgcGFja2FnZSBp
biB0aGlzIHRyZWUuICBJIHRob3VnaHQgSSB1bmRlcnN0b29kIHlvdSB0byBzYXkgdGhleSBzaG91
bGQgaGFwcGVuDQo+PiA+PmF0IG1vc3Qgb25jZT8NCj4+ID4+DQo+PiA+DQo+PiA+WWVzLCBSUCdz
IHByZXZpb3VzIHBhdGNoIGRvZXMgcmVkdWNlIHRoZSBOb2V4ZWMgbWVzc2FnZXMgYSBsb3QuIEhv
d2V2ZXIgdGhlcmUNCj4+ID5yZW1haW5zIG9uZSBwcm9ibGVtLiBDdXJyZW50IHN0YW1wIGZpbGUg
Y2hlY2sgYWxzbyBjYWxjdWxhdGVzIHRoZSBzdGFtcCBvZiB0YXNrcw0KPj4gPmRlcGVuZGVkIG9u
LiBJZiB0aG9zZSBzdGFtcHMgYXJlIG5ld2VyIG9yIG5vdCBleGlzdCwgdGhlIGNoZWNrIHJldHVy
biBGYWxzZSB0bw0KPj4gPmluZGljYXRlIG1pc21hdGNoZWQgc3RhbXAuDQo+PiA+DQo+PiA+SW4g
J25vZXhlYycgY2FzZSwgc29tZSAnbm9leGVjJyB0YXNrcyBoYXBwZW4gdG8gaGF2ZSBzb21lIGRl
cGVuZGVudCB0YXNrcw0KPj4gPnNraXBwZWQgd2hpY2ggdGh1cyBkb24ndCBnZW5lcmF0ZSBzdGFt
cCBmaWxlcy4gVGhpcyBtYWtlcyB0aGUgY2hlY2sgYWx3YXlzDQo+PiA+ZmFpbGVkIGZvciB0aG9z
ZSAnbm9leGVjJyB0YXNrcyBhbmQgdGh1cyB5b3UgYWx3YXlzIG9ic2VydmUgdGhlIE5vZXhlYyBt
ZXNzYWdlcy4NCj4+ID4NCj4+ID5JIGhhdmUgYSBwYXRjaCB0byBmaXggdGhhdCwgYW5kIHdpbGwg
c2VuZCBvdXQgc29vbi4gOi0pDQo+PiA+DQo+Pg0KPj4gVGhvdWdoIEkgbWFuYWdlZCB0byByZW1v
dmUgdGhlIHJlc3QgJ25vZXhlYycgbWVzc2FnZXMgYnkgYWRkaW5nIGJlbG93IGluDQo+PiBjaGVj
a19zdGFtcF90YXNrKCk6DQo+Pg0KPj4gCWlmICdub2V4ZWMnIGluIHRhc2tkZXAgYW5kIHRhc2tu
YW1lIGluIHRhc2tkZXBbJ25vZXhlYyddDQo+PiAJCXJldHVybiBUcnVlDQo+Pg0KPj4gSSByZWFs
aXplZCB0aGVyZSdzIG9uZSBwb3RlbnRpYWwgcmlzay4gVGhvdWdoICdub2V4ZWMnIHRhc2sgaXMg
bm90IGV4ZWN1dGVkIGF0IGFsbCwNCj4+IGl0J3MgY29uc2lkZXJlZCB0byBiZSBhIG5vcm1hbCB0
YXNrIHdoaWNoIG5vcm1hbGx5IHBsYXlzIHRoZSByb2xlIG9mIHRoZSBzeW5jDQo+PiBwb2ludHMu
IElkZWFsbHkgaWYgdGhlcmUncmUgY2hhbmdlcyBvbiBzdGFtcCBmaWxlIG9mIHRhc2tzIHRoYXQg
dGhpcyAnbm9leGVjJyB0YXNrDQo+PiBkZXBlbmRzIG9uLCB3ZSBzdGlsbCB3YW50IHRvIGdlbmVy
YXRlIGEgbmV3IHN0YW1wIGZpbGUgZm9yIHRoZSAnbm9leGVjJyB0YXNrLg0KPj4gVGhhdCB3YXkg
b3RoZXIgdGFza3MgZGVwZW5kaW5nIG9uIHRoYXQgJ25vZXhlYycgdGFzayB3aWxsIHRyaWdnZXIg
cmVidWlsZCB0b28uDQo+Pg0KPj4gSWYgd2UgYWx3YXlzIHRha2UgJ25vZXhlYycgdGFzayBhd2F5
IGZyb20gdGhlIGNvbXBhcmlzb24sIGFib3ZlIGNoYWluIGVmZmVjdA0KPj4gZGlzYXBwZWFycy4N
Cj4+DQo+PiBDdXJyZW50IGNvbXBhcmlzb24gY29uZGl0aW9uIGZvciBzdGFtcCBmaWxlcyBpczoN
Cj4+DQo+PiAJaWYgbm90IHQyIG9yIHQxIDwgdDINCj4+IAkJaXNjdXJyZW50ID0gRmFsc2UNCj4+
DQo+PiBJJ20gbm90IHN1cmUgdW5kZXIgd2hpY2ggY2FzZSBhIHN0YW1wIGZpbGUgKHQyKSBkb2Vz
bid0IGV4aXN0LCBhbmQgd2hldGhlciBpdCdzDQo+PiBzYWZlIHRvIHVzZToNCj4+IAlpZiBub3Qg
dDIgYW5kIG5vdCBub2V4ZWMgb3IgdDIgYW5kIHQxIDwgdDI6DQo+PiAJCWlzY3VycmVudCA9IEZh
bHNlDQo+Pg0KPj4gdG8gY2hlY2sgc3RhbXAgZmlsZSBmb3IgJ25vZXhlYycgdGFzay4NCj4+DQo+
PiBPciBhbHRlcm5hdGl2ZSBpcyB0byBzaW1wbHkgY29udmVydCBiYi5ub3RlIHRvIGJiLmRlYnVn
IGZvciAnbm9leGVjJyBtZXNzYWdlLiA6LSkNCj4NCj5JJ3ZlIGxvb2tlZCBhdCB0aGlzIGFuZCBy
ZWFsaXNlZCB0aGF0IHNjZW5lcXVldWUgc2hvdWxkIG5vdCBiZSB0cnlpbmcgdG8NCj5za2lwIG5v
ZXhlYyB0YXNrcyBhcyB0aGlzIG1lYW5zIHRoZSBzdGFtcHMgZG9uJ3QgZ2V0IGdlbmVyYXRlZC4g
SW5zdGVhZCwNCj5pdCBzaG91bGQganVzdCBmYWlsb3V0cmlnaHQgYW5kIGxldCB0aGUgc2Vjb25k
YXJ5IGNvZGUgaW4gdGhlIG1haW4NCj5ydW5xdWV1ZSBkZWFsIHdpdGggdGhlbSBhdCB0aGUgY29y
cmVjdCBwb2ludCBpbiB0aW1lLg0KPg0KPkkndmUgcHVzaGVkIHRoaXMgY2hhbmdlLCBsZXRzIHNl
ZSBpZiBpdCBzb2x2ZXMgdGhlIGlzc3VlcyBwZW9wbGUgaGF2ZQ0KPmJlZW4gc2VlaW5nLiBJdCBj
ZXJ0YWlubHkgbWFrZXMgdGhlIG91dHB1dCBmcm9tIGJpdGJha2UgbW9yZSByZWFkYWJsZQ0KPmFn
YWluLg0KPg0KDQp5ZXMsIHRoaXMgbWFrZXMgdGhlIG91dHB1dCBwcmV0dHkgY2xlYW4gbm93LiB0
aGFua3MgZm9yIHRoZSBmaXguDQoNCkluIHRoZSBtZWFudGltZSBJJ20gY3VyaW91cyBob3cgeW91
ciBmaXggc29sdmVzIHRoZSBpc3N1ZSwgYXMgSSBjYW4ndCBtYXAgeW91cg0KY29tbWl0IG1lc3Nh
Z2UgdG8gdGhlIGNoYW5nZS4gU29ycnkgdGhhdCBJIG1heSBuZWVkIHlvdXIgaGVscCBoZXJlLiA6
LSkNCg0KSXQgbG9va3MgdGhhdCB3aXRoIHlvdXIgZml4IHRob3NlICdub2V4ZWMnIHNldHNjZW5l
IHRhc2tzIHdoaWNoIGFyZSBvcmlnaW5hbGx5IHNraXBwZWQNCm5vdyBzdGlsbCBlbnRlciB0aGUg
bWFpbiBydW5xdWV1ZSBsb2dpYyB0byBnZXQgdGhlaXIgc3RhbXBzIGZpbGUgZ2VuZXJhdGVkLCBh
bmQgdGh1cw0KbGF0ZXIgd2hlbiBub3JtYWwgJ25vZXhlYycgdGFza3MgYXJlIGNoZWNrZWQgYWxs
IGRlcGVuZGVudCB0YXNrcyBoYXZlIGdvdCB0aGVpcg0Kc3RhbXAgZmlsZXMgcmVhZHkuIElzIGl0
IHRydWU/DQoNCkhvd2V2ZXIgSSBkaWRuJ3Qgc2VlIG11Y2ggZGlmZmVyZW5jZSBiZXR3ZWVuIHRh
c2tfZmFpbG91dHJpZ2h0IGFuZCB0YXNrX3NraXAsIHdoaWNoDQpuZWl0aGVyIHRvdWNoZXMgdGhl
IHN0YW1wIGZpbGUuIENvdWxkIHlvdSBzaGVkIHNvbWUgbGlnaHQgaG93IHRoaXMgaW1wYWN0cyB0
aGUgbWFpbiANCnJ1bnF1ZXVlIGxvZ2ljLiBJIHNlYXJjaCB0aGUgY29kZSwgaXQgbG9va3MgdGhh
dCBvbmx5IHdoZW4gYSB0YXNrIGlzIGFjdHVhbGx5IHNjaGVkdWxlZA0KdG8gcnVuICgiZXhlY190
YXNrIikgbWFrZV9zdGFtcCgpIGlzIGludm9rZWQuLi4NCg0KTGFzdCBxdWVzdGlvbiBmb3IgdGhl
IGNoZWNrX3N0YW1wX3Rhc2sgY29uZGl0aW9uOg0KDQorICAgICAgICAgICAgICAgICAgICBpZiBu
b3QgdDI6DQorICAgICAgICAgICAgICAgICAgICAgICAgYmIubXNnLmRlYnVnKDIsIGJiLm1zZy5k
b21haW4uUnVuUXVldWUsICJTdGFtcGZpbGUgJXMgZA0KICAgICAgICAgICAgICAgICAgICAgICAg
IGlzY3VycmVudCA9IEZhbHNlDQorICAgICAgICAgICAgICAgICAgICBpZiB0MSA8IHQyOg0KKyAg
ICAgICAgICAgICAgICAgICAgICAgIGJiLm1zZy5kZWJ1ZygyLCBiYi5tc2cuZG9tYWluLlJ1blF1
ZXVlLCAiU3RhbXBmaWxlICVzIDwNCisgICAgICAgICAgICAgICAgICAgICAgICBpc2N1cnJlbnQg
PSBGYWxzZQ0KKw0KDQpVbmRlciB3aGljaCBjYXNlIGEgdGFzayBkZXBlbmRlZCBieSBvdGhlcnMg
bWF5IG5vdCBnZXQgaXRzIHN0YW1wIGZpbGUgcmVhZHk/DQoNClRoYW5rcw0KS2V2aW4NCg==

