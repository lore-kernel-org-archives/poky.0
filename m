Received: from smtp2.axis.com (smtp2.axis.com [195.60.68.18])
 by mx.groups.io with SMTP id smtpd.web10.3491.1665045889377999290
 for <poky@lists.yoctoproject.org>;
 Thu, 06 Oct 2022 01:44:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=axis-central1 header.b=Eun9ismR;
 spf=pass (domain: axis.com, ip: 195.60.68.18, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1665045890;
  x=1696581890;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=Ut6PRhGHaj2EJdNxdt1P3cuRLC+NImPMIpHwifrhvLI=;
  b=Eun9ismRaBD3PWDr22C7NDIyayNgCNzZ98Ovikzo9ei4aNxC8vC1WgAB
   yUMIR5aXd8lcKiloBt8FgHO0jd7TG+gcDAarqStOnXj6oZ/8KY98ipeGL
   LP13+n1fM1Tm6DOC3jqGKveroDEGAFfTTjayEnCRXtgC1mHgNpanqf4gw
   TmvKhBOJ995FI4ozNJf6Susvl4JvheGC6gKV7YeiW9dPTBpsmXwQY+xGe
   VSH0TA6hc5kPEPUldkj7LmxCDW/4Ycj7e4+uHDY9i+a24g/DlxCZGpw0d
   qDx/DcXslI+IR2HzmE+rCI2F7SrXbxCz4AaJ1cy8shOC8H7nx7hQKINq6
   A==;
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: "sven@svenschwermer.de" <sven@svenschwermer.de>,
	"poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH] externalsrc: git submodule--helper list unsupported
Thread-Topic: [poky] [PATCH] externalsrc: git submodule--helper list
 unsupported
Thread-Index: AQHY2VyDnJHZT9igN06+LGcfSHl7bK4A5fgAgAAmEEA=
Date: Thu, 6 Oct 2022 08:44:46 +0000
Message-ID: <78a8ccc7d2eb43e1ad51f1ceb01bda86@axis.com>
References: <20221006082000.60867-1-sven@svenschwermer.de>
 <13701.1665044694696970651@lists.yoctoproject.org>
In-Reply-To: <13701.1665044694696970651@lists.yoctoproject.org>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBwb2t5QGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcgPHBva3lAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gT24gQmVoYWxmDQo+IE9mIFN2
ZW4gdmlhIGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gU2VudDogZGVuIDYgb2t0b2JlciAyMDIy
IDEwOjI1DQo+IFRvOiBwb2t5QGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDogUmU6
IFtwb2t5XSBbUEFUQ0hdIGV4dGVybmFsc3JjOiBnaXQgc3VibW9kdWxlLS1oZWxwZXIgbGlzdA0K
PiB1bnN1cHBvcnRlZA0KPiANCj4gSSBndWVzcyBJIGRpZG4ndCBtYWtlIGl0IGNsZWFyIGVub3Vn
aCBpbiB0aGUgcGF0Y2ggZW1haWw6IEkgYW0gYWR2b2NhdGluZw0KPiBmb3IgYmFja3BvcnRpbmcg
dGhpcyB0byBkdW5mZWxsIGFuZCBwb3NzaWJseSBvdGhlciBzdGFibGUgYnJhbmNoZXMuIFRoaXMN
Cj4gcGF0Y2ggaXMgY2hlcnJ5LXBpY2tlZCBmcm9tIG1hc3Rlci4gSSB3YXNuJ3Qgc3VyZSB3aGF0
IHRoZSBwcm9jZWR1cmUgZm9yDQo+IGJhY2twb3J0aW5nIHBhdGNoZXMgaXMuDQo+IA0KPiBCZXN0
IHJlZ2FyZHMsDQo+IFN2ZW4NCg0KU2luY2UgZXh0ZXJuYWxzcmMuYmJjbGFzcyBpcyBwYXJ0IG9m
IE9FLUNvcmUsIHRoZSBwYXRjaCBzaG91bGQgYmUgc2VudCB0byANCnRoZSBvcGVuZW1iZWRkZWQt
Y29yZUBsaXN0cy5vcGVuZW1iZWRkZWQub3JnIG1haWxpbmcgbGlzdC4gQWxzbywgaWYgeW91IA0K
c2VuZCBhIHBhdGNoIGZvciBhbiBvbGRlciByZWxlYXNlLCB0aGVuIGJlIHN1cmUgdG8gaW5jbHVk
ZSB0aGUgbmFtZSBvZiANCnRoZSByZWxlYXNlLCBlLmcuLCAiW2R1bmZlbGxdIiwgaW4gdGhlIHN1
YmplY3QuDQoNCi8vUGV0ZXINCg0K
