Return-Path: <peter.kjellerstedt@axis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C7BBD26D7D
	for <webhook@archiver.kernel.org>; Fri,  9 Jan 2026 17:46:21 +0000 (UTC)
Received: from GVXPR05CU001.outbound.protection.outlook.com (GVXPR05CU001.outbound.protection.outlook.com [52.101.83.3])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.15823.1767980774631432444
 for <poky@lists.yoctoproject.org>;
 Fri, 09 Jan 2026 09:46:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=selector1 header.b=SIsietM6;
 spf=pass (domain: axis.com, ip: 52.101.83.3, mailfrom: peter.kjellerstedt@axis.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CmQY8Sf99XhKH2yeB8PWcZt5wjF8xZrZzWp0QZW+j2zLotXNyOht3exklGQ6X6DIn5DHcNiuE2si92rpIgHD4bamGFeGds3Hrj7z1gD9CZEzAET+07Is99MDZi1lf0amkF5yWR8o8OqBG80Pfhmm1WXxq040T2QSE5Z2oImXSJ2vHI/u5+++syS06U+yFsdGctgrAWD/RPZcD+ZBSY4HMWOAKoR+CH1g7vsTKnwhCHoquZvChLkveS8pT3zP52fwaEKEFK3ZqzHo7h9eZGN610qMA/StIqsRgqZhOo4MiEcVa8gJWMYCXLe5hCEClyrS4AKMyw7JgxeyXg72Tz6VvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HHMGtElyZa6fsVyiu35Yk8NTSOE/sa1OUw83cFcFkO0=;
 b=xy3YQvo9jJAFwQPdh1FuzflpiFpuoK4331ITysAFZKWLRW7F32jhPb4arZFK/cj1WFRN6r+aWDSpvhqQ546TyxrzuLvKEH6vHaII1WHPhPmiw6zA3A6oxdDEdujl6RN4uYgb/fUWomnt7f+Pslm0cG5id9sOIYsr6cfuPq4qoPYXavLk8TZFIWH1LgEcwvLuEWVLovtryGNoOttw6zI8nIM1yWdndczXqZ6yo+cqeMqiKfYN7wR6Vay3IJW4GIXUNVU68VJRpVHiPfOvIbn8vURcOlVJqo0m85C/fAtQubpJ4AMrgilHJx5Ye7ZW5mtPlsJXOpudOifyhHyAH7M9hQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axis.com; dmarc=pass action=none header.from=axis.com;
 dkim=pass header.d=axis.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axis.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HHMGtElyZa6fsVyiu35Yk8NTSOE/sa1OUw83cFcFkO0=;
 b=SIsietM6KNnpqi/OomM9PzUYIiflJuIRuLLzLaO6rU9W042ZFNMzF3tcwWb3PrIrWoKmW7UxFyGKNOPVlgVzehC7yknMAf02ohD+bRedw6GXslM2aP8lC21WiXBhr8HVdNHQUhyZWQfnKSUZOuoMMBezD6F+d4+8KJqVHuWrQ50=
Received: from DB5PR02MB10213.eurprd02.prod.outlook.com (2603:10a6:10:4a8::17)
 by AM9PR02MB6980.eurprd02.prod.outlook.com (2603:10a6:20b:266::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.4; Fri, 9 Jan
 2026 17:46:10 +0000
Received: from DB5PR02MB10213.eurprd02.prod.outlook.com
 ([fe80::1bee:3174:a078:5af9]) by DB5PR02MB10213.eurprd02.prod.outlook.com
 ([fe80::1bee:3174:a078:5af9%7]) with mapi id 15.20.9499.002; Fri, 9 Jan 2026
 17:46:10 +0000
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>,
	"poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: RE: [poky] [PATCH] poky: Post release version bump so we're after
 whinlatter
Thread-Topic: [poky] [PATCH] poky: Post release version bump so we're after
 whinlatter
Thread-Index: AQHcgXnekfYetFiiPkCAGw5WUWcPg7VKHEcA
Date: Fri, 9 Jan 2026 17:46:10 +0000
Message-ID: 
 <DB5PR02MB1021314E07ECAE74E1ED94959EF82A@DB5PR02MB10213.eurprd02.prod.outlook.com>
References: <20260109150842.406708-1-richard.purdie@linuxfoundation.org>
In-Reply-To: <20260109150842.406708-1-richard.purdie@linuxfoundation.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axis.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB5PR02MB10213:EE_|AM9PR02MB6980:EE_
x-ms-office365-filtering-correlation-id: 905feb16-3454-44c3-9411-08de4fa6f9c9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?MKgP9Gy+H3/YYSVR7TSh4ErhbdQsQ20BmCT4EBqaZi5mbcOJ+aB1rL3Em335?=
 =?us-ascii?Q?aneIsgjnlm2ID9b1qspG+VWPQNY6rawvoftTRR6MfAqbDTzGmlQqIGpn4mRP?=
 =?us-ascii?Q?KC55yXuXi1jZWN09oK2BXziOLySYwe5XcDiT3vZmGJehEhjRlmZJDBe0+Jdt?=
 =?us-ascii?Q?8M7NRebt/a1CUs4N+LN7Rsk3VSqn4afMX/oI9S6yp1sGm4gwHNQ8WEE2JG7a?=
 =?us-ascii?Q?ISWIu73I39TFJopEptivzIG+iqkZ1OnZvR8capanD/WGCidYM29Cdn2J9Z5U?=
 =?us-ascii?Q?seinMf9C4GJzGj44+QcXKc+c+to1cKzb7Q0UlFzS32+ZaoelEAiWvnRd/OzT?=
 =?us-ascii?Q?KLMO7GuqBH1aM1cxQNSMSFHhJsyxTvejLmNCQXOhvC+FShPGoXcJ8/ePRquX?=
 =?us-ascii?Q?jCBOebqFrXn7LOB9S88sHTyDuBBMdnUGSmDmsvBeTNUP+mjUW1aon/aVUvbg?=
 =?us-ascii?Q?UUKKt5PvUWdaLqAIX7Wfa/6y1DZFfv6c91E18gcHJtuelj65w2qCcW3ku6ua?=
 =?us-ascii?Q?lQAas9uPA5W0rdcVRB7wZkT6IDfRAG3yfU1vKzGDDITl79ORNhu9m86eBKDW?=
 =?us-ascii?Q?TOYYugQP6scgKnWG67Uy4HMdQ5BED3HicR7nF/oKITYPzhccLN+LvBeNuK3v?=
 =?us-ascii?Q?NWgXpLmg+ZYfFccCCtLiUED0BJDRGsX0FLCjpF7ZH7T3ERTXQj+iJpztycVR?=
 =?us-ascii?Q?Gh/KQrFwd7KKmnxaMh4Jb0xlUkeQPce/Rq9dQAML9U4/x2qbgS2UaBOgyuOq?=
 =?us-ascii?Q?R/NVLMxCZF+Dh2hM5LvSo8i5zvjEzvNt2pmhC7ohh3jKKmaBuIAaQH3UDxkA?=
 =?us-ascii?Q?1rkWNwxSgwDdYFQPyZZZKhgcnG0++EGlqdJYBL4Yvko+hXdaJuoQdRMKrdH6?=
 =?us-ascii?Q?XTvkjeJTy7UYsylQ+9VxlrkDIIZI0hLCaq+nIp7uRUmQyyBdXiloLVymy9AF?=
 =?us-ascii?Q?K/yuJM9sOiJPz5QDrDEfjA/lgRqLyupxOM2WHvgQh0HuGlQ984+3A2/DCu3s?=
 =?us-ascii?Q?bZjwx4CjAwwiHXTL0nxA5XIidV8WdDTUkIb5qOnuSVssG8E2lOrJOqKrm6Fx?=
 =?us-ascii?Q?byIr/wjSOgbFSCwY4mW86+9leGfjFpVgD0jjVlC7UYl169dewH+PFvvGyTdx?=
 =?us-ascii?Q?fmhsc4EXJtmpTrdfLLVgCnnc6mEQmcc1v9+ATQQpYLQUQS/3HLJDIO5swU/7?=
 =?us-ascii?Q?4i7T3ZkgvxDnrRxH1UJEf5tFgP8gEqj+DNw0DEyIiyAvMYxTTh5aEZGMMvDN?=
 =?us-ascii?Q?F6nVI06+z4ahp9hCCa1YdP38Ru9MWuwuPyQ/SxfV7atEheFS7EJHf6VJWbSP?=
 =?us-ascii?Q?3/1mM5XXk5+dtaQ8H9ADJm9rE6k4pdP6amgkjfqpCq0nPM693vCjW3F59E+d?=
 =?us-ascii?Q?W/4ssbgwVrBgmvXP5OaLejFmgsn731uzuqF/1jKFctF9LX9xssGl/8R+HB+N?=
 =?us-ascii?Q?2qrGfhXfQctmextTADHJOqKGsLmBs62Ey9/ecoDXSJt2QmGmbfITLAiy2v4k?=
 =?us-ascii?Q?m/exel0HhHMCV7tLsGxDKAzxpsJO5bKUdt41?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB5PR02MB10213.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?B3N8seao2HqUms6Xkqh4cNa3gmMbGcVp+Ch4qXdziehOtmEoxX8Ja4zNpmcC?=
 =?us-ascii?Q?A3kWmmvfsM042F6vqIL/V4qjxao/JIpfASwENjxsVFr6r+NL7pJdzGKJzqaP?=
 =?us-ascii?Q?pr9Z+GX+IB/cAZ+fhIKRECilxUldYKYoySBwZQvqBl1FQssQ5V6Q2M8h94Dq?=
 =?us-ascii?Q?mRmknClUmKH51tMBJsyF7l3EhPF9q4n7mu2eOSOx6+LHcU4G8J1yyblzdlU9?=
 =?us-ascii?Q?0SJLcUvAZ4Tb6eYtWi0hxdsLZ1ozyUn4hzMBVJBdqdV4ieioIN8xaFX9p26E?=
 =?us-ascii?Q?KGQDpaRCO0DW54JC8oh8QK6sVYzpB5T/KUA2ym7ubute9E1CacXqApTpQXFl?=
 =?us-ascii?Q?cAnIq/eUfe7kJj9Fn0q8cJ4VdAjo3yjlIem8EXyeDMtiLw0JRnJD5R3WmiF0?=
 =?us-ascii?Q?GY5DAl/1meqiulItcTJUB/BvZot3NzYg5Lm5625imNPX30S4lz+TNAbgWWZe?=
 =?us-ascii?Q?YI5+qCz3OveVi994NUDvy0QX7uaf7Qp/YvQ0xNTfaJxWcne2W86YH2ZkDUXd?=
 =?us-ascii?Q?2NCj12sKCRkyRuEr56Dsuk6Cup9mSwXBKRBiP0iijrMakcY9iu1+86n2uc+f?=
 =?us-ascii?Q?DuXbxvSe0mNhApVvfPfdYAtk+mP82zK/djaVjZ7exbOhk9JrvuUs0qHPAz0R?=
 =?us-ascii?Q?pTrl/JlnCEybFfF0XEVl9hO7ytLOhs0Mw/nGBz0CwsURJpzuO3BwXiB0Ujzy?=
 =?us-ascii?Q?NOVlEIUXEpeyXy8WzRHgwQoiiJ44pZxNI1Qks85Da3P3S97oKygmurOL2VN+?=
 =?us-ascii?Q?qrjAIEvfmVkAl6hxgdfHYnIgACfa5fQXOXmOoiH5CJY3D9FveCkS458YJhIl?=
 =?us-ascii?Q?NbSUmW4W5Lbk6pQZuqCl5kCbnoc7LoW4G723wix9aDzZ5G5Jq6BiitKhSd+V?=
 =?us-ascii?Q?tx9eKkeW3PpYTaLGZKQMenSpJc7qdfVy4eW9gDA/CfyM08E6KZVzTs8sA711?=
 =?us-ascii?Q?edSjPUhrHmG63t5qQmtrfyplLMM10oozNizQPfUYGqKdjY6gsT92jyFF9Vlv?=
 =?us-ascii?Q?3cpdMwzBIhURObjJhkCuAvf+9ISHC4TfaJg5dm1dduG518JHfSPvHBuKOuQK?=
 =?us-ascii?Q?UR5eMxv7fskQydnQJeVG10AOHIM+EBKoSjTtE4J1c5VgOm90NwVGAMiXB3lg?=
 =?us-ascii?Q?oxMP7G3zf71mL2CIN7phKyIUdL3ZdpskTMFOTIHgnnvSfGj52/t3dLvDCgfY?=
 =?us-ascii?Q?LRXSROuxfv38IKG9EOZpUolcipSL9xuoL1m5V8P0FptekWQ/F6XMlZSejwih?=
 =?us-ascii?Q?80N5DpCRRuuv4ywZmGQoVqh8xZzXRFbxJ3+yuvT0Aw4QtslPzwCIWakUju4y?=
 =?us-ascii?Q?wO5N6UEBOc3Gr9hDDajXwUtTpE0UHtxvQbFQAJJkhuvP6SZS2ICtLY87GWIr?=
 =?us-ascii?Q?mNm2ycwuqH6JM6uzybUbISHS/WtDI9XBM1cj2YzQOQDNYQrTRPdAlgL0QoWF?=
 =?us-ascii?Q?5Ce6Hj2hUfROh3SJmi+m3gq8MZKlzIAtvtGiptziO4jsk0F9jKXozW31VYtm?=
 =?us-ascii?Q?7eVwOJc9UUUzyOOrGNLUQTBFCg7W9dhnniUwhL0tcO6eWPZGpXI3rLz4WSMF?=
 =?us-ascii?Q?YnyWlqSDV1yCdwS9wDzICy0GlHDtUr6GM/1YHQpjT9uzQfbHWB7gQnTOgqR4?=
 =?us-ascii?Q?Xwxxib5WhGHW7DSBIfuHNOGZcpXcdF2Es/foqG8uHAYvlPU6LN8lkZRqkdtO?=
 =?us-ascii?Q?X2OnpoE45xfohq3WtB/an0x65Ys=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: axis.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB5PR02MB10213.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 905feb16-3454-44c3-9411-08de4fa6f9c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2026 17:46:10.6625
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GVtwYoli/K1B0Ui9XPxV+scGKPrRd/x9uRNsyg73iOhx164R4xwHgkW9gSYw6zyE
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR02MB6980
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 09 Jan 2026 17:46:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13823

> -----Original Message-----
> From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On Behalf=
 Of Richard Purdie via lists.yoctoproject.org
> Sent: den 9 januari 2026 16:09
> To: poky@lists.yoctoproject.org
> Subject: [poky] [PATCH] poky: Post release version bump so we're after wh=
inlatter
>=20
> Move master to be a version after whinlatter.
>=20
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>  meta-poky/conf/distro/poky.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky=
.conf
> index dc39e531480..68e7ca768fd 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -1,6 +1,6 @@
>  DISTRO =3D "poky"
>  DISTRO_NAME =3D "Poky (Yocto Project Reference Distro)"
> -DISTRO_VERSION =3D "5.2.99+snapshot-${METADATA_REVISION}"
> +DISTRO_VERSION =3D "5.3.99+snapshot-${METADATA_REVISION}"
>  DISTRO_CODENAME =3D "whinlatter"

Can we update the codename too (since master !=3D whinlatter)?

DISTRO_CODENAME =3D "wrynose"

>  SDK_VENDOR =3D "-pokysdk"
>  SDK_VERSION =3D "${@d.getVar('DISTRO_VERSION').replace('snapshot-${METAD=
ATA_REVISION}', 'snapshot')}"

//Peter


