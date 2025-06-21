Return-Path: <peter.kjellerstedt@axis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5CB5C7115C
	for <webhook@archiver.kernel.org>; Sat, 21 Jun 2025 14:02:33 +0000 (UTC)
Received: from DB3PR0202CU003.outbound.protection.outlook.com (DB3PR0202CU003.outbound.protection.outlook.com [52.101.84.38])
 by mx.groups.io with SMTP id smtpd.web10.7821.1750514552090440423
 for <poky@lists.yoctoproject.org>;
 Sat, 21 Jun 2025 07:02:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=selector1 header.b=qF6dWJCY;
 spf=pass (domain: axis.com, ip: 52.101.84.38, mailfrom: peter.kjellerstedt@axis.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CcngVI1wmi4OA3ebcmlPzFUDQKwfqmHQB89PXr1LJwTjmcBfZXbB2FT8uFyQma0bTDMA9vwBMJ+Byrv72s1R+E+0Rf2MWgxOsUZH5smIlRWaMkd219lsbJxNfadjItoCYvzFVN/IB5G6RrYPDs6O1irWkyWVUPu5ugW/Eq4fdrzXeuHFtNobTfwMY7+qInvnY461sfsq97Kbjxu1Df5y7V9W31ySHx7wV3OKiyIVaZAQkEMyAo3Y85t3rF2MCqyqAqhz/nk743ZxZPiLfU4+zMJJ+vDEoYmUCdgdNee9bnz+UKeg+9aZoQT6ohmoue3yuWs/nw4+P8K6+mrc/HWP6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gDNySZlu2iJhJSOC598YfJO8cD8+iJ18Fx5VN/iv3Cg=;
 b=yvuoPhOCrRVr9kFLVefCpt1QYrsSXJ6O8caPB7949G/5fblVIKLANWH8d2kSGH483xhJIYQB3D9vVxbkkwPK/unHpSsB7I8rWhduXl1VwGhYFSTfencrxuASHS09F20CXkGX+fZnda9aK/ECWBBCzhi3ZV6NsEno0LuHB0OHqK7fxxyAlWC90S5qVh9QuVtBZta8y3WOYs1pxU4774CQ2KGxwy3uLjUVTCkW3SaQZpPgMYCuMsZd1B4kopW86X1WEze35EtkHHzqIHbwxkwGvrHyBD/BX6sSgpujskq0U5KIzECeyI1cEiu4SlJ6n+QMdL44+8tU8ezfL5bgCKFunA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axis.com; dmarc=pass action=none header.from=axis.com;
 dkim=pass header.d=axis.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axis.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gDNySZlu2iJhJSOC598YfJO8cD8+iJ18Fx5VN/iv3Cg=;
 b=qF6dWJCYT23adojEyUUgZG51V5CAGb357RJx5Hqr+XSPa1G9O/1hyVJMjPDrZsBLjGmibGUx8nBSFc+K0eYk1UXVBdM5FFUNGlpwvfLmzU3WpAYoStNRCEbnlFYa/M22mAtLqftDlUVh4FTkIO4fSuyh3Sgu8LtxZs2DT1pEKBA=
Received: from DB5PR02MB10213.eurprd02.prod.outlook.com (2603:10a6:10:4a8::17)
 by PAVPR02MB9158.eurprd02.prod.outlook.com (2603:10a6:102:320::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.26; Sat, 21 Jun
 2025 14:02:28 +0000
Received: from DB5PR02MB10213.eurprd02.prod.outlook.com
 ([fe80::1bee:3174:a078:5af9]) by DB5PR02MB10213.eurprd02.prod.outlook.com
 ([fe80::1bee:3174:a078:5af9%5]) with mapi id 15.20.8857.022; Sat, 21 Jun 2025
 14:02:27 +0000
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: RE: [poky] [PATCH] layer.conf: Update to whinlatter release series
Thread-Topic: [poky] [PATCH] layer.conf: Update to whinlatter release series
Thread-Index: AQHb4dvUBfFXzjMVqUmbulcJaA00kbQNnvKw
Date: Sat, 21 Jun 2025 14:02:27 +0000
Message-ID: 
 <DB5PR02MB10213B7730F0C663AE81DCC12EF7FA@DB5PR02MB10213.eurprd02.prod.outlook.com>
References: <20250620120648.2479025-1-richard.purdie@linuxfoundation.org>
In-Reply-To: <20250620120648.2479025-1-richard.purdie@linuxfoundation.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axis.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB5PR02MB10213:EE_|PAVPR02MB9158:EE_
x-ms-office365-filtering-correlation-id: 18fc4783-809f-4f86-0196-08ddb0cc41b7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?e0QTh4x6TgRpWvos6c7HFsOu9Q8Gpn62B5cRUF/8iyH9N1thbQToMhwlrwaC?=
 =?us-ascii?Q?6PjgO8QyEbXH5l+5qaPryFkbSN/zMRhCYApFZE4xkSw3nU9nx6Ow6nvUNmMt?=
 =?us-ascii?Q?Ekn81dUhMpXuQBEsbWrqaW8pwvvOLV1jCzDq8/0JkfDuzKh5rcYtuUtOtYlu?=
 =?us-ascii?Q?YYtcK+dOOYu2eMilIbQeGWuZBidVXLc3VcI7pvgY9cN1Euai2Hyy4a//l1O6?=
 =?us-ascii?Q?Iq07wfNeerGr0rncBOI0TYhppaZMpDsliL5t3V0MKviGOa1/mgS05giJtpMj?=
 =?us-ascii?Q?2i9KYM3uLjQfuh+rlrK1vl8gSUN8CohGfC2u/ylK+VNOz3KPXcQ12gO26YUu?=
 =?us-ascii?Q?YYZXLbHqziBy6UVZnNVSLZs5aPGZgmatAL9swVcIBgxtIRg9jaHThFQafOAH?=
 =?us-ascii?Q?+OFbo+38ERcKS2u4RLJZgqtxvMxFSXRrN7MKtrx1vr03Ja6OVqhMkyuptQvo?=
 =?us-ascii?Q?fjniATwv3kwJ1BWY+yelQgwvw6Y4U5BrI3b4rVrL6Tvu5msboJw0RUoflwzg?=
 =?us-ascii?Q?Pyl0yzJX5d/wd/kGtyroPrFhQbalHpFqLupnwkY+Dz2rV+xrFabGbNi8vY4f?=
 =?us-ascii?Q?/NzYMORFmiifTcfcoMqScRtRiN8eXqKsDj/6aX0eS2H8Xm0mttapHSRi4iFc?=
 =?us-ascii?Q?O7Yv4iemV2dunN2PDGlzyE0DouTVk/jwbGe9ZQse0eqbQkTVo0W702XW2Rp4?=
 =?us-ascii?Q?0NvuHyLsE484z0MErkboj6r1cjpGtbSDnl3yBdFfZxxXDVgb9/fRvwCrFtRl?=
 =?us-ascii?Q?FFZK9pTc7PXIOmxkWFMojMyugDLDtX2U+BKSTQI19wQA6YnmQUDd7J9igp5T?=
 =?us-ascii?Q?AqbVbn3u01Yrvyr4ofoiTooRWSoWaT25SuVbRxwBY5TK9pwQ8PibVj9gG/O7?=
 =?us-ascii?Q?GYX+hoZoB+EwS4ZZpgdA3auOmHNOXN5ifyNY8t2GkIGCGnOf/uG87w0FtGPL?=
 =?us-ascii?Q?lyqTjuXWJWLpbgB62xu96m/aUmMbCWQsX0M1eG1CyIxwgwmcpPUF08XRcAzR?=
 =?us-ascii?Q?m+G3DPqLNDfsCJi8e1u5uR3mZvYkP8jYmQbPXQ2mjLy/OUE2crZRnrr2k30j?=
 =?us-ascii?Q?ChRBsPtT2c5StWtmejlC4AiljtuCqgCnqS5PedilysUcN4mz1eC3ZkFQbLSw?=
 =?us-ascii?Q?nrF5Y4oY0WD1XrXmMkzbgPeMuVRM7kUBlyRS9SG8aful56fdqPHLkw+/EGRL?=
 =?us-ascii?Q?8luxgfJgnynw9TQd1Afm1Ux513Nvj5kEu20FHzF9rt6+IJWtXKRFZo9mhVup?=
 =?us-ascii?Q?VkcyoF8hPPBPwQ7L50xIiL46hSsfsrYp3ffm9cAQ3Y7annH18pjOC2OsR4u1?=
 =?us-ascii?Q?wjxPzAaTWR6ko4ENM9Q+1A6xzT2f+uqdcNoVvjbaoVo2SVX9uoyMEhTHTtuD?=
 =?us-ascii?Q?lwtHFVPsuK0bp5ZhU3mUFRjRDbnY9OFlWhH3gODreym76+RP+WApoAov7n9N?=
 =?us-ascii?Q?X/HaToWIuTGZU4fvgcwh/WYEtqe/Q+bmvRwBRT845UHVJa/jUyKBMA=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB5PR02MB10213.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?2fx72DPhVGzEZIseP4uii4LqM3FHdm8jMbXvHx83yp/3Uf6faKFdzMfd7D7E?=
 =?us-ascii?Q?PPghqev1QLqK8KSAgG/SdjjGOtqAgXyMQ7G3H13GDuY/3qY3zKMHrrwhZJud?=
 =?us-ascii?Q?asd8WLZyjq0VCArx9fQxfo7f4nBd+cYR4CyPtUONy9igsvo4JQErldrSd8xF?=
 =?us-ascii?Q?WEQsZUZGF5fKR2/W+LOKvgTjyLPEl+KRPFNf/rvb2YT2TqQCoJudubbXCK70?=
 =?us-ascii?Q?IQJ6sGTFGNNHyN2lFFCTpAkkQzFZjd4CpPN/hl3WAbuPaFfCrP/xKTFIqlNP?=
 =?us-ascii?Q?JZVw928tkqWTuK/Oh8prXCteLKoZh3LR8V+QWvHD4btD8sC7KkBmJsqBByml?=
 =?us-ascii?Q?0TbkFQHQsLIpcOfQQVAS/woLcXshiLhrGOSxCgVRIg3fVY2Jw0av9B1RBUxF?=
 =?us-ascii?Q?ygCNFTGDTaxbgJChfXgCQP5leURSoAAYZ5en/S3wlhpsLqqka+ma0Pvuziz1?=
 =?us-ascii?Q?2Tr0o4xcQvt7wsWs7ex3p2HlFmi3gMj4XkYz1uECEHqfY24uxA8oBStduFJd?=
 =?us-ascii?Q?TtCNHc8PCb0AlR1dWWy8+fLjnzuyU8rIXB7LOAdC0ijIu1nHlZpWQwz361UE?=
 =?us-ascii?Q?ieI+V9O1Cbysxdkm5q6MTWcBZCM4/tq5bjfFmfv0OwnN7Nzcr+/bBMbxyIpW?=
 =?us-ascii?Q?DejIGImu4lPQ+qbIf1UEkif5cyWUSgyoLTXiaaJfOpdZ+fS5xXqi2mvSkqRp?=
 =?us-ascii?Q?uwXxvc5Za+/FA8KBPicyr8+iq/ehm18JbPUZZ9+QJ7u+XOSxC71X+gqpUUs3?=
 =?us-ascii?Q?VZPXBHrZ0Bfy9DsuO00julJrhzc1I/x1lDirBHFoaGp2xr/FsmjCgRvcGM1p?=
 =?us-ascii?Q?x95XfW3mkfQdCGwt14EAj1Hl3SRKsMci/g48uvta/sazUPa+d+c9Ej79uW6L?=
 =?us-ascii?Q?rScMFwh2EUywQnF3k7MopzNNKb94lmDbdEgSQiXH/z+ahMrZ/XsNie/+cYkm?=
 =?us-ascii?Q?oiZQ+h5Kq7L4ueD918cJjAR9qKLdd4pP/i7Vn3hkxVhlMwuKvtGhqbNGPN5f?=
 =?us-ascii?Q?X+Y2lb4ITz+/TxyHp33gvjuhkQ7evADHCRvDWO7SSL67DEFkBipyJD3AS14A?=
 =?us-ascii?Q?Twh8EvhN78ddVGy04TuOt6hkCeaXGsDs7pJEtUj2SP9Hq7lBkIy+u3TAUlqi?=
 =?us-ascii?Q?qkUrbcgvwZfJZ/RtlQrY75VURiwdg+yBz9l5aw3PBIaFH6GIv373WpTxGTHi?=
 =?us-ascii?Q?pViWld+MxWYMzEIFHIYV3/6xbXtcAx4cVm6Dbof72iEvhK6YqD0022BxRbSg?=
 =?us-ascii?Q?vltbA6A2//mIw93NN9ZpD5Xb92jqQCh3Z5/MCgq556f7tKWky8g9ldyFMiEj?=
 =?us-ascii?Q?i7hAAikwl3+hVof/2E436Mbgf7+7rCK/12S25rkqTKLwcyJmPknAZuxaOXyG?=
 =?us-ascii?Q?jOshqNxTmvBMmST2qjUi/YbW4w+9DDxOobUiVM1tX1W+bwt630RzwFq7MZTx?=
 =?us-ascii?Q?U4gJHAvCLMeaqprEeIzv7m0jdYzmghAX1UNyhOGl3kTCHOItRSHyHrMTM69J?=
 =?us-ascii?Q?klPXtIOazKS63Q/Tloswr9IR0OuCkpAPnKX5DeFgWWFMG4M3gqnp2qbWcdC4?=
 =?us-ascii?Q?tJb0KIFnllW8EpJXoCo=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: axis.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB5PR02MB10213.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18fc4783-809f-4f86-0196-08ddb0cc41b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2025 14:02:27.8777
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XMEFRl9KcsQLw7Y73xJWqlIBRm8Si2tDTVpwiVOWTAW8lyhPCh+gkO/EOtFN9izI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR02MB9158
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 21 Jun 2025 14:02:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13657

> -----Original Message-----
> From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On Behalf=
 Of Richard Purdie via lists.yoctoproject.org
> Sent: den 20 juni 2025 14:07
> To: poky@lists.yoctoproject.org
> Subject: [poky] [PATCH] layer.conf: Update to whinlatter release series
>=20
> Since there are currently multiple breaking changes, update to a new
> release series for the next release so layers can show compatibility
> correctly.
>=20
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>  meta-poky/conf/layer.conf      | 2 +-
>  meta-yocto-bsp/conf/layer.conf | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/meta-poky/conf/layer.conf b/meta-poky/conf/layer.conf
> index 483046b6d36..90576700889 100644
> --- a/meta-poky/conf/layer.conf
> +++ b/meta-poky/conf/layer.conf
> @@ -9,7 +9,7 @@ BBFILE_COLLECTIONS +=3D "yocto"
>  BBFILE_PATTERN_yocto =3D "^${LAYERDIR}/"
>  BBFILE_PRIORITY_yocto =3D "5"
>=20
> -LAYERSERIES_COMPAT_yocto =3D "walnascar"
> +LAYERSERIES_COMPAT_yocto =3D "whinlatter"
>=20
>  # This should only be incremented on significant changes that will
>  # cause compatibility issues with other layers
> diff --git a/meta-yocto-bsp/conf/layer.conf b/meta-yocto-bsp/conf/layer.c=
onf
> index f229cdec5ee..cb36037aa23 100644
> --- a/meta-yocto-bsp/conf/layer.conf
> +++ b/meta-yocto-bsp/conf/layer.conf
> @@ -9,4 +9,4 @@ BBFILE_COLLECTIONS +=3D "yoctobsp"
>  BBFILE_PATTERN_yoctobsp =3D "^${LAYERDIR}/"
>  BBFILE_PRIORITY_yoctobsp =3D "5"
>  LAYERVERSION_yoctobsp =3D "4"
> -LAYERSERIES_COMPAT_yoctobsp =3D "walnascar"
> +LAYERSERIES_COMPAT_yoctobsp =3D "whinlatter"

Would it be too much to ask to also do the update of DISTRO_CODENAME=20
as well? I.e., corresponding to commit=20
99f48efdf733e6722045c944ffef8117ca80116f in meta-yocto.

//Peter


