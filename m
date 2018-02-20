Return-Path: <eric.di-schiena@thalesgroup.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D784E00EB1; Tue, 20 Feb 2018 00:50:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.93.158.29 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from thsbbfxrt02p.thalesgroup.com (thsbbfxrt02p.thalesgroup.com
	[192.93.158.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 175FAE00E08
	for <poky@yoctoproject.org>; Tue, 20 Feb 2018 00:50:34 -0800 (PST)
Received: from thsbbfxrt02p.thalesgroup.com (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 3zlvTS26dpz5Js
	for <poky@yoctoproject.org>; Tue, 20 Feb 2018 09:50:36 +0100 (CET)
From: DI SCHIENA Eric <eric.di-schiena@thalesgroup.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Tue, 20 Feb 2018 09:50:32 +0100
Thread-Topic: [poky] Build rpi-basic-image Pi3 with kernel-devsrc error :
	conflicting requests nothing provides /bin/awk needed by
	kernel-devsrc-1.0-r0.raspberrypi3
Thread-Index: AdOkPjxrPMoJl6d/S764VCtjXaD3jwAYe/HwAJdURkAAypQAgA==
Message-ID: <967D67AEC428424E83B5D1DABFB91AA3863AB01FD6@THSONEA01CMS13P.one.grp>
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
X-List-Received-Date: Tue, 20 Feb 2018 08:50:36 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Q2FuIHNvbWVvbmUgZXhwbGFpbiBob3cgdG8gaW1wbGVtZW50IHByZXZpb3VzIHByb3Bvc2l0aW9u
IHRvIGNvcnJlY3QgbXkgaW5pdGlhbCBpc3N1ZSA/DQoNClByb3Bvc2l0aW9uIGlzIGJhc2VkIG9u
Og0KaHR0cDovL2dpdC55b2N0b3Byb2plY3Qub3JnL2NnaXQvY2dpdC5jZ2kvbGludXgteW9jdG8v
Y29tbWl0Lz9pZD04YWYxMWMxY2RkOGZhMDgyMTdlNzAyYjU3Y2Y5NmU5MDMwZGI1MmIyDQoNClJl
Z2FyZHMNCg0KDQotLS0tLU1lc3NhZ2UgZCdvcmlnaW5lLS0tLS0NCkRlwqA6IERJIFNDSElFTkEg
RXJpYw0KRW52b3nDqcKgOiBtYXJkaSAxMyBmw6l2cmllciAyMDE4IDA5OjAzDQrDgMKgOiAnS2hl
bSBSYWonDQpPYmpldMKgOiBSRTogW3Bva3ldIEJ1aWxkIHJwaS1iYXNpYy1pbWFnZSBQaTMgd2l0
aCBrZXJuZWwtZGV2c3JjIGVycm9yIDogY29uZmxpY3RpbmcgcmVxdWVzdHMgbm90aGluZyBwcm92
aWRlcyAvYmluL2F3ayBuZWVkZWQgYnkga2VybmVsLWRldnNyYy0xLjAtcjAucmFzcGJlcnJ5cGkz
DQoNCkhpLA0KVGhhbmtzIGZvciB5b3VyIHJlcGx5IGJ1dCBjYW4geW91IGV4cGxhaW4gbGl0dGxl
IGJpdCBtb3JlLg0KSSBkaWQgZmluZCB0aGlzIHBhZ2UgYnV0IGRpZCBub3Qga25vdyB3aGF0IHRv
IGRvIHdpdGggaXQgKGV2ZW4gbW9yZSB0aGUgbGFzdCBzZW50ZW5jZTogImJ1dCBpdCBtYXkiLCBz
ZWVtcyBub3QgZW5kZWQpID8/DQoNClJlZ2FyZHMNCkVyaWMNCg0KDQotLS0tLU1lc3NhZ2UgZCdv
cmlnaW5lLS0tLS0NCkRlwqA6IEtoZW0gUmFqIFttYWlsdG86cmFqLmtoZW1AZ21haWwuY29tXSBF
bnZvecOpwqA6IGx1bmRpIDEyIGbDqXZyaWVyIDIwMTggMjE6MTYgw4DCoDogREkgU0NISUVOQSBF
cmljIENjwqA6IHBva3lAeW9jdG9wcm9qZWN0Lm9yZyBPYmpldMKgOiBSZTogW3Bva3ldIEJ1aWxk
IHJwaS1iYXNpYy1pbWFnZSBQaTMgd2l0aCBrZXJuZWwtZGV2c3JjIGVycm9yIDogY29uZmxpY3Rp
bmcgcmVxdWVzdHMgbm90aGluZyBwcm92aWRlcyAvYmluL2F3ayBuZWVkZWQgYnkga2VybmVsLWRl
dnNyYy0xLjAtcjAucmFzcGJlcnJ5cGkzDQoNCk9uIE1vbiwgRmViIDEyLCAyMDE4IGF0IDg6NDMg
QU0sIERJIFNDSElFTkEgRXJpYyA8ZXJpYy5kaS1zY2hpZW5hQHRoYWxlc2dyb3VwLmNvbT4gd3Jv
dGU6DQo+IEhlbGxvLA0KPg0KPiBJ4oCZaGF2ZSB0cmllZCB0byBnZW5lcmF0ZSBycGktYmFzaWMt
aW1hZ2UgZm9yIGEgUGkzIHVzaW5nIFJvY2tvIGJyYW5jaCANCj4gb2YgcG9reS4NCj4NCj4gSSBz
dWNjZWVkZWQgZG9pbmcgaXQgYnV0IHdoZW4gSSBhZGRlZCB0aGUgZm9sbG93aW5nIHZhcmlhYmxl
IGluIG15DQo+IGNvbmYvbG9jYWwuY29uZjoNCj4NCj4NCj4NCj4gVE9PTENIQUlOX1RBUkdFVF9U
QVNLX2FwcGVuZCA9ICIga2VybmVsLWRldnNyYyINCj4NCj4NCj4NCj4gVGhlbiBJIGdvdCBmb2xs
b3dpbmcgaXNzdWU6DQo+DQo+DQo+DQo+IFByb2JsZW06IGNvbmZsaWN0aW5nIHJlcXVlc3RzDQo+
DQo+ICAgLSBub3RoaW5nIHByb3ZpZGVzIC9iaW4vYXdrIG5lZWRlZCBieQ0KPiBrZXJuZWwtZGV2
c3JjLTEuMC1yMC5yYXNwYmVycnlwaTMNCj4NCj4NCj4NCj4gTXkgaG9zdCBpcyBhbiBVYnVudHUg
MTQuMDRMVFMgKHVuZGVyIFZpcnR1YWxCb3gpDQo+DQo+DQo+DQo+IEkgc3BlbnQgcXVpdGUgYSBs
b3Qgb2YgdGltZSB0byBmb3VuZCBvdXQgd2hhdCBoYXBwZW5zIGJ5IGdvb2dsaW5nICBidXQgDQo+
IHVuZm9ydHVuYXRlbHkgSSBkaWQgbm90IGZpbmQgYSBzb2x1dGlvbi4NCj4NCj4gQ2FuIGFueWJv
ZHkgaGVscCBtZSA/DQo+DQo+DQoNClBsZWFzZSBjaGVycnktcGljaw0KaHR0cDovL2dpdC55b2N0
b3Byb2plY3Qub3JnL2NnaXQvY2dpdC5jZ2kvbGludXgteW9jdG8vY29tbWl0Lz9pZD04YWYxMWMx
Y2RkOGZhMDgyMTdlNzAyYjU3Y2Y5NmU5MDMwZGI1MmIyDQoNCnRvIGxpbnV4LXJhc3BiZXJyeXBp
IGtlcm5lbCByZWNpcGUgYW5kIGlmIGl0IHdvcmtzLCBwcm9wb3NlIGl0IGZvciBtZXRhLXJhc3Bi
ZXJyeXBpDQoNCj4NCj4gUmVnYXJkcw0KPg0KPg0KPg0KPg0KPg0KPg0KPiAtLQ0KPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBwb2t5IG1haWxpbmcg
bGlzdA0KPiBwb2t5QHlvY3RvcHJvamVjdC5vcmcNCj4gaHR0cHM6Ly9saXN0cy55b2N0b3Byb2pl
Y3Qub3JnL2xpc3RpbmZvL3Bva3kNCj4NCg==

