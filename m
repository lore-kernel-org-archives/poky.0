Return-Path: <Grant.Smith3@ngc.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF711CDB47E
	for <webhook@archiver.kernel.org>; Fri, 13 Oct 2023 13:53:10 +0000 (UTC)
Received: from esa18.ngc.iphmx.com (esa18.ngc.iphmx.com [207.54.85.199])
 by mx.groups.io with SMTP id smtpd.web11.38918.1697205182970539679
 for <poky@lists.yoctoproject.org>;
 Fri, 13 Oct 2023 06:53:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ngc.com header.s=ngc2020 header.b=ipRqZ5bg;
 spf=pass (domain: ngc.com, ip: 207.54.85.199, mailfrom: grant.smith3@ngc.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=ngc.com; i=@ngc.com; q=dns/txt; s=ngc2020;
  t=1697205182; x=1728741182;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=6biDOp7UtWXxyuotUzvxpmuMzUwddRT0XYZOfLUkA0E=;
  b=ipRqZ5bgNi5Zbp+ShydBp6pF8TRsD0jbaaDT10ngFCIkgeITwi/pBv4x
   RH7af8Uh0TO8OE/nNkrNx85u8Ssum81W+dyJxDiR2G8XUb64f2vp2aY2q
   5BGjej2x+L8LpFQnE2YlhANtavGzpS0GVv1a4bzdwNH48TqKUMdDSz7GJ
   UbyOB6ka3DHXNTsL7aMsAlb9FEx98SQSM/lgdRWle18hOEHqLeiNp1MsW
   uAAn1vbukWogm17exwb8fJVmjuKjHWBRsddXO3oIT7Xxa2VA4dgWAkMAI
   dNN7hOjCQquPqRlkWjwXXgxPgjRKonBxRGwZx93V59EHHcmIJU0y+vS3w
   g==;
X-CSE-ConnectionGUID: InDUUTl/RT2jpIuOda/ttw==
X-CSE-MsgGUID: 8KybtNX7Sny8L8IyhNclAA==
X-IronPort-AV: E=Sophos;i="6.03,222,1694754000"; 
   d="scan'208";a="65808330"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from unknown (HELO XMRC0121.ngfedus.ngext.com) ([157.127.149.154])
  by esa18.ngc.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Oct 2023 08:52:58 -0500
Received: from XHTC3021.northgrum.com (134.223.210.95) by
 XMRC0121.ngfedus.ngext.com (157.127.149.154) with Microsoft SMTP Server id
 15.2.1258.25; Fri, 13 Oct 2023 08:52:58 -0500
Received: from XSTC3022.northgrum.com (134.223.213.248) by
 XHTC3021.northgrum.com (134.223.210.95) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.25; Fri, 13 Oct 2023 06:52:58 -0700
Received: from XSTC3003.northgrum.com (134.223.213.178) by
 XSTC3022.northgrum.com (134.223.213.248) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1258.25; Fri, 13 Oct 2023 08:52:58 -0500
Received: from USG02-BN3-obe.outbound.protection.office365.us (23.103.199.143)
 by XSTC3003.northgrum.com (134.223.213.178) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32 via Frontend Transport; Fri, 13 Oct 2023 08:52:58 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=ofiLRumH5X7/PWIn9Vn2WC8pRKAP7E7Z+MFQ2ZcFKhnulf1FPvy1xLomnO6QpcBk/sekAHxravUZhGg8Ko7tlScQkdVsE+D+JeQdB1wBLwz7Saaw7xUi/+Bv3fUB8ro2XGAb6Aw4Fgghr2xB/iYi3A8T1LC6fLoS/B23cSGkk6lmMoYnRNfB9VQMZGclANJRY24lE55Q8gz1rvnXOJ7a0CCBffyYhL6dHkg6XAt5XDXY0sGWZSlCGuB+dfcNTRY/4f8HN3Nqh/9tfnE+MFTn8SiD/WolWqrn3rvOYZyMPKedgtEKXf8McRu2rSjM08hxv8mMAzpKKm1X5f1Cewjxvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6biDOp7UtWXxyuotUzvxpmuMzUwddRT0XYZOfLUkA0E=;
 b=Stjk4NUMZJorZ87oak9q0XqRP/ndjAj3Cn95zpWtWWArww5rRgEzA3lMgDLRmKiIBpAE/SHM/o0rNx4/V8r49W2HYOgO2vblVpgJMWVptg7gPFxW/xdWQ/xoof85nsqXl/uDtViOCaVQ0OAbgDwK5+DYXOS+HuotYy7vLygqZ4m7nF+iLuZB5D5GUuDkItpY4Le0ExOepJs7oH2/k42g+m1rk6UYWzHA/WzGvSjopZ4CWdDA5+GLP+Lcf4AALurV9Vdn7aGVHyXnu4uiKmOOuab9u+hiTcU/2DUdiLKyy1hNXBimFO3UJV0ihIddrk1hWZII/v8PGn5vhYo2mHsT+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ngc.com; dmarc=pass action=none header.from=ngc.com; dkim=pass
 header.d=ngc.com; arc=none
Received: from PH1P110MB1652.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:18e::22)
 by PH1P110MB1395.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:18f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.34; Fri, 13 Oct
 2023 13:52:56 +0000
