Return-Path: <biannm@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4ED75E00799; Tue,  5 Aug 2014 03:23:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4653E004DD
	for <poky@yoctoproject.org>; Tue,  5 Aug 2014 03:23:05 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.04,268,1406563200"; d="scan'208";a="34200874"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 05 Aug 2014 18:20:13 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id s75AN0nk001545;
	Tue, 5 Aug 2014 18:23:00 +0800
Received: from G08CNEXMBPEKD02.g08.fujitsu.local ([10.167.33.84]) by
	G08CNEXCHPEKD02.g08.fujitsu.local ([10.167.33.83]) with mapi id
	14.03.0181.006; Tue, 5 Aug 2014 18:23:06 +0800
From: "biannm@cn.fujitsu.com" <biannm@cn.fujitsu.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Thread-Topic: [poky] [Question]Does poky rebuild source when only makefile
	was modified
Thread-Index: AQHPr85GnKTVwWZo7Ee+nKpWm7EOAZvBMl/A//+Qu4CAAIx7gP//oKMAgACK5aD//8LbgAARsOeg
Date: Tue, 5 Aug 2014 10:23:05 +0000
Message-ID: <30DC4EDFD798C94083F3E083754532CCC9B1AF@G08CNEXMBPEKD02.g08.fujitsu.local>
References: <30DC4EDFD798C94083F3E083754532CCC9AAA9@G08CNEXMBPEKD02.g08.fujitsu.local>
	<1407147842.6981.52.camel@ted>
	<30DC4EDFD798C94083F3E083754532CCC9ADE9@G08CNEXMBPEKD02.g08.fujitsu.local>
	<20140805022441.GB3867@haswell>
	<30DC4EDFD798C94083F3E083754532CCC9B013@G08CNEXMBPEKD02.g08.fujitsu.local>
	<CAMKF1soS9TDHD34wTCaQr1ZgTazZbF0u8u6dNKjgQzSzP4Sq9Q@mail.gmail.com>
	<30DC4EDFD798C94083F3E083754532CCC9B0A2@G08CNEXMBPEKD02.g08.fujitsu.local>
	<1407231867.6981.73.camel@ted>
In-Reply-To: <1407231867.6981.73.camel@ted>
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
X-List-Received-Date: Tue, 05 Aug 2014 10:23:11 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBPbiBUdWUsIDIwMTQtMDgtMDUgYXQgMDU6NTcgKzAwMDAsIGJpYW5ubUBjbi5mdWppdHN1LmNv
bSB3cm90ZToNCj4gPiBJZiAkQiAhPSAkUyBpcyBzdXBwb3J0ZWQsIHRoZXJlIGlzIG5vdCBhIHBy
b2JsZW0uDQo+ID4gV2hlbiB3ZSByZWJ1aWxkIGEgcmVjaXBlIHdoZXJlICRCICE9ICRTIGlzIG5v
dCBzdXBwb3J0ZWQsIGFsdGhvdWdoDQo+ID4gdGFza3Mgd2lsbCBiZSByZWRvbmUsIHRoZSBzb3Vy
Y2UgZmlsZXMgd2lsbCBub3QgYmUgcmVidWlsZCBpZiB3ZSBqdXN0DQo+IGNoYW5nZSB0aGUgbGli
ZGlyLg0KPiANCj4gSXQgZGVwZW5kcyBvbiB0aGUgTWFrZWZpbGVzLiBTb21lIHdvcmsgd2VsbCwg
c29tZSBkb24ndC4NCg0KWWVzLCBpIHRoaW5rIHNvIHRvby4NCkFuZCwgZG9lcyB5b3UgbWVhbiB0
aGlzIGlzIG5vdCB0aGUgcHJvYmxlbSBvZiB5b2N0bywgd2UgZG9uJ3QgbmVlZCBjYXJlIGl0Pw0K
DQo+IA0KPiA+IERvZXMgeW91IG1lYW4gdGhhdCB3ZSBqdXN0IG1ha2UgdGhpcyByZWNpcGUgdG8g
c3VwcG9ydCAgJEIgIT0gJFMgaW4gdGhpcw0KPiBjYXNlLg0KPiANCj4gWWVzLCB0aGF0IHdvdWxk
IGJlIG9uZSB3YXkgdG8gc29sdmUgdGhlIHByb2JsZW0uDQoNCkJ1dCBob3cgY2FuIGkgZGl2aWRl
IHRob3NlIHJlY2lwZSBmcm9tIG5vcm1hbCBvbmUsDQppdCdzIG5vdCBlYXN5IHRvIHVuZGVyc3Rh
bmQgZm9yIHlvY3RvIGRldmVsb3BlciBiZWNhdXNlIHRoZSByZWJ1aWxkIHdpbGwgbm90IHJlcG9y
dCBhbnkgbWVzc2FnZSBpbiB0aGlzIGNhc2UuDQoNClJlZ2FyZHMNCiBCaWFuDQoNCg==

