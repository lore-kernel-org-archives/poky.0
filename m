Received: from smtp1.axis.com (smtp1.axis.com [195.60.68.17])
 by mx.groups.io with SMTP id smtpd.web09.12116.1662038686596455491
 for <poky@lists.yoctoproject.org>;
 Thu, 01 Sep 2022 06:24:47 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@axis.com header.s=axis-central1 header.b=XaGe0PuK;
 spf=pass (domain: axis.com, ip: 195.60.68.17, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1662038686;
  x=1693574686;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=nWUH5maL47sgZOHYsYlOLScG1Nyg4YEtK93iJzRF1AI=;
  b=XaGe0PuKKfsfNEVtcWWsrRwRttHhvbtPvur1EEPpDW9vzuBrmONfbXBe
   AVDIQaAVmd0TTw2wLB1js6vNC7FxsuJoT8aQmP9QSieesRL8vIaD5Ilgn
   ah5/TXBli0rTIxprgnXWchf7M7Q061fl2QS0SU5Ad6cr4xLnbnahwbiHZ
   y7sIvmToG5O92Iag+HDh5X37QfBPdgleXjF87c0YLHNSd1CiUGk2xWouY
   VJ2ETnMBpOKkuH0IByGKpKBXG3ydiPgns2qXPMYwogqkzuGoAsNe1y74h
   vB1AoMA+fShxnTnQsxlt16z4sji6/ERIy+/kdudsDPtesvOb+Pw3PIa43
   g==;
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: Steve <star@gmx.li>, "poky@lists.yoctoproject.org"
	<poky@lists.yoctoproject.org>
Subject: Re: [poky] Patch a kernel module out of tree / pathes?
Thread-Topic: [poky] Patch a kernel module out of tree / pathes?
Thread-Index: AQHYvTxgB5KimOS3vkKVJ2BXNCulva3KjuwA
Date: Thu, 1 Sep 2022 13:24:44 +0000
Message-ID: <ba94777b32584116bb1416b00482c87d@axis.com>
References: <08603763-e89e-f89c-aaf6-dcd6c168a002@gmx.li>
In-Reply-To: <08603763-e89e-f89c-aaf6-dcd6c168a002@gmx.li>
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
ZXZlDQo+IFNlbnQ6IGRlbiAzMSBhdWd1c3RpIDIwMjIgMTU6MjANCj4gVG86IHBva3lAbGlzdHMu
eW9jdG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBbcG9reV0gUGF0Y2ggYSBrZXJuZWwgbW9kdWxl
IG91dCBvZiB0cmVlIC8gcGF0aGVzPw0KPiANCj4gSGksIHN0cmFuZ2UgcHJvYmxlbSBoZXJlLiBB
IHJlY2lwZSBvZiBhIHZlbmRvciAoc28gbm90IG1pbmUpIGJ1aWxkcyBhDQo+IGtlcm5lbCBtb2R1
bGUgb3V0IG9mIHRyZWUgdmlhIFlvY3RvDQo+IEkgbmVlZCB0byBwYXRjaCB0aGF0IG1vZHVsZSwg
YnV0IEkgZ2V0IGVycm9yIG1lc3NhZ2VzLg0KPiANCj4gZGVmYXVsdCAiUyIgaXM6DQo+IFMgPSAi
JFdPUktESVIvZ2l0L2RpcjEvZGlyMiINCj4gDQo+IFRoZSBwYXRjaCBoYXMgdG8gYmUgYXBwbGll
ZCB0byBnaXQNCj4gDQo+IFRoZSBwYXRjaCBpcyBvbmx5IGFwcGxpZWQgaWYgbXkgYmJhcHBlbmQg
ZmlsZSBnZXRzIHRoaXMgbGluZToNCj4gUyA9ICIkV09SS0RJUi9naXQiDQoNCllvdSBoYXZlIGEg
Y291cGxlIG9mIG9wdGlvbnMsIGRlcGVuZGluZyBvbiB0aGUgcGF0Y2ggZmlsZToNCg0KKiBJZiBh
bGwgdGhlIGNoYW5nZXMgaW4gdGhlIHBhdGNoIGlzIGNvbnRhaW5lZCB3aXRoaW4gZGlyMS9kaXIy
LCB0aGVuIA0KICB5b3UgY2FuIGFkZCBzdHJpcGxldmVsPTMgdG8gdGhlIFVSSSBmb3IgdGhlIHBh
dGNoLCBlLmcuLCBzb21ldGhpbmcgDQogIGxpa2U6DQoNCiAgICBTUkNfVVJJICs9ICJmaWxlOi8v
bXktY2hhbmdlcy5wYXRjaDtzdHJpcGxldmVsPTMiDQoNCiogT3RoZXJ3aXNlIHlvdSBjYW4gYWRk
IHBhdGNoZGlyPS4uLy4uIHRvIHRoZSBVUkksIGUuZy46DQoNCiAgICBTUkNfVVJJICs9ICJmaWxl
Oi8vbXktY2hhbmdlcy5wYXRjaDtwYXRjaGRpcj0uLi8uLiINCg0KKiBPciwgaWYgYWxsIGVsc2Ug
ZmFpbHMsIHlvdSBjYW4gb3ZlcnJpZGUgUyBmb3IgdGhlIHBhdGNoIHRhc2s6DQoNCiAgICBTOnRh
c2stcGF0Y2ggPSAiJFdPUktESVIvZ2l0Ig0KDQpUaGUgbGFzdCBvcHRpb24gYWZmZWN0cyBhbGwg
cGF0Y2hlcywgc28gaWYgdGhlcmUgYWxyZWFkeSBhcmUgb3RoZXIgDQpwYXRjaGVzLCBpdCBpcyBu
b3QgcmVjb21tZW5kZWQuDQoNCj4gDQo+IEJ1dCBpbiB0aGlzIGNhc2UgY29tcGlsYXRpb24gZ29l
cyB3cm9uZywgd2hpY2ggaXMgY2xlYXIgYXMgdGhlcmUgaXMgbm8NCj4gTWFrZWZpbGUgaW4gdGhl
IG5ldyAiUyIuDQo+IA0KPiBCdXQgaWYgSSBsZWF2ZSBpdCBhcyBpdCBpcywgdGhlIHBhdGNoIHdp
bGwgbm90IGFwcGxpZWQuIEl0IGNvbXBsYWlucw0KPiBhYm91dCBub3QgZmluZCB0aGUgZmlsZSB0
byBwYXRjaC4NCj4gDQo+IFNvIEkgbW9kaWZpZWQgbXkgcGF0Y2hmaWxlIHRvIGJlIHJlbGF0aXZl
IHRvIHRoZSBsb2NhdGlvbiBvZiB3aGVyZSB0aGUNCj4gcGF0Y2ggZmlsZSBpcyBjb3BpZWQgb3Ig
cmVsYXRpdmUgdG8gIlMiLiBJbiB0aGUgbGF0ZXIgY2FzZSBpdCBtZWFucyBJDQo+IGhhdmUgdG8g
c3RhcnQgd2l0aCAuLi8uLi8gLg0KPiBCdXQgbm9uIG9mIHRoZSB0ZXN0cyB3b3JrZWQuDQo+IA0K
PiBIb3cgY2FuIEkgYXQgbGVhc3QgZmluZCBvdXQgd2hhdCBpcyB0aGUgcGF0aCB3aGlsZSBwYXRj
aGluZz8NCj4gDQo+IElmIHlvdSBtYXkgSSBhc2sgd2h5IHRvIGRvbid0IHVzZSB0aGUgZGV2dG9v
bD8gSSBkaWQsIGJ1dCBmb3Igc29tZQ0KPiBzdHJhbmdlIHJlYXNvbiBpdCBkb2Vzbid0IGNyZWF0
ZSBhIHJlY2lwZSBpbiB0aGUgbGF5ZXIgSSB3YW50Lg0KPiBCVFc6IElzIGl0IHJpZ2h0IHRvIGRv
ICJkZXZ0b29sIHVwZGF0ZS1yZWNpcGUgLWEgPmFic29sdXRlIHBhdGggb2YNCj4gbGF5ZXI8IHJl
Y2lwZSA/DQo+IEkgd291bGQgZXhwZWN0IHRvIGdpdmUgYSByZWxhdGl2ZSBuYW1lIGxpa2UgIm1l
dGEtbXlsYXllciINCj4gDQo+IEhvcGUgc29tZW9uZSBjYW4gZ2l2ZSBtZSBhIGhpbnQsIHNwZW5k
aW5nIGFscmVhZHkgYSBkYXkgd2l0aCB0aGF0Lg0KPiANCj4gVGhhbmtzIGZvciB5b3VyIGF0dGVu
dGlvbi4NCg0KLy9QZXRlcg0KDQo=
