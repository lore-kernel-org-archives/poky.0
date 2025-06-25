Return-Path: <adrian.freihofer@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25B9EC7115C
	for <webhook@archiver.kernel.org>; Wed, 25 Jun 2025 06:45:08 +0000 (UTC)
Received: from AS8PR04CU009.outbound.protection.outlook.com (AS8PR04CU009.outbound.protection.outlook.com [52.101.70.0])
 by mx.groups.io with SMTP id smtpd.web11.9481.1750833898994938836
 for <poky@lists.yoctoproject.org>;
 Tue, 24 Jun 2025 23:44:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=yXjYxhDJ;
 spf=pass (domain: siemens.com, ip: 52.101.70.0, mailfrom: adrian.freihofer@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t5WV1MBINjTPBDjXuDduoenknq++F6K3bbwDjTp+9xFoyMBVmw2yp8wKgvmH9rf6XHAUWRY1LHojJhV8yYZ2rPN/vC8mzoPLqyKojEhSrD4zR/eAFKwZaWlCoWJPB7qCfng7m0hMXyHBGRxIIEWh9gQSkTt6OUq7Qkr0bqmtDxWDJKm/+b+fNGyppWSgv454aJpqokwWFleZvQloZt4TqwVqns5gzxiQDgoAvxjvl2exBKVrmmh+aMLMpKJ0wHor1W+XivYZBvUvqYhtWwIboHL3X7Q2ktA4tmuuizp+QxpOljrFq6+sd8vz0uYlT4zFpZ+l1IAJPAW232EhXxNwWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aPGU6pjzsVss2aK3o1RpkKiPFS5w9aHrtI5xoD96lE4=;
 b=ob+rpZb7VhSB2a8x3koAh9yHABUKyGxgQkRaKJMqM3xnIC7cc7Pien4k2sHbkbquhhyAq9pjEJRrybgCF3Km237U5nyTjMXHH+TTz3uAi8HkU7XaaoCCbCJart5yxHDacnOs0EvDvxTHsiymNh4+g5eG27oxfBV5zPD6lb3JmvwIjAbo+ljOzEvlWX0jc7GtIeJkLofheLEhL2XylbacZF/+qz+O3OqKzQCUhF4SgaXTAP4PRvD7cShmODPbiCqjwk+rqfnB/B2LFHlKRIeIdtEzSFgV8THgqGjeOoc0d0XA9cJUNxncJt+uH5PkZNsY78NEx7yRaQ6whEAuh/4p8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aPGU6pjzsVss2aK3o1RpkKiPFS5w9aHrtI5xoD96lE4=;
 b=yXjYxhDJpo/0R+xB2BggLP6ys14cPVuXA6ZSdbkaMIUUq5x2OrGn9A7NJ5KScLJzrMKboVZINHoyc8JQsAsifxWqZFp3+mWQzQTNdiZGwAP54C55eD2MAczwRktT0wfpoo1eKculDi2HzcxzUMZM8/gn8tQ0bgZ5586ifN5aZWToF/gNFjuIeYQBncAxTH9CcYE3spXp6abFA6YVZLLihdBvDz1pQmXuYVHTJHjkU3ZAcmdLBcdvf+FVn8n6Subd7S23jnXWLwdrzhjKQC8YixehnmtgMnxwbffDsr70POJ0q6Hu9t2lS9C+GKV8clDc8FmvwRWIPiLb1o2RASSPOg==
Received: from DB8PR10MB3529.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:13e::17)
 by AM0PR10MB3234.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:182::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.28; Wed, 25 Jun
 2025 06:44:55 +0000
Received: from DB8PR10MB3529.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::e586:9cf8:7696:cbda]) by DB8PR10MB3529.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::e586:9cf8:7696:cbda%4]) with mapi id 15.20.8857.026; Wed, 25 Jun 2025
 06:44:55 +0000
From: "Freihofer, Adrian" <adrian.freihofer@siemens.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	Alexander Kanavin <alex.kanavin@gmail.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>, Alexander
 Kanavin <alex@linutronix.de>
