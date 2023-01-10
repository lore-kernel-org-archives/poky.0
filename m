Received: from smtp2.axis.com (smtp2.axis.com [195.60.68.18])
 by mx.groups.io with SMTP id smtpd.web11.109345.1673369376485744097
 for <poky@lists.yoctoproject.org>;
 Tue, 10 Jan 2023 08:49:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=axis-central1 header.b=H0pUb1kj;
 spf=pass (domain: axis.com, ip: 195.60.68.18, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1673369377;
  x=1704905377;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=yjaeuohrFZJkoCaNfSOQPABOn7CymzvT/ebcaM3mc0g=;
  b=H0pUb1kjmbd9u3rZCaZSaUAZ3dCoiLTd6bRSGgm1OAKuisYhgyOvMqnA
   ReC2g4tZ2j9w9MGcGlFrDoc4KDj4Dvy+cdMc7KwqKXijv7totFzfUIY6R
   jByYeONFVB2pVGY2aNZyrFCr/1ajn/Dmdw/2aPj2PrXBcqALEHtV+1WM0
   CSCygghhH5vXoAtUMZ/deU2nVYs5h4drUHiH00h+b4TvNLmGux/BAM5Wk
   W5rr9A/ogOl82bcRloGYLeUL0zsHReQdDPIUaWVIC+5GMjwasANTW9LwZ
   Rc5g/D0vWsesDZ/JorJEYGodTeS4whXKQrWyjNRcg0QF7657vVdnesBA5
   Q==;
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH] poky.conf: Switch to post release name/version
Thread-Topic: [poky] [PATCH] poky.conf: Switch to post release name/version
Thread-Index: AQHZJQcm2l0FU4DX3U6RKbo43NQT2a6X2xdA
Date: Tue, 10 Jan 2023 16:49:34 +0000
Message-ID: <98c150c64275429cabad3e6de72ab727@axis.com>
References: <20230110151811.2602621-1-pkj@axis.com>
 <4f064e6c849b715805f4217d8c63563bb05e19c5.camel@linuxfoundation.org>
In-Reply-To: <4f064e6c849b715805f4217d8c63563bb05e19c5.camel@linuxfoundation.org>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBSaWNoYXJkIFB1cmRpZSA8cmlj
aGFyZC5wdXJkaWVAbGludXhmb3VuZGF0aW9uLm9yZz4NCj4gU2VudDogZGVuIDEwIGphbnVhcmkg
MjAyMyAxNjoyMQ0KPiBUbzogUGV0ZXIgS2plbGxlcnN0ZWR0IDxwZXRlci5ramVsbGVyc3RlZHRA
YXhpcy5jb20+OyBwb2t5QGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDogUmU6IFtw
b2t5XSBbUEFUQ0hdIHBva3kuY29uZjogU3dpdGNoIHRvIHBvc3QgcmVsZWFzZSBuYW1lL3ZlcnNp
b24NCj4gDQo+IE9uIFR1ZSwgMjAyMy0wMS0xMCBhdCAxNjoxOCArMDEwMCwgUGV0ZXIgS2plbGxl
cnN0ZWR0IHdyb3RlOg0KPiA+IFNpZ25lZC1vZmYtYnk6IFBldGVyIEtqZWxsZXJzdGVkdCA8cGV0
ZXIua2plbGxlcnN0ZWR0QGF4aXMuY29tPg0KPiA+IC0tLQ0KPiA+ICBtZXRhLXBva3kvY29uZi9k
aXN0cm8vcG9reS5jb25mIHwgNSArKy0tLQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL21ldGEtcG9reS9j
b25mL2Rpc3Ryby9wb2t5LmNvbmYgYi9tZXRhLXBva3kvY29uZi9kaXN0cm8vcG9reS5jb25mDQo+
ID4gaW5kZXggZGMwZThlNzZhYi4uYTg3NmRkZGU5NCAxMDA2NDQNCj4gPiAtLS0gYS9tZXRhLXBv
a3kvY29uZi9kaXN0cm8vcG9reS5jb25mDQo+ID4gKysrIGIvbWV0YS1wb2t5L2NvbmYvZGlzdHJv
L3Bva3kuY29uZg0KPiA+IEBAIC0xLDggKzEsNyBAQA0KPiA+ICBESVNUUk8gPSAicG9reSINCj4g
PiAgRElTVFJPX05BTUUgPSAiUG9reSAoWW9jdG8gUHJvamVjdCBSZWZlcmVuY2UgRGlzdHJvKSIN
Cj4gPiAtI0RJU1RST19WRVJTSU9OID0gIjQuMStzbmFwc2hvdC0ke01FVEFEQVRBX1JFVklTSU9O
fSINCj4gPiAtRElTVFJPX1ZFUlNJT04gPSAiNC4xIg0KPiA+IC1ESVNUUk9fQ09ERU5BTUUgPSAi
bGFuZ2RhbGUiDQo+ID4gK0RJU1RST19WRVJTSU9OID0gIjQuMitzbmFwc2hvdC0ke01FVEFEQVRB
X1JFVklTSU9OfSINCj4gPiArRElTVFJPX0NPREVOQU1FID0gIm1pY2tsZWRvcmUiDQo+ID4gIFNE
S19WRU5ET1IgPSAiLXBva3lzZGsiDQo+ID4gIFNES19WRVJTSU9OID0gIiR7QGQuZ2V0VmFyKCdE
SVNUUk9fVkVSU0lPTicpLnJlcGxhY2UoJ3NuYXBzaG90LSR7TUVUQURBVEFfUkVWSVNJT059Jywg
J3NuYXBzaG90Jyl9Ig0KPiA+ICBTREtfVkVSU0lPTlt2YXJkZXB2YWx1ZV0gPSAiJHtTREtfVkVS
U0lPTn0iDQo+IA0KPiBUaGUgY29kZW5hbWUgY2hhbmdlIGlzIG9rIGJ1dCB0aGUgdmVyc2lvbiBp
cyBub3QgNC4yIHBsdXMgc29tZXRoaW5nDQo+IHNpbmNlIHdlIGhhdmVuJ3QgcmVsZWFzZWQgNC4y
IHlldC4NCj4gDQo+IENoZWVycywNCj4gDQo+IFJpY2hhcmQNCg0KSSBqdXN0IGZvbGxvd2VkIGhv
dyB5b3UgZGlkIGl0IGluIGNvbW1pdCANCmU2ZjRhN2Y3NmI4YTYwZjM2NWExMTFlMGIzOGQ2ZDUw
OTBhMGIwMDMgZm9yIExhbmdkYWxlLi4uDQoNCi8vUGV0ZXINCg0K
