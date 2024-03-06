Return-Path: <peter.kjellerstedt@axis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77684C54E41
	for <webhook@archiver.kernel.org>; Wed,  6 Mar 2024 14:11:59 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.45])
 by mx.groups.io with SMTP id smtpd.web11.12594.1709734316623890047
 for <poky@lists.yoctoproject.org>;
 Wed, 06 Mar 2024 06:11:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=selector1 header.b=YYxmLGgC;
 spf=pass (domain: axis.com, ip: 40.107.20.45, mailfrom: peter.kjellerstedt@axis.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RLK7NGAB7pAfNZMooM4DCYKFw2ZywdE4Gz0LbEuASbmH+slSwhYsV0P3LsRiTp5rZb9jvwwgKRramkgRft3PVUX0diKilcL2kIaMHBbjDvHMo38SaujMr4fYq+MC8qfxhbmnuWFVyjkXoAgbs6V0o6DqwO2Vzc0qRUnIXIQBe9UO2EkJv0LGbdaBT3vusEfp9ab2OBfQTupnA6eZsWvgOXQaKOsC0i+9ujCyPxatHSB6inMhIKcUzE+R6E8LHtDb4zI6NnOJOkGikRXXkMfE2ecKwypiCZ6Ca8Z3Nw2QREM9ndqQI7DwXOnwuITchnoBqgoI7cIYHkfS6etRzb2JvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CS3kQ+ZiuSCrxRtQ8D0pkequQiR6+gSUw0Z26LBsPTo=;
 b=JNbsI6kmuqFJMZHOEDNgGLSC920UEbA+DtpbPF4o9gTK9ba5JvSHzH7TVD2gN80XYNhg3DeH63H0s2lut3RNLOjv3GBSDF+IU/v3mN01yTmSEBivd4PpdfpFaJ3Hzs1rFQj7zyrDUi2u6H2mnf+iZlHnSYLAfjen+bbQkcQIbkxn0UWIU8Oyzr6COCSL9WbTZRSKrZrXeqi40C5unRVINGzMffncsyRjFErBDF8A8eCk1PP+v4XLFtrdUeHYs8c9zRBVzIiW42uy4YV3/v+LV9QXI0ZRSt/8UwgrU+FW8Qeb7qFG6OLMaPF54sQb4RdOleId4qKgwz+7tLpZ8900aA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axis.com; dmarc=pass action=none header.from=axis.com;
 dkim=pass header.d=axis.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axis.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CS3kQ+ZiuSCrxRtQ8D0pkequQiR6+gSUw0Z26LBsPTo=;
 b=YYxmLGgCKx+b+/EPQtqaeH2l+E5XyKbMwtHl8IhdgvWkL7BNd3ZDk7SEXaJ+8RjlOAIbT/NIj/CrulXwWQxZTCyw328nTK7+l8WAjyBpsT7oIU6kSqDA6Z8gOX5TUD4BZhMvRnCUclTR31jSVAmxMQPzsSGaauzWcamnonrLpKM=
Received: from DB5PR02MB10213.eurprd02.prod.outlook.com (2603:10a6:10:4a8::17)
 by AM9PR02MB6850.eurprd02.prod.outlook.com (2603:10a6:20b:2c2::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.39; Wed, 6 Mar
 2024 14:11:53 +0000
Received: from DB5PR02MB10213.eurprd02.prod.outlook.com
 ([fe80::fa03:deff:aae:c4d0]) by DB5PR02MB10213.eurprd02.prod.outlook.com
 ([fe80::fa03:deff:aae:c4d0%7]) with mapi id 15.20.7362.019; Wed, 6 Mar 2024
 14:11:53 +0000
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>,
	"poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: RE: [poky] [PATCH] poky.conf: Set the distro name to "scarthgap"
Thread-Topic: [poky] [PATCH] poky.conf: Set the distro name to "scarthgap"
Thread-Index: AQHaab/KZwBtCTEGPUaSBpn6+87JMrEqyAKg
Date: Wed, 6 Mar 2024 14:11:53 +0000
Message-ID: 
 <DB5PR02MB102132C194BE245CC559F17CCEF212@DB5PR02MB10213.eurprd02.prod.outlook.com>
References: <17B7D3DE94B664C2.7754@lists.yoctoproject.org>
In-Reply-To: <17B7D3DE94B664C2.7754@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axis.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB5PR02MB10213:EE_|AM9PR02MB6850:EE_
x-ms-office365-filtering-correlation-id: fb3d746c-638a-46d9-c964-08dc3de75ffa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 uhLo5Tk6fL9X36dCywyQUpvrkvz7RKltTKQeCUICKMBibas9c+QT/fUdAUW51qoNof8vz7YTLFcxtVgCB5C0ki9RkUlxHd16PRV9qDYynk4csqGAo8C4MMqmdQAlrdtx7ass0XmSlocTxgP3O8oiA6P1NsE2V6xW5HVru0UxxEuQb6JoEyzk+NgiauatUludJjMmAe6G4ZYV7cZgqTxLkcJomrrjUuncp+IuJg4r8jYoI5rGiqfFYNJdQAlE3OxAVdjPqZN1HXAjE4SFqm+2wn01iRQKZ5SKO1/AL87MRfYE0L7RLNNLW4ZRy61TJO3+kLE4UrOPJ17bFkgl+RIoHhkToblTSk8XwxJHtA4G4GG7XyLhdOjR2z2JSt2AHzmfp0AV8WeI2+xSWgPgcBsgANlMlRrdkgtQkgzOj0BI8RGRPvdjzKpvBr9TlxkXu2nSgtj7X+s+hzNiB3RV9fupeIwUXpJ9fonbPSs3CAP0cVcDCnHi4CyTKbvxiPz4BTVG/tW3G/KoI5j4d09UVF+XlEuCbP2P4sSDgYLxcr7w98QnctGqVanQmQXHXR/8he0x9/9lGJoVyuseRDVso9cAgDF2z6qwiaQEZPlKweLg/d2uXxccoo3YVpyGCB+/ShDY+qVnp/2tcwWPzkLeR8iK8DWEvqlNXld4YOc1FSJipx+2wf17D/xqAjKukCAIR0FV3Lgll70UrsvBL9bneKSkhtc6+Dhwxk+Kr009J1cuMHQ=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB5PR02MB10213.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?AXe82QRBndmtrP00HTU2sPhxQgfVRXCHJkpoh85jkltEpE4tJrLLBa6dUc9o?=
 =?us-ascii?Q?u1+6V1r71nN6XOPPmwG8b/4Mv4lar0URH1uXR2e5QrJT2n+U/vmcM/rw2XVM?=
 =?us-ascii?Q?XF8QtIHiyKNHy0/dMy97uFebCzWqfxcrey2v2z7baXLAMksDI1HqrbrZpufA?=
 =?us-ascii?Q?Pig8FXkUzbmH8tXw221HCJNQcf11r565uyTrdWJSBrgJ+XEd2wXZAX+RyDUt?=
 =?us-ascii?Q?OrHN6+qDwGsoZ3EGPcvT7WtxPgDspaDT7MhIuMEwJqTKXQxlrokV7cYLSLMo?=
 =?us-ascii?Q?vP4Ka1HMFhxRD8vamd+nwFR5I+m+N6mEVgmXGI9woQyAOu4UPI2Hsf15zu/q?=
 =?us-ascii?Q?T7AsLOxeoWnoktOZcYBrpIGBOJNbIsBrWcfFqu37AeevgpRBlOEawsRXe+1O?=
 =?us-ascii?Q?3FboE00J3xcfYyL/VlrYBSDwM2xUA0bgAX4X+SZmsGglaWgxqhouxfPF0I+8?=
 =?us-ascii?Q?LeWJ38qIroCWX7jvWeUnouas15r+PfnJXj6uUfvKFegp+Rb6nuULFmrSQl8Z?=
 =?us-ascii?Q?wWGm2ddToO8r7B82h7W5PAuwIiQUFgV/XOApustHKNNNR9ulnXqZ7DnVX1J0?=
 =?us-ascii?Q?F4zwrAo7riKsd21wki2uId42YgD7dUIjkIrsla+lr9Hs222LKUjrO8dRhcta?=
 =?us-ascii?Q?tWzxIq6VHPE+JbcC16f3h3e1nwoa91R6PvlPN4NVg3rLz89+qCO4avSGAw/k?=
 =?us-ascii?Q?WFZk2hDgCseN/CKLomIpwEUaqKjIAs4/R1LGQb5/SUXlC+blJcX+CgYZoB7U?=
 =?us-ascii?Q?sXHRiUIS7NH4aVt2T52mgfGLUCAI5K2LFUAzf68b3HdKAvflG1jEkXCqxblq?=
 =?us-ascii?Q?AiLQsDt/N1+O51mZezsCgmP0O+h8rCRGucGBllD3gyXtcGrY5lC+qheXZppP?=
 =?us-ascii?Q?XCyUnuJ6H5yUgzI7Xt9aVi4uD5b5I7FtbO6rF4CYjhBnb4IExHfglf6cobC1?=
 =?us-ascii?Q?s3YZD2nWVdK0cGCuaDTFCePX6QeK9A52jyJ16ky31DnHb/a3XHvec0t//IBR?=
 =?us-ascii?Q?qidbzDrjTP9r0US/RN/KHH3gwwwH2FQfnxa5G2143vC2p4Q7crbWKJpNvRP7?=
 =?us-ascii?Q?me2dVXoVxB/PK2ZwcVTA3DiRbNqJkBRCZd2cpIt2lADqP9SH94YwfXViVJXV?=
 =?us-ascii?Q?yYy+fTtHYp5HLK2zvO+Gh3eyZwDMJctGQzLHwXc38orqeCds9UvT6PNskSLg?=
 =?us-ascii?Q?s+2WGHPVp9jtPDn//G7fduYdQm2vFfrvlrsBMXk+v1AZNe0UgIAWX/9b+Oja?=
 =?us-ascii?Q?Eyf2FwEWFF8/cuUhcx4DqNsVkIP06Fd+i88cbn8b01zRPVGg+ZBk/YqljyVd?=
 =?us-ascii?Q?hJ2xMb4eUB7OvUFEYt+hwB8e2L2o6hc3y4BIxl+d0Oi5pNqGgv+L+sC2oDJ4?=
 =?us-ascii?Q?hOChu2WCDVeq1U4N9+jxljiZ7DVuiXIhn7Ku0Ubyd5uR+NDFBwhX8KhNDBlb?=
 =?us-ascii?Q?Fq2ShFTjOWtuhtmYOUj24xNy8oqGjyERd8vRt4rzyVmMhGY8iDJzz/7sshhA?=
 =?us-ascii?Q?mFxTHmK0d5c3BccUrjVt2HxU9jNqC2zALfDISxKVBygKa/KIG30MKpmJfb3x?=
 =?us-ascii?Q?XWSBvfHzu/kDZ1F0sX0=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: axis.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB5PR02MB10213.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fb3d746c-638a-46d9-c964-08dc3de75ffa
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2024 14:11:53.6472
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l3q0AmoB0GqdnoRdYH84rJZxYOzIbOmvjIaIbh8XZKCF0tWvHFcwWgtYMlum+AyO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR02MB6850
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 06 Mar 2024 14:11:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13294

*ping*

I can't speak for others, but at least we have started our preparations for=
=20
the Scarthgap upgrade so that we are ready when it is released, thus it wou=
ld=20
help if DISTRO_CODENAME reflected the reality better.=20

//Peter

> -----Original Message-----
> From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On Behalf
> Of Peter Kjellerstedt
> Sent: den 27 februari 2024 21:45
> To: poky@lists.yoctoproject.org
> Subject: [poky] [PATCH] poky.conf: Set the distro name to "scarthgap"
>=20
> Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> ---
>=20
> It's been a long time since this diverged from Nanbield.
>=20
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky=
.conf
> index 3b7bc66780..e59ad974d0 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -1,7 +1,7 @@
>  DISTRO =3D "poky"
>  DISTRO_NAME =3D "Poky (Yocto Project Reference Distro)"
>  DISTRO_VERSION =3D "4.3+snapshot-${METADATA_REVISION}"
> -DISTRO_CODENAME =3D "nanbield"
> +DISTRO_CODENAME =3D "scarthgap"
>  SDK_VENDOR =3D "-pokysdk"
>  SDK_VERSION =3D "${@d.getVar('DISTRO_VERSION').replace('snapshot-${METAD=
ATA_REVISION}', 'snapshot')}"
>  SDK_VERSION[vardepvalue] =3D "${SDK_VERSION}"