Subject: Re: [poky] [PATCH] meta-yocto: remove erroneous poky-bleeding
 selftest in meta/
Thread-Topic: [poky] [PATCH] meta-yocto: remove erroneous poky-bleeding
 selftest in meta/
Thread-Index: AQHb5Q7zf9oe8xupyE6cinmVWAKIrbQSVUWAgAABpQCAAAayAIABEZYA
Date: Wed, 25 Jun 2025 06:44:55 +0000
Message-ID: <eeb1dbb5bb224f28f272cb75252d97b892dc9cb5.camel@siemens.com>
References: <20250624135017.539280-1-alex@linutronix.de>
			 <abe975974fbba263d27ba2a0629a1bcbcc93a090.camel@linuxfoundation.org>
			 <CANNYZj_ezZhTReLhu27H5Y99-k5mwikBfax==LuHLDQr-3p-9Q@mail.gmail.com>
		 <99043e62e6530edf30c0ffce2a6316120d29953c.camel@linuxfoundation.org>
In-Reply-To: 
 <99043e62e6530edf30c0ffce2a6316120d29953c.camel@linuxfoundation.org>
Accept-Language: en-US, de-CH
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.54.3 (3.54.3-1.fc41) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB8PR10MB3529:EE_|AM0PR10MB3234:EE_
x-ms-office365-filtering-correlation-id: d0481793-abac-4eb0-27bd-08ddb3b3cb93
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|4022899009|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: 
 =?utf-8?B?UU9NUkNBa1JNRWRndmZ2aVJzelRLZXUzVFpBT0pHbEd3R3RLRUVRT0hPR1Rv?=
 =?utf-8?B?d1hJZm11emNLdG1lSXJmZGNET0VCNVFCRnJLdnNGZFR0dG5vb3FMSk9EL1Vk?=
 =?utf-8?B?cXpwaXNvZTBQUHpBZktIa0xsSFpzb2FHeFlVQmNjREhPNnhEK0R6MFNRTG0y?=
 =?utf-8?B?WEx4ZW80RW1TV211ZEIxQjVySVpYWWJSUTRseUZhRE1QZE00K01iRFgwTkt2?=
 =?utf-8?B?QlJIWTFzS0lWYWcrdVdpd20xTENUQy9jUkg3L0NtSXNVdVhJZmM1WnAzdmMx?=
 =?utf-8?B?Rnd5eG1QdWI1NVYxUENUVS9PZVpPWDlpU08zcnJOVTkxUHhnTURQczZ4Qk5J?=
 =?utf-8?B?MTEwdjZXbDB1aCtFNVdBeWpGSjlESU1hOXUxSUJsUFZ6SWFSMG9lY2FRVEtt?=
 =?utf-8?B?L3dzbUFaZVhoWnpTNUw0RmdNVnM1T3JaWXVLSU40S1prNUplSStsYVFFSkxR?=
 =?utf-8?B?a2l0Zk9ZQmxRL1RwbjFhSVhJaW9Eb0pQckdxSTd1OEs4dXZUbW5GTkhzVUZE?=
 =?utf-8?B?Ym1uRjVocFQ3ZWw5Rkx6UkJBem9CcmlhcUNueHhvVjhUcitkQk9ueVhSeFBP?=
 =?utf-8?B?L2crdHh5NFZmc2J5ZjVCOWJuenZDRmFnN0ZkMWtRZ2pQUkZvQk9tQVp1NEV3?=
 =?utf-8?B?bGtHekFtRkRmZ2poZTJoYjFUSVUxc1FaR2dRNjkrQnc4TjlQc3RPRVluTERj?=
 =?utf-8?B?ZkVuKzBodXNnclFMVDVReVE4NGszRGthOFVQVGxKLzhyU25kK0I5UVhnd2JK?=
 =?utf-8?B?SFg4RzV0aW9MaWU3QzNCai9QZ0VLeExhOW5PWnNFZzFOU2VLNXFhNDdzSWJh?=
 =?utf-8?B?eERJSC9IRXhQbERvaUVlVmN2S2VoTDA0cXZhNnl3RzVtRXJweDRIdjE3anky?=
 =?utf-8?B?QjZVYzM0ZmNZZzVTcURDQzBpMU81L0tGcjBGbUZSaUZ0VXQ4bDFPSU51aThB?=
 =?utf-8?B?THVmUm9NWUNCSmIzWUphdllRNU5CTUVDVHJRNCtDMGFKckgxT1Q1RXRNZFhk?=
 =?utf-8?B?alQ3cnhvMmJsOHhmejJ1a3hlcTlVWGNSWS80TVJBUCtjc3ozTFlDenFRRE5y?=
 =?utf-8?B?MVpJRzFlRUU5TTBQbHFmdnNweFo3ZHZxQkZUSGpmOWRvTUlkU29xNG1US2d2?=
 =?utf-8?B?NjJzTVRhMHp3VFJyaDVDRjl5NjBQNVFMaUx1dk4vYkdjeTIyQUp6Ui9OaGcv?=
 =?utf-8?B?UzJUMVNpdUErZnBMalhiRWYxVUh5aFN5ekEzUzlQL1IxYWdPazVlV1NKZy8x?=
 =?utf-8?B?OUQ4QXJRdDlYMnRKbTVUR1lmVXFqYTJRYncwS2Y5NHo4NHF2Q1FmOGN0Vzhl?=
 =?utf-8?B?aFpzc1I2QjBsajRTR1FWU0FqdXYzUUhjTUF5YzBVVFArU2VqNVh5SWdFUjB0?=
 =?utf-8?B?VkNja1BaUEE5bVpuc3Rpc3ZaRWdsK01sU1QvcHFYMUdoblk4d2IzNzBPRkI5?=
 =?utf-8?B?SGJDb0pyT1JHcCtPaTIrbVUzem5RTFE1Ymc1REtBcU9rdE4xTk5NTG4xNHMw?=
 =?utf-8?B?TDU5UElSY3NNcjVTVzJucVRNUllMMHB2c0NJQjh0SVVQeTVUM2V3WTlXR1Bk?=
 =?utf-8?B?ckpaeG02aGFmSjU2OWk3dFFvY09raUl4aWNOQjJwOFNqSW9xcFpodE9lZURq?=
 =?utf-8?B?YVZ3MVpqcDlSd3piRjVCZVR0cFF0MXRYUlpDYkoxQ0xLV0ZvQlk5Ui9jMUd0?=
 =?utf-8?B?RGVtZkw2VnZNR21IR2lxd3dhZXJZbXhmclFxeDRnSUdOS2d1US9ycDZ4Nm9J?=
 =?utf-8?B?SHNHYWlZWUZkZ3NYNEtsU1VEMUYxc3d5dStNVjdDN1RvcU8waXNUWXI0dDd3?=
 =?utf-8?B?YkRCREl0OUlrZ21iKzV3cS9rSE82RGZWMk9XVStlMS9HZUpINUtPMkN3R3Ns?=
 =?utf-8?B?UG5iWmRYR1k2Y013ZmQzK1BOTlBlL0w0Sk5kVnJFVzNjL1BnUTkySlAwTmcw?=
 =?utf-8?Q?FyfcpJkAVJA=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR10MB3529.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(4022899009)(1800799024)(376014)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?QmRvQ3BHckpUai91dHA4R0JzdzMvYTVNVjloRHAzWEVIcW9KbnBGMG5MMlZV?=
 =?utf-8?B?QmprR2ZmUTUxT3ZSVnhPeWVCWW1qejVUYTNSUjBOMmpyaWQwY21uWVQrTWpz?=
 =?utf-8?B?WEgxdDd2QjZ3a1RRUDA0M1MwM0F3K05NYXZzRllLRmcvZitWRTFEa3pCUFN0?=
 =?utf-8?B?RmdYS1VuSHY0aWxJVjdFVGVRTkJqQkFxcFUzVHhUcC83ZlJPSFdqempUTTRn?=
 =?utf-8?B?TGRiV2lYdkt2UTRRSExwL0VRam1leDFUOTF2ald3UHlaRmVXRG1qR081QnVQ?=
 =?utf-8?B?YlQ0S3pZamNmNGxycFlYQzFuY0pyblJOYkNlV2M0WEg2dUwvdTZjSVVWRjE2?=
 =?utf-8?B?MWNkQm1vN3BQVkFqd3VUMGZJRFFQaXJCcHZSMXNMZjZpZVUwYU51RSt3RFlz?=
 =?utf-8?B?ZFVYOTg4VDJHTDVVeDFOaXUySG1TWHdobWF6K1hXT0NGaFpORFJFTGNVY2lP?=
 =?utf-8?B?VzVRY0ZhYWN1RzFCNVRqNnRkWkl6KyszNmc4RmhoWGV6MEdJNll4clVGc01X?=
 =?utf-8?B?UXZKeW1SM1hwai9uNmZsdkZjdEhsN3NaRkdGZ3NUVzFyR0JzKzNpTHA3aytE?=
 =?utf-8?B?bXUzR1lzZ2UrYkpyTG0yeGE4Z2pENkFRa0owaGt1SG03czJvYTBSRS9CaWxU?=
 =?utf-8?B?RlEvdEFuVTZsbW1pNWx1NEVLTFZvN3JIUHRJNTczQjRLejY1dUdMcHRTWGJz?=
 =?utf-8?B?Z3dTUUlEUGVsaFMwUUxZblhVamRHTDc1NzBWWkx3T3J1QTF5QmZ2RVNNNHUy?=
 =?utf-8?B?a3dyd3NVTlFpN2tKRkJjTVgyUVAwM0NGZzZmcFl4a2JvMzFIajZaRDUxYm14?=
 =?utf-8?B?V2hicFJJak9GN3MvRjRudEgrYXpiT1dmZnQzZFErQXlDOVN1RTNqQ0xFcDRD?=
 =?utf-8?B?d2FPT1MyV25xcnBlRjZSVThHTVBHSGRNNkYzZzNmays5Y2Y5UjBuWEVvRUxw?=
 =?utf-8?B?NVZnb2RKcUNaaDNjYmNpV0ZqM2NKOEJrMEJMcjg5ZzUvQ3VGSFRwWWQ0bnhp?=
 =?utf-8?B?M0JMdGJpang2SittelVRcis1V0ZETFdmSm5PRGhDMkx5SVdLREg2bnN4RmVm?=
 =?utf-8?B?Sys3Z3FjOGhrQVcxSkxrY0tXSEN0cXF5MXgwWkVuckpNd3BhQkI5dmRYSjdH?=
 =?utf-8?B?UStiYWM5RUlTWDdpNTF5Sks2bE5NUE5Pd3lGeENkMm1hVjd1ODFUMGg3S0dy?=
 =?utf-8?B?TTVhbUJTTllxMjgrVkE4b2o2REt2WVQwSTNVMEc4ZlM3aFhHTFFYZnNYbUpV?=
 =?utf-8?B?Y2tvd3k3dUgyVGp3UytCdm1yQjR1Wjk3UDF1MTE3em5TMWlHSlIyb0xhRHZU?=
 =?utf-8?B?V3BKVkNUWjJUMVMvckFQWkN2c0dGaHMvMkNrSFJTcnVwOWVlaStKRlJ4YXlV?=
 =?utf-8?B?Q1JQd3hoVzRyMVpjbm9vQ3MvdzZaVHRGa2gxRTBXOG9zdVozY0tIbGhUM1h4?=
 =?utf-8?B?NlJXbllQSkVWNjJNTWVPcExuZjJYaXprdWZkYkRTK3hrYldENVZ6QWtac1Rv?=
 =?utf-8?B?eCtvY21MZ2svVTFrUTdRSk1UMXpTV05kUUpIN211d0NMeGhkTHYrUy84cGN1?=
 =?utf-8?B?Mmx1dEdKNFNrRTR3YjhodDQ1QVlRSGxIekIwNG1lemxYTWFCTHdQMXhDbndJ?=
 =?utf-8?B?NDdBOVFMNDBpZ2ZmakFEMXhLVWV3WmFsWUxwc2dpaXdNSGROOWRNS1JvZ05k?=
 =?utf-8?B?ampnYm5WN2FsU3dVWGRsc2dSUE1ONGs4SlE5QzRSNWF6WkZyR0tXVnpIdEYr?=
 =?utf-8?B?U3B2TXVQZ0pHY21HQ3BQRkx3Q0pkQVR6eWwzUDhJWi9RM29qWjNDdmR5SUVr?=
 =?utf-8?B?YStlWmN5amgwc0pDRzFwMDN5ekhoYVF4cFJidmFSRi8wSEk0TVJ6QnJ4VHlP?=
 =?utf-8?B?WVFoV2RXMDRIeVpGak9uR0JiUEFMSldHVVM1b0hQZ2dhRmdERlY3a0laTGUz?=
 =?utf-8?B?QnNWVGZGcEYzWjJBVFdrcDJoMjA3VjNzbENmY3V5cEpqOUttdEVrM0xSWEdo?=
 =?utf-8?B?RlJFSWt1eTB6aGUwcGJJRnpPTnR0a3RSakVNdE1acC9TT2VBdmoxWHo0cGtY?=
 =?utf-8?B?OHdCRFY3RUhPT29jWTdzMElSOTJBekxMeDFpeUVEU3JqaEwwZkI4V1pFR3o4?=
 =?utf-8?B?WG4xNTJlSGUxZENoQWkzRm9FY3IySnhRcHd2b1BMOGJjYTFqVWxPd0Foem9C?=
 =?utf-8?B?b3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D5B96CE2D6A54E4D9B0798478E8FEA35@EURPRD10.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB8PR10MB3529.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: d0481793-abac-4eb0-27bd-08ddb3b3cb93
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2025 06:44:55.2001
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uwqwQZ0vbsCp6O/sBJcZHVVVzdNHV6ud2bGNLMvj76kpCyPGZEurz54/BD1VRuLFPqubgUb+ImXQziUXM1KmS2ZWgd76pjxXzTJWn05GFSo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR10MB3234
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 25 Jun 2025 06:45:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13676

