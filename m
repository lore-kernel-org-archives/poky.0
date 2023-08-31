Return-Path: <peter.kjellerstedt@axis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88131C83F3D
	for <webhook@archiver.kernel.org>; Thu, 31 Aug 2023 19:10:31 +0000 (UTC)
Received: from smtp1.axis.com (smtp1.axis.com [195.60.68.17])
 by mx.groups.io with SMTP id smtpd.web10.3567.1693509023951354413
 for <poky@lists.yoctoproject.org>;
 Thu, 31 Aug 2023 12:10:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=axis-central1 header.b=WLvMlNY4;
 dkim=pass header.i=@axis.com header.s=selector1 header.b=WbP+nDqZ;
 spf=pass (domain: axis.com, ip: 195.60.68.17, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1693509024;
  x=1725045024;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=8T1lBbhV/Ng4g8y+tgOya8HkATyrGqAVfNkUkG/4LGE=;
  b=WLvMlNY45j8JC0vfaZ8COLbiy/WIt75wUNEZuWjH1e+i0RPT1p033y26
   nBsw0TZ5WFtRWpwS0cnML3N42k9ZOVEG9s9+AFTKr7oZ60DlplyS9E7ii
   N7W3uKiYr6+cOhcHP0o3fBD91osXMc8iQgHQgERNdt/FJ5h4gnclBaQK6
   +rPTviXHsroL0bRCoXYwpge1Alsvf3Vxi0kdAdFA7EgxHdQ+rWPqZMb1M
   WIGcaTUM7qBKAWX/4tte48aTSBWKwoz5Ai9A2nDlijqB90gkL3nNVaZpy
   zwEqDjbz5cwWR9vX73Gm/bPnlRdnlDqLX23EhWktpjlsrU4OErhPoorTi
   Q==;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oaQo2Nsf8j0BBH16V3/4PxPTXRv0ahS8S9Zyf8ySujwn+XFgJQgr5xg8J8FgJVv4X3rcvekqeiTcVUMcMHJFBlFrUrig/0v151+EvmKicy1MnI2sNunC3Dv5gByIY0eAd+Z8pC5xqsIwRBLAxe5RPmap4SeDj9NMBwsky3FcjclJ0jJ2Nn93Mc/uir9IB0tQuyDOWXpw93OFOlnyRkzzsiY/Ss8/Y7iXLYCWG2PuAQiemIrQzngDI0xvUSkaSsC5WtsQXIzoAX1lt+vqzeLDCm5B6hETuLUH5nKkWd0WSzAoqi51QjvUZuCFedmhluee50R4Gn2km1EF8tqFBHOBPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8T1lBbhV/Ng4g8y+tgOya8HkATyrGqAVfNkUkG/4LGE=;
 b=mXxsvbZ1B7TvkjlZCpkv/KI0Z4EKrhKNrghGMVhgkmwyU82r+Izt1byURK2aLQsmSXxMcbcMq9WdAfWxYI4zoaPeKrJ/US9iU85mZcOlyFI/5jHvs4txI/oKAseX99fZZUts0Ti5hciKQxJ28bilEbUyVp5sKIIz4GY6oof6Mk6E5KFne60AAGP9iaA8Q3ZntVjAgjnLmatVVpqY9+BXv5XZcFfie1nrYUlcAKG5eKKqfT600wGSNwNfSq5S3VfQjqFXdzXmEei4PeBjZZVGT0tcVv9rDvgF/+n+KKgmvaNYnY7JW+d9AvNoDgWTS7ObzKdAi4SZznviLVQKD5+04g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axis.com; dmarc=pass action=none header.from=axis.com;
 dkim=pass header.d=axis.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axis.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8T1lBbhV/Ng4g8y+tgOya8HkATyrGqAVfNkUkG/4LGE=;
 b=WbP+nDqZM3nc0zKyprr/oyRtzHuSy6IeZI872pkKQOPiVeIt0QMhm4Q50e9r5YCt5fKk++GluwnDyJQ/XmZnaxnenZWZF9iWG7s5K7mtJiPP/wKbLXG3127PuWP5VAj3jrjdLs2ae34EZEU1b8DEGel/a7LIyx/dUIO5oMbfnI0=
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>, "Alexander
 Kanavin" <alex@linutronix.de>
Subject: RE: [poky] [PATCH 2/2]
 meta-poky/conf/templates/default/conf-description.txt: add a template
 description
Thread-Topic: [poky] [PATCH 2/2]
 meta-poky/conf/templates/default/conf-description.txt: add a template
 description
Thread-Index: AQHZ20yIo11h0mO7RkKOjNv8iLlp47AEophQgAADRwCAAB6q4A==
Date: Thu, 31 Aug 2023 19:10:19 +0000
Message-ID: <DB5PR02MB1021351151153EC752FD400E2EFE5A@DB5PR02MB10213.eurprd02.prod.outlook.com>
References: <20230830141555.656242-1-alex@linutronix.de>
 <20230830141555.656242-2-alex@linutronix.de>
 <DB5PR02MB102135CCC4F1841B25E51AF8CEFE5A@DB5PR02MB10213.eurprd02.prod.outlook.com>
 <CANNYZj_5aXePxpBMw9evwWV7krAa9cCgwDuyewmd+0U4gaMwKQ@mail.gmail.com>
In-Reply-To: <CANNYZj_5aXePxpBMw9evwWV7krAa9cCgwDuyewmd+0U4gaMwKQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axis.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB5PR02MB10213:EE_|PAWPR02MB9783:EE_
x-ms-office365-filtering-correlation-id: 739755be-965d-4f4a-72cc-08dbaa55eae8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eCgYCY8mNPwblHUHGSE+/xP6V/iCXQn5CPaAcTj9UxMw1UuKERQ254utajFVoQ1UHA38A1XjTwsctMVmIG3x5FleB/pws7X1kt9kYMsDWxA65Zw9P8VX+OEQpItprjG6BpSGjrJtbRzwaQmcb62aHJRL2pPxSdTYvsb9rzndZnhwt3pG4ok6pCO5LJ8n536t8QX0XCR7HQo09E/Bjs1UbhxyoNMM5/MdsSDGEWtU9hEScqyvMm1N8uVh45QNP8EoFnSdxwLzeN9iESjD+xiVdYeLpp9Gd88aFjzOTJZMS5scm9jKf8h/L7dTWKsNYZ6eGGvu/vzxnm7hryz/Ma721tnmxHsR0eYgHac20F8JHcRKd/HI4RbzUuSIt9YUywiFFdU/gvHD9k3T0ZdsJisxl/N3X182WzTD0ezo1e0xEqQIZBhfGnForW0rJcEhMSAtL5HgqiFif6poQ3nUoeXFv7GBfZ9+jG99Ultxkk6TRsZdVVUD2GIeNrgBRw3DGUBcllZg1vx2WF5ALuewuETLEXmLFa6+l+7BunDFCcPPwMpI+/35+6alb/tfFMqlhxPbSOXC/uHRqUJli2ppVBKfeVj45KxMsFDo+mh7xxzrTWsVo6O/DFTA2qz2ZWYJSRT1
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB5PR02MB10213.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(376002)(366004)(396003)(136003)(346002)(451199024)(1800799009)(186009)(38100700002)(38070700005)(478600001)(33656002)(122000001)(54906003)(76116006)(26005)(66446008)(66476007)(66556008)(64756008)(316002)(6916009)(41300700001)(66946007)(71200400001)(83380400001)(9686003)(53546011)(7696005)(6506007)(8676002)(8936002)(52536014)(44832011)(2906002)(4326008)(5660300002)(55016003)(86362001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L3VELzVsMzFNWndPaUkxZExkcUsxdERwT0hqb00vZVVpYk1QOGZ3NXFtWkNx?=
 =?utf-8?B?ZWN3ck1Wa0NFd2lNTXhGODVLYzZjYVZmU0phcnRNcjBFZTVyNjV1Y3pZN01a?=
 =?utf-8?B?QWJGck1BcWtTS0pPTlVIU2V2d3lBbHFtWXdPdjYzZ0VFUm9qN1ZSS2xVenZT?=
 =?utf-8?B?QXcrL2NjQkgwQ3hXZ3M3YUtqbTVHMEU4ZEZTNFFib2VyM1ZyYUcrQklGVUhp?=
 =?utf-8?B?SE1DejhoSklqWEZlZ0FyS0hiWGV1elZRQ1REUjh3bXJCMEcrdDFGamNiOGR3?=
 =?utf-8?B?MGpROE9KT0JkVFhMdHhQc2lZUFV3aHJvelgwd0cvSmdaU2xQcE5ha3hPMDVw?=
 =?utf-8?B?Y0N2TjdCNUYzdjVNMVVaNnR2VkhsNGo5WkVMWVErSmRXZklJb3k2eDZNeEJJ?=
 =?utf-8?B?bE1SdVo2eXgzVUpaUlhtV01vdjd0dm9pc1ZyMHo1TndhTnpMc2gxZ0FSZEZQ?=
 =?utf-8?B?YjAwbFQ3VExqMnhMRDAvYmw5bHE1T2xpT0RPdjYyYmlXbmdkN3BmanMxUFVZ?=
 =?utf-8?B?UVJwM2R0dGRpWTI5bkxEUitIVmlXR0NyVVVPTHFrbStQUENicURLTEpsRmZn?=
 =?utf-8?B?UC9FRUFUbnQwcWxCaFVIWWNQdEwzYU1GZi85WHZINjYvd2J4aEd0RE1PR0Jh?=
 =?utf-8?B?L0hlUTV2eVRjVWZoT2dWdVJzWWZ1RWZranNnUC82NmtBaTFiOWNwai9oWGhV?=
 =?utf-8?B?OTJvVzBiR08xSmdQUFpMbHlVSWEvdTVHNzR4TGYySGlsRUpoRXp4MHZKM3ls?=
 =?utf-8?B?UFlka3pXdGNHd0V6TEdsSnVpbzBGVkpaRUw3ZW9CVFVpNm9CTnh4NjZTNldF?=
 =?utf-8?B?MFhNZnRDMi9aVG9vMGRMZUk3MDNaL2pBMnNEemMxeHlEaXUwNll3dWJ3eXZC?=
 =?utf-8?B?UG1reUpRUEVwT1J5MjhPaUh1RUIxaXllS1BaOWJYcnUyM0FEVFZ2NEtHS2Zz?=
 =?utf-8?B?VXFMbXpraUtiWUlYakVBT3oyc3JXbXdiTEIwQ0p1SlN6N0VNTnhJUXVTZDV6?=
 =?utf-8?B?SzNFc2p3eVcvOWZXdS84eDIwUEVKSlgzV2pDejJQczl4VXlRR3BXU2hiRnc4?=
 =?utf-8?B?aitIbmtGSGR6eDBuYkNxbVk3RzY3UWtxSU1FOFBlZmx3aFJYbVc4aFo1R2Fs?=
 =?utf-8?B?ZFJUNUQ5T0tWQjZYOEpicWp6aHpSZFJ2VGJpUGdQa1JKSE4yTG5zWTdtWEZQ?=
 =?utf-8?B?SzZkOERPdEViaXYvdm9kaG03QXlqSzFrb1VLYVRiWmhhdDRhMXRxMXExYVJv?=
 =?utf-8?B?dEpBQ2VYOWpPeWJQaEJBTXNrUUQwZWJRWkRKRnJZNUc3RU9KL2h1ZFh0QnlG?=
 =?utf-8?B?bUkwcTBwYkpwREJZd2Zjc2RGRjhpVlVBNitRSElyY2UvMU9iZnFxVlpWWnRK?=
 =?utf-8?B?R2xTdndkUEJyc2MvbTdKWFlkU056Q0hXQ3ZaU0hvWU5VcnNMMS9uYklvK3NF?=
 =?utf-8?B?YjNPQ09Sc2hIU20ySkU1ZWdWbnVsVENTaGU3eUpQUjNBeVZDQXE1Zkt2b29J?=
 =?utf-8?B?ZVhUME1Ed2ZJc1pnZVF0ZTloUlowU040NW9SYkhUcE9FVGcwTnNaRnltWGJE?=
 =?utf-8?B?bVFxM3IycmUyeVRoQkphVlB1Y3E3WjlIVktHTU5VTEJTak15WTV5QkkrTVNB?=
 =?utf-8?B?MkVZMUNzR0xYWFJpMFgzU1NhbGhWUHpIdm1kNHF0bGoyOVdkMXUrK0VjRHVt?=
 =?utf-8?B?OWRZS21tQU9ZUmZQSnFlTklDL3FOQ1R4U3Voemp5WmxlT1pHQ08zYi9zNU4v?=
 =?utf-8?B?N1VUeENDWTg5T1pvRk82VisvMXlJK21zMmpEK3lPbDhCRFpBQUFDMzNjYkFR?=
 =?utf-8?B?VTFBR1RSNERxQlhWSUlUZ2Z2bDE0VGRFRzRJa0FLOTY3QTY3Qmo2WDd1WE5O?=
 =?utf-8?B?bWZENTBLQmpmbG5DbVdURUprSm9FT2cyZjR3YjNtSlc5RnRsdlBObzBkUXZJ?=
 =?utf-8?B?NytzazhIbjFHM085Q1BydDlJaUp6TUhRVHlNeno3T0VMMWtidDIwalBpMVpY?=
 =?utf-8?B?eU9oc0FWbVplVkFJWGlDWUFQZFZqY2RJQmFQRU9KbmJVWEszcXNWZHhldStG?=
 =?utf-8?B?TzBENHBBK2NwUjk2MDYzd2RRRWY0dm03MFVKM3FnbG5wSjkyeXFvR09BMnly?=
 =?utf-8?Q?q6+Y=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB5PR02MB10213.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 739755be-965d-4f4a-72cc-08dbaa55eae8
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Aug 2023 19:10:19.2835
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qFZK2c0KuOBUU7GnR+2DQst1XaGs+pjcWEnvow960cpskTC3jzTNsYSQNxqQ4+j4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR02MB9783
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 31 Aug 2023 19:10:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13144

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBBbGV4YW5kZXIgS2FuYXZpbiA8
YWxleC5rYW5hdmluQGdtYWlsLmNvbT4NCj4gU2VudDogZGVuIDMxIGF1Z3VzdGkgMjAyMyAxOTox
Mg0KPiBUbzogUGV0ZXIgS2plbGxlcnN0ZWR0IDxwZXRlci5ramVsbGVyc3RlZHRAYXhpcy5jb20+
DQo+IENjOiBwb2t5QGxpc3RzLnlvY3RvcHJvamVjdC5vcmc7IEFsZXhhbmRlciBLYW5hdmluIDxh
bGV4QGxpbnV0cm9uaXguZGU+DQo+IFN1YmplY3Q6IFJlOiBbcG9reV0gW1BBVENIIDIvMl0gbWV0
YS1wb2t5L2NvbmYvdGVtcGxhdGVzL2RlZmF1bHQvY29uZi1kZXNjcmlwdGlvbi50eHQ6IGFkZCBh
IHRlbXBsYXRlIGRlc2NyaXB0aW9uDQo+IA0KPiBPbiBUaHUsIDMxIEF1ZyAyMDIzIGF0IDE5OjA0
LCBQZXRlciBLamVsbGVyc3RlZHQgPHBldGVyLmtqZWxsZXJzdGVkdEBheGlzLmNvbT4gd3JvdGU6
DQo+ID4gPiArKysgYi9tZXRhLXBva3kvY29uZi90ZW1wbGF0ZXMvZGVmYXVsdC9jb25mLWRlc2Ny
aXB0aW9uLnR4dA0KPiA+ID4gQEAgLTAsMCArMSBAQA0KPiA+ID4gK1RoaXMgaXMgdGhlIGRlZmF1
bHQgYnVpbGQgY29uZmlndXJhdGlvbiBmb3IgdGhlIFBva3kgcmVmZXJlbmNlIGRpc3RyaWJ1dGlv
bi4NCj4gPiA+IC0tDQo+ID4gPiAyLjMwLjINCj4gPg0KPiA+IFRvIHVzZSB0aGUgc2FtZSBub21l
bmNsYXR1cmUgYXMgZm9yIHRoZSB2YXJpYWJsZXMsIGhvdyBhYm91dCBjYWxsaW5nDQo+ID4gdGhp
cyBjb25mLXN1bW1hcnkudHh0IGluc3RlYWQ/IENvbXBhcmUgdG8gU1VNTUFSWSB2cyBERVNDUklQ
VElPTi4NCj4gDQo+IFRvIG1hdGNoIHRoZW0gdXAgd2UnZCBhbHNvIGhhdmUgdG8gcmVuYW1lIGNv
bmYtbm90ZXMudHh0LCBicmVha2luZw0KPiBjb21wYXRpYmxpdHkuIEFuZCB0aGUgbWVhbmluZ3Mg
YXJlIG5vdCB0aGUgc2FtZSBhcyBpbg0KPiBzdW1tYXJ5L2Rlc2NyaXB0aW9uIHJlY2lwZXMgb3Ig
cGFja2FnZSBtZXRhZGF0YS4NCj4gDQo+IGNvbmYtbm90ZXMudHh0IHdvdWxkIGNvbnRhaW4gbGVu
Z3RoeSBpbnN0cnVjdGlvbnMvbm90ZXMgZm9yIGhvdyB0byB1c2UNCj4gdGhlIHRlbXBsYXRlIGFu
ZCB3b3VsZCBiZSBzaG93biB3aGVuIHlvdSBhY3R1YWxseSBzZXQgdXAgYSBidWlsZA0KPiBkaXJl
Y3RvcnkgKHRoaXMgaXMgYWxyZWFkeSBoYXBwZW5pbmcgbm93KSwgY29uZi1kZXNjcmlwdGlvbi50
eHQgaGFzIGENCj4gc2luZ2xlIHNlbnRlbmNlIHNheWluZyB3aGF0IGl0IGlzIGZvciwgYW5kIHNo
b3duIGJlZm9yZS9kdXJpbmcNCj4gc2VsZWN0aW9uIG9mIHRoZSB0ZW1wbGF0ZS4NCj4gDQo+IEFs
ZXgNCg0KV2VsbCwgeW91ciBkaXN0aW5jdGlvbiBiZXR3ZWVuICJub3RlcyIgYW5kICJkZXNjcmlw
dGlvbiIgYW5kIHRoYXQgdGhlIA0KbGF0dGVyIGlzIGV4cGVjdGVkIHRvIGJlIGEgb25lbGluZXIg
aXMgbm90IG9idmlvdXMgZnJvbSB0aGVpciBuYW1lcy4NClRob3VnaCwgaW4gdGhlIGVuZCwgSSBn
dWVzcyBpdCBpcyBhbGwgZG93biB0byBkb2N1bWVudGF0aW9uLi4uDQoNCi8vUGV0ZXINCg0K

