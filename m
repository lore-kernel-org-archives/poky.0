Received: from EUR01-DB5-obe.outbound.protection.outlook.com (EUR01-DB5-obe.outbound.protection.outlook.com [40.107.15.100])
 by mx.groups.io with SMTP id smtpd.web09.50960.1629271322193091201
 for <poky@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 00:22:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@servotronix1008982.onmicrosoft.com header.s=selector2-servotronix1008982-onmicrosoft-com header.b=o7p3tpIb;
 spf=pass (domain: servotronix.com, ip: 40.107.15.100, mailfrom: nir.geller@servotronix.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JIJMRQ4UE2L5qyCjaAm7ELu3GbM6IvAutTAxXqxDlLvn5ftQRQXBKNB8c2bWpWspGqYmA/9c2IHt7OcTfwde/xQDrbj4ho/5r2UIIShsdXi7pxMAx38B6m+Gd8KSwywTXlYOm3nbR7ongvYl7X2uRoOK7iGTr8Fr3f8FAp4XTMxYlqTVETJ2oK8Nw4TJyAaOXeQ/0CGwyrlbmwvAJ+O8eF76o45rL2rvYZKpLzy9kTbxokLqmPx9pJpJiBA49fyyP7jI4JuHYvDAprpBhNNn2voJdYTPXrjuoyXFtDI+ISpHdJZfv+8k5/hpWS2ttecBqyEjRTeZJJvdwMO48Od0yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5fXDWyL+lXUI1rUWhi+zLJml5x4EjRPYP9gpagxO9t0=;
 b=e4LKKgstWNUSrCWCDU683YW6N//mJBA5jqnq09vxKGX2upy9KPhFF2UlHU8mk7C71mhNG1WtAI2VrYF91gv5mJFWXEVEhjBDVmKbF59b9o2H6B1M49pKWSeGsTAkkz6xDE5nfL7sym45wai0g1ZXObBcK88GvRIa7yFYY9DAR5QWV3ZhGo2CkHJ+mFOzWoWZgDBksm55wCfIsARuBURu06OuQoOCjeDl6jcNSWLUQyD9eanojPGMXEWIPEl5a1JZLFZadqT2N0nvUZQcGRpu8U1dvF6D5a7epR61uoex18wNc8L2JdBEYVu3QzoTpshp4Zdl7yjcfGXCYPFVV3aPsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=servotronix.com; dmarc=pass action=none
 header.from=servotronix.com; dkim=pass header.d=servotronix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=servotronix1008982.onmicrosoft.com;
 s=selector2-servotronix1008982-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5fXDWyL+lXUI1rUWhi+zLJml5x4EjRPYP9gpagxO9t0=;
 b=o7p3tpIbHRI/2lpkgsl+Nm4f8k7sd0IIObQJfj1qkhfTmCDgU2txkWE1CUf6lTd4EsMSWGqAH++fhksvljVUI9lLxaXjiFhX4ujwIBAcZbJ5stTsHlvM/GPK9UcqMSmjxf55iPrGobXL4cUbrd2Twi60nJMVu9DtQXlsyRlgw3U=
Received: from VI1PR0702MB3695.eurprd07.prod.outlook.com (2603:10a6:803:7::12)
 by VI1PR07MB4253.eurprd07.prod.outlook.com (2603:10a6:802:65::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.15; Wed, 18 Aug
 2021 07:21:57 +0000
Received: from VI1PR0702MB3695.eurprd07.prod.outlook.com
 ([fe80::24ea:3eb1:7096:60c7]) by VI1PR0702MB3695.eurprd07.prod.outlook.com
 ([fe80::24ea:3eb1:7096:60c7%5]) with mapi id 15.20.4436.018; Wed, 18 Aug 2021
 07:21:56 +0000
From: "Geller, Nir" <nir.geller@servotronix.com>
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] multilib32: libtool-cross_2.4.6.bb configure failure
Thread-Topic: [poky] multilib32: libtool-cross_2.4.6.bb configure failure
Thread-Index: AdeSnFb85JxRO9vjScGsM34xzsPM/QBW+XMgAAIjcYAAACDuYA==
Date: Wed, 18 Aug 2021 07:21:56 +0000
Message-ID: 
 <VI1PR0702MB369599699CD389BD2EA8359E90FF9@VI1PR0702MB3695.eurprd07.prod.outlook.com>
References: <169BCA55EF9029C7.23238@lists.yoctoproject.org>
	 <VI1PR0702MB3695095B3B3F5644E1CED65C90FF9@VI1PR0702MB3695.eurprd07.prod.outlook.com>
 <3c57bb766749d9db7f179edb313574209ada5681.camel@linuxfoundation.org>
In-Reply-To: 
 <3c57bb766749d9db7f179edb313574209ada5681.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=servotronix.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c85bb3be-7df9-4af6-9d0d-08d96218dc9a
x-ms-traffictypediagnostic: VI1PR07MB4253:
x-microsoft-antispam-prvs: 
 <VI1PR07MB4253BAAFF531631445EEFFD990FF9@VI1PR07MB4253.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 2BBwTWazRmZnj8pF4Co7L64dtVU7Pzw7Hs09itsuL6v0CQmg6U8PJ4uoCao8CT6NF6PwJcYbR3S1F13uOwv5qAv28fSP/lA26opH6q/TkyLsrOb3jzNkB2Lx9R5QzSWTdKxibLUNlHJnmuatJzthg2gNulhGzl8hfi/egbW9eclrodeXROsav3+c4oC+HxTJBZb4DZ5L0oV1RcVShUXXIu2WkxfUv64JMrzlw3seAxemSR5IeNku+dAONrQ3HZR6fG5CSx8hTKE/p7B6TSwtxGJJSPYHKvAqGpLM0mLwDd3FZ493MiuSloKm12asomczMLifYvzFXgoVRWcDBv2MFMZw7O+LpmjlBcVTOaEoT90NsmWBLCrvTxntey83lj12nYZAyBUd/0AuvTHJ/4e6VPE3RsKrmEUBwDp28jr0WWRYBCjCQfrdw6dTk62oLH/YDl34eW1+LTcbeuGV3EX7MgaV2JfUpEeWSlmxZtvyshyQ2ZzY4U04xVuoX4pIyu/wxCKtJdz61ARRpaxop+TZEbtodPxBfl8tbw8CxG2hYhJN1tiA4lJDKS10xK6tnbvk3Xyduonk++oC0X470oMHuBhgixOOfGG8+d6hQ6jZu9Uux2Tms7OPe+ScB4p/CkRuow2au1tQLC9ThRPqxXezt6IGaXBE5V6LQQF+YufE+I93NJPOH91XqB9YQtQwYUX918H6Gth/QoZT6ksUJ97Qfg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0702MB3695.eurprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(136003)(346002)(396003)(39830400003)(376002)(366004)(122000001)(8936002)(38100700002)(5660300002)(83380400001)(76116006)(52536014)(6916009)(8676002)(38070700005)(26005)(33656002)(9686003)(66946007)(316002)(478600001)(71200400001)(186003)(53546011)(6506007)(7696005)(66556008)(86362001)(66476007)(2906002)(55016002)(64756008)(66446008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?MlRTSnBOLzgrSWdjQ0FHZWtUcmk1cktTMVJwM1NjYkNwb0JORUc0RHZJUnl5?=
 =?utf-8?B?S0x2VlZ3WlkraFlUSzVUdURyU05uU2tzaERCQzg3b0VsNDV1c1JOc0RDYklB?=
 =?utf-8?B?Znc1TkU3UXZMWk1aOVhXRnRGWkRrKzRmUmxidzJzU2NNR2xyWWNKZEFHaEhh?=
 =?utf-8?B?WHhaMmt0TzVMRlVEd3ppTmNPamk2eFZINUtpaFZtaGhIdlVPcDRBblhVdWJ4?=
 =?utf-8?B?WnlmM05pYjR2WGlqbmE1b2tSakxLVnNoL1ZsNk9tcG5MaGtZS3dWMUdXOXZm?=
 =?utf-8?B?S3poZitPT0RrUW9PMDgrY3ZrTmYrb3dIN3NLRzlUNHAxN1VFUjlvSENLUVh2?=
 =?utf-8?B?Q2c3Z21hcGR2SWp6UUpLQ0x1OHFvRC9RSXZZSHJLb1hoRVlzOXdlTjlVUkVz?=
 =?utf-8?B?YVlMMkFXcDJ0Q3hJR0dubll6cW9rUlpuSGpHRS90UThDZFNYc3ZzSElqbDRB?=
 =?utf-8?B?eVp2clpDdjZuNUJSNDE5akRFbWErZUxVTmx3TnNTUGREK2c5Q3B1bmdaSkw2?=
 =?utf-8?B?NVp3S0YvUktHVjR0Z05pbnNCQUllQzh1YTJuem14UUhoN3FHSFR2aTYwZWRT?=
 =?utf-8?B?V1NXMGpnZm9QN3lZTUhQcm1sU2VwTGhYSHJoWmFNMklwOHo5K1RtLzZISDFr?=
 =?utf-8?B?QUU3ZVVhazladkpBK08xdGtqL2lkZEFJMFBaYUFLUmJENVZEUERrNklmMWNK?=
 =?utf-8?B?c0JFVUYwWHNkeEkzL2ZJTWhST3FTNlZSNTcvWG84Rk5XLzV3YnlBdWpuWkRG?=
 =?utf-8?B?ZmFSaE1rR3dsK1VISmxybFFQSXY4bWMvR1pNNzBrN2RsaTg4RTU2b2g4RFJH?=
 =?utf-8?B?RUp1ZkhuVlo0OXF2TkFrQ216Smh2VXhpRkg0SVFzU0xaTVZycGVSN3k4aWRT?=
 =?utf-8?B?bmRaakRaQWpMVGszL0RaYTBLSGFvV2VpdVZBU1gwSXpNbUFuOGJ4MHFobWd3?=
 =?utf-8?B?M0g5eHBKK0JpbG9yMENjNlZoWTdIQ2ZuVmZYNkxPTG9iUDI0dVpaOGh0MUVF?=
 =?utf-8?B?TnU2ZjRTS0JENEViM2Eydll1dUZHWW1pK3JxQVRwaDAxS3pwcnBJNTR0UVAr?=
 =?utf-8?B?WWZVQXl3VXhlV3NzVURlbzZvRTFDWUhyMml4L1ZZVHdabFQyNjR6cmlhaEQy?=
 =?utf-8?B?TnRCeHFRNGUrUnBQZEpSdHhNOEt3Mm9sdXJlT0hJSWFZRmVyVXRYNlBHdUJz?=
 =?utf-8?B?L0dCZ1VJUi9rZm9JLzYxaVpTYkhPbnJkc0ZtejZRdDcycXppN0o2cGd6eFdi?=
 =?utf-8?B?dDdGaFRabW55dklTKzV3SDR4aTRVUFNYT0w1VXVlVW0wcjM5eTJsVlBxT3pL?=
 =?utf-8?B?bC84bFhKM3RWSDB6aDF0U0FVbG9SWkcvY0hFOUxnZ1ZXdFkvSkJDblhqMHE1?=
 =?utf-8?B?ZCtkRFhoaWF5eEw1UnVOM2diTmZPZXE2b2JKZW0yVDJqWS9nMDAyK3hxZjNR?=
 =?utf-8?B?SkRyNlFLUzlmUWU2czdLVFA5aHQrR0pBaUNRcTcwU1psODd6NjMyd3lSMmY5?=
 =?utf-8?B?UmRVRU5Dem9XYkRqVXI0MjhyVURlMlhXVVhHK3VYRGFYRVloM1ZsYlJ2TTZ6?=
 =?utf-8?B?WmQ0TWwrNW9lVTVjU2VpNE5CTHZvWmdwNDZQcXEwYzVWWGorZzRtMXpxNm5a?=
 =?utf-8?B?d2RHOTFOSTZEV0dSLzBkM2hyQ1ptL2VPUE9LMU0xaVcyUmNOY3NDNmp0RUhY?=
 =?utf-8?B?NmdBVkd4dHRBMkNIMk9jUzIzTUVOUU5pWnZubklFWjhmajlqV2pNcFZUYktO?=
 =?utf-8?Q?4a4+cTnjDS5BeFCzk8xGnWNEtkLpDEzIuTSVquz?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: servotronix.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0702MB3695.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c85bb3be-7df9-4af6-9d0d-08d96218dc9a
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2021 07:21:56.7724
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5c4bfc7d-fde6-4201-a2d6-2a396cc790f7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iJUaY4FO+Fg8r7/93CEwoGHkX5AEo0cyp2VR595lLgpEPBCx0YvHfC+gR6d58FKNb5TyXDJEMCP7RgZueWO7tFBUOWxLKGOngR0S/AjKQ0c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR07MB4253
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUmljaGFyZCwNCg0KVGhhbmtzIGZvciB5b3VyIHJlcGx5Lg0KDQpGb3IgYSBpTVg4LCBjb3J0
ZXggQTUzLCB5b2N0byBwcm9qZWN0IEkgYW0gc3VjY2Vzc2Z1bGx5IHVzaW5nIG11bHRpbGliIHdp
dGggdGhlIGZvbGxvd2luZyBjb25maWd1cmF0aW9uIGFkZGVkIHRvIGNvbmYvbG9jYWwuY29uZjoN
Cg0KIyBEZWZpbmUgbXVsdGlsaWIgdGFyZ2V0DQpyZXF1aXJlIGNvbmYvbXVsdGlsaWIuY29uZg0K
TVVMVElMSUJTID0gIm11bHRpbGliOmxpYjMyIg0KREVGQVVMVFRVTkVfdmlydGNsYXNzLW11bHRp
bGliLWxpYjMyID0gImFybXY3YXRoZi1uZW9uIg0KDQpOb3cgSSdtIHNldHRpbmcgdXAgYSBwcm9q
ZWN0IGZvciBBTTY0NDIsIGFnYWluLCBhIGNvcnRleCBBNTMsIGFuZCBJJ20gdXNpbmcgdGhlIHNh
bWUgbXVsdGlsaWIgY29uZmlndXJhdGlvbiwgYW5kIGdldHRpbmcgdGhpcyBlcnJvci4NCg0KSXMg
aXQgd3Jvbmc/DQoNClRoYW5rcywNCg0KTmlyLg0KDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0t
LS0tDQpGcm9tOiBSaWNoYXJkIFB1cmRpZSA8cmljaGFyZC5wdXJkaWVAbGludXhmb3VuZGF0aW9u
Lm9yZz4gDQpTZW50OiBXZWRuZXNkYXksIEF1Z3VzdCAxOCwgMjAyMSAxMDoxNSBBTQ0KVG86IEdl
bGxlciwgTmlyIDxuaXIuZ2VsbGVyQHNlcnZvdHJvbml4LmNvbT47IHBva3lAbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFtwb2t5XSBtdWx0aWxpYjMyOiBsaWJ0b29sLWNyb3Nz
XzIuNC42LmJiIGNvbmZpZ3VyZSBmYWlsdXJlDQoNCk9uIFdlZCwgMjAyMS0wOC0xOCBhdCAwNjox
NCArMDAwMCwgR2VsbGVyLCBOaXIgd3JvdGU6DQo+IEludmVzdGlnYXRpbmcgcnVuLmRvX2NvbmZp
Z3VyZSBzdWdnZXN0cyB0aGF0IGluIHRoZSBjb25maWd1cmUgc3RhZ2UgDQo+IG9lX3J1bmNvbmYo
KSBpcyBzZXQgd2l0aCB3aGF0IHNlZW1zIHRvIGJlIHdyb25nIOKAk2hvc3QgYW5kIOKAk3Rhcmdl
dCB2YWx1ZXM6DQo+IMKgLS1ob3N0PWFybW1sbGliMzItbGludXgtZ251ZWFiaSDCoMKgLS10YXJn
ZXQ9YXJtbWxsaWIzMi1saW51eC1nbnVlYWJpDQo+IMKgDQo+IMKgDQo+IEV4ZWN1dGluZw0KPiBi
aXRiYWtlIGxpYjMyLWxpYnRvb2wtY3Jvc3MgLWUNCj4gWWllbGRzLCBhbW9uZyBtYW55IG90aGVy
cywNCj4gwqANCj4gMTg1MTMgIyAkVEFSR0VUX1ZFTkRPUiBbMyBvcGVyYXRpb25zXQ0KPiAxODUx
NCAjwqDCoCBzZXQgDQo+IC9ob21lL2J1aWxkL3Rpc2RrL3NvdXJjZXMvb2UtY29yZS9tZXRhL2Nv
bmYvYml0YmFrZS5jb25mOjEzMg0KPiAxODUxNSAjwqDCoMKgwqAgIi1vZSINCj4gMTg1MTYgI8Kg
wqAgc2V0IA0KPiAvaG9tZS9idWlsZC90aXNkay9zb3VyY2VzL21ldGEtYXJhZ28vbWV0YS1hcmFn
by1kaXN0cm8vY29uZi9kaXN0cm8vaW5jDQo+IGx1ZGUvdG9vbGNoYWluLQ0KPiBhcm0uaW5jOjE1
DQo+IDE4NTE3ICPCoCDCoMKgwqAiIg0KPiAxODUxOCAjwqDCoCBvdmVycmlkZVt2aXJ0Y2xhc3Mt
bXVsdGlsaWItbGliMzJdOnNldCANCj4gbXVsdGlsaWJfZ2xvYmFsLmJiY2xhc3M6MTU5IFttdWx0
aWxpYl92aXJ0Y2xhc3NfaGFuZGxlcl92ZW5kb3JdDQo+IDE4NTE5ICPCoMKgwqDCoCAibWxsaWIz
MiINCj4gMTg1MjAgIyBwcmUtZXhwYW5zaW9uIHZhbHVlOg0KPiAxODUyMSAjwqDCoCAibWxsaWIz
MiINCj4gMTg1MjIgVEFSR0VUX1ZFTkRPUj0ibWxsaWIzMiINCj4gwqANCj4gTGF0ZXIsIEhPU1Rf
VkVORE9SIMKgPSAiJHtUQVJHRVRfVkVORE9SfSIsIEFuZCBIT1NUX1NZUyA9IA0KPiAiJHtIT1NU
X0FSQ0h9JHtIT1NUX1ZFTkRPUn0tJHtIT1NUX09TfSINCj4gwqANCj4gU28gdGhlIHZhcmlhYmxl
IFNZU19IT1NUIGlzIGV4cGFuZGVkIHRvIGFybW1sbGliMzItbGludXgtZ251ZWFiaSB3aGljaCAN
Cj4gc2VlbXMgdG8gYmUgd3JvbmcgZm9yIGxpYjMyLWxpYnRvb2wtIGNyb3NzLg0KPiDCoA0KPiBN
YW51YWxseSBydW5uaW5nIHRoZSBjb25maWd1cmUgY29tbWFuZCB3aXRoIOKAk2hvc3Q9YXJtLW5v
bmUtbGludXgtZ251ZWFiaWhmIGlzIHdvcmtpbmcgcHJvcGVybHkuDQo+IMKgDQo+IENhbiB5b3Ug
cGxlYXNlIHN1Z2dlc3QgaG93IHRvIGZpeCB0aGlzIGlzc3VlPw0KPiBJIHN1c3BlY3QgaXQgd2ls
bCBjb21lIHVwIGluIG90aGVyIHBhY2thZ2VzIGFzIHdlbGwuDQoNCkkgdGhpbmsgdGhlcmUgaXMg
YSBkYXNoIG1pc3NpbmcgaW4gdGhlIFRBUkdFVF9WRU5ET1Igc2V0dGluZywgaXQgc2hvdWxkIGJl
ICItbWxsaWIzMiIuIEkgdGhpbmsgdGhlIFRBUkdFVF9WRU5ET1JfdmlydGNsYXNzLW11bHRpbGli
LWxpYjMyIGlzIHRoZXJlZm9yZSBzZXQgaW5jb3JyZWN0bHkgaW4geW91ciBjb25maWd1cmF0aW9u
Lg0KDQpDaGVlcnMuDQoNClJpY2hhcmQNCg0K