T24gVHVlLCAyMDI1LTA2LTI0IGF0IDE1OjI1ICswMTAwLCBSaWNoYXJkIFB1cmRpZSB2aWENCmxp
c3RzLnlvY3RvcHJvamVjdC5vcmcgd3JvdGU6DQo+IE9uIFR1ZSwgMjAyNS0wNi0yNCBhdCAxNjow
MSArMDIwMCwgQWxleGFuZGVyIEthbmF2aW4gd3JvdGU6DQo+ID4gT24gVHVlLCAyNCBKdW4gMjAy
NSBhdCAxNTo1NSwgUmljaGFyZCBQdXJkaWUNCj4gPiA8cmljaGFyZC5wdXJkaWVAbGludXhmb3Vu
ZGF0aW9uLm9yZz4gd3JvdGU6DQo+ID4NCj4gPiA+IFNpbmNlIHRoaXMgY2FuJ3Qgd29yayB3aXRo
b3V0IHBva3ksIEknZCBhcmd1ZSBpdCBpcyBpbiB0aGUgcmlnaHQNCj4gPiA+IHBsYWNlPw0KPiA+
DQo+ID4gVGhlcmUgYXJlIGEgZmV3IG90aGVyIHNlbGZ0ZXN0cyBpbiBvZS1jb3JlIHRoYXQgaGF2
ZSBhIGhhcmQNCj4gPiBkZXBlbmRlbmN5IG9uIHBva3kgKGUuZy4gbXVsdGljb25maWcsIGZpdGlt
YWdlKS4NCj4NCj4gV2Ugc2hvdWxkIHByb2JhYmx5IGZpeCB0aGF0IGFzIGl0IHdhc24ndCBpbnRl
bmRlZC4NCg0KVGhlIEZJVCBpbWFnZSB0ZXN0cyBjb21waWxlIHRoZSBsaW51eC15b2N0bywgbGlu
dXgteW9jdG8tZml0aW1hZ2UsIGFuZA0KdS1ib290IHJlY2lwZXMuIEkgdHJpZWQgcnVubmluZyBv
ZS1zZWxmdGVzdCAtciBmaXRpbWFnZSB3aXRob3V0IHNldHRpbmcNCkRJU1RSTyA9ICJwb2t5IiBh
bmQgd2l0aCBNQUNISU5FID0gInFlbXVhcm0iIGluc3RlYWQgb2YgImJlYWdsZWJvbmUtDQp5b2N0
byIuIFRoZSBNQUNISU5FIHNldHRpbmcgaXMgYSBiaXQgbW9yZSBjb21wbGljYXRlZCBiZWNhdXNl
IG9mIHRoZQ0KZGV2aWNlIHRyZWVzLCBidXQgdGhhdCBzaG91bGQgYWxzbyBiZSBwb3NzaWJsZS4N
CklkZWFsbHksIG1vc3Qgb2YgdGhlIGZpdGltYWdlIHRlc3RzIHNob3VsZCBiZSBpbiBPRS1jb3Jl
IHdpdGggcWVtdWFybSwNCmFuZCBwZXJoYXBzIHNvbWUgdGVzdHMgZm9yIGJlYWdsZWJvbmUteW9j
dG8gY291bGQgYmUgbW92ZWQgdG8gbWV0YS0NCnlvY3RvIGFzIHdlbGwuIEl0J3Mgbm90IG15IGhp
Z2hlc3QgcHJpb3JpdHkgdGFzaywgYnV0IEkgd2lsbCB0cnkgdG8NCmZpbmQgc29tZSB0aW1lIHRv
IGNsZWFuIHRoaXMgdXAuDQoNCkFkcmlhbg0KDQoNCj4NCj4gPiBJIGRvbid0IG1pbmQga2VlcGlu
ZyB0aGlzIHRlc3QgaW4gbWV0YS15b2N0byByZXBvLCBidXQgaXQgc2hvdWxkDQo+ID4gcmVhbGx5
IGJlIG1vdmVkIG91dCBvZiBtZXRhLyBkaXJlY3RvcnkgYXMgaXQncyBzdXBlciBjb25mdXNpbmc6
DQo+ID4NCj4gPiBodHRwczovL2dpdC55b2N0b3Byb2plY3Qub3JnL21ldGEteW9jdG8vdHJlZS8N
Cj4NCj4gQWdyZWVkLCBpdCBzaG91bGQgYmVsb25nIGFsb25nc2lkZSB0aGUgZGlzdHJvLg0KPg0K
PiBDaGVlcnMsDQo+DQo+IFJpY2hhcmQNCj4NCj4gLT0tPS09LT0tPS09LT0tPS09LT0tPS0NCj4g
TGlua3M6IFlvdSByZWNlaXZlIGFsbCBtZXNzYWdlcyBzZW50IHRvIHRoaXMgZ3JvdXAuDQo+IFZp
ZXcvUmVwbHkgT25saW5lICgjMTM2NzMpOg0KPiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5v
cmcvZy9wb2t5L21lc3NhZ2UvMTM2NzMNCj4gTXV0ZSBUaGlzIFRvcGljOiBodHRwczovL2xpc3Rz
LnlvY3RvcHJvamVjdC5vcmcvbXQvMTEzODA3MjYzLzM2MTY4NTgNCj4gR3JvdXAgT3duZXI6IHBv
a3krb3duZXJAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiBVbnN1YnNjcmliZToNCj4gaHR0cHM6
Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cvcG9reS91bnN1YiBbYWRyaWFuLmZyZWlob2ZlckBz
aWVtZW5zLmNvbQ0KPiBdDQo+IC09LT0tPS09LT0tPS09LT0tPS09LT0tDQo+DQoNCg==

