Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.10494.1612364766456405575
 for <poky@lists.yoctoproject.org>;
 Wed, 03 Feb 2021 07:06:06 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: 198.145.29.25, mailfrom: anuj.mittal@intel.com)
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7AE8838C064C
	for <poky@yoctoproject.org>; Wed,  3 Feb 2021 15:06:05 +0000 (UTC)
IronPort-SDR: +MQp2iGr2gKR9ghzLSy6VZWNDuAzf1k2rR4ActcXOQPS7HhbDcw/yu0f5pn5+baROD2Ein6XWe
 3pnbMs7R7bCQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9884"; a="177546522"
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; 
   d="scan'208";a="177546522"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Feb 2021 07:06:04 -0800
IronPort-SDR: 212nDdydJ6skqXaw6TqfYTvDj1bTDVJq0bSmK83CEKR2brMxxjeAis04yJyMK/K4CwFf0hJTY8
 cAXNLVfJB+bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; 
   d="scan'208";a="392471091"
Received: from pgsmsx601.gar.corp.intel.com ([10.108.199.136])
  by orsmga008.jf.intel.com with ESMTP; 03 Feb 2021 07:06:03 -0800
Received: from pgsmsx601.gar.corp.intel.com (10.108.199.136) by
 pgsmsx601.gar.corp.intel.com (10.108.199.136) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 3 Feb 2021 23:06:02 +0800
Received: from pgsmsx601.gar.corp.intel.com ([10.108.199.136]) by
 pgsmsx601.gar.corp.intel.com ([10.108.199.136]) with mapi id 15.01.1713.004;
 Wed, 3 Feb 2021 23:06:02 +0800
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"bruce.ashfield@gmail.com" <bruce.ashfield@gmail.com>
CC: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [poky] [PATCH] yocto-bsp: linux-yocto: update to v5.10.12
Thread-Topic: [poky] [PATCH] yocto-bsp: linux-yocto: update to v5.10.12
Thread-Index: AQHW+j04m2nIC3gWKES/TtCN8OcGYKpGAZSA
Date: Wed, 3 Feb 2021 15:06:02 +0000
Message-ID: <58398e8012e6ebfe50c92a78bba43692836e5bb4.camel@intel.com>
References: <20210203145932.5044-1-bruce.ashfield@gmail.com>
In-Reply-To: <20210203145932.5044-1-bruce.ashfield@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.108.32.68]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <BF090C2393B43C4690D7D62A98BC67C4@intel.com>
Content-Transfer-Encoding: base64

SGkgQnJ1Y2UsDQoNCk9uIFdlZCwgMjAyMS0wMi0wMyBhdCAwOTo1OSAtMDUwMCwgQnJ1Y2UgQXNo
ZmllbGQgd3JvdGU6DQo+IEZyb206IEJydWNlIEFzaGZpZWxkIDxicnVjZS5hc2hmaWVsZEBnbWFp
bC5jb20+DQo+IA0KPiBVcGRhdGluZyBsaW51eC15b2N0byA1LjEwIGJiYXBlbmRzIHRvIHRoZSBs
YXRlc3Qga29yZyAtc3RhYmxlIHJlbGVhc2UNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEJydWNlIEFz
aGZpZWxkIDxicnVjZS5hc2hmaWVsZEBnbWFpbC5jb20+DQo+IC0tLQ0KPiDCoC4uLi9yZWNpcGVz
LWtlcm5lbC9saW51eC9saW51eC15b2N0b181LjEwLmJiYXBwZW5kwqDCoMKgwqDCoMKgwqAgfCA4
ICsrKystLQ0KPiAtLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvbWV0YS15b2N0by1ic3AvcmVjaXBlcy1rZXJu
ZWwvbGludXgvbGludXgtDQo+IHlvY3RvXzUuMTAuYmJhcHBlbmQgYi9tZXRhLXlvY3RvLWJzcC9y
ZWNpcGVzLWtlcm5lbC9saW51eC9saW51eC0NCj4geW9jdG9fNS4xMC5iYmFwcGVuZA0KPiBpbmRl
eCBkNmM1NDI0ZmM3Li44ZmI3ZTJjMzQwIDEwMDY0NA0KPiAtLS0gYS9tZXRhLXlvY3RvLWJzcC9y
ZWNpcGVzLWtlcm5lbC9saW51eC9saW51eC15b2N0b181LjEwLmJiYXBwZW5kDQo+ICsrKyBiL21l
dGEteW9jdG8tYnNwL3JlY2lwZXMta2VybmVsL2xpbnV4L2xpbnV4LXlvY3RvXzUuMTAuYmJhcHBl
bmQNCj4gQEAgLTcsMTAgKzcsMTAgQEAgS01BQ0hJTkVfZ2VuZXJpY3g4NiA/PSAiY29tbW9uLXBj
Ig0KPiDCoEtNQUNISU5FX2dlbmVyaWN4ODYtNjQgPz0gImNvbW1vbi1wYy02NCINCj4gwqBLTUFD
SElORV9iZWFnbGVib25lLXlvY3RvID89ICJiZWFnbGVib25lIg0KPiDCoA0KPiAtU1JDUkVWX21h
Y2hpbmVfZ2VuZXJpY3g4NiA/PQ0KPiAiZjA4ZGYzMjRjY2RiYzczYjlmMGMyZGUyODI2YTI4NDNi
Y2RmNjUxYiINCj4gLVNSQ1JFVl9tYWNoaW5lX2dlbmVyaWN4ODYtNjQgPz0NCj4gImYwOGRmMzI0
Y2NkYmM3M2I5ZjBjMmRlMjgyNmEyODQzYmNkZjY1MWIiDQo+IC1TUkNSRVZfbWFjaGluZV9lZGdl
cm91dGVyID89DQo+ICIxZjNkN2I2YTg1ZTk4MzE3NzcxMzY3ZTcwODI0Zjc4MDNmZjljYTMwIg0K
PiAtU1JDUkVWX21hY2hpbmVfYmVhZ2xlYm9uZS15b2N0byA/PQ0KPiAiZjA4ZGYzMjRjY2RiYzcz
YjlmMGMyZGUyODI2YTI4NDNiY2RmNjUxYiINCj4gK1NSQ1JFVl9tYWNoaW5lX2dlbmVyaWN4ODYg
Pz0NCj4gImNkY2E3ODc3ODQxNWI0YjNiZDY0ZTgzOTBlZThhZGYwNGJmN2UxN2EiDQo+ICtTUkNS
RVZfbWFjaGluZV9nZW5lcmljeDg2LTY0ID89DQo+ICJjZGNhNzg3Nzg0MTViNGIzYmQ2NGU4Mzkw
ZWU4YWRmMDRiZjdlMTdhIg0KPiArU1JDUkVWX21hY2hpbmVfZWRnZXJvdXRlciA/PQ0KPiAiMmUx
ZmI4Zjg0ZjA5Y2E3NjhlYjUzMWYzM2ExMjZhNDBiYjkwZTc5MSINCj4gK1NSQ1JFVl9tYWNoaW5l
X2JlYWdsZWJvbmUteW9jdG8gPz0NCj4gImNkY2E3ODc3ODQxNWI0YjNiZDY0ZTgzOTBlZThhZGYw
NGJmN2UxN2EiDQoNCkkgdGhpbmsgeW91IG1pc3NlZCB1cGRhdGluZyBMSU5VWF9WRVJTSU9OIHZh
bHVlIGluIHRoaXMgZmlsZS4NCg0KVGhhbmtzLA0KDQpBbnVqDQo=
