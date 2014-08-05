Return-Path: <biannm@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BC95E00799; Mon,  4 Aug 2014 22:57:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BEF9E004DD
	for <poky@yoctoproject.org>; Mon,  4 Aug 2014 22:57:48 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.04,267,1406563200"; d="scan'208";a="34190793"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 05 Aug 2014 13:54:54 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id s755vfCA018913;
	Tue, 5 Aug 2014 13:57:41 +0800
Received: from G08CNEXMBPEKD02.g08.fujitsu.local ([10.167.33.84]) by
	G08CNEXCHPEKD01.g08.fujitsu.local ([10.167.33.80]) with mapi id
	14.03.0181.006; Tue, 5 Aug 2014 13:57:49 +0800
From: "biannm@cn.fujitsu.com" <biannm@cn.fujitsu.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [poky] [Question]Does poky rebuild source when only makefile
	was modified
Thread-Index: AQHPr85GnKTVwWZo7Ee+nKpWm7EOAZvBMl/A//+Qu4CAAIx7gP//oKMAgACK5aA=
Date: Tue, 5 Aug 2014 05:57:45 +0000
Message-ID: <30DC4EDFD798C94083F3E083754532CCC9B0A2@G08CNEXMBPEKD02.g08.fujitsu.local>
References: <30DC4EDFD798C94083F3E083754532CCC9AAA9@G08CNEXMBPEKD02.g08.fujitsu.local>
	<1407147842.6981.52.camel@ted>
	<30DC4EDFD798C94083F3E083754532CCC9ADE9@G08CNEXMBPEKD02.g08.fujitsu.local>
	<20140805022441.GB3867@haswell>
	<30DC4EDFD798C94083F3E083754532CCC9B013@G08CNEXMBPEKD02.g08.fujitsu.local>
	<CAMKF1soS9TDHD34wTCaQr1ZgTazZbF0u8u6dNKjgQzSzP4Sq9Q@mail.gmail.com>
