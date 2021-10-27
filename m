Received: from smtp2.axis.com (smtp2.axis.com [195.60.68.18])
 by mx.groups.io with SMTP id smtpd.web12.9194.1635324840465269823
 for <poky@lists.yoctoproject.org>;
 Wed, 27 Oct 2021 01:54:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=axis-central1 header.b=LJDPvUZv;
 spf=pass (domain: axis.com, ip: 195.60.68.18, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1635324841;
  x=1666860841;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=aBuJ1K6uZNbLkVVK6qrBGFlH+dEoRnixQw89PTL/vmQ=;
  b=LJDPvUZvphuhCiBWzpqx75Byu3PvfGDA8jhDmHTTjmq4FQrzx2G6Sjuu
   b/LeWelonDTc4zQZWw9CxBEzU7zQAfEb5lVkGoRrT9Z955XbIWfMAAYUE
   I0TPw6ttAzWlG0HkGgtLRtGOyq1IBlBUpWc31vJWSPauVqGS9FmLGmmi6
   Mm+URf47a0DlxP4xCcgZnYJO/nAMJgccBeDfQCGYl9SOrjWCnIyOp1bgm
   XD6rR/9Uo3OEllNkzbURVOzynkkTl+5IL6+cLH9B/d7UN2+lVe2DXK6tQ
   1az6V3O8bcpHAWVJD18xP48ZUC9fi7CYHNGUQKshWja0JrEwN/HXBroHF
   w==;
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: Steve <star@gmx.li>, "poky@lists.yoctoproject.org"
	<poky@lists.yoctoproject.org>
Subject: Re: [poky] Warning: empty_var_volatile doesn't exist
Thread-Topic: [poky] Warning: empty_var_volatile doesn't exist
Thread-Index: AQHXyw6SVwcu78C/hk+uX1VkVSJA/qvmiSvQ
Date: Wed, 27 Oct 2021 08:53:57 +0000
Message-ID: <658c10ff38a1404096cd4f689f91dac6@axis.com>
References: <CAP2OjchVtRJfFwirrNjJ80VHLEZvMkascBbDvVkbsOfBB5BCjw@mail.gmail.com>
 <CAMKF1soxAHRFgzqwoTJ+xXbcBKBWqR2MwoDciJvw-6Hijw7Gmw@mail.gmail.com>
 <CANPvuR=FRqssxM25SAXE7pQw9=1cPOk9yya1sW+JOo-vAJ=xJA@mail.gmail.com>
 <cccb58eb-bdc6-8e74-f0f1-b1f4d17a3344@gmx.li>
In-Reply-To: <cccb58eb-bdc6-8e74-f0f1-b1f4d17a3344@gmx.li>
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
ZXZlDQo+IFNlbnQ6IGRlbiAyNyBva3RvYmVyIDIwMjEgMTA6NDINCj4gVG86IHBva3lAbGlzdHMu
eW9jdG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBbcG9reV0gV2FybmluZzogZW1wdHlfdmFyX3Zv
bGF0aWxlIGRvZXNuJ3QgZXhpc3QNCj4gDQo+IEhlbGxvLA0KPiANCj4gSSB3b3VsZCBsaWtlIHRv
IHJlbW92ZSAvZXRjL3RpbWVzdGFtcCBmcm9tIG15IHJvb3Rmcy4NCj4gSSBmb3VuZCBpdCBpcyBz
ZXQgYnkgInJvb3Rmc191cGRhdGVfdGltZXN0YW1wIiBhcyBwYXJ0IG9mDQo+IFJPT1RGU19QT1NU
UFJPQ0VTU19DT01NQU5ELg0KPiANCj4gSSBkaWQgaW4gbXkgaW1hZ2UgcmVjaXBlIHRoZSBmb2xs
b3dpbmc6DQo+IFJPT1RGU19QT1NUUFJPQ0VTU19DT01NQU5EX3JlbW92ZSA9ICJyb290ZnNfdXBk
YXRlX3RpbWVzdGFtcCA7ICINCg0KVGhhdCBzaG91bGQgYmU6DQoNClJPT1RGU19QT1NUUFJPQ0VT
U19DT01NQU5EX3JlbW92ZSA9ICJyb290ZnNfdXBkYXRlX3RpbWVzdGFtcDsiDQoNClRoZSBfcmVt
b3ZlIG9wZXJhdG9yIHdpbGwgcmVtb3ZlIGVhY2ggd29yZCBzcGVjaWZpZWQgZnJvbSB0aGUgb3Jp
Z2luYWwgDQp2YXJpYWJsZS4gU28gaW4geW91ciBjYXNlIGl0IHdvdWxkIHJlbW92ZSBhbGwgInJv
b3Rmc191cGRhdGVfdGltZXN0YW1wIiANCmFuZCBhbGwgIjsiLCB3aGljaCBpcyBub3Qgd2hhdCB5
b3Ugd2FudC4NCj4gDQo+IFRoYXQgc2VlbXMgdG8gd29yaywgbm8gL2V0Yy90aW1lc3RhbXAgaW4g
aW1hZ2UuDQo+IEJ1dCBJIGdldCB0aGUgd2FybmluZyBmcm9tIGRvX3Jvb3RmczoNCj4gIkZ1bmN0
aW9uIHdyaXRlX2ltYWdlX3Rlc3RfZGF0YSAgZW1wdHlfdmFyX3ZvbGF0aWxlIGRvZXNuJ3QgZXhp
c3QiDQo+IA0KPiBEaWQgSSBkbyBzb21ldGhpbmcgd3Jvbmc/IEkgYW0gbm90IGZlZWxpbmcgd2Vs
bCB0byBpZ25vcmUgd2FybmluZ3MsDQo+IGVzcGVjaWFsbHkgYXMgSSBhbSBhIGJlZ2lubmVyIGhl
cmUuDQo+IA0KPiBNYXliZSBhbGxvdyBtZSBhIHNlY29uZCBxdWVzdGlvbjoNCj4gSSBuZWVkIGEg
cGFydCBvZiB1dGlscy1saW51eCwgYnV0IHdvbid0IGluY2x1ZGUgYWxsIHRoZSBmaWxlcyAoZHVl
IHRvDQo+IHNwYWNlIGxpbWl0YXRpb25zKS4NCj4gSSBndWVzcyBJIG5lZWQgc29tZSB1dGlscy1s
aW51eF8lLmJiYXBwZW5kIC0gYnV0IHdoYXQgaGFzIHRvIGJlIGluIHRoZXJlPw0KPiANCj4gVGhh
bmtzLCBBcm5vIChpbiBZb2N0byAzLjAgYXRtKQ0KPiANCg0KLy9QZXRlcg0KDQo=
