Return-Path: <shawn.adams@ga.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0A73D2F345
	for <webhook@archiver.kernel.org>; Tue, 13 Jan 2026 16:35:23 +0000 (UTC)
Received: from USG02-CY1-obe.outbound.protection.office365.us (USG02-CY1-obe.outbound.protection.office365.us [23.103.209.73])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.63616.1768322116341091166
 for <poky@lists.yoctoproject.org>;
 Tue, 13 Jan 2026 08:35:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ga.com header.s=selector1 header.b=WNAjNXfO;
 spf=pass (domain: ga.com, ip: 23.103.209.73, mailfrom: shawn.adams@ga.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=mveOsGbmMOtqmi4eKL70vlfhSIp7zq6HaZ+/nA/ThhHhq8UxravzsbDvcW0xR9Qh60m1+dMMFIf6M8/2TylHnT48v619eKa+AprVtzziZiwpAXpW5Wg4EyndTF4T3n5i4H1Wo205FY/kh5ngDL8yAPpnYS8jN7xtRZ/K4ps+LRA5U5rN/o2VFie8GzfEwv6z4lgJ1MYaGJHyipPEfYQ2XhUf2wrURsknv5LTprK6BsDOzRIpUFGhxX9oU7UTySkqfzZdgC93tfEjXawocfHJai51gNfVyJxSvh5G5+CGaAFHcV3hcdwsky3Md6qnd/bAkkeEFQH0vhXaL/bbuue+qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tUPeHIACLKREYxTLd46ygVD9cxx8Pmy8cF6Gm5ifqA4=;
 b=t7C75B7Fn/KTgMrjN5AdGCxTuQwDRXjQOxywoJgINd70rxLjnSSv8JKJrPfl24TqC1hbwScvoDNFR/RlMjJO3KNU1MIDitIYw1hm9b5G03fPnlnLNOedqgluxy8sBfXcFePqpZqZJZF+X5BbShnoJmQcuKtwIZC9uwb70YWfYX12VB7bVIxU6JQZqTeEOmdXHnxlGOPOs+1RplQopgCD06dou6Dj/58j6ZR0HnZTZrjiojhskRMV9NsqqD3RpsGZxPTBVo03/XbSEB1QU058kv/n2WirCa6uU1XNG9GiP7Im5Rym9MhYjy/YLCFxrCbhZXpsR/4BIXabDFtvoOt0VQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ga.com; dmarc=pass action=none header.from=ga.com; dkim=pass
 header.d=ga.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ga.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tUPeHIACLKREYxTLd46ygVD9cxx8Pmy8cF6Gm5ifqA4=;
 b=WNAjNXfOx3UimMOw6JLI2SkCSlqAGTkxmjzvs0exrMgWS1c4rCgJYxhfmyOFa/cGuT9QxZWaB9SKTCwFL2byngqvXJUnwtZGbYKWEUXEnUhacAWu+QUesKjwgL4zvLWKYAXp4E8JCOSWAKBCeS29Ka3QcMnMlBMpJqbWGoJ57x0OXeEvBoXmJdaRVKJh/k+wvis9jQgsHXJURVObTJRlU3/2msB5bhEcGzLRlw8KkrSK7tXXRDdRPD1MVFNWdmRbaDuiT7F8tIme2zv5NXU0purJjX4cv11bXUQQCZ7aBnXzEJT5Mvz8otiTgeV0JBxP1W32VhmEJSKe9KK8vP+27Q==
Received: from PH3P110MB2023.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:1af::5)
 by BNAP110MB2302.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:1a1::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.6; Tue, 13 Jan
 2026 16:35:12 +0000
Received: from PH3P110MB2023.NAMP110.PROD.OUTLOOK.COM
 ([fe80::5778:f3a9:1d8d:ec22]) by PH3P110MB2023.NAMP110.PROD.OUTLOOK.COM
 ([fe80::5778:f3a9:1d8d:ec22%6]) with mapi id 15.20.9456.008; Tue, 13 Jan 2026
 16:35:12 +0000
From: "Adams, Shawn" <shawn.adams@ga.com>
To: Paul Barker <paul@pbarker.dev>, "poky@lists.yoctoproject.org"
	<poky@lists.yoctoproject.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
CC: "Adams, Shawn" <Shawn.Adams@ga.com>
Subject: RE: -EXT-Re: [poky] Error from package.bbclass?
Thread-Topic: -EXT-Re: [poky] Error from package.bbclass?
Thread-Index: AQHcgASg5PccUy+gvk23Q/zwDx7gzLVQT5jQ
Date: Tue, 13 Jan 2026 16:35:12 +0000
Message-ID: 
 <PH3P110MB2023D1C5487AC5FE7A3849CE848EA@PH3P110MB2023.NAMP110.PROD.OUTLOOK.COM>
References: <kC3G.1767808205475898826.R9cr@lists.yoctoproject.org>
 <773919eb42d6bf2a76439a0dc1f89621eb35e848.camel@pbarker.dev>