In-Reply-To: <CAMKF1soS9TDHD34wTCaQr1ZgTazZbF0u8u6dNKjgQzSzP4Sq9Q@mail.gmail.com>
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
X-List-Received-Date: Tue, 05 Aug 2014 05:57:55 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SWYgJEIgIT0gJFMgaXMgc3VwcG9ydGVkLCB0aGVyZSBpcyBub3QgYSBwcm9ibGVtLg0KV2hlbiB3
ZSByZWJ1aWxkIGEgcmVjaXBlIHdoZXJlICRCICE9ICRTIGlzIG5vdCBzdXBwb3J0ZWQsIGFsdGhv
dWdoIHRhc2tzIHdpbGwgYmUgcmVkb25lLCANCnRoZSBzb3VyY2UgZmlsZXMgd2lsbCBub3QgYmUg
cmVidWlsZCBpZiB3ZSBqdXN0IGNoYW5nZSB0aGUgbGliZGlyLg0KDQpEb2VzIHlvdSBtZWFuIHRo
YXQgd2UganVzdCBtYWtlIHRoaXMgcmVjaXBlIHRvIHN1cHBvcnQgICRCICE9ICRTIGluIHRoaXMg
Y2FzZS4NCg0KUmVnYXJkcw0KIEJpYW4NCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZy
b206IEtoZW0gUmFqIFttYWlsdG86cmFqLmtoZW1AZ21haWwuY29tXSANClNlbnQ6IFR1ZXNkYXks
IEF1Z3VzdCAwNSwgMjAxNCAxOjA2IFBNDQpUbzogQmlhbiwgTmFpbWVuZw0KQ2M6IFJpY2hhcmQg
UHVyZGllOyBwb2t5QHlvY3RvcHJvamVjdC5vcmcNClN1YmplY3Q6IFJlOiBbcG9reV0gW1F1ZXN0
aW9uXURvZXMgcG9reSByZWJ1aWxkIHNvdXJjZSB3aGVuIG9ubHkgbWFrZWZpbGUgd2FzIG1vZGlm
aWVkDQoNCg0KPiBPbiBNb25kYXksIEF1Z3VzdCA0LCAyMDE0LCBiaWFubm1AY24uZnVqaXRzdS5j
b20gPGJpYW5ubUBjbi5mdWppdHN1LmNvbT4gd3JvdGU6DQo+ID4+IE5vLCBiaXRiYWtlIHNob3Vs
ZCB0YWtlIGNhcmUgb2YgaW52YWxpZGF0ZWQgdGhlIGFmZmVjdGVkIHRhc2tzIGFuZCByZWRvaW5n
IHRoZSB0YXN0IGFuZCBkZXBlbmRlbnQgdGFzay4NCg0KPiA+QWdyZWUuDQo+ID5Bbnkgc3VnZ2Vz
dGlvbiB0byBmaXggdGhpcyBwcm9ibGVtLg0KDQo+IElzIHRoZXJlIHN0aWxsIGEgcHJvYmxlbSA/
IElmIHllcyB0aGVuIGV4cGxhaW4gYW5kIHdlIGNhbiB0cnkgdG8gc29sdmUgaXTCoA0KDQpSZWdh
cmRzDQrCoEJpYW4NCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEtoZW0gUmFq
IFttYWlsdG86cmFqLmtoZW1AZ21haWwuY29tXQ0KU2VudDogVHVlc2RheSwgQXVndXN0IDA1LCAy
MDE0IDEwOjI1IEFNDQpUbzogQmlhbiwgTmFpbWVuZw0KQ2M6IFJpY2hhcmQgUHVyZGllOyBwb2t5
QHlvY3RvcHJvamVjdC5vcmcNClN1YmplY3Q6IFJlOiBbcG9reV0gW1F1ZXN0aW9uXURvZXMgcG9r
eSByZWJ1aWxkIHNvdXJjZSB3aGVuIG9ubHkgbWFrZWZpbGUgd2FzIG1vZGlmaWVkDQoNCk9uIDE0
LTA4LTA1IDAxOjM1OjMyLCBiaWFubm1AY24uZnVqaXRzdS5jb20gd3JvdGU6DQo+IFRoYW5rcyBm
b3IgeW91ciBhbnN3ZXIuDQo+IEkgaGFkIGNvbmZpcm1lZCB0aGF0IHRhc2tzIGZyb20gdGhlIGNv
bmZpZ3VyZSB3aWxsIGJlIHJlYnVpbGQuDQo+IEJ1dCB0aGUgdGltZXN0YW1wIG9mIHNvdXJjZSBm
aWxlcyBkb2Vzbid0IGhhdmUgYW55IGNoYW5nZSwgYWx0aG91Z2gNCj4gZG9fY29tcGlsZSB0YXNr
IHdpbGwgYmUgcmVidWlsZCwgdGhlIHNvdXJjZSBmaWxlcyB3aWxsIG5vdCBiZSByZWJ1aWxkLg0K
Pg0KPiBXaGVuIHdlIHJlYnVpbGQgb3VyIHByb2plY3QgYnkgbWFrZSwgd2UgYWx3YXlzIGRvICJt
YWtlIGNsZWFuIiBmaXJzdGx5IHRvIG1ha2Ugc3VyZSBzb3VyY2UgZmlsZXMgdG8gYmUgcmVidWls
ZCBpZiBvbmx5IG1ha2VmaWxlIGhhdmUgYmVlbiBjaGFuZ2VkLg0KPiBEb2VzIGl0IG1lYW5zIHdl
IG11c3QgZG8gImJpdGJha2UgeHh4IC1jIGNsZWFuc3N0YXRlIiBmaXJzdGx5IGlmIHdlDQo+IGp1
c3QgbW9kaWZ5IGJiIGZpbGUgdGhhdCBjaGFuZ2VzIGxpYmRpciBvbmx5Lg0KDQpObywgYml0YmFr
ZSBzaG91bGQgdGFrZSBjYXJlIG9mIGludmFsaWRhdGVkIHRoZSBhZmZlY3RlZCB0YXNrcyBhbmQg
cmVkb2luZyB0aGUgdGFzdCBhbmQgZGVwZW5kZW50IHRhc2suDQo=

