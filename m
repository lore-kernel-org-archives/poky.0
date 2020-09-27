Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.43])
 by mx.groups.io with SMTP id smtpd.web11.17770.1601227005141507236
 for <poky@lists.yoctoproject.org>;
 Sun, 27 Sep 2020 10:16:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@nxp.com header.s=selector2 header.b=jBoRLJql;
 spf=pass (domain: nxp.com, ip: 40.107.14.43, mailfrom: tom.hochstein@nxp.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lpLSTTubXQyedzlUY99uioeEoByLqMulOEcKiu4UrDP/a9dxpVUMikQ8vp5YbP2I0tQ/m5dO4fz5uwas0z/A/O4auNrxA0yrUFU08n/V2t3cIGUn8I91XgdgHN6XoBJcc/6CYY9s6e905RCOcjXgn/pNopqjV4lD9/RyfpvjzBqUCMSdXlKNXki3DA5F+keNpiJZkoJ7y/kZ9wqqO0j6rRA37ydvnNOUWNmzXh2/ChHekHmaL5xmDTYKlleZdw/D1ZX6kEqeR60KyeeWWS4YFyg+6VPKsr/3z0cVB7WghS/8sXyk2eaN4n27/SJN5JLy3QECHkArg41zyROI2Wk5QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2Z+lakxkV6PPhHh9/3gg2tw0IvzcDWlOt/ciVf/mYhM=;
 b=lPOOIORd2t/MLenw1EGcjzP0S7YwQijyCcQUD3e5NOydlYg5Dmd24y9IPyX/winOTg0F7qoDpSz+iO4oAXMdaoTit8huRSV90xLB7eznqPOzzQtHPkdcaE/cwj1yiYnBdor0gPBZaRZTETDWDBdP7qEklQ1HuOEvU4Zhb7rFp2Jc8KM3+2lovyq2CWG8EUAue+6/WpD3xGvcDQAo0ullj9hEDnX3uwZ5b3Pr1BbDA6S2cjcFJD4711zkdso9+ass9/r75DutnjMpuwVQ2Jw37wC702S0ZCVF/FCqw+XpNQ35l8JEQj0phhjc8sLQoK4a+/c6WBvXS6LG453Hha8l/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2Z+lakxkV6PPhHh9/3gg2tw0IvzcDWlOt/ciVf/mYhM=;
 b=jBoRLJqls2kGMXUe0RVo+V845UohCnw2O4MXWSNQ7MVnFDbnwTByzEp5Z4Jfgvwf3ia/c5O913waGQjwQ8U7gxWzMIDRktOOyxCMandxx37NUN108ssgsCx6mUDDg2tgZsF9PWQd2aNKADIgwGGvq4ChCzqy+/W0AeINuryafT0=
Received: from VE1PR04MB6621.eurprd04.prod.outlook.com (2603:10a6:803:124::21)
 by VI1PR04MB7167.eurprd04.prod.outlook.com (2603:10a6:800:12a::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.25; Sun, 27 Sep
 2020 17:16:41 +0000
Received: from VE1PR04MB6621.eurprd04.prod.outlook.com
 ([fe80::818:a5da:32ce:8a6f]) by VE1PR04MB6621.eurprd04.prod.outlook.com
 ([fe80::818:a5da:32ce:8a6f%3]) with mapi id 15.20.3412.026; Sun, 27 Sep 2020
 17:16:41 +0000
From: "Tom Hochstein" <tom.hochstein@nxp.com>
To: "raj.khem@gmail.com" <raj.khem@gmail.com>, Paul Groskopf
	<paul@groskopf-embedded.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] Header only packages not included when populating the SDK
Thread-Topic: [poky] Header only packages not included when populating the SDK
Thread-Index: AQHWkzb3PIJiQ+eV3EuzAxRonWMxsKl7+UyAgADCKOA=
Date: Sun, 27 Sep 2020 17:16:41 +0000
Message-ID: 
 <VE1PR04MB66210627AD60676869B62AAEE2340@VE1PR04MB6621.eurprd04.prod.outlook.com>
References: <f4cadfd0-a78a-89bc-4900-925ecee08ecf@groskopf-embedded.com>
 <780021b6-e4a4-1140-9e02-97011a6ae116@groskopf-embedded.com>
 <CAMKF1sob26+C19UR8qvL6uMKQcWfrq5G_mFHaTDqod5GEeLWQQ@mail.gmail.com>
In-Reply-To: 
 <CAMKF1sob26+C19UR8qvL6uMKQcWfrq5G_mFHaTDqod5GEeLWQQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [24.28.102.84]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 82fc7ce6-2104-44f0-36b7-08d8630919f7
x-ms-traffictypediagnostic: VI1PR04MB7167:
x-microsoft-antispam-prvs: 
 <VI1PR04MB71671B6D6B8FC1F109580B68E2340@VI1PR04MB7167.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 vK/XdS1bdK/ov3P3VJEGdfySIDm9JItSI8Q5mxEsjgXMdq+S/zYt0nw/bkPasPyPcNHx3P4gy3eGq8Q8ZFLUnuXydnxVqz1ppGi8jvq27z3AbUziIt3+7azQF4Ep5+i61WggYeyiAFo6yPUe3YHsqPNv3+SBN7JwF1htkgHYIk/AHIsnnlRNzqthQ48N5KNWt+SJGQ8xbxijjQldV+64Y5+rsLNmfuP0z9Xo5oEZCZUzhb7LtybfbZjt/2RzWHddyNAxSyyd7JLRtsz0uzy62cOKDxSfG9p41/1xgMBU5/FDqhNgLWLS0q2Ak5yqM8nGz92g+xUsjBzFYog+s32c3cufQqgDMCm0r2EmNgVUhmDla1i0evk74ST3m3bkSCR0
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VE1PR04MB6621.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(366004)(376002)(346002)(136003)(39860400002)(66556008)(66446008)(64756008)(478600001)(66476007)(52536014)(5660300002)(316002)(44832011)(110136005)(186003)(53546011)(6506007)(7696005)(4326008)(76116006)(71200400001)(66946007)(8676002)(8936002)(2906002)(33656002)(26005)(86362001)(83380400001)(55016002)(9686003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 gxRj6hteI4gR10dtV+KIWdDrhs9Ebeit+FyPcg86hvuAGwg0JOzEOfJOwV5yRtXELRHadXMaZFIqQNaErgWXntwC0d3xGESxjDgjY8wF9KzBrPlOQ5OJGd0gqZjR0I6Z7RrK96ePJo03ddjLGk4sFoxV326FWFbAKbJXHHUk6IJ6OXQm3Oqcfr3LKSx3onUXFFxrGSeecnOqk7suy4BqFbCojeB/ASZmfcZ7U26mAFm3fQAk0InrQg+MJE1Dbzo/b8XHEpgLjgICR85b3DYVC8CqbkmERFKJkVRWbyWjBT4pEc8v+Jm4Oh7oI8/UEBqdtBftGfMcfYHi6jl10OShBpvue0B0Bhjz4TJthbkT4/3MfvjRIT7RV+1VLfj4OY/0PYLCWzLV4eSd0gAvm55PJxVnQB+QN32istw2H720Ph8fKPI/fJXj30iwcYDtapiAoGO/zSz//+Bsk80gmIRRUauLtgEp+oyvzVLaU68XBxCiCvIIRBoMJgtunlXrg6+wyOThJ5Auqt5fqomJaVwjSOJRcV1443VaAI053t9inYJIn8viHe/slaa0LQZqjZItgV6Xnv/n779imng0bYazNRsmcxWHaf4KjaHNMxHhKrXi7Pi0geR0L6miRBWy7E6EBESFDTCD+V0BwkoAWyEs9A==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VE1PR04MB6621.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82fc7ce6-2104-44f0-36b7-08d8630919f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2020 17:16:41.3353
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4VLGqCQQwalL/He4n9uUkpB9mxpwFv1V2vRxntlzL5l3FRXl6ajOXSbgAK3ceQPXqcUYvm6z6LoRZZta1r1nPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7167
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGF2ZSB5b3UgY29uc2lkZXJlZCB0aGUgRXh0ZW5zaWJsZSBTREs/IFBlcmhhcHMgdGhhdCB3b3Vs
ZCBiZSBhIGJldHRlciBmaXQgZm9yIHlvdXIgdXNlIGNhc2UsIGFuZCB5b3UnZCBvbmx5IG5lZWQg
dG8gYmUgY29uY2VybmVkIHdpdGggdGhlIGhlYWRlci1vbmx5LXJlY2lwZSBpc3N1ZS4NCg0KVG9t
DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogcG9reUBsaXN0cy55b2N0
b3Byb2plY3Qub3JnIDxwb2t5QGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IE9uIEJlaGFsZiBPZiBL
aGVtIFJhaiB2aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiBTZW50OiBTdW5kYXksIFNlcHRl
bWJlciAyNywgMjAyMCAxMjozNCBBTQ0KPiBUbzogUGF1bCBHcm9za29wZiA8cGF1bEBncm9za29w
Zi1lbWJlZGRlZC5jb20+DQo+IENjOiBwb2t5QGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gU3Vi
amVjdDogUmU6IFtwb2t5XSBIZWFkZXIgb25seSBwYWNrYWdlcyBub3QgaW5jbHVkZWQgd2hlbiBw
b3B1bGF0aW5nIHRoZSBTREsNCj4gDQo+IHBlcmhhcHMgeW91IGNhbiBhZGQNCj4gDQo+IFJERVBF
TkRTXyR7UE59LWRldiA9ICIiIGluIHRoZSBjb25jZXJuZWQgcmVjaXBlIHRvIHVuYnJlYWsgZGVw
ZW5kaW5nIG9uIGVtcHR5IFBODQo+IA0KPiB0aGVuIHlvdSBjYW4gYWRkDQo+IA0KPiBUT09MQ0hB
SU5fVEFSR0VUX1RBU0tfYXBwZW5kID0gIiBjYXRjaDItZGV2Ig0KPiANCj4gT24gRnJpLCBTZXAg
MjUsIDIwMjAgYXQgNToyNSBBTSBQYXVsIEdyb3Nrb3BmDQo+IDxwYXVsQGdyb3Nrb3BmLWVtYmVk
ZGVkLmNvbT4gd3JvdGU6DQo+ID4NCj4gPiBIaSwNCj4gPg0KPiA+IEkgaGF2ZSBhIHNldHVwIHdo
ZXJlIEknbSBidWlsZGluZyBhIFNESyBmb3IgYSB5b2N0byBnZW5lcmF0ZWQgaW1hZ2UuIFRoZQ0K
PiA+IHBhY2thZ2UgcmVjaXBlcyBhcmUgd29ya2luZyBmaW5lIGFuZCBlbmRzIHVwIGluIHRoZSBp
bWFnZS4gQnV0IG5vdyBJDQo+ID4gd291bGQgbGlrZSB0byBjcmVhdGUgYSBTREsgd2hlcmUgSSBp
bmNsdWRlIHRoZSBwYWNrYWdlcyBhcyBwcmVjb21waWxlZA0KPiA+IGxpYnJhcmllcyB0byBiZSB1
c2VkIHdoZW4gZG9pbmcgYXBwbGljYXRpb24gZGV2ZWxvcG1lbnQuIFRoaXMgaXMgZG9uZSBieQ0K
PiA+IGFwcGVuZGluZyB0aGVtIHRvIFRPT0xDSEFJTl9UQVJHRVRfVEFTSy4gVGhpcyBhbHNvIHdv
cmtzIGZpbmUgZm9yIHRoZQ0KPiA+IG1vc3QgY2FzZXMuIEJ1dCBhbGwgcGFja2FnZXMgdGhhdCBp
cyBoZWFkZXIgb25seSBpcyBOT1QgcG9wdWxhdGVkLiBJDQo+ID4gZm91bmQgYSBzb2x1dGlvbiB3
aGVyZSBJIGFkZCBBTExPV19FTVBUWS4uIHRvIHRoZSByZWNpcGVzLiBCdXQgaXMgdGhpcyBhDQo+
ID4gZmVhdHVyZSBvciBhIGJ1ZyBpbiB5b2N0byBTREsgcG9wdWxhdGU/DQo+ID4NCj4gPiBFLmcu
IEkgaGFkIHRvIGluY2x1ZGUgYSBjYXRjaDJfMi45LjIuYmJhcHBlbmQgY29udGFpbmluZzoNCj4g
Pg0KPiA+IEFMTE9XX0VNUFRZXyR7UE59ID0gIjEiDQo+ID4gQUxMT1dfRU1QVFlfJHtQTn0tZGV2
ID0gIjEiDQo+ID4NCj4gPiBUbyB0aGUgaGVhZGVycyBhbmQgY21ha2Ugc3R1ZmYgaW5jbHVkZWQg
aW4gdGhlIFNESy4NCj4gPg0KPiA+IE15IHBhY2thZ2UgY2xhc3MgaXMgc2V0IHRvIElQSy4NCj4g
Pg0KPiA+IFBBQ0tBR0VfQ0xBU1NFUyA/PSAicGFja2FnZV9pcGsiDQo+ID4NCj4gPiBUaGFua3Mh
DQo+ID4NCj4gPiAvUGF1bA0KPiA+DQo+ID4NCj4gPg0KPiA+DQo=