In-Reply-To: <773919eb42d6bf2a76439a0dc1f89621eb35e848.camel@pbarker.dev>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ga.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH3P110MB2023:EE_|BNAP110MB2302:EE_
x-ms-office365-filtering-correlation-id: 62139946-24d9-4002-142a-08de52c1b947
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?nnFMkZZ/h8goCG1TjQ8KF1kcZPMwB8sQb3GtPLy2B/tc5hytXTafosIizl86?=
 =?us-ascii?Q?Z7ndpTyrzlUg/CDFxbOYyu7xIjTLp7JzCzxke+Z7xK0f+glPq7+nSg0l8Nrf?=
 =?us-ascii?Q?qB9F5gwBq92XVD/AFk05p44vadDhRjL725L9Kx8Vmx/X7wZxz2eVhPYGxUSj?=
 =?us-ascii?Q?bawJM72qA4+X1iQGQssyYIFGj/hhet0PaArgDFUfscR5dYzdCscS3+Al/F2V?=
 =?us-ascii?Q?Vi+vdtD0NG/pdCE5bvqI4VTTbUj5lNGOkJ5DeXj/ou9Wbjt/PkrjB+8v1HHL?=
 =?us-ascii?Q?1ciuIX2sBFaxiNiYF6cS/e/TQv/yeDRB00wBQd1/9NWMtRcvH+nIaNT2wIhG?=
 =?us-ascii?Q?7icG9TezE1If47zRBpAhpYVtNvwqHCvsmAAAy7zDsrFtN1Mwh8NAjuLWtRf8?=
 =?us-ascii?Q?DZN9FdEg3mWzrirprnpNl9Hp48KTAT0hVt5wopbmZuqh+9PNegfAVznSIvmA?=
 =?us-ascii?Q?6Ag2CSzoW7fj1A47Tio0rAzOuYTQLQuvbQDr0kDMPUoYyk5Wsff8UVvxVerF?=
 =?us-ascii?Q?pEEQ52d2u2V6jNymmYP0PUX+K+oXVl9c+XLHl9gHdTI60tI91NdU5Ld+qZB2?=
 =?us-ascii?Q?km6+t9Hps1utfok2+iUXxdmm7SEUpL0xneNwtmQO6ZQSt7xSj9zvYP9Tm2uU?=
 =?us-ascii?Q?gn6VBYtLpr5wHqHx4J/UDPmP/mxHhNjLzQ1G5ZoUp3XiIJi0lRUQPiCNce5a?=
 =?us-ascii?Q?p4CbFouVVGi+5f2IMewBgK0GU0Z+/s/RvIdgzg4peVKl6rBa/nndb4cVA1Zq?=
 =?us-ascii?Q?XfkWRzO2NuGqdDpMrdpHmfHYIMzjAjIVfl+SLCvmjFfSxd1oPVzJZdiAedHx?=
 =?us-ascii?Q?W2MDPBCZwj7XdBhHhDpi7AVQWDUiXUbKURADPQuyN32MFnsA64MCel0ti3ov?=
 =?us-ascii?Q?5pQKBIks8BlbMdb6XnNJF8O8ZCtTvcLXLiF/LLGF4OCerqYJTL/sA28hPx3j?=
 =?us-ascii?Q?v5U4gzn+21OYPm/khXgDn135Pocn9Qrk8voBqABWxOno0fnvJ+LAxkQIoyP5?=
 =?us-ascii?Q?rNNPyPWUkzZinbTj33qkFWKCgiwfXDqFeT8eH4zkDT5hix81ozhzl3dIdU7H?=
 =?us-ascii?Q?WrNOCnN/PuJ0C0288bX+1NONfGGhK4Hbo96kPWDuEWl3wwXNz3+3jhdx8iFL?=
 =?us-ascii?Q?j6v76B1H+XBgXCWzeUOrSBpy/0MC7cL1ga3+JouE6FcaHZE1iSdXaR+6Mn9n?=
 =?us-ascii?Q?uF6APpQHHcAwvkg92vpi97McVJ2XSTJNqNyfiJWWNCD6TH3uRQ5dhTT4CcNi?=
 =?us-ascii?Q?amFbH05Tv3qt05C1x9E5OkHNxRA69l+k+4mS2tx5hG3eMWy4CPXSsf6ijKpF?=
 =?us-ascii?Q?OgemhI/lG8urtcquMfQkM6ov5SEBEFO9xTlD/w6+419icOaC/QeVad82X6Ng?=
 =?us-ascii?Q?zRC/rtS1PHLUXfuocz/0o0Ce6DN3GGl09XwDH1kGNYMQlJjVVN+bsajFoDoB?=
 =?us-ascii?Q?9wePLYBo1w8KdYPHMcq1DeNs/cLueV7ILdVnAhzbPV3k5TF9djzJRgYMLUjP?=
 =?us-ascii?Q?XKegRT0GkHYJ42YZfUNXHVK1bEtr+GDJLhaq?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH3P110MB2023.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?sOlNGa2MEHEm1mCapNwSQVMnJQ/6f97rfbqKLrudQNU1qxYEwoNqzRqZC8S1?=
 =?us-ascii?Q?smBWoRgkxjYpqevCTa38IpItnT6prJJhU9KEGMCcVWxWUEAugB20y+Ygbbwx?=
 =?us-ascii?Q?3jMN5Fyo1v5Uwv8CusVocKu5eg3CPG4F7ldYvQwyjRHaiJvvqLVqXI4RSvjz?=
 =?us-ascii?Q?qXP/3HLcTYnZo/jlB2fsibHPvFAyZ7enorPOeKeepPxpDP+o6tNvWdrOO5KL?=
 =?us-ascii?Q?pP1qVcPkLMSmITMMvzMusV6HPNkQi/rFkEFdZKCRhwHwgbtTsJTzohV52a71?=
 =?us-ascii?Q?40GrzeDBVkdVZJCrzmR0947UadFpiOS7cnVwAUo99Zkgndb+SLTtaN5vEqBS?=
 =?us-ascii?Q?D2t1OhbTkSgrd8l87QyQre3cUoCieXJKkCP05qIxx0colyRUiQkEhfqf+HpW?=
 =?us-ascii?Q?U9v0SMllC1Iy/U/PfcSDQmBpbvvuvriQtLDP82rYS1iUojkiAgOJDMKqlEPP?=
 =?us-ascii?Q?l6AOlxCx5/+JqmpVKZXhuMw4cBPbgrDBJBz9XK1M0X2wTOi0SxaBcqm64g9m?=
 =?us-ascii?Q?V868WtTg4pbuR7LkelvUfw37+u9dPsoz+0eceOTamK4cVZeKv2YVq8bJnthB?=
 =?us-ascii?Q?fvaa+mPwXDekMWVBOKv/CkDfLhAQCYCkmuEnVdlIMV5Otg5kzjNfkkXWlv9L?=
 =?us-ascii?Q?7BC/CzmhbxayzA1d5vlhCyrbjbBKhX6ODeNPuDEJzecWtT1VhjuIUfFqkEUg?=
 =?us-ascii?Q?Dew/jBUDnp/sY+gMyb9Qr5E7XXHNG2Mj/Cj7f2Uo51UzgpmLQ3OVB44Fh5nd?=
 =?us-ascii?Q?BNVtKNqTlhnUmxTu9hNP9N1fjr5QeFw5OPcP6cW/VPjx/g+zPavqJ+p25LJw?=
 =?us-ascii?Q?hwGVYTy+JKT+drBFpjBh1+ZaXS0WOhJpxr+PeHzhOIFfaV++okDuaUZJ5UQZ?=
 =?us-ascii?Q?F8qsloYXTyY054/yUDasdPMsfpiJkwIVJhGJSNzfyqUVVaVO+yrrE0vGmDQt?=
 =?us-ascii?Q?i2z6G+k3xlIm+YKIM3yLDvX2+BQKlx7N3KIDRf4bnjfjfUNulaoc3YY4YLw7?=
 =?us-ascii?Q?B8mIZphksYIs2/ORdg24WWmHgFxI5I4gEYTY7IJHAJLp4pKd8icq49ejStZg?=
 =?us-ascii?Q?zf0dBWOd8+EvKA8NuMsJIx12uRTtp/F3Rj7x15nX7fCXdvN1rzjHJkJYVRCw?=
 =?us-ascii?Q?/zyXg/hVWSHSP7Zng7ToYHXi3O5h61vuadMhB+3VRMMnJh5yfYCUkKOk5OGb?=
 =?us-ascii?Q?eFAhUh+KWDCuByK4luMncqCu0jlXUCRu1Y6j9LsnKDfni2ss/MpT28AKtla/?=
 =?us-ascii?Q?L+utKWvfhUibAKqMFs3Jstuuio2ilO8r82eWuSsjhdVTw9UBv7zJX7opRmWS?=
 =?us-ascii?Q?9iq1jT9s8AJpagwnNTsXPZ9cGf8FJX7Obw9b/PsTQpXl2tjjQEB1X9uLw0i7?=
 =?us-ascii?Q?GIQPpeklGZXBagnCbV9tkuzErRr0Cnzqg96AqFo8dLTsQopyAZKZTX/o5xNs?=
 =?us-ascii?Q?AbNn2rTN9UGyzp7BH0xNoXrub0qr7cg4sveS7M/vZA8UUleX9vb5shMyYBWl?=
 =?us-ascii?Q?51J/7pYx8PMOcMo=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: ga.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH3P110MB2023.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 62139946-24d9-4002-142a-08de52c1b947
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jan 2026 16:35:12.3431
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 05e53887-e4b3-4595-87f7-3ae79f0e723e
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BNAP110MB2302
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 13 Jan 2026 16:35:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13824

> (+yocto@lists.yoctoproject.org as that's a more relevant list)

Thank you

> This looks like an issue that we're seeing on our autobuilder with the Ce=
ntOS 9 worker [1].
>
> [1]: https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D16117

Thanks for making that connection. I agree, this looks like the same issue.

I downgraded the version of tar installed in my VM from 1.34-9 to 1.34-7 un=
til there is a fix available. Now my Bitbake build works again without modi=
fying the tar command in package.bbclass.

