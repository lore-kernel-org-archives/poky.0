Return-Path: <peter.kjellerstedt@axis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2676CE7D07
	for <webhook@archiver.kernel.org>; Tue,  1 Oct 2024 10:02:38 +0000 (UTC)
Received: from DU2PR03CU002.outbound.protection.outlook.com (DU2PR03CU002.outbound.protection.outlook.com [52.101.66.14])
 by mx.groups.io with SMTP id smtpd.web11.77836.1727776955287474236
 for <poky@lists.yoctoproject.org>;
 Tue, 01 Oct 2024 03:02:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=selector1 header.b=ctGxSSFz;
 spf=pass (domain: axis.com, ip: 52.101.66.14, mailfrom: peter.kjellerstedt@axis.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QhHhBR4d9mLbv8kbXbJQWjJ7KE0zcIBeCMp/a4WFi9pO82zTA2+ZnAeqbJOFb4E4y9GXCPBemzD3QpehRvIVS7fmeEuAMgIx8rGC+j3xAlSmqJu7adN/Bg5bv/A6/WOC28eh+d5ut/hRbrAbetFv3ZWgLC/Z5JoZcLYdRZl20Iy+GIv1AM37mlNofg9LWvId8H+f9Wdg8w6FzD/J90CXgPsXeCFdPNg1V+A1ZGdrI71PqRWMRfAbX1TxpK6OFCqgcdSXfuhH0v2jT7fUKCpn84UbT5A+3ArvrVHWfL/XMC1YZHK6EZpHQRwCJsaE+L6Nc8UqI+dMEN3CgLOIIzyBOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8nLWpxv5kNzZtvkX5LBpXKSPj5aEYwKi6wzEbuExFVU=;
 b=BXipY27Tngti+29R+g+jy5AHrD1+0IwBv7Ahb6Rgoo9/JewMGpv5Pvssa5jRN+0u52/igT5TYSQj4qJrICp3n45WEO29ZGhZsyRAm3dN721yB/AIytB4V9ZWyHdmi391svHK91lISd7FQkWuLUPS7kahTMihx5dnjI3Gcl0MyQcvKiB6qYQchNeNUk6VuvLl346hnS3gVAWJXgN6jEK9Htx0RBi9StMbymTii17x4P6Bzs+OHJfe6f7g609ZBvhAVED25bdY0ScQdvs6Yy2GMRHAwlkjJrdFzdjlUe8lE2B3xzqCqAkXa0kLfjbrH/tHRb1d5h/e+RHO/yPwb0s2FQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axis.com; dmarc=pass action=none header.from=axis.com;
 dkim=pass header.d=axis.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axis.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8nLWpxv5kNzZtvkX5LBpXKSPj5aEYwKi6wzEbuExFVU=;
 b=ctGxSSFzXNw1N21JC9VV/6ONpbbMaHfzsXFPSb5t2qNeVuAX8cdkSZLrOFWb5N866/AcjOQJoT8Q0qCibjXdYLgCrfiwS5I+pjM0A31BU4Cpg38wOWyBcPcT1WgzBAemQyqozY3w3VIKq/X4piEuO4ZD3bp7Io6NmT4eGQ/t0zI=
Received: from DB5PR02MB10213.eurprd02.prod.outlook.com (2603:10a6:10:4a8::17)
 by VI1PR02MB6126.eurprd02.prod.outlook.com (2603:10a6:800:182::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.27; Tue, 1 Oct
 2024 10:02:31 +0000
Received: from DB5PR02MB10213.eurprd02.prod.outlook.com
 ([fe80::1bee:3174:a078:5af9]) by DB5PR02MB10213.eurprd02.prod.outlook.com
 ([fe80::1bee:3174:a078:5af9%4]) with mapi id 15.20.8005.026; Tue, 1 Oct 2024
 10:02:31 +0000
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: RE: [poky] [PATCH] layer.conf: Update to new release series
Thread-Topic: [poky] [PATCH] layer.conf: Update to new release series
Thread-Index: AQHbE+YSwS3hNEmvvUGUfNrfKiKQDbJxqVTw
Date: Tue, 1 Oct 2024 10:02:31 +0000
Message-ID: 
 <DB5PR02MB10213B877D501C837E5C110D1EF772@DB5PR02MB10213.eurprd02.prod.outlook.com>
References: <20241001094109.2862936-1-richard.purdie@linuxfoundation.org>
In-Reply-To: <20241001094109.2862936-1-richard.purdie@linuxfoundation.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axis.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB5PR02MB10213:EE_|VI1PR02MB6126:EE_
x-ms-office365-filtering-correlation-id: 108405fe-d975-430d-4434-08dce2002a02
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?/5ksOIp+vwTHsof+UKWN8cJdMehE5/v2C4oLpLLCYTBG7Zxd1rHHDPtcuHn9?=
 =?us-ascii?Q?+Nb2iO0S7t+Y5ZEBUA5A66fItZSzq2VwvZFfIRJBdeMoRKA03kF1PFZwHdvB?=
 =?us-ascii?Q?rHeXsYNWk0E12NJ1rmQLF/TGz7stwJNYqCRhsFCnmtv8uQ9p9qOASRJAZ/PP?=
 =?us-ascii?Q?WyoDfibWrB0vQUk5p+LTi1i23AgOsrNDnq++eq4wNlxTo2pCNeuZeYxBatWK?=
 =?us-ascii?Q?1w7jekeNa205u4qc/TUZ0Edr/GztwowwYvtbVXTn6OdVh+tbRcLU+oYSMQIn?=
 =?us-ascii?Q?fffQbT92hs3k8Z2X26pSILSujW3tlx3mpgzy55DgBGOwME4IcMB7rA4/m2vI?=
 =?us-ascii?Q?6yFHfs+4Xuht0dGlOgx2xj/1DeWyJy1ixW4TwsjIZb4zqKJI2/GOteqXc3yU?=
 =?us-ascii?Q?t7ickobiHqHDFfIhiKL/tnzeYynC5gCIqkM9mZDKaKjfEZomWDA6lr2c60SK?=
 =?us-ascii?Q?ylsogyJOWPq7mk28FLWHi7a0jEL2PG9zB+pePa9B1weZuKUFvYyOVjtqf/UM?=
 =?us-ascii?Q?rUYv1TnLW/zHJbxoqABXIS+vmrZaE9URp4LlKWQtZpzMNsQqWxnU4bLF+XfM?=
 =?us-ascii?Q?QSeLXYDIl0fJAtimSCMqWdAmmU4TgWTStru0n8e+P/cKPT18l3nCkQT6XEVX?=
 =?us-ascii?Q?Mn7P5tg4nB054cfSnWh/jZHqEG/QtB2UC8ffpOfOjKKNJuPoNTn0+sSM5+FE?=
 =?us-ascii?Q?aKOV53aVRszlLnrofDjd2doFMdhGwrzBOPhwJRtXmqkprsfS/sBZ3bh1njCZ?=
 =?us-ascii?Q?n1QTa0APCuifpw2gPNFzoXDzbShPiWLFbMofHJTtmjNhJ/SsDWx+65FdtdNL?=
 =?us-ascii?Q?d/EbiCb5lgGqBs/C0qscsOuTCeh6kpkJ/Jbj0jUghf4vjDI4EMjRROpmK2RF?=
 =?us-ascii?Q?oUAu07V5aQOOAJD9lA3shfvaidrtFZzr24lCL9XQQiIDTj12xonrD9vgAWdX?=
 =?us-ascii?Q?lYwHemYAxey1Hylqm9SOmscc/Kn6BB55hX41MuCZ9eJKv9uMAMgZJtivMVZJ?=
 =?us-ascii?Q?W1o037YxysABjSagWI8A/spzUKTQlyKseOgrZAsxFPK92qHawbCAxJq7Od4N?=
 =?us-ascii?Q?i32uEU7u9is9KzJUue9OCHrEnPBb2Dy+sSjpqPhLE5gxkCb59r563muc3hBZ?=
 =?us-ascii?Q?IsOhcsJUqSWa0WEdYpMaj3n7ABfuN2a7+pZJXd0vcPQZuDwpU5jf69fgdAJL?=
 =?us-ascii?Q?sMOlmB1yDlJtNOO5TEfScSGSrm/VkitojUxYzzXXYaeZVcpsNtsO1qb0ONVz?=
 =?us-ascii?Q?anHt9h7SBdbEEIQzcJJsJTkWH9MuhLzgml1mdCJ32s+3E4HO9gKUy5BbovrK?=
 =?us-ascii?Q?vxdx9txpFMNaJD+qhjYSSx1HtSEddxlG2YWviX0VbrvjiA=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB5PR02MB10213.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?nWpaHyWK96uO28IgHP/c1kS9RjdVJ5vn0au9F4YG983kBJxNbHU+MShWSwgS?=
 =?us-ascii?Q?f8F8fj4IZxiQQkjgMSFuuzp9m0cTnvHa2zN2+O7gGm3TVcGIvJb4TK3p0VQO?=
 =?us-ascii?Q?xmEG6YU5lKituJhJ85UsXKiu70ZO5pNfZgf5kqmi1zhO1O0L4J6uRD++DN59?=
 =?us-ascii?Q?qX4P6Vhh/yugZzkNGluIPBqiBWajrCttDCvAZn8ZzGJ9H3BWX7qo/qBZC1gl?=
 =?us-ascii?Q?b4b79kouwsdx31t1gcw0GfnyapmCr7mp2Pctkn0oAnWWwDu9cc3VX8AXaAvE?=
 =?us-ascii?Q?7HWoKM7CI5KTU+IpQkkyGwGb5aCi1q9gj6Zw+xaJ2Z+yArPt/c11Q+VvO+qM?=
 =?us-ascii?Q?Hwi81jYqKtIHLmtpqnM3m/gXx5/w+WEDl/OKNdYk2occfMnp8r7u9IFlym8T?=
 =?us-ascii?Q?Iq8yt2h/l4r98+9w662SToA1611okWsqI2nh5GnepNLv9YxP/btHWnqbNB66?=
 =?us-ascii?Q?v3WNYDMEjCMw9Im/m3TGv3M7IgGAe1U4Bzt+u6OxrMZUDlwyUGofFwisyhcn?=
 =?us-ascii?Q?y4Gf50YqChbNBI/1n3pvmgsq132pvOJxSuHCxdoudjYKHTFVJgFSHA5VdPp3?=
 =?us-ascii?Q?3hZGsFv3gfIrKOTE61V/tvw3+c/OddfxyIoRon1XjXpzqN1YmA9MRKKNxUK1?=
 =?us-ascii?Q?ihbzRGkRXgy7iqahgsQOWgL3nFWmllMm1pEofX3uLTF+gSmX+RPdPrwulKMz?=
 =?us-ascii?Q?r2pRnutcBc69+n6l9oqNTsJsfzeEdq64QA3CAZJd1yWEMCOyMw6YhnOmXmiS?=
 =?us-ascii?Q?LZVVoWYYaZsCJTq19f/E+WqIONfmwJyGHNiLJnIFsha+pCB5BMXdi0nk3UGt?=
 =?us-ascii?Q?0/xJasAczY6VBG/bt7/ea2j+NOP3oIcK8CcRCk4QZqoDzzAisKqU1kz2lGKz?=
 =?us-ascii?Q?Afm6Ews3nU1ODMMhkk0rbKF7sYsciBczbiKTjtg18Me4PNeCWo9SwaC8IAX6?=
 =?us-ascii?Q?50yMGJY8ow14QNNKK4xh5aouViQROBeWphDI3dG/bSL3TM1qjF9E5sRvzWVU?=
 =?us-ascii?Q?dllCTVhfJxZuoXzmmdiGeStb8LWIZZTVMDnE5yBqXObL5X7WQvnTH4/ipRR4?=
 =?us-ascii?Q?l1cglXTqrY+RwIkrXPPx2Cp6w89m+UF9XBVyystw7fYYcvigv8B3RXsbUWjZ?=
 =?us-ascii?Q?8Tx7GgvsH13phaBkW75f5+/MgLuRoef5AlzOL4veBDwMo2BWzSUdNxIMRgFL?=
 =?us-ascii?Q?Pvqs1aeMHRhT1LaLNCW8fptY2haqAFOCWtciFZyoAVz2ZHvzVio2PEz7+Tey?=
 =?us-ascii?Q?oGnim/neAmuB+yR1JQz99jj7uVJ9REVZ5k7OwOfR05bHv3Js6kWnaA+bJEe2?=
 =?us-ascii?Q?c+MvVP5vOqI9pVG8rEpdHq77rRRqabszOF6oY0VqzUnY528dtPodlTsYYZeg?=
 =?us-ascii?Q?sQmW6pPB9uFnFR5Hgt3CVB44dFqCs69BKETSluzoxiAJKWEdVazgs/rVkMBk?=
 =?us-ascii?Q?K0Hi62yAiMVxOwc9zLrwbzOE6V2jlkoAP+QGf/+MofjynxJGyNs8Mf4DAsk7?=
 =?us-ascii?Q?YfYAAM+amqRQmhq5Xyy1S5L4b2019hS2F2qTAjPFbyVwF4M6ZldNwtLugJE7?=
 =?us-ascii?Q?OiqQ9V/AQMUKJrU8UMs=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: axis.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB5PR02MB10213.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 108405fe-d975-430d-4434-08dce2002a02
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2024 10:02:31.1970
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CG+aRATQvi+jT5sY4SnXzpy2BfHl9za3IXRNnJs+0alIo/h3QAqEvRZ8qqATKIOc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR02MB6126
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 01 Oct 2024 10:02:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13447

Please also bump DISTRO_CODENAME and DISTRO_VERSION, corresponding=20
to commit 99f48efdf733e6722045c944ffef8117ca80116f for Scartgap ->=20
Styhead.

//Peter

> -----Original Message-----
> From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On Behalf
> Of Richard Purdie
> Sent: den 1 oktober 2024 11:41
> To: poky@lists.yoctoproject.org
> Subject: [poky] [PATCH] layer.conf: Update to new release series
>=20
> Switch styhead -> walnascar post release.
>=20
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>  meta-poky/conf/layer.conf      | 2 +-
>  meta-yocto-bsp/conf/layer.conf | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/meta-poky/conf/layer.conf b/meta-poky/conf/layer.conf
> index 289ae48bbd5..483046b6d36 100644
> --- a/meta-poky/conf/layer.conf
> +++ b/meta-poky/conf/layer.conf
> @@ -9,7 +9,7 @@ BBFILE_COLLECTIONS +=3D "yocto"
>  BBFILE_PATTERN_yocto =3D "^${LAYERDIR}/"
>  BBFILE_PRIORITY_yocto =3D "5"
>=20
> -LAYERSERIES_COMPAT_yocto =3D "styhead"
> +LAYERSERIES_COMPAT_yocto =3D "walnascar"
>=20
>  # This should only be incremented on significant changes that will
>  # cause compatibility issues with other layers
> diff --git a/meta-yocto-bsp/conf/layer.conf b/meta-yocto-
> bsp/conf/layer.conf
> index 0ebf1c4f763..f229cdec5ee 100644
> --- a/meta-yocto-bsp/conf/layer.conf
> +++ b/meta-yocto-bsp/conf/layer.conf
> @@ -9,4 +9,4 @@ BBFILE_COLLECTIONS +=3D "yoctobsp"
>  BBFILE_PATTERN_yoctobsp =3D "^${LAYERDIR}/"
>  BBFILE_PRIORITY_yoctobsp =3D "5"
>  LAYERVERSION_yoctobsp =3D "4"
> -LAYERSERIES_COMPAT_yoctobsp =3D "styhead"
> +LAYERSERIES_COMPAT_yoctobsp =3D "walnascar"

