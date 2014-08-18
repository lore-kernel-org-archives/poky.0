Return-Path: <biannm@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F1BDE007F1; Sun, 17 Aug 2014 23:43:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FEA0E007EE
	for <poky@yoctoproject.org>; Sun, 17 Aug 2014 23:43:01 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.04,348,1406563200"; d="scan'208";a="34725756"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 18 Aug 2014 14:40:04 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id s7I6gss5031181;
	Mon, 18 Aug 2014 14:42:54 +0800
Received: from G08CNEXMBPEKD02.g08.fujitsu.local ([10.167.33.84]) by
	G08CNEXCHPEKD01.g08.fujitsu.local ([10.167.33.80]) with mapi id
	14.03.0181.006; Mon, 18 Aug 2014 14:42:59 +0800
From: "biannm@cn.fujitsu.com" <biannm@cn.fujitsu.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Thread-Topic: [poky] [Question]Does poky rebuild source when only makefile
	was modified
Thread-Index: AQHPr85GnKTVwWZo7Ee+nKpWm7EOAZvBMl/A//+Qu4CAAIx7gP//oKMAgACK5aD//8LbgAARsOeg//+EXgD/61VfoA==
Date: Mon, 18 Aug 2014 06:42:58 +0000
Message-ID: <30DC4EDFD798C94083F3E083754532CCC9D5E5@G08CNEXMBPEKD02.g08.fujitsu.local>
References: <30DC4EDFD798C94083F3E083754532CCC9AAA9@G08CNEXMBPEKD02.g08.fujitsu.local>
	<1407147842.6981.52.camel@ted>
	<30DC4EDFD798C94083F3E083754532CCC9ADE9@G08CNEXMBPEKD02.g08.fujitsu.local>
	<20140805022441.GB3867@haswell>
	<30DC4EDFD798C94083F3E083754532CCC9B013@G08CNEXMBPEKD02.g08.fujitsu.local>
	<CAMKF1soS9TDHD34wTCaQr1ZgTazZbF0u8u6dNKjgQzSzP4Sq9Q@mail.gmail.com>
	<30DC4EDFD798C94083F3E083754532CCC9B0A2@G08CNEXMBPEKD02.g08.fujitsu.local>
	<1407231867.6981.73.camel@ted>
	<30DC4EDFD798C94083F3E083754532CCC9B1AF@G08CNEXMBPEKD02.g08.fujitsu.local>
	<1407235710.6981.84.camel@ted>
In-Reply-To: <1407235710.6981.84.camel@ted>
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
X-List-Received-Date: Mon, 18 Aug 2014 06:43:11 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBSaWNoYXJkIFB1cmRpZSBbbWFp
bHRvOnJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmddDQo+IFNlbnQ6IFR1ZXNkYXks
IEF1Z3VzdCAwNSwgMjAxNCA2OjQ5IFBNDQo+IE9uIFR1ZSwgMjAxNC0wOC0wNSBhdCAxMDoyMyAr
MDAwMCwgYmlhbm5tQGNuLmZ1aml0c3UuY29tIHdyb3RlOg0KPiA+ID4gT24gVHVlLCAyMDE0LTA4
LTA1IGF0IDA1OjU3ICswMDAwLCBiaWFubm1AY24uZnVqaXRzdS5jb20gd3JvdGU6DQo+ID4gPiA+
IElmICRCICE9ICRTIGlzIHN1cHBvcnRlZCwgdGhlcmUgaXMgbm90IGEgcHJvYmxlbS4NCj4gPiA+
ID4gV2hlbiB3ZSByZWJ1aWxkIGEgcmVjaXBlIHdoZXJlICRCICE9ICRTIGlzIG5vdCBzdXBwb3J0
ZWQsIGFsdGhvdWdoDQo+ID4gPiA+IHRhc2tzIHdpbGwgYmUgcmVkb25lLCB0aGUgc291cmNlIGZp
bGVzIHdpbGwgbm90IGJlIHJlYnVpbGQgaWYgd2UNCj4gPiA+ID4ganVzdA0KPiA+ID4gY2hhbmdl
IHRoZSBsaWJkaXIuDQo+ID4gPg0KPiA+ID4gSXQgZGVwZW5kcyBvbiB0aGUgTWFrZWZpbGVzLiBT
b21lIHdvcmsgd2VsbCwgc29tZSBkb24ndC4NCj4gPg0KPiA+IFllcywgaSB0aGluayBzbyB0b28u
DQo+ID4gQW5kLCBkb2VzIHlvdSBtZWFuIHRoaXMgaXMgbm90IHRoZSBwcm9ibGVtIG9mIHlvY3Rv
LCB3ZSBkb24ndCBuZWVkIGNhcmUNCj4gaXQ/DQo+IA0KPiBXZWxsLCB5b3UgY291bGQgZm9yY2Ug
dGhlIGJ1aWxkIHN5c3RlbSB0byB3aXBlIG91dCBhbmQgcmVjb25zdHJ1Y3QgJHtTfQ0KPiBhbnkg
dGltZSB0aGVyZSB3YXMgYSBjaGFuZ2UuIEZvciBiZXR0ZXIgb3Igd29yc2Ugd2UndmUgZWZmZWN0
aXZlbHkgZGVjaWRlZA0KPiB0aGF0IGl0cyB0b28gbXVjaCBvdmVyaGVhZCBmb3IgZGF5IHRvIGRh
eSB1c2UuIElmIHlvdSBuZWVkIHRoYXQgbGV2ZWwgb2YNCj4gZGV0ZXJtaW5pc20sIHlvdSBjYW4g
d2lwZSBUTVBESVIuDQo+IA0KPiA+ID4gPiBEb2VzIHlvdSBtZWFuIHRoYXQgd2UganVzdCBtYWtl
IHRoaXMgcmVjaXBlIHRvIHN1cHBvcnQgICRCICE9ICRTDQo+ID4gPiA+IGluIHRoaXMNCj4gPiA+
IGNhc2UuDQo+ID4gPg0KPiA+ID4gWWVzLCB0aGF0IHdvdWxkIGJlIG9uZSB3YXkgdG8gc29sdmUg
dGhlIHByb2JsZW0uDQo+ID4NCj4gPiBCdXQgaG93IGNhbiBpIGRpdmlkZSB0aG9zZSByZWNpcGUg
ZnJvbSBub3JtYWwgb25lLCBpdCdzIG5vdCBlYXN5IHRvDQo+ID4gdW5kZXJzdGFuZCBmb3IgeW9j
dG8gZGV2ZWxvcGVyIGJlY2F1c2UgdGhlIHJlYnVpbGQgd2lsbCBub3QgcmVwb3J0IGFueQ0KPiBt
ZXNzYWdlIGluIHRoaXMgY2FzZS4NCj4gDQo+IEl0cyBhIGxpbWl0YXRpb24gb2YgdGhlIHNvZnR3
YXJlIHdlJ3JlIGJ1aWxkaW5nIHNvIGl0cyBub3Qgc29tZXRoaW5nIGl0cw0KPiBlYXN5IGZvciAi
WW9jdG8iIHRvIGZpeC4uLg0KPiANCg0KVGhhbmtzIGZvciB5b3VyIGFuc3dlci4NClNvcnJ5IGZv
ciBteSBsYXRlci4gXl9eDQoNCkNoZWVycywNCiBCaWFuDQo=

