Return-Path: <lianhao.lu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8D8D74C811A8
	for <poky@yoctoproject.org>; Thu, 16 Dec 2010 20:31:29 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 16 Dec 2010 18:31:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,358,1288594800"; d="scan'208";a="869159175"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga001.fm.intel.com with ESMTP; 16 Dec 2010 18:31:28 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 17 Dec 2010 10:30:40 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 17 Dec 2010 10:30:40 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 17 Dec 2010 10:30:40 +0800
From: "Lu, Lianhao" <lianhao.lu@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Date: Fri, 17 Dec 2010 10:30:37 +0800
Thread-Topic: [poky] [PATCH 1/1] meta-environment: Added package of
	meta-environment-${TARGET_ARCH} for environment files.
Thread-Index: AcudOVvAudfeX3tJQXW0i/OfenT4KAAU7rjg
Message-ID: <C10D3FB0CD45994C8A51FEC1227CE22F1D26A61B52@shsmsx502.ccr.corp.intel.com>
References: <cover.1292464057.git.lianhao.lu@intel.com>
	<39f0fc7689c9ddf429a5a2fd4fad7e74c0d98bb6.1292464057.git.lianhao.lu@intel.com>
	<1292514596.26558.4040.camel@rex>
In-Reply-To: <1292514596.26558.4040.camel@rex>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] meta-environment: Added package of meta-environment-${TARGET_ARCH} for environment files.
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
X-List-Received-Date: Fri, 17 Dec 2010 02:31:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUmljaGFyZCwNCg0KUmljaGFyZCBQdXJkaWUgd3JvdGUgb24gMjAxMC0xMi0xNjoNCj4gSGkg
TGlhbmhhbywNCj4gDQo+IE9uIFRodSwgMjAxMC0xMi0xNiBhdCAwOTo0MCArMDgwMCwgTGlhbmhh
byBMdSB3cm90ZToNCj4+IFtCVUdJRCAjNTY1XSBGaXhpbmcgYnVnICM1NjUsIGFkZGVkIHBhY2th
Z2Ugb2YNCj4+IG1ldGEtZW52aXJvbm1lbnQtJHtUQVJHRVRfQVJDSH0gZm9yIGVudmlyb25tZW50
IGZpbGVzIHVzZWQgYnkNCj4+IGNyb3NzLWNhbmFkaWFuIHRvb2xjaGFpbi4NCj4+IA0KPj4gQWxz
byBjb3JyZWN0ZWQgdGhlIHNpdHVhdGlvbiBvZiBlbXB0eSBjb25maWcgc2l0ZSBmaWxlIGZvciB0
YXJnZXQuDQo+PiANCj4+IFNpZ25lZC1vZmYtYnk6IExpYW5oYW8gTHUgPGxpYW5oYW8ubHVAaW50
ZWwuY29tPg0KPj4gLS0tDQo+PiAgbWV0YS9jbGFzc2VzL3Rvb2xjaGFpbi1zY3JpcHRzLmJiY2xh
c3MgICAgICAgICB8ICAgMzIgKysrKysrKysrKw0KPj4gIG1ldGEvcmVjaXBlcy1jb3JlL21ldGEv
bWV0YS1lbnZpcm9ubWVudC5iYiAgICAgfCAgIDc1DQo+PiAgKysrKysrKysrKysrKysrKysrKysr
KysrDQo+PiAgbWV0YS9yZWNpcGVzLWNvcmUvdGFza3MvdGFzay1jcm9zcy1jYW5hZGlhbi5iYiB8
ICAgIDEgKyAzIGZpbGVzDQo+PiAgY2hhbmdlZCwgMTA4IGluc2VydGlvbnMoKyksIDAgZGVsZXRp
b25zKC0pICBjcmVhdGUgbW9kZQ0KPj4gMTAwNjQ0IG1ldGEvcmVjaXBlcy1jb3JlL21ldGEvbWV0
YS1lbnZpcm9ubWVudC5iYg0KPiANCj4gVGhpcyByZWNpcGUgbG9va3MgY29tcGxleCBhbmQgc2Vl
bXMgdG8gaW5jbHVkZSBhIGxvdCBvZiBjcm9zcy1jYW5hZGlhbi5iYmNsYXNzLg0KPiANCj4gV291
bGQgaXQgYmUgcG9zc2libGUgdG8gaW5oZXJpdCB0aGF0IGNsYXNzIGluc3RlYWQgYW5kIHRyeSBh
bmQga2VlcA0KPiB0aGUgcmVjaXBlIHNpbXBsZXI/IFlvdSBjYW4gYWx3YXlzIGRyb3AgdGhlICJt
ZXRhIiBpbmhlcml0LiBJJ20NCj4gd29ycmllZCBhYm91dCB0aGUgYW1vdW50IG9mIGNvZGUgZHVw
bGljYXRpb24gaGVyZS4NCj4gDQoNClRoZSByZWFzb24gSSBkaWRuJ3QgaW5oZXJpdCB0aGUgY3Jv
c3MtY2FuYWRpYW4uYmJjbGFzcyBpbiBtZXRhLWVudmlyb25tZW50LmJiIGlzIHRoYXQgYnkgZG9p
bmcgdGhpcywgdGhlcmUgd291bGQgYmUgYSBwcm9ibGVtIGluIHRoZSBzaXRlaW5mby5iYmNsYXNz
IHdoaWNoIGlzIHVzZWQgdG8gZ2VuZXJhdGUgdGhlIGF1dG9jb25mIHNpdGUgY29uZmlnIGZpbGUg
Zm9yIHRoZSB0YXJnZXQuIEl0IHVzZXMgdGhlIHZhcmlhYmxlcyBvZiBIT1NUX0FSQ0ggYW5kIEhP
U1RfT1Mgd2hpY2ggaXMgcmVwbGFjZWQgYnkgU0RLX0FSQ0ggYW5kIFNES19PUyByZXNwZWN0aXZl
bHkgaW4gY3Jvc3MtY2FuYWRpYW4uYmJjbGFzcy4gSWYgd2UgaW5oZXJpdCB0aGUgY3Jvc3MtY2Fu
YWRpYW4sIHdlIG5lZWQgdG8gZHVwbGljYXRlIHRoZSBjb2RlIGluIHNpdGVpbmZvLmJiY2xhc3Mg
dG8gdXNlIFRBUkdFVF9BUkNIKE9TKSBpbnN0ZWFkIG9mIHRoZSBIT1NUX0FSQ0goT1MpLiBTbyB3
ZSBkdXBsaWNhdGUgZWl0aGVyIGZvciBzaXRlaW5mby5iYmNsYXNzIG9yIGZvciBjcm9zcy1jYW5h
ZGlhbi5iYmNsYXNzLiBBbnkgY29tbWVudD8NCg0KQmVzdCBSZWdhcmRzLA0KLUxpYW5oYW8gTHUN
Cg0K

