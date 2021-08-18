Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.104])
 by mx.groups.io with SMTP id smtpd.web12.53989.1629290001075329746
 for <poky@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 05:33:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@servotronix1008982.onmicrosoft.com header.s=selector2-servotronix1008982-onmicrosoft-com header.b=R0dFXpi4;
 spf=pass (domain: servotronix.com, ip: 40.107.22.104, mailfrom: nir.geller@servotronix.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U88jQ2+gUzafjLXGaaHjIpYHCm8NEjbnKWeCPq4ywdoRKJUbRlbsOD644r6cJQrVIwGHmtuQSieZ3oOIgsfAfLGZXiMz0hu7seEibuj6mqJLeipIiYCGwn3pGeGPT5kRHVW+mXRJxC1fuF21pIYVwVXWxc7FP7eSapkPxyoneH37CUqzE9f6gBaGayi2DvbJjtxS5Pz7YzmmK/rys2kH6dMEIT/4yQoj3Uo1kUc7JRztc5z9cywg/UUXcvYlGNdBJwgnwAIFaKHBx4OfaSbftGPeySrsoc2Rfh68DYIo38NKzXDgTVUiGjOFGibzo5zzyj7gQ2utbgvGJR5MZYag3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=POOWx1FX0joJ6ZToq/0rSkiQOfKUDBa+uWkJw64+4t0=;
 b=jBlxVsjJ8MTJbxHYFVHIQUSdhhwdbYo2K2QYU19ZCt4eKQJ75IqCUBtxsW31DZ4gOf7I6/UrFVv6u/09eWfxillf9XsU/+QvBrxSInQnvdUdxVpSnLomGe+r0QPrKhRcKH8UH3g1BGT8euLqZqi4WioTn9aRRlyeGfYrjzYxqXu+D4e/O3ylqlGo+f0qZOwesQ86kauvvjewPrPfLhnXcmpAFEbJydRpigufOKjW3zoA9qWiYo3T8Z85o7bdhOkz7F4PY48HPKKFi+tY5hjkHq/ywIckROQPWLGYUJiDYmUg2k44rpOU9l9skZjFmOEsxqqdcbtsngWifBbBmKxAFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=servotronix.com; dmarc=pass action=none
 header.from=servotronix.com; dkim=pass header.d=servotronix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=servotronix1008982.onmicrosoft.com;
 s=selector2-servotronix1008982-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=POOWx1FX0joJ6ZToq/0rSkiQOfKUDBa+uWkJw64+4t0=;
 b=R0dFXpi4HfuNAuRd+wgcCpZTc5TJrXhEia+rZarOJGOrIq9DkgqnBMVVYmG3EcYwIAv+ZcJYRBUVZdmBkJUiyVDawDCFuGJ5mCLw78xZdbSQgaI42hOzwYys5Ah52FNcrEM+F+s4qrG39HwljqY1gryXx39yv5X6bPptkNMgG9s=
Received: from VI1PR0702MB3695.eurprd07.prod.outlook.com (2603:10a6:803:7::12)
 by VI1PR07MB6605.eurprd07.prod.outlook.com (2603:10a6:800:18e::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.12; Wed, 18 Aug
 2021 12:33:16 +0000
Received: from VI1PR0702MB3695.eurprd07.prod.outlook.com
 ([fe80::24ea:3eb1:7096:60c7]) by VI1PR0702MB3695.eurprd07.prod.outlook.com
 ([fe80::24ea:3eb1:7096:60c7%5]) with mapi id 15.20.4436.018; Wed, 18 Aug 2021
 12:33:16 +0000
From: "Geller, Nir" <nir.geller@servotronix.com>
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] multilib32: libtool-cross_2.4.6.bb configure failure
Thread-Topic: [poky] multilib32: libtool-cross_2.4.6.bb configure failure
Thread-Index: AdeSnFb85JxRO9vjScGsM34xzsPM/QBW+XMgAAIjcYAAACDuYAAIt+YAAAIVKIA=
Date: Wed, 18 Aug 2021 12:33:16 +0000
Message-ID: 
 <VI1PR0702MB36950F17D66F68F5FF67F31090FF9@VI1PR0702MB3695.eurprd07.prod.outlook.com>
References: <169BCA55EF9029C7.23238@lists.yoctoproject.org>
	 <VI1PR0702MB3695095B3B3F5644E1CED65C90FF9@VI1PR0702MB3695.eurprd07.prod.outlook.com>
	 <3c57bb766749d9db7f179edb313574209ada5681.camel@linuxfoundation.org>
	 <VI1PR0702MB369599699CD389BD2EA8359E90FF9@VI1PR0702MB3695.eurprd07.prod.outlook.com>
 <3d7d1c721499eff07bfabd2219bc81b56d5a7466.camel@linuxfoundation.org>
In-Reply-To: 
 <3d7d1c721499eff07bfabd2219bc81b56d5a7466.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=servotronix.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b7f74978-3e2e-405b-496a-08d962445a7f
x-ms-traffictypediagnostic: VI1PR07MB6605:
x-microsoft-antispam-prvs: 
 <VI1PR07MB6605DF2EAF26860C0252DB5F90FF9@VI1PR07MB6605.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 SC5OWTZ4cFH71bBfxv4rqy7GjYIZfaEEB+VH2fa54lTIfZLz5U5Vbwqun3j0HWkIndIVhEM7QDC/ugTyPKsOU0Hn/DDbYogwIHky+68S+PH2jta+hzaRzewW6zciWwjNc+LNmM9gICXjWbGGHcQx1LQaSt0reUDcSuTx6t6gYWY4lFMBO6P57YqT29Q9oVzHtBP1y7RqL1jnOr8/GMGY+irVFsR+L88c5QV+CHxq4viaOeLQXqUtQDB+E11kfhwxyCImXC7OT8NPZe/hyMUgFOVUj2luT5lrvSmK3YVa13a9utfswr6Wd89FFkgZ5g3TGd2PmGuBkFqHo+jB+SouJGn8y8mzjhQFd31OXjvbOpXHhjFmGY/vtNybjC6SRl4Et0cUmOjWS2I3F/kMiB1tUJnGI5JWOHrkzVpL8Lr2VeICldaJdDOaZ2OuU/7conxJGe8x7sCKN8naCVFYTR1C95Zx1MyuNrp/qkFR0z5+UYUbmxqr2zyWAHZdqZ0Te09tdhbilxAnUxpoNPOEA8NV8yUFAeuceHITcIhq8BuwR6tBBsH2ra3IJwFTw/w6B0l7icYQ8nl+gHJX6mHmaRrU/GBI4OxkbVrFt4DXtsdRLQxkzGvZKL4b7NT5jWXzDxr66iHDrwFeRMz2C87tCgX+oXUDI0VtcZ5fgRhcSug+VvgOiqBOSa7yTLAn7AJx+7h3d8VB8eH59vaAblM5Ml8KaQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0702MB3695.eurprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(376002)(366004)(136003)(39840400004)(346002)(8676002)(6916009)(8936002)(508600001)(33656002)(83380400001)(55016002)(9686003)(53546011)(5660300002)(86362001)(6506007)(7696005)(71200400001)(66556008)(52536014)(66446008)(26005)(64756008)(66946007)(2906002)(122000001)(316002)(38100700002)(38070700005)(186003)(66476007)(76116006);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?cG5MM0hRaitZZWdyamYzQXpLc0JLa0R5dGcrN0U0aXh5UHlIMTRyQjI3K0JF?=
 =?utf-8?B?TDIxUE5vMlo5dE4xMTRMK1JHdks1WW1VSmxuT3pJcXpiSk5ISUlsN2dZTVZV?=
 =?utf-8?B?QUpreTEyNkZEQVFNUEtrZFAxL0FTZ1NEVTJsUmlrWmx0dVVrOHlDQjB6Z0dp?=
 =?utf-8?B?ODdEQlVLYnZ1Ym9JNmlHdDZZRmZMWk9JczNTUEpWUTlieEJMdHQzc0VaSXhj?=
 =?utf-8?B?ZzArek1CM25xVjdGR1h2UEpvOVAxS0FPMGFab3JBZHRIYWdIelZXd29Bdm9h?=
 =?utf-8?B?bGdXMVJ2R3Y5TFFpYTNac0lDNkpsY2ljcWc1M25ML3o4dE1IZ3NBWU9lWVk4?=
 =?utf-8?B?Rm1FazkveU56ek1zMWI0amZuWmVnVFJZOGdJaWE2UEcwRmxyTFNMaVRUOVhj?=
 =?utf-8?B?VmNrcmcrRjJ1WlhaOFQ4R3VFWUZVaDh4RTcwYmVkUHoyQ0dNVFhJMlh4RCs3?=
 =?utf-8?B?bjlsMUhqZHgveHczQmdzNjFQT05WaHFCS1BiZ0JMakpYbCtzYVpSUnpPeFRt?=
 =?utf-8?B?U3BDMDJWR09lSXIxUzViTnoxWnhFdG91bzR5MlhjT0twanYzN29XRU1BSlBU?=
 =?utf-8?B?N0svcVVodUwwR3ZxODVJbWJvV05zbUxVcXlpWXM0WTNwYWNzSXRUNmN4MjBS?=
 =?utf-8?B?akJpZzVySWJPdUh0UENMOHhZeTR2YkVpL1ZVUEVLdDg0VDhWbjMzU0M3TUtO?=
 =?utf-8?B?VkRjRlduUWdDdUV2QWlRc1pzSmtGSUZsaDcwT0diZStSRXVmT3g2b1BtbW9v?=
 =?utf-8?B?RFdtcUFOTlVabnBSTkhndTE5RE0rSkFMQWQyU1lBQzlsbkd1Yko2cjJWY0Rm?=
 =?utf-8?B?Ny9qQkRZNytpOXZ5eG9JME1EUy9CVVdwbEFJNTBYTmkwM2ZEdXIwTy9mYkpt?=
 =?utf-8?B?L1k2VUdPSG5wQjR5aS9aREQwS0E4WmI5VEpQcFNUWUlWVnEyQXozT0h2SHor?=
 =?utf-8?B?Y1g1NC9aWEJmVGNjbDlkb3ZFSGl6MEJwMk9lUk4wWkdndFZSMG16T21Xc1BD?=
 =?utf-8?B?d09vMmZSamU1ZzdpMDdYbG1qaThqL1FxY2w5d3BoNndMYzFqdkhwY2kyMDVa?=
 =?utf-8?B?RVlBMDhVUXRwZGhzYStiVjlFNHRrT29FUDhTd2E5ejhSajlzZ0NsWTVNendX?=
 =?utf-8?B?RUhlMUV4MC91ZVkrWGoyeHlWSml6VVVGWUlBL09CSE55WDlkWHc4bGtKNG15?=
 =?utf-8?B?aE9KVTI4SnJtaXQzRU5Rb1lBSG5XME1EWlRza2pJNlBCWGEvakxyVGRlQ1VL?=
 =?utf-8?B?VWkyTXB2RGJnblhtQ3NMeGpGQ1BIRFUzN2dqZE5pQURkZ3ZJUEFpRXdUZkwy?=
 =?utf-8?B?cjNobHNuTnZZZG91SnlwMFdIYUI2SUc1dW1aRi9WMzgrNWgwdVJnL3N2UURT?=
 =?utf-8?B?cEJMWlhpKzRXMFhBTHRFcUVNb25lcWlUVm5YZDN2SjhtZWdSRHY2cFZlZ2g5?=
 =?utf-8?B?MmgwTFdyS0ljQU5iMXJzeGF0R2hFbFFrWXhKQ0lzOTBIcVk2eWhKbWM4RmFS?=
 =?utf-8?B?dkJkNUs2c0k0Ujh5VndJazRTdnFZbXdSNHEzRHlxSWJnd2poMW1uZmlSZExn?=
 =?utf-8?B?b0hIUzJDL05yZTcwaCtJYlg1T2p2UWh3c0dQUmQyUFM0TWlyQ0xjN0pYZkNw?=
 =?utf-8?B?eU12eTVtYllnR081Z0xUWmdEakovZFQxWXVvbXJla2lXeFZWSWduMmJjQk5U?=
 =?utf-8?B?RnV3VTNkazNoNXNGUkRzT0dkMUNrZmxRRlNiOHZUQk9OZnNkUmRXbjNXZDRy?=
 =?utf-8?Q?vN3dJgoVhuhKPP18k2vsTyrF9F3+DvmjbkG1Dfz?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: servotronix.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0702MB3695.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7f74978-3e2e-405b-496a-08d962445a7f
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2021 12:33:16.3786
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5c4bfc7d-fde6-4201-a2d6-2a396cc790f7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Pa8J2eIHkZuvBaUnRiK2AjL/Dm1tXd/SOkuGYAEUaKmoNtDC/1cOznHQTzc9hMg68pVogL65KkGOgQqQTL2yVNU+m8uSEiN6PK63hJeWm2Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR07MB6605
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWRkaW5nIA0KVEFSR0VUX1ZFTkRPUiA9ICItb2UiDQpUbyBjb25mL2xvY2FsLmNvbmYgZGlkbid0
IGRvIHRoZSB0cmljay4NCg0KU28gSSBtb2RpZmllZA0Kc291cmNlcy9tZXRhLWFyYWdvL21ldGEt
YXJhZ28tZGlzdHJvL2NvbmYvZGlzdHJvL2luY2x1ZGUvdG9vbGNoYWluLWFybS5pbmMNCi1UQVJH
RVRfVkVORE9SID0gIiINCitUQVJHRVRfVkVORE9SID0gIi1vZSINCg0KQW5kIHRoZW4NCmJpdGJh
a2UgbGliMzItbGlidG9vbC1jcm9zcw0KZmluaXNoZWQgc3VjY2Vzc2Z1bGx5Lg0KDQpCdXQgbm93
IEkgZ2V0IGEgZGlmZmVyZW50IGVycm9yIHdoZW4gZXhlY3V0aW5nDQoNCmJpdGJha2UgbGlidG9v
bC1jcm9zcw0KDQouLi4NCi4uLg0KIyMgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSAjIw0KIyMg
Q29uZmlndXJpbmcgbGlidG9vbCAyLjQuNiAjIw0KIyMgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LSAjIw0KDQpjaGVja2luZyBmb3IgR05VIE00IHRoYXQgc3VwcG9ydHMgYWNjdXJhdGUgdHJhY2Vz
Li4uIC9ob21lL2J1aWxkL3Rpc2RrL2J1aWxkL2FyYWdvLXRtcC1leHRlcm5hbC1hcm0tZ2xpYmMv
d29yay9hYXJjaDY0LW9lLWxpbnV4L2xpYnRvb2wtY3Jvc3MvMi40LjYtcjAvcmVjaXBlLXN5c3Jv
b3QtbmF0aXZlL3Vzci9iaW4vbTQNCmNoZWNraW5nIHdoZXRoZXIgL2hvbWUvYnVpbGQvdGlzZGsv
YnVpbGQvYXJhZ28tdG1wLWV4dGVybmFsLWFybS1nbGliYy93b3JrL2FhcmNoNjQtb2UtbGludXgv
bGlidG9vbC1jcm9zcy8yLjQuNi1yMC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL2Jpbi9tNCBh
Y2NlcHRzIC0tZ251Li4uIHllcw0KY2hlY2tpbmcgaG93IG00IHN1cHBvcnRzIHRyYWNlIGZpbGVz
Li4uIC0tZGVidWdmaWxlDQpjaGVja2luZyBmb3IgYSBCU0QtY29tcGF0aWJsZSBpbnN0YWxsLi4u
IC9ob21lL2J1aWxkL3Rpc2RrL2J1aWxkL2FyYWdvLXRtcC1leHRlcm5hbC1hcm0tZ2xpYmMvaG9z
dHRvb2xzL2luc3RhbGwgLWMNCmNoZWNraW5nIHdoZXRoZXIgYnVpbGQgZW52aXJvbm1lbnQgaXMg
c2FuZS4uLiB5ZXMNCmNoZWNraW5nIGZvciBhYXJjaDY0LW9lLWxpbnV4LXN0cmlwLi4uIGFhcmNo
NjQtbm9uZS1saW51eC1nbnUtc3RyaXANCmNoZWNraW5nIGZvciBhIHRocmVhZC1zYWZlIG1rZGly
IC1wLi4uIC9ob21lL2J1aWxkL3Rpc2RrL2J1aWxkL2FyYWdvLXRtcC1leHRlcm5hbC1hcm0tZ2xp
YmMvaG9zdHRvb2xzL21rZGlyIC1wDQpjaGVja2luZyBmb3IgZ2F3ay4uLiBnYXdrDQpjaGVja2lu
ZyB3aGV0aGVyIG1ha2Ugc2V0cyAkKE1BS0UpLi4uIHllcw0KY2hlY2tpbmcgd2hldGhlciBtYWtl
IHN1cHBvcnRzIG5lc3RlZCB2YXJpYWJsZXMuLi4geWVzDQpjaGVja2luZyB3aGV0aGVyIG1ha2Ug
c3VwcG9ydHMgbmVzdGVkIHZhcmlhYmxlcy4uLiAoY2FjaGVkKSB5ZXMNCmNoZWNraW5nIGJ1aWxk
IHN5c3RlbSB0eXBlLi4uIHg4Nl82NC1wYy1saW51eC1nbnUNCmNoZWNraW5nIGhvc3Qgc3lzdGVt
IHR5cGUuLi4gYWFyY2g2NC1vZS1saW51eC1nbnUNCmNvbmZpZ3VyZTogYXV0b2J1aWxkIHByb2pl
Y3QuLi4gR05VIExpYnRvb2wNCmNvbmZpZ3VyZTogYXV0b2J1aWxkIHJldmlzaW9uLi4uIDIuNC42
DQpjb25maWd1cmU6IGF1dG9idWlsZCBob3N0bmFtZS4uLiBvc2JveGVzDQpjb25maWd1cmU6IGF1
dG9idWlsZCBtb2RlLi4uIGRlZmF1bHQNCmNvbmZpZ3VyZTogYXV0b2J1aWxkIHRpbWVzdGFtcC4u
LiAyMDIxMDgxOFQxMjMxNDFaDQpjaGVja2luZyBmb3IgYWFyY2g2NC1vZS1saW51eC1nY2MuLi4g
YWFyY2g2NC1ub25lLWxpbnV4LWdudS1nY2MgIC0tc3lzcm9vdD0vaG9tZS9idWlsZC90aXNkay9i
dWlsZC9hcmFnby10bXAtZXh0ZXJuYWwtYXJtLWdsaWJjL3dvcmsvYWFyY2g2NC1vZS1saW51eC9s
aWJ0b29sLWNyb3NzLzIuNC42LXIwL3JlY2lwZS1zeXNyb290DQpjaGVja2luZyB3aGV0aGVyIHRo
ZSBDIGNvbXBpbGVyIHdvcmtzLi4uIG5vDQpjb25maWd1cmU6IGVycm9yOiBpbiBgL2hvbWUvYnVp
bGQvdGlzZGsvYnVpbGQvYXJhZ28tdG1wLWV4dGVybmFsLWFybS1nbGliYy93b3JrL2FhcmNoNjQt
b2UtbGludXgvbGlidG9vbC1jcm9zcy8yLjQuNi1yMC9idWlsZCc6DQpjb25maWd1cmU6IGVycm9y
OiBDIGNvbXBpbGVyIGNhbm5vdCBjcmVhdGUgZXhlY3V0YWJsZXMNClNlZSBgY29uZmlnLmxvZycg
Zm9yIG1vcmUgZGV0YWlscw0KV0FSTklORzogL2hvbWUvYnVpbGQvdGlzZGsvYnVpbGQvYXJhZ28t
dG1wLWV4dGVybmFsLWFybS1nbGliYy93b3JrL2FhcmNoNjQtb2UtbGludXgvbGlidG9vbC1jcm9z
cy8yLjQuNi1yMC90ZW1wL3J1bi5kb19jb25maWd1cmUuMTc3ODoxIGV4aXQgMSBmcm9tICdleGl0
IDEnDQoNCkVSUk9SOiBMb2dmaWxlIG9mIGZhaWx1cmUgc3RvcmVkIGluOiAvaG9tZS9idWlsZC90
aXNkay9idWlsZC9hcmFnby10bXAtZXh0ZXJuYWwtYXJtLWdsaWJjL3dvcmsvYWFyY2g2NC1vZS1s
aW51eC9saWJ0b29sLWNyb3NzLzIuNC42LXIwL3RlbXAvbG9nLmRvX2NvbmZpZ3VyZS4xNzc4DQoN
Cg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IFJpY2hhcmQgUHVyZGllIDxyaWNo
YXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnPiANClNlbnQ6IFdlZG5lc2RheSwgQXVndXN0
IDE4LCAyMDIxIDI6MjkgUE0NClRvOiBHZWxsZXIsIE5pciA8bmlyLmdlbGxlckBzZXJ2b3Ryb25p
eC5jb20+OyBwb2t5QGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNClN1YmplY3Q6IFJlOiBbcG9reV0g
bXVsdGlsaWIzMjogbGlidG9vbC1jcm9zc18yLjQuNi5iYiBjb25maWd1cmUgZmFpbHVyZQ0KDQpP
biBXZWQsIDIwMjEtMDgtMTggYXQgMDc6MjEgKzAwMDAsIEdlbGxlciwgTmlyIHdyb3RlOg0KPiBI
aSBSaWNoYXJkLA0KPiANCj4gVGhhbmtzIGZvciB5b3VyIHJlcGx5Lg0KPiANCj4gRm9yIGEgaU1Y
OCwgY29ydGV4IEE1MywgeW9jdG8gcHJvamVjdCBJIGFtIHN1Y2Nlc3NmdWxseSB1c2luZyBtdWx0
aWxpYiB3aXRoIHRoZSBmb2xsb3dpbmcgY29uZmlndXJhdGlvbiBhZGRlZCB0byBjb25mL2xvY2Fs
LmNvbmY6DQo+IA0KPiAjIERlZmluZSBtdWx0aWxpYiB0YXJnZXQNCj4gcmVxdWlyZSBjb25mL211
bHRpbGliLmNvbmYNCj4gTVVMVElMSUJTID0gIm11bHRpbGliOmxpYjMyIg0KPiBERUZBVUxUVFVO
RV92aXJ0Y2xhc3MtbXVsdGlsaWItbGliMzIgPSAiYXJtdjdhdGhmLW5lb24iDQo+IA0KPiBOb3cg
SSdtIHNldHRpbmcgdXAgYSBwcm9qZWN0IGZvciBBTTY0NDIsIGFnYWluLCBhIGNvcnRleCBBNTMs
IGFuZCBJJ20gdXNpbmcgdGhlIHNhbWUgbXVsdGlsaWIgY29uZmlndXJhdGlvbiwgYW5kIGdldHRp
bmcgdGhpcyBlcnJvci4NCj4gDQo+IElzIGl0IHdyb25nPw0KDQpMb29raW5nIGF0IHRoZSBjb2Rl
LCBJIHRoaW5rIHRoZXJlIGlzIGEgYnVnIHdoZXJlIFRBUkdFVF9WRU5ET1IgPSAiIiBkb2Vzbid0
IHdvcmsgd2l0aCBtdWx0aWxpYi4NCg0KVHJ5IGFkZGluZzoNCg0KVEFSR0VUX1ZFTkRPUiA9ICIt
b2UiDQoNCkNoZWVycywNCg0KUmljaGFyZA0KDQo=
