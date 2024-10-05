Return-Path: <yumx@amazon.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23C67CF8868
	for <webhook@archiver.kernel.org>; Sat,  5 Oct 2024 00:37:54 +0000 (UTC)
Received: from smtp-fw-52005.amazon.com (smtp-fw-52005.amazon.com [52.119.213.156])
 by mx.groups.io with SMTP id smtpd.web11.3082.1728088669070241566
 for <poky@lists.yoctoproject.org>;
 Fri, 04 Oct 2024 17:37:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amazon.com header.s=amazon201209 header.b=udAjtPXh;
 spf=pass (domain: amazon.com, ip: 52.119.213.156, mailfrom: prvs=00128c0f3=yumx@amazon.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
  t=1728088669; x=1759624669;
  h=from:to:cc:date:message-id:references:in-reply-to:
   content-id:content-transfer-encoding:mime-version:subject;
  bh=XhhUw5jUJNbVMVBziXJDAIkGefbVR5QuEHC5lwS0gXQ=;
  b=udAjtPXhwPcGBderNboXr9FqAKCuIb/TzuMrGIoHWOIoX71Tsj1N9WqX
   IRicfgKRmfY4TTkaW158Q0YBzap2CvsgnpUPikTGSEs6AKSaNJi4qFWMe
   zc0PHJLRmvjFNXuoQNaDxBFfcOTHVFCX09F7/9OnP2CuxJcFEns33lCjS
   Y=;
X-IronPort-AV: E=Sophos;i="6.11,178,1725321600"; 
   d="scan'208";a="685250852"
Subject: Re: [poky] [PATCH] sstate: remove corrupted artifacts from local mirror
Thread-Topic: [poky] [PATCH] sstate: remove corrupted artifacts from local mirror
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.43.8.6])
  by smtp-border-fw-52005.iad7.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Oct 2024 00:37:48 +0000
Received: from EX19MTAUWC002.ant.amazon.com [10.0.38.20:27951]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.22.18:2525] with esmtp (Farcaster)
 id c53ebe56-ac9c-44c8-8a36-97693752ca88; Sat, 5 Oct 2024 00:37:47 +0000 (UTC)
X-Farcaster-Flow-ID: c53ebe56-ac9c-44c8-8a36-97693752ca88
Received: from EX19D007UWA001.ant.amazon.com (10.13.138.244) by
 EX19MTAUWC002.ant.amazon.com (10.250.64.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.34;
 Sat, 5 Oct 2024 00:37:47 +0000
Received: from EX19D020UWC002.ant.amazon.com (10.13.138.147) by
 EX19D007UWA001.ant.amazon.com (10.13.138.244) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1258.34;
 Sat, 5 Oct 2024 00:37:47 +0000
Received: from EX19D020UWC002.ant.amazon.com ([fe80::25b5:6dfd:9e72:d82]) by
 EX19D020UWC002.ant.amazon.com ([fe80::25b5:6dfd:9e72:d82%5]) with mapi id
 15.02.1258.034; Sat, 5 Oct 2024 00:37:47 +0000
From: "Yu, Max" <yumx@amazon.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>, "Sobon,
 Przemyslaw" <psobon@amazon.com>
Thread-Index: AQHbFrvHxFXkNYQJL0+iXOKdEGsa7LJ3TesA//+M3AA=
Date: Sat, 5 Oct 2024 00:37:47 +0000
Message-ID: <24BA91DB-1797-484B-9578-0CFE6A9A8FDD@amazon.com>
References: <20241005001606.51818-1-yumx@amazon.com>
 <CAMKF1sqdvShd4N7RLSf-K+6sNKybzrBfASF_Pq4yHBa3WZz1sw@mail.gmail.com>
In-Reply-To: <CAMKF1sqdvShd4N7RLSf-K+6sNKybzrBfASF_Pq4yHBa3WZz1sw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.106.239.32]
Content-Type: text/plain; charset="utf-8"
Content-ID: <C0074DB5AC641443A0DC0118C73FDE34@amazon.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 05 Oct 2024 00:37:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13451