Received: from PH1P110MB1652.NAMP110.PROD.OUTLOOK.COM
 ([fe80::4c40:620c:8e8a:6b9e]) by PH1P110MB1652.NAMP110.PROD.OUTLOOK.COM
 ([fe80::4c40:620c:8e8a:6b9e%4]) with mapi id 15.20.6813.046; Fri, 13 Oct 2023
 13:52:56 +0000
From: "Smith, Grant [US] (MS)" <Grant.Smith3@ngc.com>
To: Ross Burton <ross.burton@arm.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: RE: [poky] CVE CHECK scorev3
Thread-Topic: [poky] CVE CHECK scorev3
Thread-Index: AQHZ/PFn0khbpQXrZkernbrv496m3rBHtfqAgAAI0MA=
Date: Fri, 13 Oct 2023 13:52:56 +0000
Message-ID: <PH1P110MB1652196EDF04A93EA3C644B6C7D2A@PH1P110MB1652.NAMP110.PROD.OUTLOOK.COM>
References: <DxsL.1697069952825184652.wun3@lists.yoctoproject.org>
 <D372152A-F368-4907-AF8D-475BF9A4CA7D@arm.com>
In-Reply-To: <D372152A-F368-4907-AF8D-475BF9A4CA7D@arm.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ngc.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH1P110MB1652:EE_|PH1P110MB1395:EE_
x-ms-office365-filtering-correlation-id: 626f9a8c-6a1c-421d-d160-08dbcbf3b463
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tyV/LsXHjLacWRlsltp3azfqeTLIyRaZzINWrD1QLA+kKGSDaFjZ8/L8jj0eN8RwQvHdkF3ILUnXZwKPl22bt9aUeamysfMrTCuHQnj5ed4Lx1xOnQ0AnYTLhlA+rNB/L/V33N9RTQ9Uvte8IY8+V01buofTtCXJ2PF4m283Go9byFaObkiDfkbUQAyPhUWMPKaDQlebc8wQggvbH6OFVOsUXyPKKgbtVp4++QI6pvYZSmZtgQs0eu7CTyTcXTttzQ4FVbs48jdqfun4UL2FPKyLi1jqACnQi0Mn4gvo5NboF7tHRj08fjcHuw3BG04BXvhMxMyvTvCbASMRFD+KwtaajWjKQkiqxIysKLFKpNy6zIShQyURLEBhtula12QELSJDWVMm5bKvw/Apibp8+DUX6ruAry1vhow62+YLDKJ1RIqLBpYFzWop3gYydbsXyPGKS4o4zNS8jYd09ygefGODHcw++YJet6/2m7PexwA6JAEHiZPImMsMLd7KLx3Tp1pToH7p7A9yZ9eQ3NCVyBMcbpLgXtfvxdYCeUVba6vXn0yh4E40at98b7/WoEqt+dTFab2UT/MEHpvSgu2hpdh2NQ2By8TkIEvVM2ndU78=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1652.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366004)(230922051799003)(186009)(451199024)(1800799009)(33656002)(76116006)(6916009)(5660300002)(122000001)(26005)(83380400001)(52536014)(82960400001)(8676002)(4326008)(8936002)(64756008)(9686003)(966005)(7696005)(2906002)(71200400001)(66946007)(55016003)(53546011)(498600001)(66476007)(6506007)(66556008)(66446008)(38100700002)(86362001)(38070700005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: +63VjUM71ZO6QrbQ3oIpZ5/ydDbDTEEsJUZP8Aan3bEEp0K2QNUYWcArXOZAjePmIupCoGkhFUOeqXnpsFflsJWpO5+Q2JTegR2hH0oXCmDWTKC5ojF0Xrbgj2/E2AXJNrndyHbJbPQs0WhH1uUcTYVLSFfDRjjcP1e4PCEz5zLbFDdmQxlCY3YIvCmycKPggnn+bis8tdlP5ulLz+5M/gS8VsXWNNBQNATW7CHG8/hXGcBIwraFub/EOkBFmr7kgMbnlWvN2lYsBvz79TLU92iSc4CevpuqqkyJ0blBr1T4drf/bzf+dvWSIqcv7G6cU5Ouf2GXVvqqIOLTCAJxsfZBtBE9mBqtslwayn5eJaYtgEQzePrTgB0RgdxcPDBK50KAklw9TDaIVYEkCGRtleu5FQcRvB0x1+r50malLFc=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1652.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 626f9a8c-6a1c-421d-d160-08dbcbf3b463
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2023 13:52:56.6489
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 83116fc8-b4d8-4b27-8ddf-e8f32e080b8e
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH1P110MB1395
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 13 Oct 2023 13:53:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13175

Um9zcywNCg0KVGhhdCBmaXggc2VlbXMgdG8gYmUgYWxyZWFkeSBiZSBpbXBsZW1lbnRlZCB3aXRo
aW4gNC4yLjMuIEkgdGhvdWdodCBpdCB3b3VsZCBiZSB0aGUgc29sdXRpb24gYnV0IHN0aWxsIHJ1
bm5pbmcgaW50byB0aGUgaXNzdWUuDQoNClJlZ2FyZHMsDQpHcmFudA0KDQotLS0tLU9yaWdpbmFs
IE1lc3NhZ2UtLS0tLQ0KRnJvbTogcG9reUBsaXN0cy55b2N0b3Byb2plY3Qub3JnIDxwb2t5QGxp
c3RzLnlvY3RvcHJvamVjdC5vcmc+IE9uIEJlaGFsZiBPZiBSb3NzIEJ1cnRvbg0KU2VudDogRnJp
ZGF5LCBPY3RvYmVyIDEzLCAyMDIzIDg6MjAgQU0NClRvOiBTbWl0aCwgR3JhbnQgW1VTXSAoTVMp
IDxHcmFudC5TbWl0aDNAbmdjLmNvbT4NCkNjOiBwb2t5QGxpc3RzLnlvY3RvcHJvamVjdC5vcmcN
ClN1YmplY3Q6IEVYVCA6UmU6IFtwb2t5XSBDVkUgQ0hFQ0sgc2NvcmV2Mw0KDQpPbiAxMiBPY3Qg
MjAyMywgYXQgMDE6MTksIEdyYW50LlNtaXRoMyB2aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyA8
R3JhbnQuU21pdGgzPW5nYy5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gd3JvdGU6DQo+ICAg
SW4gdGhlIHBva3kgbGF5ZXIgKHlvY3RvLTQuMi4zIGJyYW5jaCkgSSBhbSB1c2luZyB0aGUgYnVp
bHQgaW4gY3ZlLWNoZWNrZXIgYW5kIHJ1bm5pbmcgaW50byBhbiBpc3N1ZSB3aGVyZSBpdCBpcyB1
bmFibGUgdG8gcHJvZHVjZSB0aGUgc2NvcmV2MyBtZXRyaWMuIEFsbCBDVkVzIGhhdmUgYSBzY29y
ZXYzIGVxdWl2YWxlbnQgdG8gMC4wLiBXaGVuIGxvb2tpbmcgYXQgcG9reSAoeW9jdG8tNC4wLjkg
YnJhbmNoKSBJIG5vdGljZWQgdGhhdCB0aGUgY3ZlLWNoZWNrZXIgdXNlcyB0aGUgMS4xIHZlcnNp
b24gb2YgdGhlIE5WRCBkYXRhYmFzZSBhbmQgY2FuIHN1Y2Nlc3NmdWxseSBwcm9kdWNlIHNjb3Jl
djMgd2hlbiBydW5uaW5nIGEgdGVzdCBidWlsZC4gVGhlIHlvY3RvLTQuMi4zIGJyYW5jaCB1c2Vz
IHZlcnNpb24gMiBvZiB0aGUgZGF0YWJhc2UuIFRoZXJlIGhhdmUgYWxzbyBiZWVuIHNldmVyYWwg
cGF0Y2hlcyB0aGF0IGFmZmVjdCB0aGUgd2F5IHRoZXNlIHNjb3JlcyBhcmUgcHJvZHVjZWQuIEkg
YW0ganVzdCB3b25kZXJpbmcgaWYgYW55b25lIG1pZ2h0IGhhdmUgYW55IGluc2lnaHQgdG8gdGhp
cyBpc3N1ZSBvciBtYXliZSBoYXZlIGEgc29sdXRpb24uDQoNCknigJl2ZSBub3QgdGVzdGVkIGFu
eXRoaW5nIGJ1dCB0aGlzIHNvdW5kcyBsaWtlIGl0IG1pZ2h0IGJlIHRoZSBmaXggeW914oCZcmUg
bWlzc2luZzoNCg0KaHR0cHM6Ly9naXQub3BlbmVtYmVkZGVkLm9yZy9vcGVuZW1iZWRkZWQtY29y
ZS9jb21taXQvP2lkPTYxYTU4NTdlZmRjYzBmNDljNjljMGRlYjI0ZmNlOTkwMDdhZWVmMTkNCg0K
SWYgeW91IGNhbiBjb25maXJtIHRoYXQgdGhlbiB3ZSBjYW4gYmFja3BvcnQgYXMgbmVlZGVkLg0K
DQpDaGVlcnMsDQpSb3NzDQo=

