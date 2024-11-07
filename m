Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11307D5D693
	for <webhook@archiver.kernel.org>; Thu,  7 Nov 2024 21:42:13 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.86])
 by mx.groups.io with SMTP id smtpd.web10.4323.1731015723437154638
 for <poky@lists.yoctoproject.org>;
 Thu, 07 Nov 2024 13:42:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=WhmMNIuf;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=WhmMNIuf;
 spf=pass (domain: arm.com, ip: 40.107.20.86, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=ASKgAa/Uf5rVVfZxTOjdgnIxR/p4FYH7oqCBQR5kzdgq2dw1N5go5sk0DLwVfvqdtGipk5102IuYUX53qqVGYsnGFqUZadgRTSStI08WF7RxPQ6bY57jCgcY10UZrbTuFLKXhnE7squZ9IAnAbuF604uA8N35+UvDDtKd5h4R4GHCgE2pnVK2vOOQ/A/vaOeeTR2E51v276L4ozU+XZp4WlBpGyw2RRUsxDzJ8Iojmkn4TDy/OwQKvlPy9PHDV//k0l6g/8Wr//VVBH6VF2P7IN9jI+oO6pWf2dTVBxtzhQtsinwzqGmFP2W0kp1OIbHjyoVb5qTDR9aiUBwNIfSmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c1yEJT6PREy+vaBgdDIHz46PjYN9f+hVPk8g80LGl/o=;
 b=trBzb3q/NLFExLfp42+pPB6gkWkP/8QtE2iBYdr5+IK1zBisKvy3Hj2QpVlhNfSBpEwiAgyznG+on9D9+BxogA3peSJhMLQUaut1DvUG1Gkf15ZtmGaTRty2c3yjPmCx1XyPElEVaMyaaAV6a4Gjz0vlQm686xDc3ZTP6GOWfH+JNR+A01uZx3IH4C64CBq6691UYFu1cXVHR0SwZoEMH1mh2uHDV7U9D6TGB/AC4//3WHWnncA/FO767qFlAZY/FoDcKA+wo6SNmNOQ2gXyabZJ7fHesmXZHl0QjDswHmU9XQbN1xO7p4k8ecvaPyBzX44MaCuTGspKKYL+rXEZGA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c1yEJT6PREy+vaBgdDIHz46PjYN9f+hVPk8g80LGl/o=;
 b=WhmMNIufVNbdrSCHnqzxcGdsJHgM/TAfAn8LSX3YdzT81NwRkOoLwSvowVE2l6QnsHhMr8bE1WNv8n6muzX2R9FZhHBndg1amRVSEeDRD/rbDjv2O3I5401LYRJKxXBDGGrm+brjWvb64toko0m2NMk5yacuqxSuhQEt9gJ/Mlw=
Received: from DU7P191CA0012.EURP191.PROD.OUTLOOK.COM (2603:10a6:10:54e::23)
 by AS8PR08MB9454.eurprd08.prod.outlook.com (2603:10a6:20b:5ee::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.20; Thu, 7 Nov
 2024 21:41:58 +0000
Received: from DU2PEPF0001E9C1.eurprd03.prod.outlook.com
 (2603:10a6:10:54e:cafe::6b) by DU7P191CA0012.outlook.office365.com
 (2603:10a6:10:54e::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.20 via Frontend
 Transport; Thu, 7 Nov 2024 21:41:58 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU2PEPF0001E9C1.mail.protection.outlook.com (10.167.8.70) with Microsoft SMTP
 Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8137.17 via
 Frontend Transport; Thu, 7 Nov 2024 21:41:58 +0000
Received: ("Tessian outbound 99870d44e01c:v490"); Thu, 07 Nov 2024 21:41:58 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: eaba4859df4a857d
X-TessianGatewayMetadata: DGP9V33M44vw2iGkNpBpsgn3t2IoIP5tu+TCVizTvFSzMAyYLr4FFz0/VXjpIGkyzBLwHbK+7+tNIhkW5Je1Kt6RG9tmI6vgwtxzCEXTsA0qRD0RLK+SVynr/4qqO4xndN3MisdFhGkwuO4e/YL+7GTTq+8nkWLFTx3mFDO4PL8=
X-CR-MTA-TID: 64aa7808
Received: from L1adb95b262e0.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id E2A1A30E-CE70-4ACC-8A28-C6BC287E9D02.1;
	Thu, 07 Nov 2024 21:41:51 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id L1adb95b262e0.1
    (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
    Thu, 07 Nov 2024 21:41:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TGET1C9iEjL7l0X3RPOsLc2c47ZgDRJXSdzyqkynW/ufPE1oH/WcsrPrd9IGfkfUWp/+Aa8ion/fIzWoH9FMsr0hqObwtoTJ2OYU71NKqDBmdqBmzsJ69RSjmHp7ykB5+ttaXYPdSiyMk/2F2hVpQHnhzPsq/XtoXIDUGTR24LiSahqD9bQGaZvnKZOC2/tLFXfHYVu3xsOVj/rZBTogaKycEY2idT+QJftMAn7ueyiHwWQhH6KXBOLEl2AlSsNcdzOzV0zJpOOXwhJcUA16ScrG9NocdvjbnN1gNDzO02gxZHLb3Y4qqJO4c54J6lT5VVFkqDm47j3U2NVjuI5dEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c1yEJT6PREy+vaBgdDIHz46PjYN9f+hVPk8g80LGl/o=;
 b=KfUpMNv2Q47RlpRnsDlQ1QZa7Iv7vZNEQnBXOqXu8AlrWl4XVsbsbcRtRG/xKeY4xy+94vTgfaMEICV7JPNcx6m58qE7pHM9reQSpPNK09IUov4BfL2LQe2hNFJwmygipxqZsCUzrcdCO+Om5pSWxWcEiXpHiOr1vis/DERqzcmaqyNcC0djkkSnkSz/R5EHXuE8Upqwf/1/SOXm75zGa3yHBOPxYW+n5arZPYJgnBxovxIuz18ujheWfrVrtpRT4oTUErRn9UB3oWygDZFz461jJ1fjxNTbkrBuKxMFkWGtaKrZV4/t+PTSq4TEh+WpE3eFHmou4PSGtTuFCh1cmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c1yEJT6PREy+vaBgdDIHz46PjYN9f+hVPk8g80LGl/o=;
 b=WhmMNIufVNbdrSCHnqzxcGdsJHgM/TAfAn8LSX3YdzT81NwRkOoLwSvowVE2l6QnsHhMr8bE1WNv8n6muzX2R9FZhHBndg1amRVSEeDRD/rbDjv2O3I5401LYRJKxXBDGGrm+brjWvb64toko0m2NMk5yacuqxSuhQEt9gJ/Mlw=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DB5PR08MB10114.eurprd08.prod.outlook.com (2603:10a6:10:4a3::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.19; Thu, 7 Nov
 2024 21:41:49 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%3]) with mapi id 15.20.8114.028; Thu, 7 Nov 2024
 21:41:49 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "star@gmx.li" <star@gmx.li>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] One recipe for fetch a bigger repo, multiple recipes to
 build parts of it
Thread-Topic: [poky] One recipe for fetch a bigger repo, multiple recipes to
 build parts of it
Thread-Index: 
 AQHbL3Cug+Lr/O3r7USvaNn05Y44jLKokVaAgAAEtQCAAAFZgIAAC82AgAAIFgCAAWjZgIAAAkQAgABxHACAAdVEAA==
Date: Thu, 7 Nov 2024 21:41:49 +0000
Message-ID: <B5CF96BF-7A37-47C3-B19C-3BB9A1B33FEB@arm.com>
References: <9d150f03-34b6-4a6e-93d9-2530f12ba3e4@gmx.li>
 <CANNYZj_i=Wg_S2dXNRMUVZ0v0AzkWRwrNASBSxHMoe9SqDv4zQ@mail.gmail.com>
 <47da8641-7a74-4d64-afc4-84c81ba713b0@gmx.li>
 <CANNYZj8RpypOLJKRMbpL1ZESu2urWHFmr2yhL2pXXCwKiDWwgQ@mail.gmail.com>
 <7fb2177d-8d4a-47fe-9458-919c19631d15@gmx.li>
 <CADkTA4PkbOgqwNoN4TjXZ5JeEgheo3mHNuOH3p6O6+1WC2D=ng@mail.gmail.com>
 <1AC79676-8721-4811-8EDD-4137CB6E5C78@gmx.li>
 <27270d33ba31945912e47b5a3c4acd2461ca6471.camel@linuxfoundation.org>
 <7729616b-76dc-4db2-8d55-3fc8dec79925@gmx.li>
In-Reply-To: <7729616b-76dc-4db2-8d55-3fc8dec79925@gmx.li>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3776.700.51.11.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DB5PR08MB10114:EE_|DU2PEPF0001E9C1:EE_|AS8PR08MB9454:EE_
X-MS-Office365-Filtering-Correlation-Id: c27eb9c4-079e-4fc5-1127-08dcff7501b8
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?us-ascii?Q?iX9B1xSN3QJgcy7mwxWitUVcZBUDrqoW9unaP5k60HY4GSL+LBWfAVIHfeni?=
 =?us-ascii?Q?qTXuVkvGNFeO7AUQcw5In4wO9z1wGpohl7oIF8n9dSFbhcR5fZqd2DtjxI0l?=
 =?us-ascii?Q?KwPg8JERWA7mOroHgYqaeaGtW6kbWxMZCVb6vgWFg9rBr6smkkU1Jq6HFR/3?=
 =?us-ascii?Q?qZf1dYT+sRkLVwc0BeSZ4hIR4wqkYeAvn26sqh0qhEReRDjlR/Ktz1tOGXGL?=
 =?us-ascii?Q?Z4iXCINr5I/KftdWvd9BiDqPQyJ08Z4CkOR1t1H8jTGUdgomnmjInPY9ycHL?=
 =?us-ascii?Q?cXoOuPtc6O2aIA8U0Rv0AH5pe/TtXVQGljyxqiJif8A2uju6MY2yEBMKXFhq?=
 =?us-ascii?Q?R3r5tCuToKKTDX8FWP4P19S2dZvVgRrSAXoi+BejxqP0Xpie1nX+SVl7hopt?=
 =?us-ascii?Q?rQn/68HrFG3gJtG8LgyDRzoP8XEsqa9HNiWonvCMey8Rt4v1e2QYi5NQikAH?=
 =?us-ascii?Q?Ygf4UWJsXI00Vkl1yCWTZGyHjH0wtoptazaMVqHufrOjb60V5+Vj8dt0t8zU?=
 =?us-ascii?Q?h3xAfm21tQfCLj1STjb7lSzx6+sacqFP8xrJg+O1N50trywGgrJg/wkxoArf?=
 =?us-ascii?Q?2D2Z5U4X3k3xLZjg9xA8PGkW+Oiot1HiL0kj7xC9713hUC+Qxv9DUlBbcSPR?=
 =?us-ascii?Q?llBYe5Im/77bCFFLysVZM8vhRUiix/0VC/+bnUvXMRqnmT6FhNnq6wrxGFK8?=
 =?us-ascii?Q?q+X8yIPhKyjKjjXpuZadalLPQtD9z9XBRHPhJi2yIg2feI6LDDCcDWHz323L?=
 =?us-ascii?Q?63yrSMTxnpgewgkCPWhTEwPBC2XoO5OVzmG96yNM3djk6xNi3XdyFr0HEh5t?=
 =?us-ascii?Q?Xi9csCPZrLc2PzgIMFxC0OS8xe4xDM46o7bnnCsuqp0e6u1zGsWMHrA7p3fS?=
 =?us-ascii?Q?awM0lz0ax7V84SWEbSimV6jEBY2lcSA0h6yUrWtrmyYbczW37MoBGZ32i6Lx?=
 =?us-ascii?Q?KXF1BXMNTNsE8iaNEWjQ7dDoTcrJYMTdgvf37W2D02VaL4w0buiXP90MHOUX?=
 =?us-ascii?Q?lb+Ywc1EDY+9XroiMx8b29bZIJJzNlJKDxmr0NM9clfJwGq8EDcsw9sOO4fS?=
 =?us-ascii?Q?tF0hnJvmOxr0jpUuvcWClx7Qx3ExQXAUhtCCdtU3DJWmBlLnxTDM+C5GxqvQ?=
 =?us-ascii?Q?tZ00Vr1AlgOpUeZsKwmlGyIXhXGbCHmSYufNQvS4ri3zHPQSCVOGjs3+hAph?=
 =?us-ascii?Q?M7on63gcoxIE5n90aWaGS9pdU8LibsePVFroYHD1y87OIL9JLIh96pTuBnPw?=
 =?us-ascii?Q?pBIDPXxfVgh1/Ec/WmCVVOG3HlvHiMOGF8vOw9TD5eqawtG4kdgEO91KCqX4?=
 =?us-ascii?Q?wOzYsrI2wLx7PJeXv1u7FvjpAlydzugUYZ0X2P6gwBm+jqn0kwyAGa5DdidB?=
 =?us-ascii?Q?SU5Aels=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <466216F4DB281744B87A68CF233219C4@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR08MB10114
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU2PEPF0001E9C1.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	74dbe9cf-613c-4b4e-7e11-08dcff74fc21
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|36860700013|1800799024|35042699022|14060799003|376014;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?yLWqNYfsMn9jA1YivopeRPpKna+G7jbSjEEdLVpqvrxhT4vg5Abp4LPgU2SR?=
 =?us-ascii?Q?3pY6i/Io9MvCPMS7JycSuLFXmuNeuEJESxNvxQ7/2QAMRflWT+SjW3XQFk8Z?=
 =?us-ascii?Q?CMzVvEU6k5ECo2opcjZ1KO7IcEX2nwqaLllhCTbrkvAvtbGD9ntQ2G2zdUBC?=
 =?us-ascii?Q?5KPyv0LgxZ1+T0SH+NUVlOTRVCClBFrUGSM3hKH+5q3drBWkW5+FPimpvMZI?=
 =?us-ascii?Q?6GD7FONFV+0di7OTTvRoN7zYIBrxBkUUMyCIrrIn2cywt8APL27pqgHlyXyR?=
 =?us-ascii?Q?3bCKxd8foqMb3vff4FuvTGgX3phdlLqXUM9e6DwUsCSRC/CUrbDoxOvQexQk?=
 =?us-ascii?Q?4AUCk1ABfRP+IMhcBfGf2HQ2oGrr7a0CC86SR4vnUlSYGC51vNa8piFprCpc?=
 =?us-ascii?Q?kvWqw9An7Eh9IAQrSKM4Tz1M/lnbOGNtnzgpF2QJ0lS6J4f9akZCUZdy+gxw?=
 =?us-ascii?Q?70hrjY2ozlCkq1eoaS4pl5hbhED3JFBW1U5wr/w49UQXs3t/ihR9oPFTCbuY?=
 =?us-ascii?Q?P8UZFR3ylE3wkhk6y9+9PCr2roNV64FSqKMgr8iFrqx/462b6dW4ACGDAhES?=
 =?us-ascii?Q?yzoaelCNagd4jEHa6GgA60c/Rw/0wmulL96LfxbTXH5FRSX1T5Y9w/FjkqIo?=
 =?us-ascii?Q?4LggI7H65UXkxzS0nTnqWCqSYnWNGGT7D1wjdwXFaZSlFu/mRcmt7YzOg/fL?=
 =?us-ascii?Q?nkW+7OB9xM99rejiRUCexH0WAFFo5dhaL5/tVyN00kR1xqXqPMP1Z0B3ynhx?=
 =?us-ascii?Q?ikC2YZwLJfa1Bdw9YUH+Np/hBT8KpsuWg+6qig6V6TlIW1osibwdveYf54gg?=
 =?us-ascii?Q?T0Zns8f1FUfNEM8R8Ugw+JrkT5AC763EDseLJJ3a3AUCSAkTVI7uD+Y5wi23?=
 =?us-ascii?Q?hh+tDSU6lcSRD9cL238CZ8n9Sb7Zd9GYwB+lN3yvtXvQ/C2ZGXKcKPd2MqQZ?=
 =?us-ascii?Q?2yIrdevtEh3uaLKr8EsEfWaZF0q6Wiylhf+PHG54JX2z8o+9kPIE1Cel+qBq?=
 =?us-ascii?Q?DOSo/+WWlcThn2RG3Ew3Eflayh2Vv41r2DQsPOp5w2cfO9AUiZdfmjdhN/sd?=
 =?us-ascii?Q?enwS20de3yxRN3xo6E0vMiSIOjfSVVlu55GeddjI7eOdeUY/vcrktUvhgTQ6?=
 =?us-ascii?Q?+S6ZOCc22qVUTsq6rDbpE9pjlPp19+ROBfrxQf2dv+0yVIPZOZRJOnTRCx+6?=
 =?us-ascii?Q?IKjOEKU1/iNx+qpZXP3U11bYCpKCUVk1Q8MLnGjXDXSN2yt0s70YXVMuR4IA?=
 =?us-ascii?Q?gLAZHuU5jDVHOzB3/LI2MWRGYS9VTA42/9PvqoaHiz/TN9Qk/uAQZ8CPSpxy?=
 =?us-ascii?Q?KzcCuHRVntbi7zk3lgTP+sdCYH22KPzMgFRtA2rhO4yM0q/az6KN/EuxWcb4?=
 =?us-ascii?Q?SWEYGq6qkug/GJrVqTmCcGBzNfdlHwxxvMcjctUKPm2u1dmGIw=3D=3D?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230040)(82310400026)(36860700013)(1800799024)(35042699022)(14060799003)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2024 21:41:58.4708
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c27eb9c4-079e-4fc5-1127-08dcff7501b8
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU2PEPF0001E9C1.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB9454
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 07 Nov 2024 21:42:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13486

On 6 Nov 2024, at 17:42, Steve via lists.yoctoproject.org <star=3Dgmx.li@li=
sts.yoctoproject.org> wrote:
> Follow the path of recipes of kernel or gcc is rather frustrating for a
> newbee. Having a recipe just for download seems not a good idea,
> dependencies of recipes seem not to work, as download recipe creates no
> real output.
> What I did now, I created one standard recipeA that checks all out and
> really does something that is needed
> The other recipesB,C,... depend on recipeA and in their do_install (I
> just want to pick some files out of repo that is checked out in recipeA)
> I figure out the folder name by just ignoring the (for B, C, D...)
> unknown git hash.

Where are you picking the files from in the other recipes?

Ross=

