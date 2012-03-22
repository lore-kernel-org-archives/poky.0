Return-Path: <sivan.wang@huawei.com>
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [119.145.14.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA193E00746
	for <poky@yoctoproject.org>; Thu, 22 Mar 2012 03:24:47 -0700 (PDT)
Received: from huawei.com (szxga05-in [172.24.2.49])
	by szxga05-in.huawei.com (iPlanet Messaging Server 5.2 HotFix 2.14
	(built Aug
	8 2006)) with ESMTP id <0M1A00H5H7FWZF@szxga05-in.huawei.com> for
	poky@yoctoproject.org; Thu, 22 Mar 2012 18:21:32 +0800 (CST)
Received: from szxrg02-dlp.huawei.com ([172.24.2.119])
	by szxga05-in.huawei.com (iPlanet Messaging Server 5.2 HotFix 2.14
	(built Aug
	8 2006)) with ESMTP id <0M1A00J9R7FH2G@szxga05-in.huawei.com> for
	poky@yoctoproject.org; Thu, 22 Mar 2012 18:21:32 +0800 (CST)
Received: from szxeml212-edg.china.huawei.com ([172.24.2.119])
	by szxrg02-dlp.huawei.com (MOS 4.1.9-GA)	with ESMTP id AIA89111; Thu,
	22 Mar 2012 18:21:32 +0800
Received: from SZXEML416-HUB.china.huawei.com (10.82.67.155)
	by szxeml212-edg.china.huawei.com (172.24.2.181) with Microsoft SMTP
	Server (TLS) id 14.1.323.3; Thu, 22 Mar 2012 18:21:24 +0800
Received: from SZXEML526-MBS.china.huawei.com ([169.254.7.172])
	by szxeml416-hub.china.huawei.com ([10.82.67.155])
	with mapi id 14.01.0323.003; Thu, 22 Mar 2012 18:21:11 +0800
Date: Thu, 22 Mar 2012 10:21:10 +0000
From: "Wangdawei (Sivan)" <sivan.wang@huawei.com>
In-reply-to: <857BE142E5399E46B20FD45B9DB8A7BC0FD04E6E@SHSMSX102.ccr.corp.intel.com>
X-Originating-IP: [10.66.60.200]
To: "Lu, Lianhao" <lianhao.lu@intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Message-id: <7E29EF69110C17499E6B3A9844CD4FD91341F82E@szxeml526-mbs.china.huawei.com>
MIME-version: 1.0
Accept-Language: zh-CN, en-US
Thread-topic: [poky] [question]how to defined my own distro
Thread-index: Ac0IE+TOLCynFsrFTn+PHvtkodM2ZAAAUErg
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
X-CFilter-Loop: Reflected
References: <857BE142E5399E46B20FD45B9DB8A7BC0FD04E6E@SHSMSX102.ccr.corp.intel.com>
Subject: =?UTF-8?B?562U5aSNOiBbcXVlc3Rpb25daG93IHRvIGRlZmluZWQgbXkgb3duIGRpc3Rybw==?=
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
X-List-Received-Date: Thu, 22 Mar 2012 10:24:48 -0000
Content-type: text/plain; charset=gb2312
Content-language: zh-CN
Content-transfer-encoding: base64

SXMgdGhlcmUgc29tZSBtZXRob2QgdG8gdXNlIHRoZSBjb21tYW5kIGxpbmUgdG8gZmluaXNoIHRo
aXMgd29yayA/bm90IHRoZSBHVUkgPw0KDQotLS0tLdPKvP7Urbz+LS0tLS0NCreivP7IyzogcG9r
eS1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmcgW21haWx0bzpwb2t5LWJvdW5jZXNAeW9jdG9wcm9q
ZWN0Lm9yZ10gtPqx7SBMdSwgTGlhbmhhbw0Kt6LLzcqxvOQ6IDIwMTLE6jPUwjIyyNUgMTg6MTAN
CsrVvP7IyzogcG9reUB5b2N0b3Byb2plY3Qub3JnDQrW98ziOiBSZTogW3Bva3ldIFtxdWVzdGlv
bl1ob3cgdG8gZGVmaW5lZCBteSBvd24gZGlzdHJvDQoNCldhbmdkYXdlaSAoU2l2YW4pIHdyb3Rl
IG9uIDIwMTItMDMtMjI6DQo+IFllcyAsSSBoYXZlIGNoZWNrZWQgdGhpcyAsIGJ1dCBJIGp1c3Qg
Y2FuIGZpbmQgaG93IHRvIGFkZCBhIHBhY2thZ2UgLCBJIGRvbqGvdCBmaW5kIGhvdyB0byByZWR1
Y2UgdGhlIHBhY2thZ2VzICxJIGRvbqGvdCBuZWVkIHNvIG11Y2ggcGFja2FnZXMNCj4gbGlrZSBp
dCBpbiBjb3JlLWltYWdlIC5EbyBJIG5lZWQgdG8gY2hhbmdlIHRoZSBjb3JlLWltYWdlLmJiY2xh
c3MgPyBvciB0aGVyZSBpcyBhbm90aGVyIGNvbmZpZ3VyZSBmaWxlIGNhbiBmaW5pc2ggdGhpcyB3
b3JrID8NCj4gDQoNCk1heWJlIHlvdSBjb3VsZCB0cnkgaG9iLCB0aGUgZ3RrIGJhc2VkIEdVSSBm
cm9udGVuZCB0byBjdXN0b21pemUgaW1hZ2UgY29udGVudC4gDQoNCkJlc3QgUmVnYXJkcywNCkxp
YW5oYW8NCg0KPiANCj4gt6K8/sjLOiBwb2t5LWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZyBbbWFp
bHRvOnBva3ktYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnXSC0+rHtIEphY2sgTWl0Y2hlbGwNCj4g
t6LLzcqxvOQ6IDIwMTLE6jPUwjIyyNUgMTc6MjgNCj4gytW8/sjLOiBwb2t5QHlvY3RvcHJvamVj
dC5vcmcNCj4g1vfM4jogUmU6IFtwb2t5XSBbcXVlc3Rpb25daG93IHRvIGRlZmluZWQgbXkgb3du
IGRpc3Rybw0KPiANCj4gDQo+IA0KPiBPbiAyMi8wMy8xMiAwNzoyNywgV2FuZ2Rhd2VpIChTaXZh
bikgd3JvdGU6DQo+IA0KPiANCj4gDQo+IEhpIGd1eXMsDQo+IA0KPiANCj4gDQo+ICAgICAgICAg
IEkgd2FudCB0byBidWlsZCBhIHJvb3RmcyAsIHRoYXQgSSBjYW4gZGVjaWRlIHdoaWNoIHBhY2th
Z2UgSSB3aWxsIGJ1aWxkIGludG8gdGhlIGltYWdlIC4gaXMgdGhlcmUgc29tZSBjb25maWcgZmls
ZSB0byBkbyB0aGlzID9JIGNhbqGvdA0KPiBmaW5kIHRoZSBjb25maWcgZmlsZSBpbiBwb2t5IC4g
SXMgdGhlcmUgYW55IHdheSB0byBjb21wbGV0ZSB0aGlzID9mb3IgZXhhbXBsZSBJIGp1c3Qgd2Fu
dCB0byBidWlsZCBidXN5Ym94IGFuZCBnbGliYyBmb3IgbXkgaW1hZ2UgLGhvdyBjYW4gSQ0KPiBj
b25maWcgdGhpcyA/DQo+IA0KPiANCj4gDQo+IEJlc3QgUmVnYXJkcw0KPiANCj4gDQo+IA0KPiBr
eWxlIHNpdmFuDQo+IA0KPiBIdWF3ZWkgVGVjaG5vbG9naWVzIENvLiwgTHRkLg0KPiANCj4gY2Vs
bCBwaG9uZTogKzg2LTE4NjY1MzI2NTQwDQo+IA0KPiAoT2ZmaWNlKSA3NTUtMjgzODQ0OTUNCj4g
DQo+IHNpdmFuLndhbmdAaHVhd2VpLmNvbSA8bWFpbHRvOnNpdmFuLndhbmdAaHVhd2VpLmNvbT4N
Cj4gDQo+IA0KPiANCj4gDQo+IA0KPiANCj4gDQo+IA0KPiANCj4gDQo+IA0KPiANCj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18gcG9reSBtYWlsaW5nIGxp
c3QNCj4gcG9reUB5b2N0b3Byb2plY3Qub3JnIGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zy9saXN0aW5mby9wb2t5DQo+IA0KPiANCj4gSGkgS3lsZSwNCj4gDQo+IFRoZXJlIGFyZSByZWFt
cyBvZiBkb2N1bWVudGF0aW9uIHRoYXQgcGVvcGxlIGhhdmUgd29ya2VkIHZlcnkgaGFyZCBvbiwg
d2hpY2ggYXJlIGJlIGxvY2F0ZWQgaGVyZToNCj4gaHR0cDovL3d3dy55b2N0b3Byb2plY3Qub3Jn
L2RvY3VtZW50YXRpb24uIE9uZSBvZiB0aGVtIGNvdmVycyBhZGRpbmcgcGFja2FnZXMgdG8geW91
ciBidWlsZC4NCj4gDQo+IFJlZ2FyZHMsDQo+IEphY2suDQo+IA0KPiANCj4gDQo+DQoNCg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCnBva3kgbWFpbGlu
ZyBsaXN0DQpwb2t5QHlvY3RvcHJvamVjdC5vcmcNCmh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZy9saXN0aW5mby9wb2t5DQo=

