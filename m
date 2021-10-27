Received: from smtp2.axis.com (smtp2.axis.com [195.60.68.18])
 by mx.groups.io with SMTP id smtpd.web10.9623.1635328656572543540
 for <poky@lists.yoctoproject.org>;
 Wed, 27 Oct 2021 02:57:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=axis-central1 header.b=P1F6LexD;
 spf=pass (domain: axis.com, ip: 195.60.68.18, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1635328657;
  x=1666864657;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=GKlONQ4BOmzlHjBuoJKUx5TRD/bHYoY+J66+mKbdhQg=;
  b=P1F6LexDSSjwoC16vgnXUcZPlZ2VcZs8GvMuKwjxEoQNQLusFyo8+oLo
   GtTrpOZckE/WeJLOxf5Nw8AkLIeoasZRFhsRo2yCdGUQrzuU7feZtp1sY
   Uo6LixD+ZiO9Qoqq2CBLLq+dSZpCzQ0o6cAOKjlfs+0vPeJRxglGK2tny
   BgRRkJ3Dp9sN9bKyYlHiWkEJKGTdf7dFX17+MrUeZ/QBW0EgGO4m6pcSD
   y8wc/zwy4naLO08xCaoNrQvVhFXraxjcU1Uxp92wdtCb0XhoR8HGlAuhT
   b9QRLhS5jdijAPm5lyb78MJ0jyUIIBJ/x+ywhYAiQ2M2TRnkoLcVOc3ni
   A==;
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: Steve <star@gmx.li>, "poky@lists.yoctoproject.org"
	<poky@lists.yoctoproject.org>
Subject: Re: [poky] Warning: empty_var_volatile doesn't exist
Thread-Topic: [poky] Warning: empty_var_volatile doesn't exist
Thread-Index: AQHXyw6SVwcu78C/hk+uX1VkVSJA/qvmiSvQ///kAACAAC244A==
Date: Wed, 27 Oct 2021 09:57:34 +0000
Message-ID: <6aa79beeb0934898a95b43f5e1b1db07@axis.com>
References: <CAP2OjchVtRJfFwirrNjJ80VHLEZvMkascBbDvVkbsOfBB5BCjw@mail.gmail.com>
 <CAMKF1soxAHRFgzqwoTJ+xXbcBKBWqR2MwoDciJvw-6Hijw7Gmw@mail.gmail.com>
 <CANPvuR=FRqssxM25SAXE7pQw9=1cPOk9yya1sW+JOo-vAJ=xJA@mail.gmail.com>
 <cccb58eb-bdc6-8e74-f0f1-b1f4d17a3344@gmx.li>
 <658c10ff38a1404096cd4f689f91dac6@axis.com>
 <e8f04e2d-e1fb-7186-c2ef-a684da92a609@gmx.li>
In-Reply-To: <e8f04e2d-e1fb-7186-c2ef-a684da92a609@gmx.li>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
Return-Path: peter.kjellerstedt@axis.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBwb2t5QGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcgPHBva3lAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gT24gQmVoYWxmDQo+IE9mIFN0
ZXZlDQo+IFNlbnQ6IGRlbiAyNyBva3RvYmVyIDIwMjEgMTE6MTANCj4gVG86IHBva3lAbGlzdHMu
eW9jdG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBSZTogW3Bva3ldIFdhcm5pbmc6IGVtcHR5X3Zh
cl92b2xhdGlsZSBkb2Vzbid0IGV4aXN0DQo+IA0KPiBUaGFua3MgUGV0ZXIsDQo+ID4+IC0tLS0t
T3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+IEZyb206IHBva3lAbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZyA8cG9reUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiBPbg0KPiBCZWhhbGYNCj4gPj4gT2Yg
U3RldmUNCj4gPj4gU2VudDogZGVuIDI3IG9rdG9iZXIgMjAyMSAxMDo0Mg0KPiA+PiBUbzogcG9r
eUBsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+ID4+IFN1YmplY3Q6IFtwb2t5XSBXYXJuaW5nOiBl
bXB0eV92YXJfdm9sYXRpbGUgZG9lc24ndCBleGlzdA0KPiA+Pg0KPiA+PiBIZWxsbywNCj4gPj4N
Cj4gPj4gSSB3b3VsZCBsaWtlIHRvIHJlbW92ZSAvZXRjL3RpbWVzdGFtcCBmcm9tIG15IHJvb3Rm
cy4NCj4gPj4gSSBmb3VuZCBpdCBpcyBzZXQgYnkgInJvb3Rmc191cGRhdGVfdGltZXN0YW1wIiBh
cyBwYXJ0IG9mDQo+ID4+IFJPT1RGU19QT1NUUFJPQ0VTU19DT01NQU5ELg0KPiA+Pg0KPiA+PiBJ
IGRpZCBpbiBteSBpbWFnZSByZWNpcGUgdGhlIGZvbGxvd2luZzoNCj4gPj4gUk9PVEZTX1BPU1RQ
Uk9DRVNTX0NPTU1BTkRfcmVtb3ZlID0gInJvb3Rmc191cGRhdGVfdGltZXN0YW1wIDsgIg0KPiA+
DQo+ID4gVGhhdCBzaG91bGQgYmU6DQo+ID4NCj4gPiBST09URlNfUE9TVFBST0NFU1NfQ09NTUFO
RF9yZW1vdmUgPSAicm9vdGZzX3VwZGF0ZV90aW1lc3RhbXA7Ig0KPiA+DQo+ID4gVGhlIF9yZW1v
dmUgb3BlcmF0b3Igd2lsbCByZW1vdmUgZWFjaCB3b3JkIHNwZWNpZmllZCBmcm9tIHRoZSBvcmln
aW5hbA0KPiA+IHZhcmlhYmxlLiBTbyBpbiB5b3VyIGNhc2UgaXQgd291bGQgcmVtb3ZlIGFsbCAi
cm9vdGZzX3VwZGF0ZV90aW1lc3RhbXAiDQo+ID4gYW5kIGFsbCAiOyIsIHdoaWNoIGlzIG5vdCB3
aGF0IHlvdSB3YW50Lg0KPiANCj4gDQo+IEl0IGlzbid0IGFzIGVhc3kgYXMgaW4gb3JpZ2luYWwg
aXMgbGlrZSAod2F0Y2ggdGhlIGJsYW5rcykNCj4gIiAuLi4gOyByb290ZnNfdXBkYXRlX3RpbWVz
dGFtcCA7ID5uZXh0Li4uIg0KPiANCj4gU28gaWYgSSBkbzoNCj4gUk9PVEZTX1BPU1RQUk9DRVNT
X0NPTU1BTkRfcmVtb3ZlID0gInJvb3Rmc191cGRhdGVfdGltZXN0YW1wOyINCj4gaXQgaXMgbm90
IHJlbW92ZWQNCj4gYW5kIGlmIEkgZG8NCj4gUk9PVEZTX1BPU1RQUk9DRVNTX0NPTU1BTkRfcmVt
b3ZlID0gInJvb3Rmc191cGRhdGVfdGltZXN0YW1wIg0KPiBJIGdvdCBlcnJvcnMgYmVjYXVzZSBv
ZiAiOyA7Ig0KPiANCj4gU28gbXkgZ3Vlc3MgaXMsIHRoZSBvcmlnaW5hbCByZWNpcGUgd2l0aCB0
aGlzIGJsYW5rcyBpcyBub3QgY29ycmVjdC4NCg0KSXQgd2FzIGNvcnJlY3RlZCBpbiAzLjIuDQoN
Cj4gQnV0IGhvdyB0byB3b3JrYXJvdW5kPw0KDQpJIGJlbGlldmUgaXQgc2hvdWxkIHdvcmsgdG8g
ZG86DQoNClJPT1RGU19QT1NUUFJPQ0VTU19DT01NQU5EX3JlbW92ZSA9ICJyb290ZnNfdXBkYXRl
X3RpbWVzdGFtcCINCg0KVGhhdCB3aWxsIGxlYXZlICIuLi4gOyA7IC4uLiIgaW4gUk9PVEZTX1BP
U1RQUk9DRVNTX0NPTU1BTkQsIGJ1dCBJIHRoaW5rIA0KdGhhdCBzaG91bGQgYmUgb2suDQoNCj4g
Pj4gVGhhdCBzZWVtcyB0byB3b3JrLCBubyAvZXRjL3RpbWVzdGFtcCBpbiBpbWFnZS4NCj4gPj4g
QnV0IEkgZ2V0IHRoZSB3YXJuaW5nIGZyb20gZG9fcm9vdGZzOg0KPiA+PiAiRnVuY3Rpb24gd3Jp
dGVfaW1hZ2VfdGVzdF9kYXRhICBlbXB0eV92YXJfdm9sYXRpbGUgZG9lc24ndCBleGlzdCINCj4g
Pj4NCj4gPj4gRGlkIEkgZG8gc29tZXRoaW5nIHdyb25nPyBJIGFtIG5vdCBmZWVsaW5nIHdlbGwg
dG8gaWdub3JlIHdhcm5pbmdzLA0KPiA+PiBlc3BlY2lhbGx5IGFzIEkgYW0gYSBiZWdpbm5lciBo
ZXJlLg0KPiA+Pg0KPiA+PiBNYXliZSBhbGxvdyBtZSBhIHNlY29uZCBxdWVzdGlvbjoNCj4gPj4g
SSBuZWVkIGEgcGFydCBvZiB1dGlscy1saW51eCwgYnV0IHdvbid0IGluY2x1ZGUgYWxsIHRoZSBm
aWxlcyAoZHVlIHRvDQo+ID4+IHNwYWNlIGxpbWl0YXRpb25zKS4NCj4gPj4gSSBndWVzcyBJIG5l
ZWQgc29tZSB1dGlscy1saW51eF8lLmJiYXBwZW5kIC0gYnV0IHdoYXQgaGFzIHRvIGJlIGluDQo+
ID4+IHRoZXJlPw0KPiA+Pg0KPiA+PiBUaGFua3MsIEFybm8gKGluIFlvY3RvIDMuMCBhdG0pDQo+
ID4NCj4gPiAvL1BldGVyDQo+IA0KPiBCZXN0IHJlZ2FyZHMsICBBcm5vDQoNCi8vUGV0ZXINCg==
