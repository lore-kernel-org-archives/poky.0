Return-Path: <peter.kjellerstedt@axis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75843C54798
	for <webhook@archiver.kernel.org>; Thu,  7 Mar 2024 14:51:40 +0000 (UTC)
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (EUR02-DB5-obe.outbound.protection.outlook.com [40.107.249.57])
 by mx.groups.io with SMTP id smtpd.web10.24957.1709823098722207648
 for <poky@lists.yoctoproject.org>;
 Thu, 07 Mar 2024 06:51:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=selector1 header.b=UGRUk8E/;
 spf=pass (domain: axis.com, ip: 40.107.249.57, mailfrom: peter.kjellerstedt@axis.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R4nt40pXGbPcfW+iXdX/rG6tGOqcfmsrlt55RsXMc6H46sdCJalzkPR5aIJYSTd3sT/kqioekNbQ8vdD0nACORDcPixlAk8LFqBH6PpOWC65sT7fZKWtOOdHiMn4wbK4afOcOfk+5MGSQDKbdJ4bUIm5DEDJKASwamQ05XC4aLYD+oQALBp0YFlFOUaXlXQfzmPagrvRI5dWAAchRGqPwHm/NnoX5RzIIsgWbpl4kMEobV01bKNZPqQbTAMraExTyUSBRJT8rkC2RwG3GsWeNXBGeQxZfEk6J1wkIpSdum0z7eIcU6EQ/fNg1v/ExpC9E9UhEAGNO4zttG5IN+OMmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7M28u5wZCoRMrV5e/R7OP9qs9bY7pTStqv9M+iEmOaE=;
 b=OVOhI9BZ1dXz6iHymw4m2DbekPXZkdErbNEYTV2fP7GxvefvibKlCYJY21AdOUarWnfbj686aicXLgSVd2yDbL16ek3GTc8lLjSoMX25ZaA1U9Z3M5RUo7dtiXY3LgQyqZf3rxFJkWBGzTR4aGwtW9qRRzJ4yaGPc2WPQW8QctxWBRsnydSYzwAe3mHjQFrluEkUe419zqd7SzR0dsAO+C0S4O54ied1YIINAy+NkAh6v8QiN7Ip7VEckxkIL973FInJxjLZuND4YZlet6B447XIwSwbKjkFZOvR+mXfT7GBpws5yC+tFvsjG134ZDb6GanQdhS5kZJ7WdQkeU51pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axis.com; dmarc=pass action=none header.from=axis.com;
 dkim=pass header.d=axis.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axis.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7M28u5wZCoRMrV5e/R7OP9qs9bY7pTStqv9M+iEmOaE=;
 b=UGRUk8E/FjGhTq8QViDZa7QaeIjUs7/yI4FpBgHJfbpaFTilibUDDJgvJZNFaApDqDfb/LFXMHLutAYe7LP652cF0sZs/cQ+xnD4K5lgvYokmvA2engq+DS0ACat0OoWr/LXphPq4H+d0kvoCSgLk6wPndiwOBLlqeYHljpQ+W0=
Received: from DB5PR02MB10213.eurprd02.prod.outlook.com (2603:10a6:10:4a8::17)
 by PR3PR02MB6474.eurprd02.prod.outlook.com (2603:10a6:102:5e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.27; Thu, 7 Mar
 2024 14:51:35 +0000
Received: from DB5PR02MB10213.eurprd02.prod.outlook.com
 ([fe80::fa03:deff:aae:c4d0]) by DB5PR02MB10213.eurprd02.prod.outlook.com
 ([fe80::fa03:deff:aae:c4d0%7]) with mapi id 15.20.7362.024; Thu, 7 Mar 2024
 14:51:35 +0000
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, Bruce Ashfield
	<bruce.ashfield@gmail.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: RE: [poky] [PATCH] poky.conf: Set the distro name to "scarthgap"
Thread-Topic: [poky] [PATCH] poky.conf: Set the distro name to "scarthgap"
Thread-Index: 
 AQHaab/KZwBtCTEGPUaSBpn6+87JMrEqyAKggAAKEQCAABD8MIAABO2AgAATuxCAAGKFgIABDCqA
Date: Thu, 7 Mar 2024 14:51:35 +0000
Message-ID: 
 <DB5PR02MB10213F36627AE035945059A7DEF202@DB5PR02MB10213.eurprd02.prod.outlook.com>
References: <17B7D3DE94B664C2.7754@lists.yoctoproject.org>
	 <DB5PR02MB102132C194BE245CC559F17CCEF212@DB5PR02MB10213.eurprd02.prod.outlook.com>
	 <CADkTA4P67D7VXRXdpBhYQHUz0Q=kpii+FMLLS1aD8NuyMi7m+w@mail.gmail.com>
	 <DB5PR02MB102130C7347BAA23C2E9E9F03EF212@DB5PR02MB10213.eurprd02.prod.outlook.com>
	 <CADkTA4PnwoxsvrY_wcEapa4CNvE_NQaA31zzU-Zrj=-ZX+b1dg@mail.gmail.com>
	 <DB5PR02MB10213584D4F6702FA22DCD490EF212@DB5PR02MB10213.eurprd02.prod.outlook.com>
 <6961d89a8613fedbd3893385b23c4d6687560c41.camel@linuxfoundation.org>
In-Reply-To: 
 <6961d89a8613fedbd3893385b23c4d6687560c41.camel@linuxfoundation.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axis.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB5PR02MB10213:EE_|PR3PR02MB6474:EE_
x-ms-office365-filtering-correlation-id: 5332cfe0-79c6-4185-762e-08dc3eb6163b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 AAbM5rsaIrdHp9WDvmV8fUziZGFIOydxrRTxLQpJkiIF3SwqamweD+JIN+W2fkw/moETqGuu/SeI1tFCJvj7lQYOhLMGgU85CqEq3ORxlpSn5AWbxufwU70GzzIRIhTb3lZjH+tjyc/Usn5+8o2wvHTS2+asIDK8xw9E4nUdVlv6QBaJK+yd22FH6kBHixYrovDL4vmo40Wip2P0URX6Tim1sAAKtFs8CPaebNRgyWHBBB3mlnSZNl9Ai8oLx+T83k0HNCt0h6BT8q1SvAv7LL8mUowvLrWQ2kyhcX90PRTEzQlzoAXEWRuOZWpooa2NEJuWwuuGCFAZ/3+G4QeoSzETefnj3VAm0PT/mz6t7dyj8kJIx+Nqe+cnbae6eofN72tSWP0Mdh+d7xr4Vwv0F+kEE8OJAgS6s8IYUfmLmnutXurvkDUO3zPSJLDcOi5rj7M7OU854OQpvtePppQEYEDLjCGrCTGFm4GcPAvoM5qPwAMv5oBYiwP3D6RbpaDlhe+pl9v7drmlQxEnB9y8SVHpveZJb2MVa6jATvWJiduJBZsz+6IEjajUNmkpf0v1zoKAG0Np0c+cwn8s19BFcJLJmZ5IA4HjEeGsuz/5vh7s7TKATadxqJ/sKm7rv8fgzSlVe3HsEraxCfQCi6WDfaEoTSSjmzqNKwGHK3Fkywj90w/rzNH54pAv1chI6Si7OWiVuLxqwsgENrC9TFIQCYlCezOQILlNqD5I0nWhQV8=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB5PR02MB10213.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?Z2F5Y2tmN3FYTVIyUW5NdHpmV21TS3l1TTdDQTJzbkVMTVVwNi8xUXFPeHEx?=
 =?utf-8?B?VkthMnROWnhmSWI2aWtWYWl2Yk1NZzB2Skt2K0YrQy91MnNpU3Z5N0psb1Q5?=
 =?utf-8?B?YTZ4NU93d1BWNlhGSG5ETThqdDNNZHZUVDROdGJ6SDIvR08rT2NEYXUvTXBY?=
 =?utf-8?B?T0VhM1R0eC9LYUFQdnhnQXR3V25zUVVvWXRRZzN6WUZ6eHdiczNsSTJrSktx?=
 =?utf-8?B?MGJINnVtNmhCb01OQzZreG55S1lBRzRrN2dTWmcyNTZBSnh6dG1jWE1tb0xO?=
 =?utf-8?B?enJGYVA2NzVXOGRNaCt0ZnVWMG5DZGllblFzSlhNN3JVaEMyalVsRGZleExT?=
 =?utf-8?B?WTNZVEZldndpM0RYNU5HSVljMWxCVyttWDNzOFlMTEIvQ0NZOHZXUncxUW13?=
 =?utf-8?B?a0N3REt1QW5uMEc1WWFwbTlsVm05N3NySjAybS90M24vaWtaYXN2VEM5NmFy?=
 =?utf-8?B?VDlxTGhHQUxuYWZSMEJHVDh0K2QwNkREUkFLNkhoemNOMXlIdGpzT2loWWIr?=
 =?utf-8?B?Q0FuaTRWb2Jzd3p6VDJHMENhZUZRV0hjcFhsRXduenY2YmlmVVMzdnBXYTdt?=
 =?utf-8?B?cGNiZEE3K2Nhdkx2T29MeU90ZDBaUGZlMmJiT0k1dndhaWJ6OW5RaVlEcSth?=
 =?utf-8?B?c0laaDJjVmV6cnJxZUdEUG5QcE5CK0YrTjBYSzJxcm1qbldBM3RNTnVJeHNQ?=
 =?utf-8?B?Um84UjJzQ0dORG9DdTB0YUNvOXZMZXhza2pGbzZhdGo2RzhPU0wzV1BIMHFO?=
 =?utf-8?B?aW1DTlpoSUQ0NldkUTNJMnE2c3NvUzIxdG5nWUdURmswZmFabzNkMnJTZEY4?=
 =?utf-8?B?RFpSS1kxMmxPU3dEcTdXK1hWeHpPdy93amd6NXFlM2p1S2NZVDFXZjg5bHQ5?=
 =?utf-8?B?bm9MaVZFQ01YMERTdlRsbnJjVzlSZ1VzOTErOXJkOXdocmRGYWN2TGl5TUFq?=
 =?utf-8?B?endkaEVNZ1hpeUxaSHpCNEhTRkZtQ3RzVS9iWTFHZ3ZyRkdDV2pvTWUwc1g3?=
 =?utf-8?B?LzlDSWZ3YlkvY2xjbEtjZ3pGT21xSkEyaFBUL1N0OGNMTzhtdVNpSnhEYU93?=
 =?utf-8?B?OU1hQ1k4S0RVbXRKeGNrVDJYWU5uSy9JOE5NOGpTVGFqWDI4cnNrcGUzbk1t?=
 =?utf-8?B?OC9pQ1A0ZndINW9GVmNJdUFvZGt6MlNaa3o5M0U0QXF5S2NMU3hJTFlRMCtX?=
 =?utf-8?B?ZnZzcnVWaysyemlRNmZTRVZVQlMwSjRTRktiRldOdGpUU21UR01BbmdmL2Zq?=
 =?utf-8?B?Y3dnRDcrbXlndDhlaGFvZ0FDSENyY2dhQ0tuOGdkU1R4R2xHREhrMU81bXFv?=
 =?utf-8?B?K25ROUlTS1NYeWhIZVA3QVlIZ24xdjlDZzNMLzRDemRUOWxIZnhTN1RaK2VK?=
 =?utf-8?B?T3dmcU9KZVd0and1ZEpITUg3SENMWVpvbUtpSlQ2QzJuRC9odm9YanhoKzA2?=
 =?utf-8?B?VE1kOWNOajF0Zm9TRGUxMlpDaXdXNGxzWEVqUFEzcG5oL25hS0NtUmsyNjQ3?=
 =?utf-8?B?UWpaOEE4dTBra2JXUk93L25EaVFRNmkxRllvNGs0OVRZZnNnTnZTaCtkVzhL?=
 =?utf-8?B?TnFNRjVVcDlNWEpyUkI4dCtFUkFCQ2lnOUo4QmtPZDBTYU1WQjRTUHZvVk5N?=
 =?utf-8?B?Zi9vOFFrRVIzY3h6b0JkM1ZUU2F6MnpmOFZ1THltVDFra2RVcTVNUU1wU0pH?=
 =?utf-8?B?WlVDaWg4MnJlODl4eFFUajEwNEtKam4rODdVdnZHSzVyZndITGdTSlVFWVR3?=
 =?utf-8?B?U2UyT1B2c2xyTUFuRGloTFJ2UEpPbW9Qa3lzZ3BPSWg0SEZWUVN4M3NJVVk5?=
 =?utf-8?B?TzczVCtEU3dqem16bUpOTHFvczhFZmlDdU81eGJza0xXRWZXbi93dVBPdFJL?=
 =?utf-8?B?R1ZQVEw1SGVQT25HemNQT3F0SHFueTRoUTlpMFZETTRkUGFYejQ3SWRBRnpa?=
 =?utf-8?B?VGtDRjZ6OFdDYUZmdWFYbWQ5VGI5QkpScHp6bjFVK1daYlg5RDhFd2dNTXRS?=
 =?utf-8?B?THVCYkN3RDZ5RzlqejlkclZBQjBoM3RCQXAwS1JzMnd6Q2l2S1g2Qk9lVWZG?=
 =?utf-8?B?bjF3UzB2Qnhvd20xRnFFQVBSQlNYb0RFNVcvVlE3YkRpd2tLbG5XdFBEY1Rn?=
 =?utf-8?Q?Q1Ek=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: axis.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB5PR02MB10213.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5332cfe0-79c6-4185-762e-08dc3eb6163b
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Mar 2024 14:51:35.7188
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vF7L3jUrcJooUy+Q37/tcQTZXwQabnCZV1xbjl5ETt1LaPPjd6WRmEjeoZvp/k8t
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR02MB6474
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 07 Mar 2024 14:51:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13303

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBwb2t5QGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcgPHBva3lAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gT24gQmVoYWxmDQo+IE9mIFJp
Y2hhcmQgUHVyZGllDQo+IFNlbnQ6IGRlbiA2IG1hcnMgMjAyNCAyMzo1Mg0KPiBUbzogUGV0ZXIg
S2plbGxlcnN0ZWR0IDxwZXRlci5ramVsbGVyc3RlZHRAYXhpcy5jb20+OyBCcnVjZSBBc2hmaWVs
ZA0KPiA8YnJ1Y2UuYXNoZmllbGRAZ21haWwuY29tPg0KPiBDYzogcG9reUBsaXN0cy55b2N0b3By
b2plY3Qub3JnDQo+IFN1YmplY3Q6IFJlOiBbcG9reV0gW1BBVENIXSBwb2t5LmNvbmY6IFNldCB0
aGUgZGlzdHJvIG5hbWUgdG8gInNjYXJ0aGdhcCINCj4gDQo+IE9uIFdlZCwgMjAyNC0wMy0wNiBh
dCAwODo1OSAtMDgwMCwgUGV0ZXIgS2plbGxlcnN0ZWR0IHdyb3RlOg0KPiA+IEkgYW0ganVzdCBm
b2xsb3dpbmcgdGhlIGVzdGFibGlzaGVkIHByb2NlZHVyZSBmb3IgaW50ZWdyYXRpbmcgY2hhbmdl
cw0KPiA+IHRvIE9FOiBzZW5kIGEgcGF0Y2gsIHdhaXQgZm9yIGl0IHRvIGJlIGFjY2VwdGVkIG9y
IHJlY2VpdmUgZmVlZGJhY2ssDQo+ID4gaWYgbm90aGluZyBoYXBwZW5zIHdpdGhpbiBhIHJlYXNv
bmFibGUgdGltZSBmcmFtZSAod2hlcmUgSSB0eXBpY2FsbHkNCj4gPiB3YWl0IGFib3V0IGEgd2Vl
ayksIHRoZW4gcGluZyB0aGUgcGF0Y2ggYXMgaXQgbWF5IGhhdmUgYmVlbiBtaXNzZWQuDQo+ID4N
Cj4gPiBTaW5jZSBJIGV4cGVjdCB1cyB0byBiZSB1c2luZyBNMyB0byBkbyBvdXIgcHJlcGFyYXRp
b25zIGZvciB0aGUNCj4gPiB1cGNvbWluZyByZWxlYXNlLCBJIHRob3VnaHQgaXQgYXBwcm9wcmlh
dGUgdG8gZ2l2ZSB0aGUgcGF0Y2ggYSBsaXR0bGUNCj4gPiBudWRnZSBzaW5jZSBzaW1wbGUgdGhp
bmdzIGxpa2UgdGhpcyBhcmUgZWFzaWx5IG92ZXJsb29rZWQgd2hlbg0KPiA+IGZvY3VzaW5nIG9u
IHRoZSBtb3JlIHByb2JsZW1hdGljIGludGVncmF0aW9ucy4NCj4gPg0KPiA+IEFuZCB0aGUgcmVh
c29uIEkgc2VudCBpdCBhcyBhIHBhdGNoIHJhdGhlciB0aGFuIGEgcmVxdWVzdCB0byBnbyBhbmQN
Cj4gPiBjaGFuZ2UgdGhlIHZhbHVlIGlzIGJlY2F1c2UgSSBhc3N1bWUgaXQgaXMgYSBmYXN0ZXIv
ZWFzaWVyIHByb2Nlc3MgdG8NCj4gPiB0YWtlIGEgcHJlcGFyZWQgcGF0Y2ggcmF0aGVyIHRoYW4g
dG8gbWFudWFsbHkgZG8gdGhlIGNoYW5nZSAoZXZlbiBpZg0KPiA+IGl0IGlzIGp1c3QgYSBvbmUg
bGluZSBjaGFuZ2UgbGlrZSB0aGlzKS4NCj4gPg0KPiA+ID4gUmljaGFyZCBvYnZpb3VzbHkga25v
d3Mgd2hhdCBoYXMgdG8gYmUgZG9uZSB0byBwcmVwYXJlIGZvciBhDQo+ID4gPiByZWxlYXNlLCBh
bmQgaWYgaXQgaGFzbid0IGJlZW4gZG9uZSB5ZXQsIHRoZXJlIGFyZSBsaWtlbHkgcmVhc29ucw0K
PiA+ID4gZm9yIHRoYXQuDQo+IA0KPiBBcyBCcnVjZSBzdXNwZWN0cywgSSBkbyBoYXZlIHNjcmlw
dHMgdGhhdCBkbyBhIHZhcmlldHkgb2YgdGhlc2UgdGhpbmdzDQo+IGZvciByZWxlYXNlcy7CoFRo
ZXkncmUgbm90IG5pY2Ugd2VsbCB3cml0dGVuIHNjcmlwdHMgYW5kIG1ha2UNCj4gYXNzdW1wdGlv
bnMgYWJvdXQgc3RhdGUuIE15IGxvY2FsIHRyZWVzIGFyZSBpbiBzdWNoIGEgbWVzcyBkdWUgdG8N
Cj4gb25nb2luZyBpbnRlZ3JhdGlvbiBpc3N1ZXMgSSBkb24ndCBkYXJlIHJ1biB0aGVtIGF0bSBh
bmQgaWYgSSB0YWtlIHRoZQ0KPiBwYXRjaGVzLCBJIHRoZW4gaGF2ZSB0byByZXNvbHZlIHRoZSBj
b25mbGljdHMgd2l0aCB0aGUgc2NyaXB0cyBhcyB3ZWxsLg0KPiBNb3N0IG9mIHRoYXQgaXMgYmVj
YXVzZSBJIGhhdmUgY29kZSB3aGljaCBJIGRvbid0IGtub3cgd2hldGhlciB3ZSdyZQ0KPiBnb2lu
ZyB0byBlbmQgdXAgbWVyZ2luZyBvciBub3QgYW5kIGl0IGhhcyBpbXBsaWNhdGlvbnMgb24gdGhl
IGhlbHBlcg0KPiBicmFuY2hlcyBhbmQgYXV0b2J1aWxkZXIgY29uZmlnLg0KDQpPaywgSSB1bmRl
cnN0YW5kLiANCg0KPiANCj4gQmFzaWNhbGx5LCB0aGUgYm90dG9tIGxpbmUgaXMgdGhlcmUgYXJl
IG1hbnkgZGlmZmVyZW50IHByb2JsZW1zLCBsb3RzDQo+IG9mIHBlb3BsZSB3YW50IG15IHRpbWUg
YW5kIEkganVzdCBjYW4ndCBkbyBldmVyeXRoaW5nLiBUaGlzIG9uZSBoYXNuJ3QNCj4gbWFkZSBp
dCB0byBhIHByaW9yaXR5IGhpZ2ggZW5vdWdoIHRvIHNwZW5kIHRpbWUgb24gZml4aW5nIDovLg0K
PiANCj4gQ2hlZXJzLA0KPiANCj4gUmljaGFyZA0KDQpJIHNob3VsZCBiZSBhYmxlIHRvIGZvcmNl
IGFuIG92ZXJyaWRlIGZvciBpdCBpbiBvdXIgU2NhcnRoZ2FwLWFkYXB0YXRpb24gDQpsYXllciBz
byB3ZSB3aWxsIG1hbmFnZSBldmVuIGlmIHRoaXMgaXMgbm90IGluIHBsYWNlIGZvciBNMy4NCg0K
Ly9QZXRlcg0KDQo=

