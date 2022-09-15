Received: from smtp2.axis.com (smtp2.axis.com [195.60.68.18])
 by mx.groups.io with SMTP id smtpd.web12.16099.1663278350676398532
 for <poky@lists.yoctoproject.org>;
 Thu, 15 Sep 2022 14:45:51 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@axis.com header.s=axis-central1 header.b=X/o3WnmJ;
 spf=pass (domain: axis.com, ip: 195.60.68.18, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1663278350;
  x=1694814350;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=hs0xX1n8N+zoyC3BqGTQBxpKY8cG778V1PJtI/xNE70=;
  b=X/o3WnmJ4k/6lcwtRI8C2ASNV32k/UFbpsNQUja333pXJnxx0RQlqawk
   nFzUwAgDCF9WYA2D4yU2uthT1UbnqTfmUku+QOSiNeAitKbxKceHS9sKa
   heNujsnqqcG92/BcIljpDn3AXnvCIVzu35GaofMiB0c/c1sBMcpRnpmyU
   Hezzqqy21kJq43eNT/jQbXt0u6Jj1cWcoR4apU/XerD+0ER3Jeqbxnip/
   FW8GKjTWgJRtzXTHqtJtUQc9t/ILC7jz1sC0aJP/4jzV5mMduyGRYskpv
   eZ5IgE+3N9FnDi9WRzUrnWMmr+ghfATkgNKntZU9+qvNPxf3JBv1V5GZe
   A==;
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: "jcreedon@waymo.com" <jcreedon@waymo.com>, "poky@lists.yoctoproject.org"
	<poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH] externalsrc: remove submodule--helper list call