R290Y2hhLCB3aWxsIGRvLCB0aGFua3MhDQoNCk1heA0KDQoNCu+7v09uIDEwLzQvMjQsIDU6MzAg
UE0sICJwb2t5QGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgPG1haWx0bzpwb2t5QGxpc3RzLnlvY3Rv
cHJvamVjdC5vcmc+IG9uIGJlaGFsZiBvZiBLaGVtIFJhaiIgPHBva3lAbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZyA8bWFpbHRvOnBva3lAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gb24gYmVoYWxmIG9m
IHJhai5raGVtQGdtYWlsLmNvbSA8bWFpbHRvOnJhai5raGVtQGdtYWlsLmNvbT4+IHdyb3RlOg0K
DQoNCkNBVVRJT046IFRoaXMgZW1haWwgb3JpZ2luYXRlZCBmcm9tIG91dHNpZGUgb2YgdGhlIG9y
Z2FuaXphdGlvbi4gRG8gbm90IGNsaWNrIGxpbmtzIG9yIG9wZW4gYXR0YWNobWVudHMgdW5sZXNz
IHlvdSBjYW4gY29uZmlybSB0aGUgc2VuZGVyIGFuZCBrbm93IHRoZSBjb250ZW50IGlzIHNhZmUu
DQoNCg0KDQoNCg0KDQpPbiBGcmksIE9jdCA0LCAyMDI0IGF0IDU6MTYgUE0gWXUsIE1heCB2aWEg
bGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPHl1bXg9YW1hem9uLmNvbUBsaXN0cy55b2N0b3Byb2pl
Y3Qub3JnIDxtYWlsdG86YW1hem9uLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPj4gd3JvdGU6
DQo+DQo+IFdlIG9ic2VydmUgc3N0YXRlIGNhY2hlIGNvcnJ1cHRpb25zIHNvbWV0aW1lcyB3aGlj
aCBjYXVzZSByZWJ1aWxkcy4gVGhhdCBpcyBub3QNCj4gYSBmYXRhbCBlcnJvciBhcyB0aGUgcGFj
a2FnZSBoYXMgdG8gYmUgcmVidWlsdCBhbmQgdXBkYXRlZCBhcnRpZmFjdCBuZWVkcyB0byBiZQ0K
PiBwdXNoZWQgdG8gcmVtb3RlIHNzdGF0ZSBjYWNoZSBtaXJyb3IuIEN1cnJlbnRseSwgWW9jdG8g
ZG9lcyBub3QgaGFuZGxlDQo+IGNvcnJ1cHRpb25zIHByb3Blcmx5LCB3aGVyZSB0aGUgY29ycnVw
dGVkIGFydGlmYWN0IGlzIG5vdCBkZWxldGVkIG9yDQo+IHJlbmFtZWQuIExhdGVyLCBhZnRlciB0
aGUgcGFja2FnZSBpcyBidWlsdCB0aGUgc2FtZSBjb3JydXB0ZWQgYXJ0aWZhY3QgaXMgcHVzaGVk
DQo+IHRvIHJlbW90ZSBtaXJyb3IgYW5kIHRoZSBzYW1lIHByb2NlZHVyZSBpcyBjaXJjbGVkIGFn
YWluIGFuZCBhZ2Fpbi4NCj4NCj4gVGhpcyBjaGFuZ2UgdmVyaWZpZXMgdGhlIG91dGNvbWUgb2Yg
dGhlIHVucGFja2luZyBhY3Rpb24gYW5kIHJlbmFtZXMgdGhlDQo+IGFydGlmYWN0IGlmIGEgZmF0
YWwgZXJyb3Igb2NjdXJyZWQgKCJ0YXIiIHRvb2wgcmV0dXJucyBlcnJvciAyKS4gSW4gc3VjaCBj
YXNlIHdlDQo+IHJlbmFtZSB0aGUgYXJ0aWZhY3Qgd2hhdCBjYXVzZXMgdGhhdCBhIHByb3BlciBv
bmUgaXMgY3JlYXRlZCBhbmQgdXBsb2FkZWQNCj4gb3ZlcndyaXRpbmcgdGhlIGV4aXNpdGluZyBv
bmUgLSB0aGUgY29ycnVwdGVkIG9uZSAtIGluIHRoZSByZW1vdGUgbWlycm9yLiBUaGF0DQo+IHdh
eSB3ZSBicmVhayB0aGUgbG9vcCBvZiB1cGxvYWRpbmcgY29ycnVwdGVkIGZpbGUgYWdhaW4gYW5k
IGFnYWluLg0KPg0KDQoNClRoYW5rcyBmb3IgY29udHJpYnV0aW5nIGFuZCB0cnlpbmcgdG8gbWFr
ZSB0aGUgeW9jdG8gcHJvamVjdCBiZXR0ZXIuDQpJIHRoaW5rIHRoZSBwYXRjaCBzZWVtcyBvayB0
byBtZS4gSG93ZXZlciwgcGxlYXNlIHNlbmQgaXQgdG8NCm9wZW5lbWJlZGRlZC1jb3JlIG1haWxp
bmcgbGlzdA0Kb3BlbmVtYmVkZGVkLWNvcmVAbGlzdHMub3BlbmVtYmVkZGVkLm9yZyA8bWFpbHRv
Om9wZW5lbWJlZGRlZC1jb3JlQGxpc3RzLm9wZW5lbWJlZGRlZC5vcmc+IHNpbmNlIHRoaXMgaXMg
cGFydCBvZiBvZS1jb3JlDQp3aGljaCBwb2t5IHVzZXMuDQpJIHdvdWxkIGFsc28gc3VnZ2VzdCB0
byBwZXJ1c2UgdGhyb3VnaCAtDQpodHRwczovL2RvY3MueW9jdG9wcm9qZWN0Lm9yZy9kZXYvY29u
dHJpYnV0b3ItZ3VpZGUvc3VibWl0LWNoYW5nZXMuaHRtbCA8aHR0cHM6Ly9kb2NzLnlvY3RvcHJv
amVjdC5vcmcvZGV2L2NvbnRyaWJ1dG9yLWd1aWRlL3N1Ym1pdC1jaGFuZ2VzLmh0bWw+DQoNCg0K
PiBTdWdnZXN0ZWQtYnk6IFByemVteXNsYXcgU29ib24gPHBzb2JvbkBhbWF6b24uY29tIDxtYWls
dG86cHNvYm9uQGFtYXpvbi5jb20+Pg0KPiBTaWduZWQtb2ZmLWJ5OiBNYXggWXUgPHl1bXhAYW1h
em9uLmNvbSA8bWFpbHRvOnl1bXhAYW1hem9uLmNvbT4+DQo+IC0tLQ0KPiBtZXRhL2NsYXNzZXMt
Z2xvYmFsL3NzdGF0ZS5iYmNsYXNzIHwgNyArKysrKystDQo+IDEgZmlsZSBjaGFuZ2VkLCA2IGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4NCj4gZGlmZiAtLWdpdCBhL21ldGEvY2xhc3Nl
cy1nbG9iYWwvc3N0YXRlLmJiY2xhc3MgYi9tZXRhL2NsYXNzZXMtZ2xvYmFsL3NzdGF0ZS5iYmNs
YXNzDQo+IGluZGV4IDExYmI4OTJhNDIuLjVhN2NlMzUzNDEgMTAwNjQ0DQo+IC0tLSBhL21ldGEv
Y2xhc3Nlcy1nbG9iYWwvc3N0YXRlLmJiY2xhc3MNCj4gKysrIGIvbWV0YS9jbGFzc2VzLWdsb2Jh
bC9zc3RhdGUuYmJjbGFzcw0KPiBAQCAtOTM3LDcgKzkzNywxMiBAQCBzc3RhdGVfdW5wYWNrX3Bh
Y2thZ2UgKCkgew0KPiBaU1REPSJwenN0ZCAtcCAke1pTVERfVEhSRUFEU30iDQo+IGZpDQo+DQo+
IC0gdGFyIC1JICIkWlNURCIgLXh2cGYgJHtTU1RBVEVfUEtHfQ0KPiArIGlmICEgdGFyIC1JICIk
WlNURCIgLXh2cGYgJHtTU1RBVEVfUEtHfTsgdGhlbg0KPiArIGVjaG8gIkZhdGFsIGVycm9yIGV4
dHJhY3Rpbmcgc3N0YXRlIGNhY2hlIGFydGlmYWN0cywgZmlsZSBtaWdodCBiZSBjb3JydXB0ZWQg
b3IgdHJ1bmNhdGVkLCByZW5hbWluZyINCj4gKyBtdiAke1NTVEFURV9QS0d9ICR7U1NUQVRFX1BL
R30udW5wYWNrX2Vycm9yDQo+ICsgZXhpdCAyDQo+ICsgZmkNCj4gKw0KPiAjIHVwZGF0ZSAuc2ln
aW5mbyBhdGltZSBvbiBsb2NhbC9ORlMgbWlycm9yIGlmIGl0IGlzIGEgc3ltYm9saWMgbGluaw0K
PiBbICEgLWggJHtTU1RBVEVfUEtHfS5zaWdpbmZvIF0gfHwgWyAhIC1lICR7U1NUQVRFX1BLR30u
c2lnaW5mbyBdIHx8IHRvdWNoIC1hICR7U1NUQVRFX1BLR30uc2lnaW5mbyAyPi9kZXYvbnVsbCB8
fCB0cnVlDQo+ICMgdXBkYXRlIGVhY2ggc3ltYm9saWMgbGluayBpbnN0ZWFkIG9mIGFueSByZWZl
cmVuY2VkIGZpbGUNCj4gLS0NCj4gMi40MC4xDQo+DQo+DQo+DQo+DQoNCg0KDQo=

