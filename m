Return-Path: <biannm@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57FE9E0078E; Mon,  4 Aug 2014 18:35:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75F3EE004DD
	for <poky@yoctoproject.org>; Mon,  4 Aug 2014 18:35:34 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.04,266,1406563200"; d="scan'208";a="34180719"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 05 Aug 2014 09:32:41 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id s751ZSBl004413;
	Tue, 5 Aug 2014 09:35:28 +0800
Received: from G08CNEXMBPEKD02.g08.fujitsu.local ([10.167.33.84]) by
	G08CNEXCHPEKD02.g08.fujitsu.local ([10.167.33.83]) with mapi id
	14.03.0181.006; Tue, 5 Aug 2014 09:35:33 +0800
From: "biannm@cn.fujitsu.com" <biannm@cn.fujitsu.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Thread-Topic: [poky] [Question]Does poky rebuild source when only makefile
	was modified
Thread-Index: AQHPr85GnKTVwWZo7Ee+nKpWm7EOAZvBMl/A
Date: Tue, 5 Aug 2014 01:35:32 +0000
Message-ID: <30DC4EDFD798C94083F3E083754532CCC9ADE9@G08CNEXMBPEKD02.g08.fujitsu.local>
References: <30DC4EDFD798C94083F3E083754532CCC9AAA9@G08CNEXMBPEKD02.g08.fujitsu.local>
	<1407147842.6981.52.camel@ted>
In-Reply-To: <1407147842.6981.52.camel@ted>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.31]
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [Question]Does poky rebuild source when only makefile was modified
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 05 Aug 2014 01:35:39 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIGZvciB5b3VyIGFuc3dlci4NCkkgaGFkIGNvbmZpcm1lZCB0aGF0IHRhc2tzIGZyb20g
dGhlIGNvbmZpZ3VyZSB3aWxsIGJlIHJlYnVpbGQuDQpCdXQgdGhlIHRpbWVzdGFtcCBvZiBzb3Vy
Y2UgZmlsZXMgZG9lc24ndCBoYXZlIGFueSBjaGFuZ2UsIA0KYWx0aG91Z2ggZG9fY29tcGlsZSB0
YXNrIHdpbGwgYmUgcmVidWlsZCwgdGhlIHNvdXJjZSBmaWxlcyB3aWxsIG5vdCBiZSByZWJ1aWxk
Lg0KDQpXaGVuIHdlIHJlYnVpbGQgb3VyIHByb2plY3QgYnkgbWFrZSwgd2UgYWx3YXlzIGRvICJt
YWtlIGNsZWFuIiBmaXJzdGx5IHRvIG1ha2Ugc3VyZSBzb3VyY2UgZmlsZXMgdG8gYmUgcmVidWls
ZCBpZiBvbmx5IG1ha2VmaWxlIGhhdmUgYmVlbiBjaGFuZ2VkLg0KRG9lcyBpdCBtZWFucyB3ZSBt
dXN0IGRvICJiaXRiYWtlIHh4eCAtYyBjbGVhbnNzdGF0ZSIgZmlyc3RseSBpZiB3ZSBqdXN0IG1v
ZGlmeSBiYiBmaWxlDQp0aGF0IGNoYW5nZXMgbGliZGlyIG9ubHkuDQoNClJlZ2FyZHMNCiBCaWFu
DQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBSaWNoYXJkIFB1cmRpZSBbbWFp
bHRvOnJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmddIA0KU2VudDogTW9uZGF5LCBB
dWd1c3QgMDQsIDIwMTQgNjoyNCBQTQ0KVG86IEJpYW4sIE5haW1lbmcNCkNjOiBwb2t5QHlvY3Rv
cHJvamVjdC5vcmcNClN1YmplY3Q6IFJlOiBbcG9reV0gW1F1ZXN0aW9uXURvZXMgcG9reSByZWJ1
aWxkIHNvdXJjZSB3aGVuIG9ubHkgbWFrZWZpbGUgd2FzIG1vZGlmaWVkDQoNCk9uIE1vbiwgMjAx
NC0wOC0wNCBhdCAxMDowMSArMDAwMCwgYmlhbm5tQGNuLmZ1aml0c3UuY29tIHdyb3RlOg0KPiBI
aSwNCj4gDQo+ICBVc3VhbGx5LCBpZiBvbmx5IG1ha2VmaWxlIGlzIG1vZGlmaWVkLCAibWFrZSIg
d2lsbCBub3QgcmVidWlsZCBzb3VyY2UuDQo+ICBEb2VzIHBva3kgcmVidWlsZCBzb3VyY2UgaW4g
dGhlIGZvbGxvd2luZyBjYXNlLg0KPiANCj4gIDEuIGJ1aWxkIGEgcmVjaXBlDQo+ICAyLiBtb2Rp
ZnkgdGhlIGJiIGZpbGUgb2YgdGhpcyByZWNpcGUsIHdoaWNoIHdpbGwgY2F1c2Ugb25seSBtYWtl
ZmlsZSB0byBiZSBtb2RpZmllZC4NCj4gICAgIEV4LiBzZXQgYSBuZXcgcGF0aCB0byBsaWJkaXIN
Cj4gIDMuIHJlYnVpbGQgdGhpcyByZWNpcGUgd2l0aG91dCBkb2luZyBjbGVhbnNzdGF0ZSBiZWZv
cmUNCg0KVGhpcyBjaGFuZ2UgdG8gbGliZGlyIHdvdWxkIGNoYW5nZSB0aGUgY2hlY2tzdW0gb2Yg
dGhlIGNvbmZpZ3VyZSB0YXNrIGFuZCB0aGUgY29uZmlndXJlIHRhc2sgd291bGQgZXhlY3V0ZS4g
QXNzdW1pbmcgdGhpcyBpcyBhbiBhdXRvdG9vbHMgcmVjaXBlICh3aGVyZSBCICE9IFMgaXMgc3Vw
cG9ydGVkKSwgaXQgd291bGQgd2lwZSBvdXQgJHtCfSBkdWUgdG8gdGhlIGNoYW5nZSBhbmQgcmVi
dWlsZCBldmVyeXRoaW5nIGZyb20gdGhlIGNvbmZpZ3VyZSBzdGVwIG9ud2FyZHMuDQoNCkNoZWVy
cywNCg0KUmljaGFyZA0KDQo=

