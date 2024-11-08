Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47F60D5E15A
	for <webhook@archiver.kernel.org>; Fri,  8 Nov 2024 10:53:34 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.59])
 by mx.groups.io with SMTP id smtpd.web11.10046.1731063207898284664
 for <poky@lists.yoctoproject.org>;
 Fri, 08 Nov 2024 02:53:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=VEw2uvsw;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=VEw2uvsw;
 spf=pass (domain: arm.com, ip: 40.107.22.59, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=KVRKXEFoCR69c8cXmYQu4g/kFYDjnOTaz46Ab3d5YYmmUFyYdqKH0TlLFaa0h67JLwnLPoYNTqPk4ONtoa945YnbXEz+8RFSrpY+xAMzWitYDrMxN9x+u3SdlEf5SaMzRYWySe81mma815rVCaHbbAa9QgAuLXL9uTSzyTbe8ZnhMP9LO2FOz5ZlRvlMkpp0njA2yqcWNXjYWx0RqxBZG6YNv9vqFIRdjEnbCa0hnXsO+P8X3TA6htBuHLmG4N9mfNUq4LcIhqnqK35du0Cu0NdhatH1Owa1of82ZYmy8P28IvGgVQ2I2/6DOVyGGp/vTOKIzQxihEU9SELw0K58sA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RZKVxpR1cEDpiUnWjn3R0ZUXge5s9UntPsCsERUZUi0=;
 b=vMwttf7UAp6r5LQRjFfkJVGqJO0zNg0VPVqGhUQ3aKOL2Eu5C9P9BD6aOtSybM5jh9mfUalXu49ZLdhR3vR0A06BocNCJvCMs/qw07UMFqVcR/+m5jv0VV0OndL+VBDmlOg8ATKvIqF68dg1N8z7Vv8I9xnH5Is88p1w/NNDdi4cw3yh34NrIUP6p4coE6iyrAPMe76KYMfzrKHX1ghm9jYEtzihj7itbibf9M9GllN0sO1kWfvom6iiOTTcTFPT9ELR0Bmq6KHyuVfjcREpSll9aPtSjLwFTsT3i5zqPp8XZ5j+be5N3HYcGpblHyVRAhsnoBpRcyrJbnj43gnEyA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RZKVxpR1cEDpiUnWjn3R0ZUXge5s9UntPsCsERUZUi0=;
 b=VEw2uvsw4RFAUZEnuuWRaKsaKay73uCMS2dFy/IF26XBzX4+seIz5mAOiPKW5mjNXgw8S4HAEAlJWFDqdlBr9xrTcUEOdn1OwOXcDjdkiJOAiVnoiOlxI+79ZPAXE+Hd0TU6Dt4v48CotxI/V2dT3tS74Hp+iFHeuARIOAjNZ+U=
Received: from AM0PR10CA0119.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:e6::36)
 by AS8PR08MB8658.eurprd08.prod.outlook.com (2603:10a6:20b:564::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.21; Fri, 8 Nov
 2024 10:53:20 +0000
Received: from AM4PEPF00027A67.eurprd04.prod.outlook.com
 (2603:10a6:208:e6:cafe::fe) by AM0PR10CA0119.outlook.office365.com
 (2603:10a6:208:e6::36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.21 via Frontend
 Transport; Fri, 8 Nov 2024 10:53:20 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM4PEPF00027A67.mail.protection.outlook.com (10.167.16.84) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8137.17
 via Frontend Transport; Fri, 8 Nov 2024 10:53:19 +0000
Received: ("Tessian outbound b64574585bf8:v490"); Fri, 08 Nov 2024 10:53:19 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: d1f78d64f664fbba
X-TessianGatewayMetadata: SoDT+x76dUPDUpLpRSwMLC7ybDlJa9BRZhNfQQCcxPCu3nJBZRuKyuZv31zNVY43dWxhKlU7JIX2oIHuHFWpkR+iw9Xp0z620LD5OBANmlcp41EhI4kcSfBx3dwI7idQNG8aMSYoviUReZESNpPxDSxC5uorFJV0mjwH3UqCI+M=
X-CR-MTA-TID: 64aa7808
Received: from La26edf8f884e.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 0C1FB069-8FB3-4328-82F2-C516E6CD0E3C.1;
	Fri, 08 Nov 2024 10:53:12 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id La26edf8f884e.1
    (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
    Fri, 08 Nov 2024 10:53:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W1GABp+f+xxP65oD/wRwQSvYw9NmkNPIlIbiiLEdpC2gRfzaDFaJAKVjjsIyY+mSOq06BtDRZvwogiOvQXIIuld6YY7SrFPgwKTT37H2BLkmC9QH2aWO/QhryshP/qzy/XQL2v6xhYCykKE6LL9HnKd7rz4ffL2s2i0dKSbs2TjJRKxFjfORlkKZB9FflvibpPIJPiOlfu0ZTgBagqm/6IxYsSSWBiPJ/pYkb6+HU/kf8E1q2h+8GFpYXoSlDFyNAvt3ot9kgi9Xfb8BsdEvnBk7tXGnMfaZrh6D2oElBHfoWcnc930hhxUty8LLunS6kaFJV8QaK38bzMxLG5GdQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RZKVxpR1cEDpiUnWjn3R0ZUXge5s9UntPsCsERUZUi0=;
 b=YDc7FJeyuwlTJYV/yE46XPm6f03XHwjaZgUKjx0UjQdoM5ycSI59bnOJXczad6sowvipxkFFzd9vLrb73B2g272/ZfMwQ/GcokWHtOrmz+Aa9Cs3t2c0Ebm0eIstCkyZxLkqVgGXP++E3XZxQZ5d+TryMXiGrklmCTPANScstmwL8aLT9IWTTR4EgUwDt60G65E9MHua8+DM9gcsYneLDho4yng0FAQVqKYkrRHDfG47sGXS9DL7mGWnloGCnboLJy1GeKCPoNcrWWXpnMrcDHjij3OvMBDizxFonNjQZRtLyAoMwkQIXsv7YQi931juuIVpF8pWPol+3gWIvnhj7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RZKVxpR1cEDpiUnWjn3R0ZUXge5s9UntPsCsERUZUi0=;
 b=VEw2uvsw4RFAUZEnuuWRaKsaKay73uCMS2dFy/IF26XBzX4+seIz5mAOiPKW5mjNXgw8S4HAEAlJWFDqdlBr9xrTcUEOdn1OwOXcDjdkiJOAiVnoiOlxI+79ZPAXE+Hd0TU6Dt4v48CotxI/V2dT3tS74Hp+iFHeuARIOAjNZ+U=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DBBPR08MB10746.eurprd08.prod.outlook.com (2603:10a6:10:52b::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.18; Fri, 8 Nov
 2024 10:53:11 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%3]) with mapi id 15.20.8137.018; Fri, 8 Nov 2024
 10:53:10 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Arno Steffens <star@gmx.li>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] One recipe for fetch a bigger repo, multiple recipes to
 build parts of it
Thread-Topic: [poky] One recipe for fetch a bigger repo, multiple recipes to
 build parts of it
Thread-Index: 
 AQHbL3Cug+Lr/O3r7USvaNn05Y44jLKokVaAgAAEtQCAAAFZgIAAC82AgAAIFgCAAWjZgIAAAkQAgABxHACAAdVEAIAAlLkAgABIYgA=
Date: Fri, 8 Nov 2024 10:53:10 +0000
Message-ID: <81A67640-994E-4267-BA16-38040B20AABC@arm.com>
References: <9d150f03-34b6-4a6e-93d9-2530f12ba3e4@gmx.li>
 <CANNYZj_i=Wg_S2dXNRMUVZ0v0AzkWRwrNASBSxHMoe9SqDv4zQ@mail.gmail.com>
 <47da8641-7a74-4d64-afc4-84c81ba713b0@gmx.li>
 <CANNYZj8RpypOLJKRMbpL1ZESu2urWHFmr2yhL2pXXCwKiDWwgQ@mail.gmail.com>
 <7fb2177d-8d4a-47fe-9458-919c19631d15@gmx.li>
 <CADkTA4PkbOgqwNoN4TjXZ5JeEgheo3mHNuOH3p6O6+1WC2D=ng@mail.gmail.com>
 <1AC79676-8721-4811-8EDD-4137CB6E5C78@gmx.li>
 <27270d33ba31945912e47b5a3c4acd2461ca6471.camel@linuxfoundation.org>
 <7729616b-76dc-4db2-8d55-3fc8dec79925@gmx.li>
 <B5CF96BF-7A37-47C3-B19C-3BB9A1B33FEB@arm.com>
 <6bc83c8c-04df-47ab-aa02-f4aea2ec95bc@gmx.li>
In-Reply-To: <6bc83c8c-04df-47ab-aa02-f4aea2ec95bc@gmx.li>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3776.700.51.11.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DBBPR08MB10746:EE_|AM4PEPF00027A67:EE_|AS8PR08MB8658:EE_
X-MS-Office365-Filtering-Correlation-Id: a3807845-4e14-4f25-8ad2-08dcffe38ecf
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|366016|376014|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?dVpSNmcyc0JzdVZVM0ZTdk1hZndXemRiMUdGUlJlYVVseFhvUGNkUGl4RnF2?=
 =?utf-8?B?VVcwRXVlY3ZObyt1c0tFc2wwclAvcXhONUNBZDdacXNzdDhLNFJ0enN3d2NH?=
 =?utf-8?B?dmQ5eFdxRFpRcmRlWGUyTTA3bjA3Sm8zZkRhcUtjQkZGZk8yTGZ2UVp4MUho?=
 =?utf-8?B?Um9hTExsbTNDSzJrOVpSNXVEZ3B2ZFduY28vYU9TNlBNKy8waVNuWHFQN282?=
 =?utf-8?B?bjlscm9KSDIrTTlsK01RSVRjcjI2bGgyOXNVS0xDRmNTVkpmWFYycnNuNHRB?=
 =?utf-8?B?czdVemtuUG9PNUxUbE5KYnBxMko1TUc5QUtWVGtOWGNpVWsvV0lIVTUxUzFT?=
 =?utf-8?B?bXZGWkUvei9Oa3hYYkhFZFcrYkJaOUJoVXlTdjE1d1IzZ2lvcm9Uc1FSVzAw?=
 =?utf-8?B?cklSQ1g2ZFZ3UTlxc2FEWjM4T2gzcHltY0JmTXNsbDFQVTE0RDdwWlZUMHNN?=
 =?utf-8?B?b1JVWHRQQ3lqQlVkZnFZRE5iMzRISitQbENSc0pwTE5keDZXNDNFNit4WEoy?=
 =?utf-8?B?SThuTVUyN1hmZTkyV2Y1VlViT1NuRldiMm9YQmNiSWhMWGprdmVVUklUdWtl?=
 =?utf-8?B?SXJFMG80UVhlSmtSRkVuaFI5dGlrKytnbHRjNmVCRWwwWGJrQkw3cW1Fb052?=
 =?utf-8?B?dGhhZlBFTFZvbUgrVEtlRzlzOHBYTGxaMnJmbjlRckxPMGpDdHZDS0FUcko1?=
 =?utf-8?B?V0JwUDRvYUswbCtENU10cDVVeUdqcC90cGNGWHhVZVRVNFNOdWErQlFqdFRp?=
 =?utf-8?B?UDRHcHRjYnU2N1U2SittVExWdzZZMmJjYkM2QkhUUFpZb0dqU2dEV2JkMlVE?=
 =?utf-8?B?Zkt5Y2p4R2hQQU5NaWYyaE5Wb25XWDliaWtOejEwVEk3ZDh1dmdzcGpBZ05H?=
 =?utf-8?B?U0Nxa1hUOEpwSmhIRVFMRzY3bENIQnc1VkF5ckYzeWNLZjlMdnRTWEEzcmQ4?=
 =?utf-8?B?RTdIZUlST2htOGZYM21CMUxmaXhndFE1NzBvcGtQUmQ1eFF4Zk1JUjkyWCt6?=
 =?utf-8?B?emJiMFNGWmtVVmlvbldaZWt6bjA5TlUxU3FiVXF5ZTgwNkdxY3RRNDkvdnpn?=
 =?utf-8?B?alkrS3ROalYyUVRtZlVzSXhUZFdiOHpyM0NGVjNnMTNDWFpvQTJhSlBFR2p0?=
 =?utf-8?B?NjdEQ0R3bDFFcXFuN2E4TU1WclFEWEdsTUVIbHAvK3dyLzdZejZFSVNKTG1l?=
 =?utf-8?B?TlR6REJkaUdYdGxkY0ZGWjhZV1NXUUlJTTEwS3YzaC9YQnJOU2lhMERROEZj?=
 =?utf-8?B?dHBYRkwvbTJIam9Qb3lXZ1VjZmd3UXRnSEUva3N1c2tpNlYxVkdQdFZGNlNo?=
 =?utf-8?B?YmVXbUN5cmVHQ25ET21oaDZmVzgwSTY2YkFBSERQNnphRkxrU3k0WXlTMHBP?=
 =?utf-8?B?NEJ5YllodmZnbWNyVnJQRFVDbWdmRGRkMURYYWZhMWUrV0RvL2QxRUQ0RlVI?=
 =?utf-8?B?MURMNkdLakNIVUozMVpNREFDTDVzQzgwVm1UdEJraVhQOTlNZnZIOFNGM0tH?=
 =?utf-8?B?SER3NE1rOTNOWE9XQXN0WXdzSWhLYytlMTZPcm9RK1Z2SnRWUUNIazFsd2NZ?=
 =?utf-8?B?ZElpRlNubDcyL2VreW5xbDFQNEtqNkRSbU5rQ1NDMmhiVnMzZmE1QnI3Nk95?=
 =?utf-8?B?bUZnQThHQkF2TSs4YnZVN0RVazdwK1hidFBYZXFhOHQvdllrcDYxRXhkSGl5?=
 =?utf-8?B?Sk1MWk5VOUZrWHNDMmVxK2JqVElzazBOYXQwdmh0OE9xRU55Qy9kM0tzUGgz?=
 =?utf-8?B?Ulk1S0lzWm53dEwvUjBPZXRCb3pHUU5VYVVkcnIyVFlaNm9icU9RbThtUHdC?=
 =?utf-8?Q?h1B23kFGe+I/PArjDFFyi3S8H7RkQRwgNBIAo=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <2E4AE3057AF4994DA9C1A2883F3D51E8@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB10746
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM4PEPF00027A67.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	89d11b77-d8b2-48b6-b4f9-08dcffe38971
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|14060799003|35042699022|36860700013|376014|1800799024|82310400026;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?L1hUcEx2aHErc0NDcnZSWjQ1bUZnNnJ4cW43L0ZwRVZMM0VXaEdnSWVOUmhQ?=
 =?utf-8?B?R0d0YTE4aDAwMWtQaVF3NXVUN1A0Lzh4MUFyWUVHb3Q2TzBPZlg1WGMyTG41?=
 =?utf-8?B?NmZtN1FEalpuUXdTN0NUNWhQV3h2ZzRRdGtQTFJIUjZlVklJZW5QM0NCSHRa?=
 =?utf-8?B?dGN6dFpPMUgrSjJCUU1acHBKWGFUTlhKWkhQVGNxaGV0R0o5aG0rU2pwdEth?=
 =?utf-8?B?QzlFMkVHWUh6OVlLNUFxemw2d0dOdFhuMEdYWUtqOXdKNGE1YVY5QzQ5WUFW?=
 =?utf-8?B?L1d1QzJ6UnQ2NUZRR3h5ajY2dGhzUk9Xb2U1TkdrMWx6UHRQTHpPSGtlL29P?=
 =?utf-8?B?b1hRKy9vSnhFTDNCM2JpTGVZVWdybGxvTzAxOHJZNERYcGZ0UFZVWEtqcnJl?=
 =?utf-8?B?eUtMSzM4bUhZbS9jK1VPYUNCaVlPejA4VXJDbEk2YlIzN0NqTjNFWk1qTUlt?=
 =?utf-8?B?SGpSVzhuTDh1NGc2Zy9TWXY5RytZVjZxbE0wbU1pc09LSFVPZVo1YlErSWhX?=
 =?utf-8?B?NThVdlA0UHdvTnl1dUFUcXhIdkR5VXJOOHVsQSt2cXBwdXl5ZTBKdjlKWnIv?=
 =?utf-8?B?VUlTQTRzVmJkeGZOSm5OVzlyUTArM2dEVk9FYjIwdGdxMTBBbWlPNkFDSjVv?=
 =?utf-8?B?bFZQdlZTdnArNWd5dXB0cHpRVGZ2b01MWG1OV2ZaTkw1NnVPNW9xbm5nQnlh?=
 =?utf-8?B?eWVXM1lqZVE5Ynd5US9ZaUo4MkRLamU5bm5velcybUpSaTNIdlkyNGdNTlVC?=
 =?utf-8?B?aURXM0xESDJWM0ZESll0dDkvYWI2VEl3ZmNKWTZXMjRVSEt2Q2VSWG9XM1FD?=
 =?utf-8?B?VDZ3WVVPaHBUSHgxbXptb3R0R0lzejFrU3ZrcmVZY3ppR1Vla3hYMVNydHpZ?=
 =?utf-8?B?WnQ3QkhqeXVCMTFocThyWFQvMk54YnlLdzA5VHBGdTdRUWZUMnYvYzhRb3F5?=
 =?utf-8?B?WWhCMTNXc2VtVGxMdUlHeWdFNDd3eDJKUGM2blVsWDBDRHVUZ1VlU3V0ZTM1?=
 =?utf-8?B?bG1KaVNhNysxUURqTW1ibnZXN3M2MzNodUw4c3M4blFvS0FySzdlaVJwb0R1?=
 =?utf-8?B?OXk0SENtRHRGbVk1dXN3NG9UdmtBNXhEbE9mWC9nV0lVdnMvV25xa1NuTWFY?=
 =?utf-8?B?NUVkOXdGRFBteHZheXRWNGtCYkpZSzNTTEptTzFHbTBFV1QvZ2ZxQXh3TjBs?=
 =?utf-8?B?ckFVQldUUUJ0b3lETjUzTDhST0xKcGV4WnVMakVJVGdHTXR2Mi9VU2VpcFdC?=
 =?utf-8?B?ZnAvSEJQTkJRSFRIMm9VOVhZc1JCeEZPQVN0cHR4VTJxNytWT2hwUDNYVHFK?=
 =?utf-8?B?bDFacnE4bTU4d2g2aFZZcnEvU1ArQ0lURUJNYmpkWm40U1hRR1VZYWxxSkJS?=
 =?utf-8?B?SkRPTFRZdHF1eFpFT1V2SGFiampKc2FOWENQMXVidUY1bHErcndNbW1sY3d1?=
 =?utf-8?B?WThUeXJPSWJyRmpPTzA3cE5Yd3B6THh5aG5Yb2JDSXV2QnZsdzZZNnpiNVF6?=
 =?utf-8?B?SmR6T3RnSEd5SkFJRjd3VGhFS2NXL2JlU3JpMERUNVlOalQwcXRpMDRjM1Vm?=
 =?utf-8?B?ZGtralc5cVltZWtJZnhhRHhnTmxhc2RudFo3aFE4OGhlT2MrSUFSczJqZUVw?=
 =?utf-8?B?SVpmeGQyWnlmZDVqRVBsYXdkQ201UU04ZGJHcERKeFFuL1hqUWN3M2xWUWto?=
 =?utf-8?B?ZFRXNDA3UkV6VDJJQVcxdW85SXRGSjcrUkVrZDh4Mkg2dzV2YmorOXZPUFdV?=
 =?utf-8?B?ektSTi85SXN1aFdOdUg4V1FKRGxET3dFb1JZYUhVamJIdmxHWTJySWlkdmZ5?=
 =?utf-8?B?UzZ1aXpsNlQ1bnIrYkRhSCt0YlhmK213ZDhoSUFJNVgrNkZEd0pqdUZiVUkx?=
 =?utf-8?B?TXNzSW9ZZGcwZytURklhNUhtOXZXU3Bya2F5MUtQTGpXNFE9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230040)(14060799003)(35042699022)(36860700013)(376014)(1800799024)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2024 10:53:19.7923
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a3807845-4e14-4f25-8ad2-08dcffe38ecf
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM4PEPF00027A67.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB8658
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 08 Nov 2024 10:53:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13488

