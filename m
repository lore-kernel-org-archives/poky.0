Return-Path: <peter.kjellerstedt@axis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D54B2CDB47E
	for <webhook@archiver.kernel.org>; Wed, 18 Oct 2023 10:09:35 +0000 (UTC)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.47])
 by mx.groups.io with SMTP id smtpd.web10.278355.1697623765099546480
 for <poky@lists.yoctoproject.org>;
 Wed, 18 Oct 2023 03:09:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=selector1 header.b=GG12ArW6;
 spf=pass (domain: axis.com, ip: 40.107.14.47, mailfrom: peter.kjellerstedt@axis.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A22suHtZ7BUKHRXkVjC/1ULZ2iJasWoicnfMWGRhGpCqHgFaof848x/DU0anTCwfzdP878mpq7AK40UDXU5b/d6gCK5FgRVToJ80WWS2Yj6Y74qfRnJfumpjzSTrrkvrObjvpLbmi9PgRUf0p8049WeuxCujzNXKDOaslXXmft9u86Kp1peTsUaitYHbe3p1z9bfXxE+djfsA9YkiXaBDV7lihOdaaP2zWWSv5eCWvh6tgb3c76kUllzQ5IvtEcISxCEyXB0fDkuoncWHdpcNg+rnOCPmXnHRROgNreBO/MfT57zoyJqMMhfCvFlUUsZMIxC0PpeYB9Vbh+CW4nz/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BiJO55Jh8u2f0vD4aFOI3cT9A+GKgUvl/1BgORj495M=;
 b=h1MPxJStsRNuHb70mphVKUMTtVTvIm5HP4F0Cj/SjdI903bWER9P4AYyEIqWSdIs1uyK0pETBrGZYahD1jBvCL8J1+rYl1brJZWxQM/PNtUecUl9r1iaEWGhrrq5iUMm6mhYRJgvE/icT+NvrwTIaUlvm4CMd3iH9jLm5R2vLURp1/APeKzDaey7TsPLCYMtlrKtfwfwRpo0Np3PelzsDqIr/LLd7tdusmA5ob7VMBrOKNKibhobxxyTRcTaSd5Fff0Qs4gdMK166cZnYAsUBC7HNB3vFNHGnB3hpzz/5lShxfbVC1u4Uw4Uzf+rBswBNcev/ys86j6iu9SORVGnhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axis.com; dmarc=pass action=none header.from=axis.com;
 dkim=pass header.d=axis.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axis.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BiJO55Jh8u2f0vD4aFOI3cT9A+GKgUvl/1BgORj495M=;
 b=GG12ArW6Tn+lo/YCbidT72rbSu7fWWyTAe5KILRjL7l1rvSDoicA2tGFiAeIjGJggHaBsYM/854OuAvABZsvjYqTBiYWNn2RW0bCCi70hz1c00djvGxXXE3S/2tk2LEpL84YuVya1nXEaFWtb2y8bGEJF8P7k+Kex5AxRxUc2Ug=
Received: from DB5PR02MB10213.eurprd02.prod.outlook.com (2603:10a6:10:4a8::17)
 by DB9PR02MB8911.eurprd02.prod.outlook.com (2603:10a6:10:3d9::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Wed, 18 Oct
 2023 10:09:21 +0000
Received: from DB5PR02MB10213.eurprd02.prod.outlook.com
 ([fe80::75b6:1bf:7cb:23ad]) by DB5PR02MB10213.eurprd02.prod.outlook.com
 ([fe80::75b6:1bf:7cb:23ad%6]) with mapi id 15.20.6907.022; Wed, 18 Oct 2023
 10:09:21 +0000
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: BELHADJ SALEM Talel <bhstalel@gmail.com>, "poky@lists.yoctoproject.org"
	<poky@lists.yoctoproject.org>
Subject: RE: [poky] [PATCH] bitbake.conf: Drop DEPLOY_DIR_TAR
Thread-Topic: [poky] [PATCH] bitbake.conf: Drop DEPLOY_DIR_TAR
Thread-Index: AQHaAS1z7Go6haRVsUufxlJM7r2Du7BPU5Rg
Date: Wed, 18 Oct 2023 10:09:20 +0000
Message-ID: 
 <DB5PR02MB10213C5823F070BA4C70744D9EFD5A@DB5PR02MB10213.eurprd02.prod.outlook.com>
References: <20231017190854.3863137-1-bhstalel@gmail.com>
In-Reply-To: <20231017190854.3863137-1-bhstalel@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axis.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB5PR02MB10213:EE_|DB9PR02MB8911:EE_
x-ms-office365-filtering-correlation-id: 84262e98-93c7-491e-2a33-08dbcfc24c12
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Jv+ZjgE47e3/837g5BXAT69cwAmu1tGueTu+B93a2d2zLe5s8zoxpf0WDJCDqwpDi8gMwrE3AIxq1M9+FaZRcV4fFJNKkqvQ56nmNhLQLneMySCN/iHPUoAu4YnFWuN4IKj+1MwarRicVBLnPG1fs8j3KSTgBFSwHTkUXrbvpu9UwyNjiK4XzceACK52hdvMR/yg43Z0VYhsLyZlXEBWWnlNXt/Cz/TBLu0zJX2JKV2BpGecGodSnADMeX8hlwJ+61LA5PLKfeg4igDOppLUipNF0hyau8ujOv2PlEvnTLN+Tm09hdnJ70Bx2BbQCgAvtr4cpmPAiYnKTesgwjhx5PCgaLkH8f6Q31JkPirsb6FvJSODk3Yvke/1F0llMCm2hATblVOqahMqWMyWxMaZ7LiM4hehDOygc0KmiB775FYBcu+BRqBs36x3yeJ19czWaI2Jm6ZPrf3PWnbNvTNYWZYn5h134qitqV/NTJRbq4m4AD3w4zPuqTSFCoLXCEdy/E86UiT3GwkkCml0hASXNHhSZ5FMM0egdoLWnZ1+haoLrFDVhPH0j43XrNbcM6hsw+VtW2PyjVu6sPVb6UKseuCi921fPfn2hrOAMiJPVeonsH/JZwB4EOPx/8Ii/YKW
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB5PR02MB10213.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(376002)(396003)(366004)(136003)(346002)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(122000001)(38070700005)(8676002)(33656002)(8936002)(55016003)(38100700002)(52536014)(41300700001)(44832011)(5660300002)(86362001)(2906002)(7696005)(9686003)(6506007)(53546011)(508600001)(71200400001)(26005)(83380400001)(66556008)(66946007)(76116006)(110136005)(66476007)(66446008)(64756008)(316002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?uTNU2eFXFbsVmEav4R8871Qna/O5aGQ+6wSKCGmhLzj2t9L1XtN8AoIImpXr?=
 =?us-ascii?Q?ZQI8uPTKQyHH84m8xcUsWPmOxm9bTZ5Hpd0ziaYwP1ngrjTrIcFRMC1SJkkt?=
 =?us-ascii?Q?NLD8Quj+fKMWNJNB0vO49G4/TyEmnIu+5+5or1x/WJAzj2SW36jz4MCg8APU?=
 =?us-ascii?Q?Ry11VZ0DO88s4mJJgWCohJX0YBzGuw6Tq5BMF35Lqa2laGazTwLNLWAouevV?=
 =?us-ascii?Q?PRZbTB1TP7lRCgFe7ut+VBBjU3dkbYGPqKyzrRUAJ/NkEWYbGnzm9xo92xtw?=
 =?us-ascii?Q?l8l9PnJH5lPCwL7Rl7IYBx1xR51dGAq23bZS4GxW+jW44OMWNqc5KYs4SIJw?=
 =?us-ascii?Q?vhZ9Y1TGOnQ6tGNp2Ai9HB3yI3Poy3fSze3u8tqeYdsiFCtSWhIMvjrJrmaF?=
 =?us-ascii?Q?K17qSTwLO3p+6dhLQ9VBDk5QBvhsLvB/rVmvHmXoOPlQSLJR50LRLKiVVI9Q?=
 =?us-ascii?Q?GRsp9e+fzeAfDtcNfMUxO9unq0whdjmQy4ehh2bHrU1KPFIGeO4Rc8fVPnFR?=
 =?us-ascii?Q?5t0DUfoCEWedpGKSUL5yz+IyCT1WCUTUJtaTFHrbihNULxWseeNitfLoCtvB?=
 =?us-ascii?Q?XIaTJsXHN8a75kX3qE2PaiGF/HPn1ZGz1ZeMj3LrMUjiAJ1xVAe8PLAUMpJt?=
 =?us-ascii?Q?ptAuuo0CzfPVgBAgF2LkA7oTnbE0SvC6OXznbhPaueMp9Iee3ox5zzz0c71P?=
 =?us-ascii?Q?lgO7OMSlZ3kgD4H78CoK6bhg48DkIoIiIhZi5f42WaJfrmci8wrJFVkInqt1?=
 =?us-ascii?Q?EeTwANqAqMO46dQS6wX23Im5L8/0GNXpJnU98hMJHz6XUs/KLBjq3LwWOALq?=
 =?us-ascii?Q?UmpxkOKNCQklcpQCciIERmqfLytRlheGPJU0Jd+Xer1b9BX7YZRSgl0t3GXj?=
 =?us-ascii?Q?8xpr0Nj3eEe5YzacrzEFzeuoSbfvL1n/HBus3On4MTllOJooTil3m3Y92c4A?=
 =?us-ascii?Q?UjdGJPEmlrxA7GRMhPK7xcwpl+dH1p4heSrVFvq4SI4LFNpf3yPTeyhD3Y/y?=
 =?us-ascii?Q?7CmMMUTpBbBbmi2RuTwjsY+jusLGP+J6Ju/+zUb6pW3RbRhj+wwul7G2SBQU?=
 =?us-ascii?Q?QO2v7XIDvP58Wihhs9Z/0ICc2023JSZmXQblYtp0D1mCfVq8ftVadmvNR0qQ?=
 =?us-ascii?Q?PS0zClNvIflajxn2UdtfoLaT8L2CSl4dyQ3IDcRjha3GJKt+jh5EzZN6j7Co?=
 =?us-ascii?Q?EW9LWdU804HpYqtA1DO43E7TtPLCJxKtGexomsDcObjOamh9jVjdnzHaBXr6?=
 =?us-ascii?Q?oKO+9Tp2262sJ64bPoj+nJOfwfmaP0s0gHsdIvxQprsHyQq+CawSbwTN6/mZ?=
 =?us-ascii?Q?Ti+eg8F6xfbbBV+ZBVAeZV4lzkRnv8Zd4YPz+FeJhp7o14UvLF0FWv4FF85j?=
 =?us-ascii?Q?4SIrp/Fk9iWsfWUPD7JMda2jZl+ERfN0cYpst2KNAVQJUb6JVRs3NmZM/T+Q?=
 =?us-ascii?Q?QsPu/qCC6AHHbur3+F4KPlWhAKuf8kAAgn2e9WUXa/vlRhf6Thsi6PQ5dw1Z?=
 =?us-ascii?Q?7Okko+rWF/dh/Rf6exCMdap53T4XXdu4JVxknb/qQzcy0QRWBhCvzYnrnn0E?=
 =?us-ascii?Q?CujatGk0I3uo6K7Smbo=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: axis.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB5PR02MB10213.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 84262e98-93c7-491e-2a33-08dbcfc24c12
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2023 10:09:20.9804
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 78703d3c-b907-432f-b066-88f7af9ca3af
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sdf1LyECoF5jDhLNOR8gAE0B/95mjQYHC34K6hlw85Mo0qjcOOdoW25L51Wg4FXL
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR02MB8911
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 18 Oct 2023 10:09:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13182

This should be sent to openembedded-core@lists.openembedded.org instead.

//Peter

> -----Original Message-----
> From: poky@lists.yoctoproject.org <poky@lists.yoctoproject.org> On Behalf=
 Of BELHADJ SALEM Talel
> Sent: den 17 oktober 2023 21:09
> To: poky@lists.yoctoproject.org
> Cc: Talel BELHAJSALEM <bhstalel@gmail.com>
> Subject: [poky] [PATCH] bitbake.conf: Drop DEPLOY_DIR_TAR
>=20
> DEPLOY_DIR_TAR is never used since package_tar.bbclass is removed.
>=20
> Signed-off-by: Talel BELHAJSALEM <bhstalel@gmail.com>
> ---
>  meta/conf/bitbake.conf | 1 -
>  1 file changed, 1 deletion(-)
>=20
> diff --git a/meta/conf/bitbake.conf b/meta/conf/bitbake.conf
> index 77ff494523..2900a8bdba 100644
> --- a/meta/conf/bitbake.conf
> +++ b/meta/conf/bitbake.conf
> @@ -444,7 +444,6 @@ STAGING_DIR_TARGET =3D "${RECIPE_SYSROOT}"
>  # Setting DEPLOY_DIR outside of TMPDIR is helpful, when you are using
>  # packaged staging and/or multimachine.
>  DEPLOY_DIR ?=3D "${TMPDIR}/deploy"
> -DEPLOY_DIR_TAR =3D "${DEPLOY_DIR}/tar"
>  DEPLOY_DIR_IPK =3D "${DEPLOY_DIR}/ipk"
>  DEPLOY_DIR_RPM =3D "${DEPLOY_DIR}/rpm"
>  DEPLOY_DIR_DEB =3D "${DEPLOY_DIR}/deb"
> --
> 2.25.1


