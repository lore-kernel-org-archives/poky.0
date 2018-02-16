Return-Path: <eric.di-schiena@thalesgroup.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FA2CE00F22; Fri, 16 Feb 2018 00:13:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.54.144.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 193 seconds by postgrey-1.32 at yocto-www;
	Fri, 16 Feb 2018 00:13:28 PST
Received: from thsbbfxrt01p.thalesgroup.com (thsbbfxrt01p.thalesgroup.com
	[192.54.144.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88ACCE00EC5
	for <poky@yoctoproject.org>; Fri, 16 Feb 2018 00:13:28 -0800 (PST)
Received: from thsbbfxrt01p.thalesgroup.com (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 3zjQmj2zSXzbR6
	for <poky@yoctoproject.org>; Fri, 16 Feb 2018 09:10:13 +0100 (CET)
From: DI SCHIENA Eric <eric.di-schiena@thalesgroup.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Fri, 16 Feb 2018 09:10:12 +0100
Thread-Topic: [poky] Build rpi-basic-image Pi3 with kernel-devsrc error :
	conflicting requests nothing provides /bin/awk needed by
	kernel-devsrc-1.0-r0.raspberrypi3
Thread-Index: AdOkPjxrPMoJl6d/S764VCtjXaD3jwAYe/HwAJdURkA=
Message-ID: <967D67AEC428424E83B5D1DABFB91AA3863AA8FEF2@THSONEA01CMS13P.one.grp>
References: <967D67AEC428424E83B5D1DABFB91AA3863A93FFF0@THSONEA01CMS13P.one.grp>
	<CAMKF1srmrb77JHnER3VyoWeyyv=Px=3M6ps2MWtwm4H4rXsBeA@mail.gmail.com> 
Accept-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: fr-FR
x-pmwin-version: 3.1.3.0, Antivirus-Engine: 3.70.2, Antivirus-Data: 5.48
MIME-Version: 1.0
Subject: Re: Build rpi-basic-image Pi3 with kernel-devsrc error : conflicting requests nothing provides /bin/awk needed by kernel-devsrc-1.0-r0.raspberrypi3
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
X-List-Received-Date: Fri, 16 Feb 2018 08:13:29 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCi0tLS0tTWVzc2FnZSBkJ29yaWdpbmUtLS0tLQ0KRGXCoDogREkgU0NISUVOQSBFcmljIA0K
RW52b3nDqcKgOiBtYXJkaSAxMyBmw6l2cmllciAyMDE4IDA5OjAzDQrDgMKgOiAnS2hlbSBSYWon
DQpPYmpldMKgOiBSRTogW3Bva3ldIEJ1aWxkIHJwaS1iYXNpYy1pbWFnZSBQaTMgd2l0aCBrZXJu
ZWwtZGV2c3JjIGVycm9yIDogY29uZmxpY3RpbmcgcmVxdWVzdHMgbm90aGluZyBwcm92aWRlcyAv
YmluL2F3ayBuZWVkZWQgYnkga2VybmVsLWRldnNyYy0xLjAtcjAucmFzcGJlcnJ5cGkzDQoNCkhp
LA0KVGhhbmtzIGZvciB5b3VyIHJlcGx5IGJ1dCBjYW4geW91IGV4cGxhaW4gbGl0dGxlIGJpdCBt
b3JlLg0KSSBkaWQgZmluZCB0aGlzIHBhZ2UgYnV0IGRpZCBub3Qga25vdyB3aGF0IHRvIGRvIHdp
dGggaXQgKGV2ZW4gbW9yZSB0aGUgbGFzdCBzZW50ZW5jZTogImJ1dCBpdCBtYXkiLCBzZWVtcyBu
b3QgZW5kZWQpID8/DQoNClJlZ2FyZHMNCkVyaWMNCg0KDQotLS0tLU1lc3NhZ2UgZCdvcmlnaW5l
LS0tLS0NCkRlwqA6IEtoZW0gUmFqIFttYWlsdG86cmFqLmtoZW1AZ21haWwuY29tXSBFbnZvecOp
wqA6IGx1bmRpIDEyIGbDqXZyaWVyIDIwMTggMjE6MTYgw4DCoDogREkgU0NISUVOQSBFcmljIENj
wqA6IHBva3lAeW9jdG9wcm9qZWN0Lm9yZyBPYmpldMKgOiBSZTogW3Bva3ldIEJ1aWxkIHJwaS1i
YXNpYy1pbWFnZSBQaTMgd2l0aCBrZXJuZWwtZGV2c3JjIGVycm9yIDogY29uZmxpY3RpbmcgcmVx
dWVzdHMgbm90aGluZyBwcm92aWRlcyAvYmluL2F3ayBuZWVkZWQgYnkga2VybmVsLWRldnNyYy0x
LjAtcjAucmFzcGJlcnJ5cGkzDQoNCk9uIE1vbiwgRmViIDEyLCAyMDE4IGF0IDg6NDMgQU0sIERJ
IFNDSElFTkEgRXJpYyA8ZXJpYy5kaS1zY2hpZW5hQHRoYWxlc2dyb3VwLmNvbT4gd3JvdGU6DQo+
IEhlbGxvLA0KPg0KPiBJ4oCZaGF2ZSB0cmllZCB0byBnZW5lcmF0ZSBycGktYmFzaWMtaW1hZ2Ug
Zm9yIGEgUGkzIHVzaW5nIFJvY2tvIGJyYW5jaCANCj4gb2YgcG9reS4NCj4NCj4gSSBzdWNjZWVk
ZWQgZG9pbmcgaXQgYnV0IHdoZW4gSSBhZGRlZCB0aGUgZm9sbG93aW5nIHZhcmlhYmxlIGluIG15
DQo+IGNvbmYvbG9jYWwuY29uZjoNCj4NCj4NCj4NCj4gVE9PTENIQUlOX1RBUkdFVF9UQVNLX2Fw
cGVuZCA9ICIga2VybmVsLWRldnNyYyINCj4NCj4NCj4NCj4gVGhlbiBJIGdvdCBmb2xsb3dpbmcg
aXNzdWU6DQo+DQo+DQo+DQo+IFByb2JsZW06IGNvbmZsaWN0aW5nIHJlcXVlc3RzDQo+DQo+ICAg
LSBub3RoaW5nIHByb3ZpZGVzIC9iaW4vYXdrIG5lZWRlZCBieQ0KPiBrZXJuZWwtZGV2c3JjLTEu
MC1yMC5yYXNwYmVycnlwaTMNCj4NCj4NCj4NCj4gTXkgaG9zdCBpcyBhbiBVYnVudHUgMTQuMDRM
VFMgKHVuZGVyIFZpcnR1YWxCb3gpDQo+DQo+DQo+DQo+IEkgc3BlbnQgcXVpdGUgYSBsb3Qgb2Yg
dGltZSB0byBmb3VuZCBvdXQgd2hhdCBoYXBwZW5zIGJ5IGdvb2dsaW5nICBidXQgDQo+IHVuZm9y
dHVuYXRlbHkgSSBkaWQgbm90IGZpbmQgYSBzb2x1dGlvbi4NCj4NCj4gQ2FuIGFueWJvZHkgaGVs
cCBtZSA/DQo+DQo+DQoNClBsZWFzZSBjaGVycnktcGljaw0KaHR0cDovL2dpdC55b2N0b3Byb2pl
Y3Qub3JnL2NnaXQvY2dpdC5jZ2kvbGludXgteW9jdG8vY29tbWl0Lz9pZD04YWYxMWMxY2RkOGZh
MDgyMTdlNzAyYjU3Y2Y5NmU5MDMwZGI1MmIyDQoNCnRvIGxpbnV4LXJhc3BiZXJyeXBpIGtlcm5l
bCByZWNpcGUgYW5kIGlmIGl0IHdvcmtzLCBwcm9wb3NlIGl0IGZvciBtZXRhLXJhc3BiZXJyeXBp
DQoNCj4NCj4gUmVnYXJkcw0KPg0KPg0KPg0KPg0KPg0KPg0KPiAtLQ0KPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBwb2t5IG1haWxpbmcgbGlzdA0K
PiBwb2t5QHlvY3RvcHJvamVjdC5vcmcNCj4gaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3Jn
L2xpc3RpbmZvL3Bva3kNCj4NCg==

