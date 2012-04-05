Return-Path: <sivan.wang@huawei.com>
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com [58.251.152.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2275E0070C;
	Wed,  4 Apr 2012 20:38:16 -0700 (PDT)
Received: from huawei.com (szxga05-in [172.24.2.49])
	by szxga05-in.huawei.com (iPlanet Messaging Server 5.2 HotFix 2.14
	(built Aug
	8 2006)) with ESMTP id <0M1Z00HC3M1346@szxga05-in.huawei.com>; Thu,
	05 Apr 2012 11:36:39 +0800 (CST)
Received: from szxrg01-dlp.huawei.com ([172.24.2.119])
	by szxga05-in.huawei.com (iPlanet Messaging Server 5.2 HotFix 2.14
	(built Aug
	8 2006)) with ESMTP id <0M1Z000ADM0SE2@szxga05-in.huawei.com>; Thu,
	05 Apr 2012 11:36:39 +0800 (CST)
Received: from szxeml213-edg.china.huawei.com ([172.24.2.119])
	by szxrg01-dlp.huawei.com (MOS 4.1.9-GA)	with ESMTP id AIC23428; Thu,
	05 Apr 2012 11:36:38 +0800
Received: from SZXEML423-HUB.china.huawei.com (10.82.67.162)
	by szxeml213-edg.china.huawei.com (172.24.2.30) with Microsoft SMTP
	Server (TLS) id 14.1.323.3; Thu, 05 Apr 2012 11:36:19 +0800
Received: from SZXEML526-MBX.china.huawei.com ([169.254.2.214])
	by szxeml423-hub.china.huawei.com ([10.82.67.162])
	with mapi id 14.01.0323.003; Thu, 05 Apr 2012 11:36:34 +0800
Date: Thu, 05 Apr 2012 03:36:34 +0000
From: "Wangdawei (Sivan)" <sivan.wang@huawei.com>
In-reply-to: <CABcZANnUUTNpsuYEqJniUMcL+aWFS2rNEJLCuXR-9Ewkmk5Xmw@mail.gmail.com>
X-Originating-IP: [10.66.61.74]
To: Chris Larson <clarson@kergoth.com>
Message-id: <7E29EF69110C17499E6B3A9844CD4FD9134250C5@szxeml526-mbx.china.huawei.com>
MIME-version: 1.0
Accept-Language: zh-CN, en-US
Thread-topic: [poky] The problem of using the external toolchain
Thread-index: AQHND1UzeYG09vDQQ0yt+bmKpsTVOpaFOb0AgAZWqWD//4HngIAAiTJA
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
X-CFilter-Loop: Reflected
References: <7E29EF69110C17499E6B3A9844CD4FD913425078@szxeml526-mbx.china.huawei.com>
	<CABcZANnUUTNpsuYEqJniUMcL+aWFS2rNEJLCuXR-9Ewkmk5Xmw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: The problem of using the external toolchain
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
X-List-Received-Date: Thu, 05 Apr 2012 03:38:17 -0000
Content-type: text/plain; charset=utf-8
Content-language: en-US
Content-transfer-encoding: base64

WWVzICwgZWRpc29uLTYuMCAsIGlzIGl0IHNvbWUgcHJvYmxlbSA/DQoNCi0tLS0tT3JpZ2luYWwg
TWVzc2FnZS0tLS0tDQpGcm9tOiBrZXJnb3RoQGdtYWlsLmNvbSBbbWFpbHRvOmtlcmdvdGhAZ21h
aWwuY29tXSBPbiBCZWhhbGYgT2YgQ2hyaXMgTGFyc29uDQpTZW50OiAyMDEy5bm0NOaciDXml6Ug
MTE6MjQNClRvOiBXYW5nZGF3ZWkgKFNpdmFuKQ0KQ2M6IHBva3lAeW9jdG9wcm9qZWN0Lm9yZzsg
eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFtwb2t5XSBUaGUgcHJvYmxlbSBv
ZiB1c2luZyB0aGUgZXh0ZXJuYWwgdG9vbGNoYWluDQoNCk9uIFdlZCwgQXByIDQsIDIwMTIgYXQg
ODoxNSBQTSwgV2FuZ2Rhd2VpIChTaXZhbikgPHNpdmFuLndhbmdAaHVhd2VpLmNvbT4gd3JvdGU6
DQo+IMKgRGlkIGFueW9uZSBoZWxwIG1lIHRvIHJlc29sdmUgdGhpcyBwcm9ibGVtICwgaXQgYmxv
Y2sgbWUgYSBsb25nIHRpbWUgLFRoYW5rIHlvdSB2ZXJ5IG11Y2gNCj4NCj4gwqAgwqAgwqAgwqBJ
IGhhdmUgYSB0b29sY2hhaW4gdGhhdCBpcyBiaWcgZW5kaWFuIEFSTSwgc28gSSB3YW50IHRvIHVz
ZSB0aGUgdG9vbGNoYWluIHdpdGggdGhlIGJpbmFyeSwgbm90IHRoZSBzb3VyY2UgY29kZSAsIGNh
biB3ZSBoYXZlIHNvbWUgbWV0aG9kIHRvIGZpbmlzaCB0aGlzIHdvcmsgaW4geW9jdG8gPyBJIHN0
aWxsIGhhdmUgbm8gY2x1ZSBhYm91dCB0aGlzIC4NCj4gwqAgwqAgwqAgwqBJIGhhdmUgZG9uZSB0
aGUgYmVsb3cgc3RlcHM6DQo+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgMS5tb2RpZnkgTUFDSElO
RT1xZW11eDg2IHRvIE1BQ0hJTkU9cWVtdWFybQ0KPiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDIu
bW9kaWZ5IHRoZSBmaWxlICIgZXh0ZXJuYWwtY3NsLXRvb2xjaGFpbl8yMDA4cTMtNzIuYmIiIGFk
ZCBhIGxpbmUgIiBTUkNfVVJJID0gImZpbGU6Ly9nY2MtNC40LjEudGFyLmJ6MiIiLCB0aGUgZ2Nj
LTQuNC4xLnRhci5iejIgaXMgdGhlIHNvdXJjZSBjb2RlIG9mIHRoZSBhcm0gYmlnIGVuZGlhbiB0
b29sY2hhaW4NCj4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAzLnRoZW4gSSBmYWNlIHRoZSBzb21l
IHByb2JsZW0gbGlrZSB0aGlzIHdlYnNpdGUgImh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zy9waXBlcm1haWwvcG9reS8yMDExLUZlYnJ1YXJ5LzAwMzgwOS5odG1sIiDCoCx0aGVuIEkgYWRk
IGEgbGluZSAiIExJQ19GSUxFU19DSEtTVU0gPSAiZmlsZTovLyR7Q09NTU9OX0xJQ0VOU0VfRElS
fS9NSVQ7bWQ1PTA4MzVhZGU2OThlMGJjZjg1MDZlY2RhMmY3YjRmMzAyIiIgLGluIGZpbGUgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqBleHRlcm5hbC1jc2wtdG9vbGNoYWluXzIwMDhxMy03Mi5iYiB0byBmaXggdGhp
cyBwcm9ibGVtDQo+IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgNC5ub3cgSSBnb3QgdGhlIGJlbG93
IGxvZyA6DQoNCg0KSSBhc3N1bWUgdGhpcyBpcyB3aXRoIHRoZSBlZGlzb24gYnJhbmNoPw0KLS0g
DQpDaHJpc3RvcGhlciBMYXJzb24NCg==

