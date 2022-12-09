Received: from smtp2.axis.com (smtp2.axis.com [195.60.68.18])
 by mx.groups.io with SMTP id smtpd.web11.8287.1670607477923756055
 for <poky@lists.yoctoproject.org>;
 Fri, 09 Dec 2022 09:37:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=axis-central1 header.b=hUJd+pgq;
 spf=pass (domain: axis.com, ip: 195.60.68.18, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1670607478;
  x=1702143478;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=mOvgr+T8xDncqfLIif9lEc0jWFWbuKqgsR/vO9zPaGs=;
  b=hUJd+pgqvONfi6HAj7uUY4TSiNY2Kn4YbJLCmeqh/8sEeM8tlTWRwrjP
   khTov14FOspZ+wE6j5o1toInlOtlkNGfIll42R1Th7h2q8ZIfnBWfejQP
   YIq1CoPn5k8vDGEaVc68aJ0SdbKYF6AJ2CaszAqTYLqFHeJImbjmmDNcV
   AJak7F2AUXRHm2ef7UjdHX1vBRrYCG9XvDhMNqx0d7ZMMV1DxmgxX4BY0
   pQABaUvYwZtH/nQzURsfrBH+vq7BfDdcdxbdvWuw/OM2Jr8BcCNCjvfLy
   8P1kzZWt1Ht0odFCYHt44w+IG+cbpuYQvXOk3dd69MSD6SKEgNqScRxDI
   Q==;
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, Alexander Kanavin
	<alex.kanavin@gmail.com>, Daniel Squires <dan@engineeredarts.co.uk>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] Unexpected package version going backwards warnings.
Thread-Topic: [poky] Unexpected package version going backwards warnings.
Thread-Index: AQHZC+erd1O3MxjTmECP9mHLXnMOsK5lqcAAgAAB0wCAACPwAA==
Date: Fri, 9 Dec 2022 17:37:55 +0000
Message-ID: <939e7589993146c2bbe31336c5fc0b3d@axis.com>
References: <CAC+ji7EOT6D35madOZvx6tS8Nj43Tiq-cg06WYO8xue8MnBhiQ@mail.gmail.com>
	 <CANNYZj_bEZ_EVdXjrFWaGtAoDfsX_4jieSrm+Vg5t2wC8dZXHQ@mail.gmail.com>
 <113bc7de893b394142ee924d27c9c5a716856c8a.camel@linuxfoundation.org>
In-Reply-To: <113bc7de893b394142ee924d27c9c5a716856c8a.camel@linuxfoundation.org>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBwb2t5QGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcgPHBva3lAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gT24gQmVoYWxmDQo+IE9mIFJp
Y2hhcmQgUHVyZGllDQo+IFNlbnQ6IGRlbiA5IGRlY2VtYmVyIDIwMjIgMTc6MjANCj4gVG86IEFs
ZXhhbmRlciBLYW5hdmluIDxhbGV4LmthbmF2aW5AZ21haWwuY29tPjsgRGFuaWVsIFNxdWlyZXMN
Cj4gPGRhbkBlbmdpbmVlcmVkYXJ0cy5jby51az4NCj4gQ2M6IHBva3lAbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZw0KPiBTdWJqZWN0OiBSZTogW3Bva3ldIFVuZXhwZWN0ZWQgcGFja2FnZSB2ZXJzaW9u
IGdvaW5nIGJhY2t3YXJkcyB3YXJuaW5ncy4NCj4gDQo+IE9uIEZyaSwgMjAyMi0xMi0wOSBhdCAx
NzoxMyArMDEwMCwgQWxleGFuZGVyIEthbmF2aW4gd3JvdGU6DQo+ID4gSWYgeW91IGRvIG5vdCBj
YXJlIGFib3V0IHVwZGF0aW5nIHBhY2thZ2VzIG9uIHRhcmdldCB3aXRoIGEgcGFja2FnZQ0KPiA+
IG1hbmFnZXIsIHRoZW4geW91IGNhbiBkcm9wIFNSQ1BWIGZyb20geW91ciByZWNpcGUgdmVyc2lv
bnMuDQo+ID4gT3RoZXJ3aXNlLCB5b3UgcHJvYmFibHkgbmVlZCB0byB1c2UgYSBwcnNlcnYsIGFz
IGRlc2NyaWJlZCBoZXJlOg0KPiA+IGh0dHBzOi8vZG9jcy55b2N0b3Byb2plY3Qub3JnL2Rldi1t
YW51YWwvY29tbW9uLXRhc2tzLmh0bWwjaW5jcmVtZW50aW5nLWEtcGFja2FnZS12ZXJzaW9uDQo+
ID4gd2hpY2ggd2lsbCBlbnN1cmUgcGFja2FnZSB2ZXJzaW9ucyB3b3VsZCBuZXZlciBnbyBiYWNr
d2FyZHMuDQoNClVuZm9ydHVuYXRlbHkgdGhhdCBpcyBvbmx5IHRydWUgaWYgdGhlIHJlYWwgdGFz
a3MgYXJlIGFjdHVhbGx5IHJ1bi4NCklmIHRoZSBzZXRzY2VuZSB0YXNrcyBhcmUgdXNlZCwgdGhl
biB0aGUgdmVyc2lvbiBjYW4gZ28gYmFjayB0byANCndoYXRldmVyIHZlcnNpb24gaXMgc3RvcmVk
IGluIHRoZSBzc3RhdGUgY2FjaGUuIA0KDQpUaGF0IHNhaWQsIEkgaGF2ZSBhbHNvIHNlZW4gb2Nj
YXNpb25hbCBjYXNlcyB3aGVyZSB0aGUgUFIgZ29lcyBiYWNrIA0KdG8gcjAuMCBmb3Igbm8gYXBw
YXJlbnQgcmVhc29uLiANCg0KPiANCj4gUmF0aGVyIHRoYW4gZHJvcHBpbmcsIHlvdSBjYW4ganVz
dCBkaXNhYmxlIHRoYXQgUUEgY2hlY2sgdG9vLCBzb21ldGhpbmcNCj4gbGlrZToNCj4gDQo+IEVS
Uk9SX1FBOnJlbW92ZSA9ICJ2ZXJzaW9uLWdvaW5nLWJhY2t3YXJkcyINCj4gDQo+IENoZWVycywN
Cj4gDQo+IFJpY2hhcmQNCg0KLy9QZXRlcg0KDQo=