T24gOCBOb3YgMjAyNCwgYXQgMDY6MzMsIEFybm8gU3RlZmZlbnMgPHN0YXJAZ214LmxpPiB3cm90
ZToNCj4gDQo+IE9uIDExLzcvMjQgMjI6NDEsIFJvc3MgQnVydG9uIHdyb3RlOg0KPj4gT24gNiBO
b3YgMjAyNCwgYXQgMTc6NDIsIFN0ZXZlIHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3JnIDxzdGFy
PWdteC5saUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3cm90ZToNCj4+PiBGb2xsb3cgdGhlIHBh
dGggb2YgcmVjaXBlcyBvZiBrZXJuZWwgb3IgZ2NjIGlzIHJhdGhlciBmcnVzdHJhdGluZyBmb3Ig
YQ0KPj4+IG5ld2JlZS4gSGF2aW5nIGEgcmVjaXBlIGp1c3QgZm9yIGRvd25sb2FkIHNlZW1zIG5v
dCBhIGdvb2QgaWRlYSwNCj4+PiBkZXBlbmRlbmNpZXMgb2YgcmVjaXBlcyBzZWVtIG5vdCB0byB3
b3JrLCBhcyBkb3dubG9hZCByZWNpcGUgY3JlYXRlcyBubw0KPj4+IHJlYWwgb3V0cHV0Lg0KPj4+
IFdoYXQgSSBkaWQgbm93LCBJIGNyZWF0ZWQgb25lIHN0YW5kYXJkIHJlY2lwZUEgdGhhdCBjaGVj
a3MgYWxsIG91dCBhbmQNCj4+PiByZWFsbHkgZG9lcyBzb21ldGhpbmcgdGhhdCBpcyBuZWVkZWQN
Cj4+PiBUaGUgb3RoZXIgcmVjaXBlc0IsQywuLi4gZGVwZW5kIG9uIHJlY2lwZUEgYW5kIGluIHRo
ZWlyIGRvX2luc3RhbGwgKEkNCj4+PiBqdXN0IHdhbnQgdG8gcGljayBzb21lIGZpbGVzIG91dCBv
ZiByZXBvIHRoYXQgaXMgY2hlY2tlZCBvdXQgaW4gcmVjaXBlQSkNCj4+PiBJIGZpZ3VyZSBvdXQg
dGhlIGZvbGRlciBuYW1lIGJ5IGp1c3QgaWdub3JpbmcgdGhlIChmb3IgQiwgQywgRC4uLikNCj4+
PiB1bmtub3duIGdpdCBoYXNoLg0KPj4gDQo+PiBXaGVyZSBhcmUgeW91IHBpY2tpbmcgdGhlIGZp
bGVzIGZyb20gaW4gdGhlIG90aGVyIHJlY2lwZXM/DQo+PiANCj4+IFJvc3MNCj4gDQo+IE5vdCBz
dXJlIEkgdW5kZXJzdG9vZCB5b3VyIHF1ZXN0aW9uLg0KPiBSZWNpcGVBIGZldGNoZXMgZGF0YSBv
ZiByZXBvIGFuZCB1c2VzIGZldyBmaWxlcyBvdXQgb2YgaXQgdG8gYmVjb21lIHBhcnQNCj4gb2Yg
dGhlIGZpbmFsIGltYWdlIChsZXRzIGFzc3VtZSBhIGxpYikNCj4gQWxzbyBpdCBzYXZlIGEgZmls
ZW5hbWUgd2l0aCBsb2NhdGlvbiBvZiB0aGlzIGZldGNoZWQgZ2l0IHJlcG8gZm9sZGVyIGluDQo+
IHRtcC93b3JrIChteV9jb21tb25fZ2l0X3JlcG9fbG9jYXRpb24udHh0KQ0KPiBSZWNpcGVCLEMs
RCAuLi4gZGVwZW5kIG9uIFJlY2lwZUEgYW5kIHJlYWQgdGhhdCBmaWxlIGFuZCBjYW4gdXNlIGRh
dGENCj4gZnJvbSB0aGF0LiBFYWNoIHJlY2lwZSB1c2VzIG90aGVyIGZpbGVzIG91dCBvZiB0aGlz
IHJlcG8gYWJvdmUuDQo+IFRoYXQgd29ya3Mgc28gZmFyLg0KDQpZb3XigJlsbCBuZWVkIHRvIGJl
IGNhcmVmdWwgd2l0aCB5b3VyIHRhc2sgZGVwZW5kZW5jaWVzIGFuZCBob3cgd29yayBkaXIgYmVo
YXZlcyBvbiBjbGVhbiBidWlsZHMgd2l0aCBzc3RhdGUgaW52b2x2ZWQuICANCg0KUm9zcw==

