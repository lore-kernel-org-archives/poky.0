Return-Path: <peter.kjellerstedt@axis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1402C4332F
	for <webhook@archiver.kernel.org>; Fri, 10 Nov 2023 20:55:58 +0000 (UTC)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.44])
 by mx.groups.io with SMTP id smtpd.web10.38859.1699649753715364584
 for <poky@lists.yoctoproject.org>;
 Fri, 10 Nov 2023 12:55:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=selector1 header.b=clIDWADX;
 spf=pass (domain: axis.com, ip: 40.107.14.44, mailfrom: peter.kjellerstedt@axis.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P0itM6kQ2Pryv9R3gTriZ0CZhLNG/BJ1r6YyzgH2Z9aOt9veW6wLYD0CZnmzVPUICSL3x6FbT4vF5rqha9MFzt87ml/Vqmnvg+Q5hsAarbKzHdX75GakFfddSqaj6v9GgYJ5oivAiHskTHUx7Zr8Y8lCWgxOcwNU6yAXxxetL/sby/NL7vgjlKj0f/u3i+MQzpizDmKYj7FUyik8til9iVdC4xDXui121hpJZre3NG4tCYy3s8M7R4M/l4QcPEXRsi6i22IEe4HZuvYzGZ0eAjDAe6DVCINeCBfERibrmX2SYNkt/1MgafNq/YuWBgylFaNyFYQTEHND2IHf658XZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/pw9BfR95PVvvkDJsEj2Wta5qUNSjABPMgqCq6Ljokg=;
 b=cVsQ573uIwofFHCK0vihrryqqARUFMMOReWjUk9/6gryya2MdjdfWdmIf8s0DC2v1rMjI61nkR2vVseJ1o5rpTQ3ejMXytNX6udyVAMTz/IL9AYoOqXlmI/SnN7WVN651bFvc6Ty+zKJYjBQg5aXCRbsiiu0ryUX+O3xEKVjRFWRRLMVsYyh85BGK2Gu5on/6AWubZT9p/3k3TRtUolM8QYO/Zm413u7ox+vhkHKgQrL6cR+wWGwwyFhN1hqklEaU2z8ieNvYhbRJ8JEGOtJ2fWjbbbvekpux1dvrlaeDCIa8OIq6Cbnk4TIw9sDnQVaqRvu2FVPwxyJN1WsDVDS9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axis.com; dmarc=pass action=none header.from=axis.com;
 dkim=pass header.d=axis.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axis.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/pw9BfR95PVvvkDJsEj2Wta5qUNSjABPMgqCq6Ljokg=;
 b=clIDWADXa6SqCqpwk/JIzYu2lk7PwsFcRmgDLhrTU3iN5WJr44Y7UJyDH8H2DXhsZUzB82lybB1Ks2RoyAiQAc9Hg+fFMdotuuGmt7q0H6jq7T4rFlLe3UhTniCjLyPVc2Jq2eCMhmWLEEhwl+W4ddJzs47GmJDy5A092TRx2po=
Received: from DB5PR02MB10213.eurprd02.prod.outlook.com (2603:10a6:10:4a8::17)
 by PA4PR02MB6543.eurprd02.prod.outlook.com (2603:10a6:102:fe::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Fri, 10 Nov
 2023 20:55:49 +0000
Received: from DB5PR02MB10213.eurprd02.prod.outlook.com
 ([fe80::6bf2:231b:b0b7:205e]) by DB5PR02MB10213.eurprd02.prod.outlook.com
 ([fe80::6bf2:231b:b0b7:205e%4]) with mapi id 15.20.6977.019; Fri, 10 Nov 2023
 20:55:49 +0000
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: "star@gmx.li" <star@gmx.li>, "poky@lists.yoctoproject.org"
	<poky@lists.yoctoproject.org>
Subject: RE: [poky] let the manifest/used licenses become part of image
Thread-Topic: [poky] let the manifest/used licenses become part of image
Thread-Index: AQHaEty6w9BLoj9yG0KdjwRgm8zParB0CnXQ
Date: Fri, 10 Nov 2023 20:55:49 +0000
Message-ID: 
 <DB5PR02MB10213A41BAD15B82E2709E7D4EFAEA@DB5PR02MB10213.eurprd02.prod.outlook.com>
References: <54265c1a-f32a-4285-94c2-58fad656624e@gmx.li>
In-Reply-To: <54265c1a-f32a-4285-94c2-58fad656624e@gmx.li>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axis.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB5PR02MB10213:EE_|PA4PR02MB6543:EE_
x-ms-office365-filtering-correlation-id: f7745270-c0ad-4dc3-8469-08dbe22f6b75
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ScY0tkJatCLl8NHhmKlFPcZeCPyMCwQRO29n/KMA/oaRE2uDKDQY35x+TSzXrZHOzx70NAvo+1iCmUWZVSxZcLv52Oggmx5Lkz2m3dK+Z9TAi62vC8Y8jzUc8Bpr3EV3FROTFEbGqZTKnGpucFppJ1o/7b4I6a6RZLOsBfVT8IZY0LXCGkFpsDgQpRecwWcyITXcffBQbny8WHUhojt+ij8bgEw0RH3TP52/jE2xGOZKGA97cgBpV76IW8f69hczdKUgQfkczp532gy9KzdCb0Y28GfvlMslo6+V2qJg6aBHj6HpAVMEgSHjVf5AWhtG/kRwRuCdFMWB0UxrUqC644TfwMoHC+fDPwMZN3EAbgP7r2UyWQ1uxUCxdBw7JhH3Fog3B5UjL/bpbvvzFM0LR9fJA3UzyL/hI/k9SN7q3sjL7W0YsWD2gF7i+VCvTDJzVNf1ARmKoEBLaIWq8Dq/LaykvpHiv1olh977qHWFK/hHz9HrQVGhc04bvItW3ZLqnhdstd6Qxw4x6T3+TEUjuC/6La3GUfz6cIxIs/6pwnM/YTwY6yf9HRUhTAslAEnOLcnpNzClGWPmcXqnSIn8xYggzHUQcP2LHsPiot2SHX4=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB5PR02MB10213.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(376002)(366004)(136003)(39860400002)(396003)(230922051799003)(64100799003)(1800799009)(186009)(451199024)(122000001)(9686003)(41300700001)(26005)(38070700009)(478600001)(52536014)(66446008)(76116006)(64756008)(33656002)(66556008)(8676002)(86362001)(966005)(316002)(66946007)(8936002)(110136005)(66476007)(44832011)(2906002)(5660300002)(6506007)(53546011)(71200400001)(7696005)(38100700002)(55016003)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?Y1pFQVFvQ0hCN2g3K0pKQWtvL1lBNXZkaUlrUjhiaUJmSHVYSWEyWmtCeVhD?=
 =?utf-8?B?ZlpvOEw1elJlcTh1TlFJNUZ5bU1aVmJmZjgvbDdoQ2JMdUw1dXVaUjZ2UnFD?=
 =?utf-8?B?T0ZHYU9zVWVCSnJNM2lYcWZnMzhRM01Gd25YVVV2WFhERE8zNityN01GUVlK?=
 =?utf-8?B?c2J3WXBreXlDSkxmTXBNSzJNcDF0cUFKb3dqY3VVY2dMWjU1b1dJNXdrQnJ0?=
 =?utf-8?B?bXdvM0ZEaEdSWjZwWDB3c1U1M2pnT0pOWnNsSVkyMWtmT1VDYVZEa1l1enRq?=
 =?utf-8?B?UFZ3eERlZnhWMjgyc2NKUlpuVVVFaEgzWVNpSXZiODI4YXRQZ3NNcVA4VW1P?=
 =?utf-8?B?a3cxQkRaMHpLbitXL3lBZldHUitZSEllMlVReUcrMmdvdzlITmlFRUJtMmRG?=
 =?utf-8?B?b0oyOHQ2RWdzYVZJaE5WaFNtT1h1bG5WbkIycmQ4VWpBRXI1KzI5RFdOVFJS?=
 =?utf-8?B?M2h5TlVMRTVqUkdkT3M4eHFBVmRCMVVWdHNsdXc5aVByRXpaSFhldnBvZXdO?=
 =?utf-8?B?NmdNMDRzbEhvVkZUODR1RWpkVXlHZllKVitnQkRnVWh0RUlON2Z5VlpZaHVm?=
 =?utf-8?B?NnA2V1VrWW93amJpK09sczRlTXR2b3FsV0R6SlpHODNYdmNKRUtBZ2xwbDg2?=
 =?utf-8?B?eFg1SXgrOW92S3BFeXp0RkY3SnlmU0MwNXV5aEw2TDBzd2xKTUR2cHd6RTli?=
 =?utf-8?B?R0JoMEFuOGp4L25VczRyV1hTNkk2eHE1SU9IeHBoNWdRci9XeGJ3ajhmK0lr?=
 =?utf-8?B?Um81SHdqc0J3NGcxL3Q4UHFqNEpBT0YxclNuZGhDcWhrWVNEcFprZEtQZ0J0?=
 =?utf-8?B?cU41Wno4cE12Um1jWmdtUGhCMU92THFFZUdwamFyMWdwdHJoNHhpOVM4ckp6?=
 =?utf-8?B?eHE3Tkd4WStaOU5oYkh3Ym45NTBhRGwxSFJON3RvL1hBQmpEVXFKT29CQUNL?=
 =?utf-8?B?RXQ5WGgxODhFSnRjVzNIK1YwakppWGQ2OCszallOOUFxOWZla0w5WXZFMWI4?=
 =?utf-8?B?dmh0MS93VVU1c3NUSG9VdTQ1TFJWRGtFTmF0QUtxeHhKdkhYdm5ER2FGSGw0?=
 =?utf-8?B?MC9USEpxRlpnYjJOaGJjR29lMUpiZDJFVWR6MjhoR2NoQXEydFJ0d0xQUmNU?=
 =?utf-8?B?SUZWcFJLTmErQnZWTTNORzRRVUEvN2tvL2ZWTEZaVXhrWmtRQ1RMZ09DUEpy?=
 =?utf-8?B?dXVEa1kyWWtrYlJQK2hpcDRnOEJKeUw0MDRldUZWUjBjano2d3EwWmdkcXZ0?=
 =?utf-8?B?aFg0T0xsVHJOZUx1eUV4ZmZMUUNpRkJrZXk4NWkzRkVlekRzbjBBS3VFeTd0?=
 =?utf-8?B?dk1IVFZocStmNU9oV25URG9ycS96TUdVNk5abWNTZ3BETXdIL1RqaUFzYlRp?=
 =?utf-8?B?K2xWeHFteWxBZFc5WmpJS3VONWcxOC81VWExVk5Vdzk1MXo3M0d6NzlCcEU5?=
 =?utf-8?B?RWdoWHY1cmpSQnMwSXJCd2oyZE1kY0ZuREs5SWRtRW42RzNQSnJqZmx3ZDND?=
 =?utf-8?B?M1JPNEZMbjVEYVROdmh0cTQ2OEZOTG1BNnp2ZyswY05Ic2dBMlFkQjE2aDFx?=
 =?utf-8?B?Nld5dStQYjJUYm5ES2xSNVcvSzJIMW51UXN4N2NDUkZ6dlRKS2F0d1IwdUFn?=
 =?utf-8?B?SFdXNzZIOEJYV05EYzA5T3RxcUkzQlVRcVhCNE5QVDRKNkNEL1BCQVVPK09R?=
 =?utf-8?B?d1hjd3kycXR4OHdTaGN6U2FUaWNLK054SUpIZTlSQVdXTGkrSTRjdFZIejVO?=
 =?utf-8?B?RGVWTzIxNVo2Tk45YjJEa1NhdGdTTDlublBaUmtMQjgxQytSUTA4V2Q3bGRS?=
 =?utf-8?B?dWNLYVBYd2YyR2pkVnN1anpSTXFoZVQ2dzZLbkJZQ3hVQmZmOXlmT3FlVXpS?=
 =?utf-8?B?YnVPRWRkQkluTTJRNFZjZlQ5b0oraGF0UlVBbWJZc2ZrdzhyKy85cVRkMFh1?=
 =?utf-8?B?NnZic2gwY3pCSGNoNjdzR3Z0RWZ6SGhuWml3d0F0Qmh3U3psV3AvSHFTMFFS?=
 =?utf-8?B?eEZUbGNmdXo0ZGZHTnJwWDhrYVpHMW1lRUhPYTJJamgyeFllWmxRN0dlRkE3?=
 =?utf-8?B?OHgzMkMxZjBGSEVQSnZ0SjFxNFFCNTQvU1A1RFVqLy9NaFM0TzByVm1sNkM1?=
 =?utf-8?Q?p0wU=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: axis.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB5PR02MB10213.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7745270-c0ad-4dc3-8469-08dbe22f6b75
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Nov 2023 20:55:49.6912
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tcknf6XPkxjvsnoPupAHM0wV7BJ4nACjIBOV7ptqIagWBYsLudrXpKc7DB645ds+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR02MB6543
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 10 Nov 2023 20:55:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13201

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBwb2t5QGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcgPHBva3lAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gT24gQmVoYWxmDQo+IE9mIFN0
ZXZlIHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+IFNlbnQ6IGRlbiA5IG5vdmVtYmVyIDIw
MjMgMDg6MTcNCj4gVG86IHBva3lAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBb
cG9reV0gbGV0IHRoZSBtYW5pZmVzdC91c2VkIGxpY2Vuc2VzIGJlY29tZSBwYXJ0IG9mIGltYWdl
DQo+IA0KPiBIaSwNCj4gdGhpbmsgaXQgbWFrZXMgc2Vuc2UgdG8gcHJvdmlkZSBpbiB0aGUgaW1h
Z2UgaXRzZWxmIHRoZSBtYW5pZmVzdCBhbmQNCj4gd2hhdCBsaWNlbnNlcyBhcmUgdXNlZC4NCj4g
DQo+IEkgd2FudCB0byBjb3B5IHRoZSAqLm1hbmlmZXN0IHRvIHNvbWUgcGxhY2UgaW4gZmlsZXN5
c3RlbSwgYnV0IHRoYXQNCj4gZG9lc24ndCB3b3JrLiBFdmVuIGlmIGRvbmUgaW4gSU1BR0VfUE9T
VFBST0NFU1NfQ09NTUFORCwgdGhlIG1hbmlmZXN0DQo+IGZpbGUgc2VlbXMgdG8gYmUgZ2VuZXJh
dGVkIGF0IGEgbGF0ZXIgc3RhZ2UuDQo+IEFsdGhvdWdoIGhlcmUgaXMgc3RhdGVkIHNvbWV0aGlu
ZyBkaWZmZXJlbnQ6DQo+IGh0dHBzOi8vZG9jcy55b2N0b3Byb2plY3Qub3JnL292ZXJ2aWV3LW1h
bnVhbC9jb25jZXB0cy5odG1sI2ltYWdlLWdlbmVyYXRpb24NCj4gDQo+IEFueSBoaW50IGhvdyB0
byB3b3JrIGFyb3VuZCB0aGF0PyBPciBhbSBJIGNvbXBsZXRseSB3cm9uZz8NCj4gQmVzdCByZWdh
cmRzLA0KPiBBcm5vDQo+IA0KPiBBbm90aGVyIHRoaW5nLiBUaGUgdG1wL2RlcGxveS9saWNlbnNl
IGZvbGRlciBrZWVwcyBhbGwgZXZlciB1c2VkDQo+IHBhY2thZ2VzLiBIb3cgdG8gZ2V0IG9ubHkg
dGhvc2VzIGxpY2Vuc2VzIHRoYXQgdXNlZCAoYXMgaW4gbWFuaWZlc3QpPw0KDQpJZiB5b3Ugc2V0
Og0KDQpDT1BZX0xJQ19NQU5JRkVTVCA9ICIxIg0KQ09QWV9MSUNfRElSUyA9ICIxIg0KDQppbiB5
b3VyIGNvbmZpZ3VyYXRpb24sIHlvdSBzaG91bGQgZ2V0IHRoZSBsaWNlbnNlIG1hbmlmZXN0IGFu
ZCB0aGUgDQpsaWNlbnNlcyBhZGRlZCB0byB5b3VyIHJvb3Rmcy4NCg0KLy9QZXRlcg0KDQo=

