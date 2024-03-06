Return-Path: <peter.kjellerstedt@axis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F120CC54E41
	for <webhook@archiver.kernel.org>; Wed,  6 Mar 2024 15:31:09 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.86])
 by mx.groups.io with SMTP id smtpd.web10.14699.1709739061436422213
 for <poky@lists.yoctoproject.org>;
 Wed, 06 Mar 2024 07:31:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=selector1 header.b=YkB0Osbt;
 spf=pass (domain: axis.com, ip: 40.107.21.86, mailfrom: peter.kjellerstedt@axis.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z6iGShjOE1lavwOPlWiOiu86myIM9+f5aNbPGygvKFkVNWU+bX/XYOsUNSpyEc1HtinwEFO+6FCXMMJcdqaz1EX7FWNXRwDHaJclK40bbXSAFZLVb86FXhhP91T5pv66Cioz42QcbwLH6Pei7w1lM6yiqwi6gINWaSG63nxoMzb63W62H8LfUGHB9x0WoskrXN1+KERkox+ZpfrBHDQRSb75NQ2YOt96VQ6kyhoHUeYTs7WVEG5Ul9AldVVbr7ojgYb8FlmMMseTIMHWqxftsKPk8LmbOY6Q8uo5OdzYywkIE/Khf09M8dWCQpKqdhBZsO92LUAWB5+gP1PEjFYGTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t026mbqSauKij/1DgwFoznegxl1U9nO0edHmT7pit3c=;
 b=hYZcM49B7QccYHtcIAo0xirNKuTDhSGfZBtXGK11bQKcV64CLOlUXsVjKDlxLV+Rk+MqvBxvMhdKdgBBpALd47CaXTqeGwk02JDafB1OAv16JHBxybO+zuS4H2MzD0gbS8pnOnVpzqFL9BPo9+x4Ys1b295lX9/dvLqLo2o8mYNgRn0aEA4FixBIPx6CooqdPKwJH3VZ6qz55LNJj1qG7k+Yd5PGhP8vsusoi9gYsihae4dU/zrraSVVdpATG584WY1a94XRUEoGI2KC5f0NVGSVbiphcWhBoaXSdGl82AmhohdNxmCyH4wDmEIgcLURBvsZnHQBypWFmmYkyOBpnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axis.com; dmarc=pass action=none header.from=axis.com;
 dkim=pass header.d=axis.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axis.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t026mbqSauKij/1DgwFoznegxl1U9nO0edHmT7pit3c=;
 b=YkB0OsbtXL4eGQq76mFuLhVuTI9LZYG0Cg2R0b0gpBMb2NMMh6UnA1ICUNX27jv8Nuev6qeYyOgx197KsEU3CW1ifXSl9m39CTQIbHbEFunlzmkN1QjMQHLu0378Nmc2/iVypZ6t5EXspnP8dP6S3jSDENhSmO9mH3sg4LBg8wM=
Received: from DB5PR02MB10213.eurprd02.prod.outlook.com (2603:10a6:10:4a8::17)
 by DB9PR02MB10372.eurprd02.prod.outlook.com (2603:10a6:10:3d8::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.39; Wed, 6 Mar
 2024 15:30:57 +0000
Received: from DB5PR02MB10213.eurprd02.prod.outlook.com
 ([fe80::fa03:deff:aae:c4d0]) by DB5PR02MB10213.eurprd02.prod.outlook.com
 ([fe80::fa03:deff:aae:c4d0%7]) with mapi id 15.20.7362.019; Wed, 6 Mar 2024
 15:30:57 +0000
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: RE: [poky] [PATCH] poky.conf: Set the distro name to "scarthgap"
Thread-Topic: [poky] [PATCH] poky.conf: Set the distro name to "scarthgap"
Thread-Index: AQHaab/KZwBtCTEGPUaSBpn6+87JMrEqyAKggAAKEQCAABD8MA==
Date: Wed, 6 Mar 2024 15:30:57 +0000
Message-ID: 
 <DB5PR02MB102130C7347BAA23C2E9E9F03EF212@DB5PR02MB10213.eurprd02.prod.outlook.com>
References: <17B7D3DE94B664C2.7754@lists.yoctoproject.org>
 <DB5PR02MB102132C194BE245CC559F17CCEF212@DB5PR02MB10213.eurprd02.prod.outlook.com>
 <CADkTA4P67D7VXRXdpBhYQHUz0Q=kpii+FMLLS1aD8NuyMi7m+w@mail.gmail.com>
In-Reply-To: 
 <CADkTA4P67D7VXRXdpBhYQHUz0Q=kpii+FMLLS1aD8NuyMi7m+w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axis.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB5PR02MB10213:EE_|DB9PR02MB10372:EE_
x-ms-office365-filtering-correlation-id: f374c211-9653-42e5-1b76-08dc3df26b6c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 6WkwOxAjkBx9QEoDOKGiwrDZg3DrKIprE21GZenmCcnCyhlWMWHNoKzE2cvArFlPvkz013RygXxZfMgiLWw1FMXz81YBLtsKUSmoesPvxO3+BYaoBvyGFa3xazOlZ4NQ+SsVL6l51ro6uX2Pn9aJ57auv3HsJWlqFgrIz6+W/1XD95EUZXwmXjU/HNWMc01IjAVKdqQ3P8VzNzf6Wh0fgdkiLgsVzjIIy6b7sN7EC5KtfqwLt2HwTSoWQaqSeepK9LMmBYQosBCICa5NdUavsnOiafhjoK5Df5TaUPm5BAd5l8oo9Tdc+E3v5at5h1yzJ/id+en71hb9ymdYIYiLWiBfcohczUNYsW0UGoRHUWj8MF7N0/SuXj5I0LqpUAZWwjV0uW+xypG3osTkLRHcN06ShMyUUQ5mAbhSLaRB5SxMlAW84PHR4nI13O/+LYwdhmfxmEwigW4oo1OfQIPE6vfJ+68rbqT3A4oWBdj7MhucgSTtBI25CIiM0aS6VyPE+LeRpFtA7CkwBsofRGdyc+X7NwrrW+MY/MWjlTHaCZHOXKpV7/srjnjvwNcsz/9XfjyKA94BEv1qKSlrN5mjjWtrVzTyLqXHCaGUAJT3XEyirbmpckchwUklts0fSWg67fjHkBnKaOcjz7TL82em3kW+VdAZtTLEFnbvYgwDSxCREypcNYdeClPeUZP92yprwHKrT48UoNBk7ag/6YyPPKrkF+ZvbhXBfK9b9aQ6jDA=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB5PR02MB10213.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?cVNDbmRjWGtZa0lXaXhhNDNWUDZVZkZLeWxvSnZ0UUNzV2hyZ2RVVUN3Y3pP?=
 =?utf-8?B?Z0loVE9DUnhpNmJQbU94ODd0REJFQ3dIY21kVHdwRkFmaktlTXNTSTRadHdK?=
 =?utf-8?B?YXptYzNSZkVDSXovQVNCNGgvSkhlZUhqaFZuWE1zNG1CNmZSYlFQZ1c3Y3Uy?=
 =?utf-8?B?aU5OY05YOWg3bm5TMzNXWXE4cE9rWnU0VU5jcSt1KzNtRDcxOTBvL0pwUlBT?=
 =?utf-8?B?R2hvcTUzd0pjRlMrdVVtSEhzUDJMSzhDVzVUTml5cjMrMHRMbXl2dXVucjF5?=
 =?utf-8?B?Zmh0U1JzZ0oxRllRd252a016ZlhOSGJXd2ZYaFNuTEhiUzZPcGR6MDZRQk03?=
 =?utf-8?B?b1RneUxmWmxSTThxLzlZMTYzcS9pL0JjWkRhMVpXK1NwWHJwVjJVVXQ1TlVL?=
 =?utf-8?B?N0xyUU5MdS90NEtxbG1vdnFmSlE5cW54NkRFQlo5d1JpajNmdFZKZlY2M1Fv?=
 =?utf-8?B?UGFLcjVUR0IrSmZkSE0xYmsveEwzVlljTUljQWZpSEl6MTduYzBCV0FuT3hY?=
 =?utf-8?B?M3hNbURTdUVKK3JGZmtodTdYN09wcDcwbE1QZXlhMlZSYlhZM1Bwam1PK2Iv?=
 =?utf-8?B?TE16VHg4UEwxQllvMml1ZHVObkJvd2FzU2FibzZlUis4WG9NelRLNEQvMDRt?=
 =?utf-8?B?ZzRMbk0ybGVIQ0g1VUYyc2lCQWNHOUdsbS9MT2ZYeW5jNUpCQlhtTCtWak5s?=
 =?utf-8?B?RjE2UzZQTUdYTE5kYmhVSGZPWGFuU2dwcktKK1pTb2dMU01BYm00V0xsV3VE?=
 =?utf-8?B?R1hzczVqZDAwd3VBVVZnaTQ4MUd6b2xydG9HL1M4ajB6MlROVE9CUkZyOFJ0?=
 =?utf-8?B?dWlUOUM0UnYwNEswZ2ttTkkvbTNUaVkzc1QyU1NkRE55OXFwNGZoKzRRZFMr?=
 =?utf-8?B?RDA5ZElTTEhXTE50Uzdna0VKV2VQMmI5MDdFekkwa2tMdVBNZE5TUXJhWVFv?=
 =?utf-8?B?Z05sNThDTzZmNmQ2L0QvYnhTRDdWR3hFYXdWUDJGYnM3QWJRR3VhSDZydmhN?=
 =?utf-8?B?dVhoVkRqOUpvOTRvMXNnRnZPQ1cyeUVLbXRqRUM5cWJQNDZFRzVhWmQwT25B?=
 =?utf-8?B?SzM0UFZaMjFBYXRoMVUwVGNZWVpFa1dGYWg3UWh3NnZFUUVibVB5RXN1WVJh?=
 =?utf-8?B?dmk5R3dEbXF1K1NISldOUnRpSHY1UGMvTmRIL0g5aUZPOVN3NzNabjJRN3RS?=
 =?utf-8?B?NWN4eFBES0szb2N4c01sN0UwNHBvbHA1aWc1QU90SkNjc2lhenVuME9LSmVH?=
 =?utf-8?B?dXBQcDJ0MzZDVWE0SUhwUzBwYmpNTitTcENRVnBZbVVUQ2NHNnlYOWt2ODJF?=
 =?utf-8?B?REV0MHlRTFRLdWZlRkxzT0hWdGlDTFJTdnlIVmlhZitRaXdtMVBDMW01OW04?=
 =?utf-8?B?SCs1T053b2RjU3RFRGtzTDBlaTQ4dkl3V0dKNW9zd29SaGtuM0dIWWdiWEM1?=
 =?utf-8?B?OEk4UytjeU5WTTFKMjdsZFZJTWVDdklDZ3ZNRzVQUmQ2bElxaCtlanZzMXhR?=
 =?utf-8?B?ZkpPcjl1Z0JJMVpBM2FuNVBmUE1JdHc4a2VBQUFmNE9nOFJpYkNWejZWTFJT?=
 =?utf-8?B?VXVhamU2TUVBaTV0YUl1dGxUS3AyRTFSRjNHZzV0Y3pRbW85M0lWQW90TWl6?=
 =?utf-8?B?MWE2eGhLbG1VUU5TNGFWcEplbmhiWW9VZWZ5TlIrTXY0NHJZWW1WTmhjR2wr?=
 =?utf-8?B?ZlQ3MDNXdDE0TTV3aVZiOVhMSXoxOHU4aVFOeFU4ZmExMVd6cXhnaDFkdkNB?=
 =?utf-8?B?VHFnOGJudVhaUGFpS29NREdzd0NqcTRRaDJWMWVjL1lUOGJ0d2cwbTNaZFNG?=
 =?utf-8?B?SVJUdnVhOHVNR1A0WEdoK2U0RG5mNDh6ZFR1UHZ0clBIRU9QNFBVUnc5bnVi?=
 =?utf-8?B?ZGdrTG9lc0diZFJIRS9DUlVsbVVlOWNldUNrY0lJYThRTW8wb21pOVI2enJW?=
 =?utf-8?B?Q2VKZTBqNW5SeWZvNXplZGY3UnhDSG9qdFRZZGdXVXBodlZWMkUweGVlZE9h?=
 =?utf-8?B?djcxb2NRNVZKNXBKVDlIOER3czlYRnlUeVZCMTY4NUVQTjlXVE5VUHFSeDRo?=
 =?utf-8?B?cUg1RHhNUjZzUGxYa0dwSkMzeXZBQ2NQYlBLUEt4Wkd4MjVRWTNkZEloMW53?=
 =?utf-8?Q?yQfU=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: axis.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB5PR02MB10213.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f374c211-9653-42e5-1b76-08dc3df26b6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2024 15:30:57.3202
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KxVjniZl2dhC4Z+zkzXOwH91zwbatSVULVhYZNq5+1MxFauow5Hf66dbWJJODquG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR02MB10372
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 06 Mar 2024 15:31:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13296

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBwb2t5QGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcgPHBva3lAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gT24gQmVoYWxmIE9mIEJydWNl
IEFzaGZpZWxkDQo+IFNlbnQ6IGRlbiA2IG1hcnMgMjAyNCAxNTozMA0KPiBUbzogUGV0ZXIgS2pl
bGxlcnN0ZWR0IDxwZXRlci5ramVsbGVyc3RlZHRAYXhpcy5jb20+DQo+IENjOiBwb2t5QGxpc3Rz
LnlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDogUmU6IFtwb2t5XSBbUEFUQ0hdIHBva3kuY29u
ZjogU2V0IHRoZSBkaXN0cm8gbmFtZSB0byAic2NhcnRoZ2FwIg0KPiANCj4gT24gV2VkLCBNYXIg
NiwgMjAyNCBhdCA5OjEx4oCvQU0gUGV0ZXIgS2plbGxlcnN0ZWR0IDxwZXRlci5ramVsbGVyc3Rl
ZHRAYXhpcy5jb20+IHdyb3RlOg0KPiA+DQo+ID4gKnBpbmcqDQo+ID4NCj4gPiBJIGNhbid0IHNw
ZWFrIGZvciBvdGhlcnMsIGJ1dCBhdCBsZWFzdCB3ZSBoYXZlIHN0YXJ0ZWQgb3VyIHByZXBhcmF0
aW9ucyBmb3INCj4gPiB0aGUgU2NhcnRoZ2FwIHVwZ3JhZGUgc28gdGhhdCB3ZSBhcmUgcmVhZHkg
d2hlbiBpdCBpcyByZWxlYXNlZCwgdGh1cyBpdCB3b3VsZA0KPiA+IGhlbHAgaWYgRElTVFJPX0NP
REVOQU1FIHJlZmxlY3RlZCB0aGUgcmVhbGl0eSBiZXR0ZXIuDQo+IA0KPiBJIGNhbid0IHNwZWFr
IGZvciBSaWNoYXJkLCBidXQgSSBrbm93IHdoZW4gSSBnZXQgcGF0Y2hlcyBsaWtlIHRoaXMNCj4g
Zm9yIGFyZWFzIEkgbWFpbnRhaW4sIHRoZXkgd291bGQgaGF2ZSBiZWVuIGJldHRlciBqdXN0IGFz
IGFuIGVtYWlsDQo+IGFza2luZyB3aGVuIGl0IGlzIGV4cGVjdGVkIHRoYXQgdGhlIGNvZGVuYW1l
IC8gd2hhdGV2ZXIgd2lsbCBiZQ0KPiB1cGRhdGVkLg0KPiANCj4gTWFraW5nIHRoaXMgY2hhbmdl
IGlzIG9idmlvdXNseSBzb21ldGhpbmcgUmljaGFyZCBjYW4gbW9yZSBlYXNpbHkNCj4gZG8gaGlt
c2VsZiB3aGVuIGhlJ3MgaGFwcHkgd2l0aCB0aGUgY29udGVudCBhbmQgbm90IGRlYWxpbmcgd2l0
aA0KPiBiaWdnZXIgaXNzdWVzICh3aGVuIGV2ZXJ5dGhpbmcgaXMgYnVybmluZyBhbmQgbGF0ZSwg
dGhpcyBpcyBsb3cgb24gdGhlDQo+IHByaW9yaXR5IGxpc3QpLg0KPiANCj4gSGFuZGxpbmcgYSBw
YXRjaCBmb3Igc29tZXRoaW5nIHRoYXQgaGUncyByZXNwb25zaWJsZSBmb3IgKGRlY2xhcmluZw0K
PiB0aGF0IHRoZSBicmFuY2ggaXMgYWxtb3N0IHJlYWR5IGZvciB0aGUgcmVsZWFzZSkgaXMgbW9y
ZSBlZmZvcnQgdGhhbg0KPiBpdCBpcyB3b3J0aC4NCj4gDQo+IEJydWNlDQoNCldlbGwsIHRoZSBE
SVNUUk9fQ09ERU5BTUUgaXMgbm9ybWFsbHkgdXBkYXRlZCByZWxhdGl2ZWx5IHNvb24gYWZ0ZXIg
dGhlIA0KdXBncmFkZSByYXRoZXIgdGhhbiBqdXN0IGJlZm9yZSB0aGUgbmV4dCB1cGdyYWRlLCB0
eXBpY2FsbHkgYXQgdGhlIHNhbWUgDQp0aW1lIGFzIHRoZSBESVNUUk9fVkVSU0lPTiBpcyBzZXQg
dG8gaXRzIHBvc3QtdXBncmFkZSB2YWx1ZS4gSSBkbyBub3QgDQprbm93IHdoeSB0aGF0IGRpZCBu
b3QgaGFwcGVuIHRoaXMgdGltZS4NCg0KQW5kIHRoZSByZWFzb24gSSBhc2sgZm9yIGl0IHRvIGJl
IHVwZGF0ZWQgdG8gbWF0Y2ggdGhlIGNvbnRlbnQgaXMgb2YgDQpjb3Vyc2UgdGhhdCB3ZSBzb21l
dGltZXMgdXNlIGl0IHdoZW4gdGhlcmUgaXMgYSBuZWVkIHRvIGRpZmZlcmVudGlhdGUgDQpiZXR3
ZWVuIGhvdyB0aGluZ3MgYXJlIGRvbmUgaW4gdGhlIGN1cnJlbnQgdmVyc2lvbiBhbmQgaW4gdGhl
IHVwY29taW5nIA0KcmVsZWFzZS4NCg0KLy9QZXRlcg0KDQo+ID4gLy9QZXRlcg0KPiA+DQo+ID4g
PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gRnJvbTogcG9reUBsaXN0cy55b2N0
b3Byb2plY3Qub3JnIDxwb2t5QGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IE9uIEJlaGFsZiBPZiBQ
ZXRlciBLamVsbGVyc3RlZHQNCj4gPiA+IFNlbnQ6IGRlbiAyNyBmZWJydWFyaSAyMDI0IDIxOjQ1
DQo+ID4gPiBUbzogcG9reUBsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+ID4gPiBTdWJqZWN0OiBb
cG9reV0gW1BBVENIXSBwb2t5LmNvbmY6IFNldCB0aGUgZGlzdHJvIG5hbWUgdG8gInNjYXJ0aGdh
cCINCj4gPiA+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBQZXRlciBLamVsbGVyc3RlZHQgPHBldGVy
LmtqZWxsZXJzdGVkdEBheGlzLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4NCj4gPiA+IEl0J3MgYmVl
biBhIGxvbmcgdGltZSBzaW5jZSB0aGlzIGRpdmVyZ2VkIGZyb20gTmFuYmllbGQuDQo+ID4gPg0K
PiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiA+
ID4NCj4gPiA+IGRpZmYgLS1naXQgYS9tZXRhLXBva3kvY29uZi9kaXN0cm8vcG9reS5jb25mIGIv
bWV0YS1wb2t5L2NvbmYvZGlzdHJvL3Bva3kuY29uZg0KPiA+ID4gaW5kZXggM2I3YmM2Njc4MC4u
ZTU5YWQ5NzRkMCAxMDA2NDQNCj4gPiA+IC0tLSBhL21ldGEtcG9reS9jb25mL2Rpc3Ryby9wb2t5
LmNvbmYNCj4gPiA+ICsrKyBiL21ldGEtcG9reS9jb25mL2Rpc3Ryby9wb2t5LmNvbmYNCj4gPiA+
IEBAIC0xLDcgKzEsNyBAQA0KPiA+ID4gIERJU1RSTyA9ICJwb2t5Ig0KPiA+ID4gIERJU1RST19O
QU1FID0gIlBva3kgKFlvY3RvIFByb2plY3QgUmVmZXJlbmNlIERpc3RybykiDQo+ID4gPiAgRElT
VFJPX1ZFUlNJT04gPSAiNC4zK3NuYXBzaG90LSR7TUVUQURBVEFfUkVWSVNJT059Ig0KPiA+ID4g
LURJU1RST19DT0RFTkFNRSA9ICJuYW5iaWVsZCINCj4gPiA+ICtESVNUUk9fQ09ERU5BTUUgPSAi
c2NhcnRoZ2FwIg0KPiA+ID4gIFNES19WRU5ET1IgPSAiLXBva3lzZGsiDQo+ID4gPiAgU0RLX1ZF
UlNJT04gPSAiJHtAZC5nZXRWYXIoJ0RJU1RST19WRVJTSU9OJykucmVwbGFjZSgnc25hcHNob3Qt
JHtNRVRBREFUQV9SRVZJU0lPTn0nLCAnc25hcHNob3QnKX0iDQo+ID4gPiAgU0RLX1ZFUlNJT05b
dmFyZGVwdmFsdWVdID0gIiR7U0RLX1ZFUlNJT059Ig0KDQo=

