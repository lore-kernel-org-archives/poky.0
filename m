Received: from smtp2.axis.com (smtp2.axis.com [195.60.68.18])
 by mx.groups.io with SMTP id smtpd.web10.4185.1643318179510775103
 for <poky@lists.yoctoproject.org>;
 Thu, 27 Jan 2022 13:16:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=axis-central1 header.b=R7CbwU7l;
 spf=pass (domain: axis.com, ip: 195.60.68.18, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1643318180;
  x=1674854180;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=UhYPBzDb+eZih+qyTpwNqVAhDAjMNWaS+9rmHdRcJaA=;
  b=R7CbwU7luNBZfG2VDRMTVXsqO+WEAxdXZGYyheI/oJXhrCxZQoWD8Q+s
   Eu1xjJjA4o8jV6SHyq0bxj1sVYez7JFdkhkzG9sJNlWdEvVWm1Wrp880u
   +KGkL7WNEdR0Zb84y0zGyH9lEwCFrnUUoUJdWgOrWCA/pD2MCyTQLEqFP
   m8MadDmMq0OnNgH4FbXWlXfU50PfylFGxrK/wPhvEMQKjmLyI/gKkCW08
   /rCyHykSyTfMnU/Pnpwgy8O5pY4/uO4B4VabeB64whhwTu6HZCvmRsbJL
   kHy/pMLogUKeBhigg/3bxgshP0w3I1Cy6ijDbC58+nBd46Ju6g+fOFVXz
   g==;
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: Michael Opdenacker <michael.opdenacker@bootlin.com>,
	"poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH v2] local.conf.sample: use https instead of http for SSTATE_MIRRORS
Thread-Topic: [poky] [PATCH v2] local.conf.sample: use https instead of http
 for SSTATE_MIRRORS
Thread-Index: AQHYEqG3OAxfMLYiEEWXa4fEl5Lnu6x1KKQwgAHSS4CAAGMzoA==
Date: Thu, 27 Jan 2022 21:16:16 +0000
Message-ID: <868601cd1bb648ce87122f097639a23b@axis.com>
References: <16CDCBDE8210E458.21331@lists.yoctoproject.org>
 <20220126104429.1062137-1-michael.opdenacker@bootlin.com>
 <bd6c8c51ff8748f593aec471a1382fd7@axis.com>
 <451aaa24-ee59-e040-ded7-370d2188c599@bootlin.com>
In-Reply-To: <451aaa24-ee59-e040-ded7-370d2188c599@bootlin.com>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBNaWNoYWVsIE9wZGVuYWNrZXIg
PG1pY2hhZWwub3BkZW5hY2tlckBib290bGluLmNvbT4NCj4gU2VudDogZGVuIDI3IGphbnVhcmkg
MjAyMiAxNzoxMQ0KPiBUbzogUGV0ZXIgS2plbGxlcnN0ZWR0IDxwZXRlci5ramVsbGVyc3RlZHRA
YXhpcy5jb20+Ow0KPiBwb2t5QGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDogUmU6
IFtwb2t5XSBbUEFUQ0ggdjJdIGxvY2FsLmNvbmYuc2FtcGxlOiB1c2UgaHR0cHMgaW5zdGVhZCBv
Zg0KPiBodHRwIGZvciBTU1RBVEVfTUlSUk9SUw0KPiANCj4gSGkgUGV0ZXIsDQo+IA0KPiBUaGFu
ayB5b3UgdmVyeSBtdWNoIGZvciB0aGUgcmV2aWV3IQ0KPiANCj4gT24gMS8yNi8yMiAxMjoyNCwg
UGV0ZXIgS2plbGxlcnN0ZWR0IHdyb3RlOg0KPiA+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LQ0KPiA+PiBGcm9tOiBwb2t5QGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgPHBva3lAbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZz4gT24gQmVoYWxmIE9mIE1pY2hhZWwgT3BkZW5hY2tlcg0KPiA+PiBTZW50
OiBkZW4gMjYgamFudWFyaSAyMDIyIDExOjQ0DQo+ID4+IFRvOiBwb2t5QGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcNCj4gPj4gQ2M6IE1pY2hhZWwgT3BkZW5hY2tlciA8bWljaGFlbC5vcGRlbmFja2Vy
QGJvb3RsaW4uY29tPg0KPiA+PiBTdWJqZWN0OiBbcG9reV0gW1BBVENIIHYyXSBsb2NhbC5jb25m
LnNhbXBsZTogdXNlIGh0dHBzIGluc3RlYWQgb2YgaHR0cCBmb3IgU1NUQVRFX01JUlJPUlMNCj4g
Pj4NCj4gPj4gQm90aCBodHRwIGFuZCBodHRwcyB3b3JrLCBidXQgd2Ugc2hvdWxkIGdldCBmZXdl
ciBxdWVzdGlvbnMNCj4gPj4gd2l0aCBodHRwcw0KPiA+Pg0KPiA+PiBTaWduZWQtb2ZmLWJ5OiBN
aWNoYWVsIE9wZGVuYWNrZXIgPG1pY2hhZWwub3BkZW5hY2tlckBib290bGluLmNvbT4NCj4gPj4g
LS0tDQo+ID4+ICBtZXRhLXBva3kvY29uZi9sb2NhbC5jb25mLnNhbXBsZSB8IDYgKysrLS0tDQo+
ID4+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiA+
Pg0KPiA+PiBkaWZmIC0tZ2l0IGEvbWV0YS1wb2t5L2NvbmYvbG9jYWwuY29uZi5zYW1wbGUgYi9t
ZXRhLXBva3kvY29uZi9sb2NhbC5jb25mLnNhbXBsZQ0KPiA+PiBpbmRleCA3YmRiYmEwLi4zMTAw
ZWIxIDEwMDY0NA0KPiA+PiAtLS0gYS9tZXRhLXBva3kvY29uZi9sb2NhbC5jb25mLnNhbXBsZQ0K
PiA+PiArKysgYi9tZXRhLXBva3kvY29uZi9sb2NhbC5jb25mLnNhbXBsZQ0KPiA+PiBAQCAtMjA2
LDcgKzIwNiw3IEBAIEJCX0RJU0tNT05fRElSUyA/Pz0gIlwNCj4gPj4gICMgdXNlZCB0byBhY2Nl
bGVyYXRlIGJ1aWxkIHRpbWUuIFRoaXMgdmFyaWFibGUgY2FuIGJlIHVzZWQgdG8gY29uZmlndXJl
IHRoZSBzeXN0ZW0NCj4gPj4gICMgdG8gc2VhcmNoIG90aGVyIG1pcnJvciBsb2NhdGlvbnMgZm9y
IHRoZXNlIG9iamVjdHMgYmVmb3JlIGl0IGJ1aWxkcyB0aGUgZGF0YSBpdHNlbGYuDQo+ID4+ICAj
DQo+ID4+IC0jIFRoaXMgY2FuIGJlIGEgZmlsZXN5c3RlbSBkaXJlY3RvcnksIG9yIGEgcmVtb3Rl
IHVybCBzdWNoIGFzIGh0dHAgb3IgZnRwLiBUaGVzZQ0KPiA+PiArIyBUaGlzIGNhbiBiZSBhIGZp
bGVzeXN0ZW0gZGlyZWN0b3J5LCBvciBhIHJlbW90ZSB1cmwgc3VjaCBhcyBodHRwcyBvciBmdHAu
IFRoZXNlDQo+ID4+ICAjIHdvdWxkIGNvbnRhaW4gdGhlIHNzdGF0ZS1jYWNoZSByZXN1bHRzIGZy
b20gcHJldmlvdXMgYnVpbGRzIChwb3NzaWJseSBmcm9tIG90aGVyDQo+ID4+ICAjIG1hY2hpbmVz
KS4gVGhpcyB2YXJpYWJsZSB3b3JrcyBsaWtlIGZldGNoZXIgTUlSUk9SUy9QUkVNSVJST1JTIGFu
ZCBwb2ludHMgdG8gdGhlDQo+ID4+ICAjIGNhY2hlIGxvY2F0aW9ucyB0byBjaGVjayBmb3IgdGhl
IHNoYXJlZCBvYmplY3RzLg0KPiA+PiBAQCAtMjE0LDcgKzIxNCw3IEBAIEJCX0RJU0tNT05fRElS
UyA/Pz0gIlwNCj4gPj4gICMgYXQgdGhlIGVuZCBhcyBzaG93biBpbiB0aGUgZXhhbXBsZXMgYmVs
b3cuIFRoaXMgd2lsbCBiZSBzdWJzdGl0dXRlZCB3aXRoIHRoZQ0KPiA+PiAgIyBjb3JyZWN0IHBh
dGggd2l0aGluIHRoZSBkaXJlY3Rvcnkgc3RydWN0dXJlLg0KPiA+PiAgI1NTVEFURV9NSVJST1JT
ID89ICJcDQo+ID4+IC0jZmlsZTovLy4qIGh0dHA6Ly9zb21lc2VydmVyLnRsZC9zaGFyZS9zc3Rh
dGUvUEFUSDtkb3dubG9hZGZpbGVuYW1lPVBBVEggXG4gXA0KPiA+PiArI2ZpbGU6Ly8uKiBodHRw
czovL3NvbWVzZXJ2ZXIudGxkL3NoYXJlL3NzdGF0ZS9QQVRIO2Rvd25sb2FkZmlsZW5hbWU9UEFU
SCBcbiBcDQo+ID4NCj4gPiBXaGlsZSB0aGVyZSwgeW91IG1heSBhcyB3ZWxsIHJlbW92ZSB0aGUg
IlxuIi4NCj4gDQo+IEdvb2QgaWRlYS4gV2UgYWxyZWFkeSBkaWQgdGhhdCBpbiBvdGhlciBwbGFj
ZXMuDQo+IEhvd2V2ZXIsIHNob3VsZG4ndCBpdCBiZSBhIHNlcGFyYXRlIGNvbW1pdD8gSSBjYW4g
cmVhZCBRdWVudGluJ3MgbGlwcyA7LSkNCg0KVHJ1ZS4gVGhlcmUgYXJlIGEgY291cGxlIG9mIG90
aGVyIHBsYWNlcyB0aGF0IGNhbiBiZSB1cGRhdGVkIGFzIHdlbGwuIA0KSSdsbCBzZW5kIGEgcGF0
Y2guDQoNCj4gQ2hlZXJzDQo+IE1pY2hhZWwuDQo+IA0KPiAtLQ0KPiBNaWNoYWVsIE9wZGVuYWNr
ZXIsIEJvb3RsaW4NCj4gRW1iZWRkZWQgTGludXggYW5kIEtlcm5lbCBlbmdpbmVlcmluZw0KPiBo
dHRwczovL2Jvb3RsaW4uY29tDQoNCi8vUGV0ZXINCg0K
