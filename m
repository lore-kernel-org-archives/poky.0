Received: from smtp1.axis.com (smtp1.axis.com [195.60.68.17])
 by mx.groups.io with SMTP id smtpd.web10.4884.1673382972998631903
 for <poky@lists.yoctoproject.org>;
 Tue, 10 Jan 2023 12:36:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=axis-central1 header.b=K8WJAY0y;
 spf=pass (domain: axis.com, ip: 195.60.68.17, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1673382973;
  x=1704918973;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=6hNOLBLPLUXHXX70Qs5brB5G7pzP5vhk0I0RXsW3j10=;
  b=K8WJAY0yAWSdvfbM1CGnoRqHYTzovhLRkASyMCBwTl16rfoulASmMiZl
   YkZHyvm2rjHcP2xjHeBj79N72lNOH1wxeTojKl7m4p5OiBt6gkSFzYaPJ
   hKhFzz8eUqTIFMReUHoKdJBtcQpYVNuN8FSuyERqwwrTuhO8+OBIX96ig
   wxNWb8Xg2ZZ23sOaI37uWPuWNDWdTISXOJCgRnhkesR+UdX0ikSF9Xu4G
   yq0Zscnk/CSv0lG7JurGL8ul3s1fsB2fushoVeUpifk90QhUrDZ9eaGL2
   6kwbCjui022cFmqAe8BVrUGdlk3G/BaBjGG/iAB9FsS4An9HlcfbvaIwp
   g==;
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH] poky.conf: Switch to post release name/version
Thread-Topic: [poky] [PATCH] poky.conf: Switch to post release name/version
Thread-Index: AQHZJQcm2l0FU4DX3U6RKbo43NQT2a6X2xdA///2/ICAAEdC8A==
Date: Tue, 10 Jan 2023 20:36:10 +0000
Message-ID: <33ba89a705bd4002af6bcd0fbd298d89@axis.com>
References: <20230110151811.2602621-1-pkj@axis.com>
	 <4f064e6c849b715805f4217d8c63563bb05e19c5.camel@linuxfoundation.org>
	 <98c150c64275429cabad3e6de72ab727@axis.com>
 <64e0c6f14b7e0a96bb31c68d787d4f4d89af1c38.camel@linuxfoundation.org>