Thread-Topic: [poky] [PATCH] externalsrc: remove submodule--helper list call
Thread-Index: AQHYyUm/oQF4NoK+5kGIRU2KHB6uh63hBSrg
Date: Thu, 15 Sep 2022 21:45:48 +0000
Message-ID: <7e1368ddf19045b2b22ccb51dd645d86@axis.com>
References: <CAEZLVp62cB9iaft34MZaV6ZRKh22K1Pv4oKtATB+p2b1p_T_dA@mail.gmail.com>
In-Reply-To: <CAEZLVp62cB9iaft34MZaV6ZRKh22K1Pv4oKtATB+p2b1p_T_dA@mail.gmail.com>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhpcyBwYXRjaCBzaG91bGQgYmUgc2VudCB0byBvcGVuZW1iZWRkZWQtY29yZUBsaXN0cy5vcGVu
ZW1iZWRkZWQub3JnIGluc3RlYWQuDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4g
RnJvbTogcG9reUBsaXN0cy55b2N0b3Byb2plY3Qub3JnIDxwb2t5QGxpc3RzLnlvY3RvcHJvamVj
dC5vcmc+IE9uIEJlaGFsZiBPZiBKYWNvYiBDcmVlZG9uDQo+IFNlbnQ6IGRlbiAxNSBzZXB0ZW1i
ZXIgMjAyMiAyMjoyNg0KPiBUbzogcG9reUBsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+IFN1Ympl
Y3Q6IFtwb2t5XSBbUEFUQ0hdIGV4dGVybmFsc3JjOiByZW1vdmUgc3VibW9kdWxlLS1oZWxwZXIg
bGlzdCBjYWxsDQo+IA0KPiBUaGlzIHJlbW92ZXMgYSBjYWxsIHRvIGFuIHVuZG9jdW1lbnRlZCBh
bmQgbm93IGRlcHJlY2F0ZWQgc3ViY29tbWFuZCBvZg0KPiBzdWJtb2R1bGUtLWhlbHBlciBhbmQg
cmVwbGFjZXMgaXQgd2l0aCBhIHN1cHBvcnRlZCBjb21tYW5kIHRoYXQgZ2l2ZXMgYW4NCg0KSSB3
b3VsZCBjaGFuZ2UgInN1Ym1vZHVsZS0taGVscGVyIiB0byAiZ2l0IHN1Ym1vZHVsZS0taGVscGVy
IiB0byBtYWtlIGl0IA0KY2xlYXIgdGhhdCB5b3UgYXJlIHRhbGtpbmcgYWJvdXQgYSBnaXQgc3Vi
Y29tbWFuZC4NCg0KLy9QZXRlcg0KDQo+IGVxdWl2YWxlbnQgbGlzdC4NCj4gDQo+IFNpZ25lZC1v
ZmYtYnk6IEphY29iIENyZWVkb24gPGpjcmVlZG9uQGdvb2dsZS5jb20+DQo+IC0tLQ0KPiAgbWV0
YS9jbGFzc2VzL2V4dGVybmFsc3JjLmJiY2xhc3MgfCAyICstDQo+ICAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9tZXRhL2Ns
YXNzZXMvZXh0ZXJuYWxzcmMuYmJjbGFzcyBiL21ldGEvY2xhc3Nlcy9leHRlcm5hbHNyYy5iYmNs
YXNzDQo+IGluZGV4IDNkNmI4MGJlZTIuLjA0MDFjNzVmYTkgMTAwNjQ0DQo+IC0tLSBhL21ldGEv
Y2xhc3Nlcy9leHRlcm5hbHNyYy5iYmNsYXNzDQo+ICsrKyBiL21ldGEvY2xhc3Nlcy9leHRlcm5h
bHNyYy5iYmNsYXNzDQo+IEBAIC0yMTcsNyArMjE3LDcgQEAgZGVmIHNyY3RyZWVfaGFzaF9maWxl
cyhkLCBzcmNkaXI9Tm9uZSk6DQo+ICAgICAgICAgICAgICBlbnZbJ0dJVF9JTkRFWF9GSUxFJ10g
PSB0bXBfaW5kZXgubmFtZQ0KPiAgICAgICAgICAgICAgc3VicHJvY2Vzcy5jaGVja19vdXRwdXQo
WydnaXQnLCAnYWRkJywgJy1BJywgJy4nXSwgY3dkPXNfZGlyLCBlbnY9ZW52KQ0KPiAgICAgICAg
ICAgICAgZ2l0X3NoYTEgPSBzdWJwcm9jZXNzLmNoZWNrX291dHB1dChbJ2dpdCcsICd3cml0ZS10
cmVlJ10sIGN3ZD1zX2RpciwgZW52PWVudikuZGVjb2RlKCJ1dGYtOCIpDQo+IC0gICAgICAgICAg
ICBzdWJtb2R1bGVfaGVscGVyID0gc3VicHJvY2Vzcy5jaGVja19vdXRwdXQoWydnaXQnLCAnc3Vi
bW9kdWxlLS1oZWxwZXInLCAnbGlzdCddLCBjd2Q9c19kaXIsIGVudj1lbnYpLmRlY29kZSgidXRm
LTgiKQ0KPiArICAgICAgICAgICAgc3VibW9kdWxlX2hlbHBlciA9IHN1YnByb2Nlc3MuY2hlY2tf
b3V0cHV0KFsnZ2l0JywgJ3N1Ym1vZHVsZScsICctLXF1aWV0JywgJ2ZvcmVhY2gnLCAnZWNobyAk
c21fcGF0aCddLCBjd2Q9c19kaXIsIGVudj1lbnYpLmRlY29kZSgidXRmLTgiKQ0KPiAgICAgICAg
ICAgICAgZm9yIGxpbmUgaW4gc3VibW9kdWxlX2hlbHBlci5zcGxpdGxpbmVzKCk6DQo+ICAgICAg
ICAgICAgICAgICAgbW9kdWxlX2RpciA9IG9zLnBhdGguam9pbihzX2RpciwgbGluZS5yc3BsaXQo
bWF4c3BsaXQ9MSlbMV0pDQo+ICAgICAgICAgICAgICAgICAgaWYgb3MucGF0aC5pc2Rpcihtb2R1
bGVfZGlyKToNCj4gLS0NCj4gMi4zNy4zDQo=
