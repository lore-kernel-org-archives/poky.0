Return-Path: <liping.ke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id CB6954C80188
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 21:42:24 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 27 Apr 2011 19:42:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,277,1301900400"; d="scan'208";a="915399402"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga001.fm.intel.com with ESMTP; 27 Apr 2011 19:42:23 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 28 Apr 2011 10:41:31 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 28 Apr 2011 10:41:31 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Thu, 28 Apr 2011 10:40:34 +0800
From: "Ke, Liping" <liping.ke@intel.com>
To: Joshua Lock <josh@linux.intel.com>
Date: Thu, 28 Apr 2011 10:40:33 +0800
Thread-Topic: [poky] Processing extra field requested by bitbake -u in Cache
Thread-Index: AcwFSzMScs+2tdEVStWNi05zHIlWjgAAcJsg
Message-ID: <789F9655DD1B8F43B48D77C5D30659734C09DF27@shsmsx501.ccr.corp.intel.com>
References: <789F9655DD1B8F43B48D77C5D30659734C09DCDE@shsmsx501.ccr.corp.intel.com>
	<1303929543.2242.20.camel@scimitar>
	<789F9655DD1B8F43B48D77C5D30659734C09DE4D@shsmsx501.ccr.corp.intel.com>
	<1303957379.2481.21.camel@scimitar>
In-Reply-To: <1303957379.2481.21.camel@scimitar>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Processing extra field requested by bitbake -u in Cache
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
X-List-Received-Date: Thu, 28 Apr 2011 02:42:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiA+DQo+ID4gQ29uc2lkZXJpbmcgdGhlIGZvbGxvd2luZyB1c2FnZSBzZXF1ZW5jZSwgdWkgMSAt
PiBub24tdWkgKG1hZGUgY2hhbmdlcykgMiAtPg0KPiB1aSAobWFkZSBjaGFuZ2VzKSAgMyAtPiBu
b24tdWkgKG1hZGUgY2hhbmdlcykgNA0KPiA+DQo+ID4gSWYgd2UgdXNlIG9wdGlvbiAxLCBubyBj
YWNoZSBpbnZhbGlkYXRpb24gbmVlZGVkLg0KPiANCj4gSWYgdGhlcmUgYXJlIGNoYW5nZXMgeW91
J2xsIHN0aWxsIG5lZWQgdG8gaW52YWxpZGF0ZSB0aGUgY2FjaGUuDQo+IEkgZ3Vlc3MgeW91J3Jl
IHRyeWluZyAgdG8gc2hvdyBzb21ldGhpbmcgbGlrZSB0aGUgZm9sbG93aW5nPw0KPiANCj4gPT0g
T3B0aW9uIDEgKGFkZGl0aW9uIGNhY2hlIGZpbGUgZm9yIGV4dHJhIGZpZWxkcykNCj4gbGF1bmNo
IGd1aQ0KPiA8bWFrZSBjaGFuZ2VzPg0KPiBsYXVuY2ggZ3VpIChjYWNoZSByZWJ1aWxkKQ0KPiB1
c2UgY2xpDQo+IDxtYWtlIGNoYW5nZXM+DQo+IHVzZSBjbGkgKGNhY2hlIHJlYnVpbGQpDQo+IGxh
dW5jaCBndWkNCj4gdXNlIGNsaQ0KPiBsYXVuY2ggZ3VpDQo+IDxtYWtlIGNoYW5nZXM+DQo+IGxh
dW5jaCBndWkgKGNhY2hlIHJlYnVpbGQpDQo+IHVzZSBjbGkNCj4gDQo+ID0+IDMgY2FjaGUgcmVi
dWlsZHMNCj4gDQo+ID09IE9wdGlvbiAyIChwZXIgdWkgY2FjaGUgZmlsZXMpDQo+IGxhdW5jaCBn
dWkNCj4gPG1ha2UgY2hhbmdlcz4NCj4gbGF1bmNoIGd1aSAoY2FjaGUgcmVidWlsZCkNCj4gdXNl
IGNsaQ0KPiA8bWFrZSBjaGFuZ2VzPg0KPiB1c2UgY2xpIChjYWNoZSByZWJ1aWxkKQ0KPiBsYXVu
Y2ggZ3VpIChjYWNoZSByZWJ1aWxkKQ0KPiB1c2UgY2xpDQo+IGxhdW5jaCBndWkNCj4gPG1ha2Ug
Y2hhbmdlcz4NCj4gbGF1bmNoIGd1aSAoY2FjaGUgcmVidWlsZCkNCj4gdXNlIGNsaSAoY2FjaGUg
cmVidWlsZCkNCj4gDQo+ID0+IDUgY2FjaGUgcmVidWlsZHMNCj4gDQo+IEhvd2V2ZXIgSSBjYW4n
dCBpbWFnaW5lIHBlb3BsZSBzd2l0Y2hpbmcgVUkncyB0aGlzIGZyZXF1ZW50bHkuDQo+IA0KSGks
IEpvc2gNClllcywgSSBhc2tlZCB3aGV0aGVyIHdlIHdvdWxkIGxpa2UgdG8gdXNlIHRoZSBpbWFn
ZSBjcmVhdG9yLCBzb21lIG9mIHRoZW0gc2FpZCB5ZXMsIHRoZXkgd2lsbC4NCldlJ3JlIGFsbCB3
YWl0aW5nIG9uIGZ1bmN0aW9uYWxpdHk6IHNlbGVjdCBhIGltYWdlIHR5cGUsIGFuZCBhZGQgb3Ig
bW92ZSBhIHJlY2lwZSBhbmQgdGhlbiBtYWtlIHJvb3Rmcy4uLg0KSWYgdGhpcyBmdW5jdGlvbmFs
aXR5IGlzIG9rLCB3ZSBndWVzcyBpbWFnZSBjcmVhdG9yIHdvdWxkIGJlIHZlcnkgdXNlZnVsLg0K
SSBndWVzcyBpdCdzIHJlYWxseSB2ZXJ5IGhhcmQgdG8ganVkZ2UgdXNlcnMnIHVzYWdlIHNjZW5h
cmlvPw0KDQpZZXMuIFJlcGFyc2luZyB3aWxsIHRha2UgZXh0cmEgMzBzLiBJIGZvdW5kIGl0J3Mg
YSBoYXJkIGRlY2lzaW9uIHNpbmNlIHdlJ3JlIGFsd2F5cyB0cnlpbmcgdG8gaW1wcm92ZSB0aGUN
ClBlcmZvcm1hbmNlIGFuZCByZWR1Y2UgdGhlIGRpc2sgc2l6ZS4gDQoNCmNyaXBpbmcNCj4gPg0K
PiA+IEJ1dCBpZiB3ZSB1c2Ugb3B0aW9uIDIsIHdlIG5lZWQgaW52YWxpZGF0ZSBjYWNoZSBlYWNo
IHRpbWUuIEkgY29sbGVjdCBzb21lDQo+IGxvY2FsIGZlZWRiYWNrIGhlcmUsIHRoZXkgc2FpZCBp
dCdzIHVuYmVhcmFibGUuDQo+IA0KPiBXaGF0J3MgdW5iZWFyYWJsZT8gVGhlIGNhY2hlIHJlYnVp
bGRpbmcgdGltZT8NCg==