In-Reply-To: <64e0c6f14b7e0a96bb31c68d787d4f4d89af1c38.camel@linuxfoundation.org>
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
MjAyMyAxODoxMQ0KPiBUbzogUGV0ZXIgS2plbGxlcnN0ZWR0IDxwZXRlci5ramVsbGVyc3RlZHRA
YXhpcy5jb20+Ow0KPiBwb2t5QGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDogUmU6
IFtwb2t5XSBbUEFUQ0hdIHBva3kuY29uZjogU3dpdGNoIHRvIHBvc3QgcmVsZWFzZSBuYW1lL3Zl
cnNpb24NCj4gDQo+IE9uIFR1ZSwgMjAyMy0wMS0xMCBhdCAxNjo0OSArMDAwMCwgUGV0ZXIgS2pl
bGxlcnN0ZWR0IHdyb3RlOg0KPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+
IEZyb206IFJpY2hhcmQgUHVyZGllIDxyaWNoYXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3Jn
Pg0KPiA+ID4gU2VudDogZGVuIDEwIGphbnVhcmkgMjAyMyAxNjoyMQ0KPiA+ID4gVG86IFBldGVy
IEtqZWxsZXJzdGVkdCA8cGV0ZXIua2plbGxlcnN0ZWR0QGF4aXMuY29tPjsNCj4gPiA+IHBva3lA
bGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiA+ID4gU3ViamVjdDogUmU6IFtwb2t5XSBbUEFUQ0hd
IHBva3kuY29uZjogU3dpdGNoIHRvIHBvc3QgcmVsZWFzZQ0KPiA+ID4gbmFtZS92ZXJzaW9uDQo+
ID4gPg0KPiA+ID4gT24gVHVlLCAyMDIzLTAxLTEwIGF0IDE2OjE4ICswMTAwLCBQZXRlciBLamVs
bGVyc3RlZHQgd3JvdGU6DQo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFBldGVyIEtqZWxsZXJzdGVk
dCA8cGV0ZXIua2plbGxlcnN0ZWR0QGF4aXMuY29tPg0KPiA+ID4gPiAtLS0NCj4gPiA+ID4gwqBt
ZXRhLXBva3kvY29uZi9kaXN0cm8vcG9reS5jb25mIHwgNSArKy0tLQ0KPiA+ID4gPiDCoDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+ID4gPiA+DQo+ID4g
PiA+IGRpZmYgLS1naXQgYS9tZXRhLXBva3kvY29uZi9kaXN0cm8vcG9reS5jb25mIGIvbWV0YS0N
Cj4gPiA+ID4gcG9reS9jb25mL2Rpc3Ryby9wb2t5LmNvbmYNCj4gPiA+ID4gaW5kZXggZGMwZThl
NzZhYi4uYTg3NmRkZGU5NCAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvbWV0YS1wb2t5L2NvbmYvZGlz
dHJvL3Bva3kuY29uZg0KPiA+ID4gPiArKysgYi9tZXRhLXBva3kvY29uZi9kaXN0cm8vcG9reS5j
b25mDQo+ID4gPiA+IEBAIC0xLDggKzEsNyBAQA0KPiA+ID4gPiDCoERJU1RSTyA9ICJwb2t5Ig0K
PiA+ID4gPiDCoERJU1RST19OQU1FID0gIlBva3kgKFlvY3RvIFByb2plY3QgUmVmZXJlbmNlIERp
c3RybykiDQo+ID4gPiA+IC0jRElTVFJPX1ZFUlNJT04gPSAiNC4xK3NuYXBzaG90LSR7TUVUQURB
VEFfUkVWSVNJT059Ig0KPiA+ID4gPiAtRElTVFJPX1ZFUlNJT04gPSAiNC4xIg0KPiA+ID4gPiAt
RElTVFJPX0NPREVOQU1FID0gImxhbmdkYWxlIg0KPiA+ID4gPiArRElTVFJPX1ZFUlNJT04gPSAi
NC4yK3NuYXBzaG90LSR7TUVUQURBVEFfUkVWSVNJT059Ig0KPiA+ID4gPiArRElTVFJPX0NPREVO
QU1FID0gIm1pY2tsZWRvcmUiDQo+ID4gPiA+IMKgU0RLX1ZFTkRPUiA9ICItcG9reXNkayINCj4g
PiA+ID4gwqBTREtfVkVSU0lPTiA9ICIke0BkLmdldFZhcignRElTVFJPX1ZFUlNJT04nKS5yZXBs
YWNlKCdzbmFwc2hvdC0NCj4gPiA+ID4gJHtNRVRBREFUQV9SRVZJU0lPTn0nLCAnc25hcHNob3Qn
KX0iDQo+ID4gPiA+IMKgU0RLX1ZFUlNJT05bdmFyZGVwdmFsdWVdID0gIiR7U0RLX1ZFUlNJT059
Ig0KPiA+ID4NCj4gPiA+IFRoZSBjb2RlbmFtZSBjaGFuZ2UgaXMgb2sgYnV0IHRoZSB2ZXJzaW9u
IGlzIG5vdCA0LjIgcGx1cyBzb21ldGhpbmcNCj4gPiA+IHNpbmNlIHdlIGhhdmVuJ3QgcmVsZWFz
ZWQgNC4yIHlldC4NCj4gPiA+DQo+ID4gPiBDaGVlcnMsDQo+ID4gPg0KPiA+ID4gUmljaGFyZA0K
PiA+DQo+ID4gSSBqdXN0IGZvbGxvd2VkIGhvdyB5b3UgZGlkIGl0IGluIGNvbW1pdA0KPiA+IGU2
ZjRhN2Y3NmI4YTYwZjM2NWExMTFlMGIzOGQ2ZDUwOTBhMGIwMDMgZm9yIExhbmdkYWxlLi4uDQo+
IA0KPiBUaGUga2V5IGRpZmZlcmVuY2UgaXMgcHJvYmFibHkgdGhlIHRpbWluZywgd2FzIHRoYXQg
cG9zdCByZWxlYXNlIG9yDQo+IGNsb3NlIHRvIGl0Pw0KPiANCj4gQ2hlZXJzLA0KPiANCj4gUmlj
aGFyZA0KDQpJdCB3YXMgcmVsYXRpdmVseSBzb29uIGFmdGVyIHRoZSA0LjAgcmVsZWFzZSAoYWJv
dXQgMTUwIGNvbW1pdHMgaW4gcG9reSkuDQpJdCB3YXMgZG9uZSAxNzAyIGNvbW1pdHMgYmVmb3Jl
IHRoZSA0LjEgcmVsZWFzZToNCg0KJCBnaXQgZGVzY3JpYmUgLS1jb250YWlucyAwN2M2Mjc2NDVk
YTA3ODVhY2I1NGE2MzVhY2ZkODU5M2Y5MTE4MTM1IC0tbWF0Y2g9J3lvY3RvLSonDQp5b2N0by00
LjF+MTcwMg0KDQovL1BldGVyDQoNCg==
