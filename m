Return-Path: <dexuan.cui@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id E154B4C803D6
	for <poky@yoctoproject.org>; Sun, 13 Mar 2011 19:55:19 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 13 Mar 2011 17:55:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,312,1297065600"; d="scan'208";a="612518897"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga002.jf.intel.com with ESMTP; 13 Mar 2011 17:55:18 -0700
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 14 Mar 2011 08:54:54 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 14 Mar 2011 08:54:53 +0800
From: "Cui, Dexuan" <dexuan.cui@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Mon, 14 Mar 2011 08:54:52 +0800
Thread-Topic: [poky] [PATCH 1/1] sugarbay.conf: add mesa library: correct
	previous wrong modification
Thread-Index: Acvf4ZDBbk+u5RZnRXyCDnumSskn5wCAH4yw
Message-ID: <1865303E0DED764181A9D882DEF65FB68682734EFB@shsmsx502.ccr.corp.intel.com>
References: <cover.1299843601.git.dexuan.cui@intel.com>
	<e8db1316621f048126d08de9ce2b0b7e82cb5792.1299843601.git.dexuan.cui@intel.com>
In-Reply-To: <e8db1316621f048126d08de9ce2b0b7e82cb5792.1299843601.git.dexuan.cui@intel.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-CN, en-US
MIME-Version: 1.0
Cc: "Wold, Saul" <saul.wold@intel.com>
Subject: Re: [PATCH 1/1] sugarbay.conf: add mesa library: correct	previous wrong modification
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
X-List-Received-Date: Mon, 14 Mar 2011 00:55:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

U29ycnkgLS0gIGl0IHNob3VsZCBiZSAiW1lPQ1RPICM3MjddIiByYXRoZXIgdGhhbiAiW0JVR0lE
ICM3MjddIiBub3cuLi4NClBsZWFzZSBjb3JyZWN0IHRoZSB0eXBvIHdoZW4gYWNjZXB0aW5nIHRo
ZSBwYXRjaC4NCg0KVGhhbmtzLA0KLS0gRGV4dWFuDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0t
LS0tDQpGcm9tOiBwb2t5LWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZyBbbWFpbHRvOnBva3ktYm91
bmNlc0B5b2N0b3Byb2plY3Qub3JnXSBPbiBCZWhhbGYgT2YgRGV4dWFuIEN1aQ0KU2VudDogMjAx
McTqM9TCMTHI1SAxOTo0Mg0KVG86IHBva3lAeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogW3Bv
a3ldIFtQQVRDSCAxLzFdIHN1Z2FyYmF5LmNvbmY6IGFkZCBtZXNhIGxpYnJhcnk6IGNvcnJlY3Qg
cHJldmlvdXMgd3JvbmcgbW9kaWZpY2F0aW9uDQoNCkZyb206IERleHVhbiBDdWkgPGRleHVhbi5j
dWlAaW50ZWwuY29tPg0KDQpUaGlzIGZpeGVzIFtCVUdJRCAjNzI3XQ0KDQo3NjZjMjBlZjIxNDFk
MDU4ZjE1MDc0ZTg2NjMxM2FiMTE5MzMyZWE4IGFkZGVkDQptZXNhLWRyaS1kcml2ZXItaTkxNSwg
YnV0IGFjdHVhbGx5IGl0IHNob3VsZCBiZQ0KbWVzYS1kcmktZHJpdmVyLWk5NjUuDQoNClNpZ25l
ZC1vZmYtYnk6IERleHVhbiBDdWkgPGRleHVhbi5jdWlAaW50ZWwuY29tPg0KU2lnbmVkLW9mZi1i
eTogS2UgWXUgPGtlLnl1QGludGVsLmNvbT4NCi0tLQ0KIG1ldGEtc3VnYXJiYXkvY29uZi9tYWNo
aW5lL3N1Z2FyYmF5LmNvbmYgfCAgICAyICstDQogMSBmaWxlcyBjaGFuZ2VkLCAxIGluc2VydGlv
bnMoKyksIDEgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9tZXRhLXN1Z2FyYmF5L2NvbmYv
bWFjaGluZS9zdWdhcmJheS5jb25mIGIvbWV0YS1zdWdhcmJheS9jb25mL21hY2hpbmUvc3VnYXJi
YXkuY29uZg0KaW5kZXggOTJkN2M1NC4uMDA1MzRhNSAxMDA2NDQNCi0tLSBhL21ldGEtc3VnYXJi
YXkvY29uZi9tYWNoaW5lL3N1Z2FyYmF5LmNvbmYNCisrKyBiL21ldGEtc3VnYXJiYXkvY29uZi9t
YWNoaW5lL3N1Z2FyYmF5LmNvbmYNCkBAIC0yOCw3ICsyOCw3IEBAIFhTRVJWRVIgPz0gInhzZXJ2
ZXIteGY4Ni1kcmktbGl0ZSBcDQogICAgICAgICAgICB4Zjg2LWlucHV0LXN5bmFwdGljcyBcDQog
ICAgICAgICAgICB4Zjg2LXZpZGVvLWludGVsIFwNCiAgICAgICAgICAgIG1lc2EtZHJpIFwNCi0g
ICAgICAgICAgIG1lc2EtZHJpLWRyaXZlci1pOTE1Ig0KKyAgICAgICAgICAgbWVzYS1kcmktZHJp
dmVyLWk5NjUiDQogDQogU0VSSUFMX0NPTlNPTEUgPSAiMTE1MjAwIHR0eVMwIg0KIA0KLS0gDQox
LjcuMg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0K
cG9reSBtYWlsaW5nIGxpc3QNCnBva3lAeW9jdG9wcm9qZWN0Lm9yZw0KaHR0cHM6Ly9saXN0cy55
b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL3Bva3kNCg==

