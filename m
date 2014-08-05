Return-Path: <biannm@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B95CE00799; Mon,  4 Aug 2014 20:13:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABDA7E004F1
	for <poky@yoctoproject.org>; Mon,  4 Aug 2014 20:13:42 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.04,266,1406563200"; d="scan'208";a="34185279"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 05 Aug 2014 11:10:50 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id s753DbS7011041;
	Tue, 5 Aug 2014 11:13:38 +0800
Received: from G08CNEXMBPEKD02.g08.fujitsu.local ([10.167.33.84]) by
	G08CNEXCHPEKD01.g08.fujitsu.local ([10.167.33.80]) with mapi id
	14.03.0181.006; Tue, 5 Aug 2014 11:13:45 +0800
From: "biannm@cn.fujitsu.com" <biannm@cn.fujitsu.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [poky] [Question]Does poky rebuild source when only makefile
	was modified
Thread-Index: AQHPr85GnKTVwWZo7Ee+nKpWm7EOAZvBMl/A//+Qu4CAAIx7gA==
Date: Tue, 5 Aug 2014 03:13:42 +0000
Message-ID: <30DC4EDFD798C94083F3E083754532CCC9B013@G08CNEXMBPEKD02.g08.fujitsu.local>
References: <30DC4EDFD798C94083F3E083754532CCC9AAA9@G08CNEXMBPEKD02.g08.fujitsu.local>
	<1407147842.6981.52.camel@ted>
	<30DC4EDFD798C94083F3E083754532CCC9ADE9@G08CNEXMBPEKD02.g08.fujitsu.local>
	<20140805022441.GB3867@haswell>
In-Reply-To: <20140805022441.GB3867@haswell>
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
X-List-Received-Date: Tue, 05 Aug 2014 03:13:48 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBObywgYml0YmFrZSBzaG91bGQgdGFrZSBjYXJlIG9mIGludmFsaWRhdGVkIHRoZSBhZmZlY3Rl
ZCB0YXNrcyBhbmQgcmVkb2luZyB0aGUgdGFzdCBhbmQgZGVwZW5kZW50IHRhc2suDQoNCkFncmVl
Lg0KQW55IHN1Z2dlc3Rpb24gdG8gZml4IHRoaXMgcHJvYmxlbS4NCg0KUmVnYXJkcw0KIEJpYW4N
Cg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEtoZW0gUmFqIFttYWlsdG86cmFq
LmtoZW1AZ21haWwuY29tXSANClNlbnQ6IFR1ZXNkYXksIEF1Z3VzdCAwNSwgMjAxNCAxMDoyNSBB
TQ0KVG86IEJpYW4sIE5haW1lbmcv5Y2eIOS5g+eMmw0KQ2M6IFJpY2hhcmQgUHVyZGllOyBwb2t5
QHlvY3RvcHJvamVjdC5vcmcNClN1YmplY3Q6IFJlOiBbcG9reV0gW1F1ZXN0aW9uXURvZXMgcG9r
eSByZWJ1aWxkIHNvdXJjZSB3aGVuIG9ubHkgbWFrZWZpbGUgd2FzIG1vZGlmaWVkDQoNCk9uIDE0
LTA4LTA1IDAxOjM1OjMyLCBiaWFubm1AY24uZnVqaXRzdS5jb20gd3JvdGU6DQo+IFRoYW5rcyBm
b3IgeW91ciBhbnN3ZXIuDQo+IEkgaGFkIGNvbmZpcm1lZCB0aGF0IHRhc2tzIGZyb20gdGhlIGNv
bmZpZ3VyZSB3aWxsIGJlIHJlYnVpbGQuDQo+IEJ1dCB0aGUgdGltZXN0YW1wIG9mIHNvdXJjZSBm
aWxlcyBkb2Vzbid0IGhhdmUgYW55IGNoYW5nZSwgYWx0aG91Z2ggDQo+IGRvX2NvbXBpbGUgdGFz
ayB3aWxsIGJlIHJlYnVpbGQsIHRoZSBzb3VyY2UgZmlsZXMgd2lsbCBub3QgYmUgcmVidWlsZC4N
Cj4gDQo+IFdoZW4gd2UgcmVidWlsZCBvdXIgcHJvamVjdCBieSBtYWtlLCB3ZSBhbHdheXMgZG8g
Im1ha2UgY2xlYW4iIGZpcnN0bHkgdG8gbWFrZSBzdXJlIHNvdXJjZSBmaWxlcyB0byBiZSByZWJ1
aWxkIGlmIG9ubHkgbWFrZWZpbGUgaGF2ZSBiZWVuIGNoYW5nZWQuDQo+IERvZXMgaXQgbWVhbnMg
d2UgbXVzdCBkbyAiYml0YmFrZSB4eHggLWMgY2xlYW5zc3RhdGUiIGZpcnN0bHkgaWYgd2UgDQo+
IGp1c3QgbW9kaWZ5IGJiIGZpbGUgdGhhdCBjaGFuZ2VzIGxpYmRpciBvbmx5Lg0KDQpObywgYml0
YmFrZSBzaG91bGQgdGFrZSBjYXJlIG9mIGludmFsaWRhdGVkIHRoZSBhZmZlY3RlZCB0YXNrcyBh
bmQgcmVkb2luZyB0aGUgdGFzdCBhbmQgZGVwZW5kZW50IHRhc2suDQo=

