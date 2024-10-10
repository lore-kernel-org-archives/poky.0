Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B02D2444C
	for <webhook@archiver.kernel.org>; Thu, 10 Oct 2024 20:08:54 +0000 (UTC)
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (EUR02-VI1-obe.outbound.protection.outlook.com [40.107.241.54])
 by mx.groups.io with SMTP id smtpd.web11.54286.1728590929830431344
 for <poky@lists.yoctoproject.org>;
 Thu, 10 Oct 2024 13:08:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=mNaX6BFE;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=mNaX6BFE;
 spf=pass (domain: arm.com, ip: 40.107.241.54, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=v0+2dv1qrZRUJ4nfip83oqt4sE73rUeAEQaYw+BG36I7bYRuyM8OFFQVBhotMJzRVRq4nXbNw3TzZbRgPbLJDM/e25sGMZzsB5xXhSXU3SfbzF9TsudqOao8vvp5GZKtI8jLgLlkWZqnwalut8D5rpfAOAV6SBJoehMDJGxvVzpZR3obgOU+9Zo3N2rj1yCbjftfv5kmYJM/Pm8U4TS45baKUAcDozwwbd6t+aa5EVhROAjheUgTNVbWgohBxjaNpYBSDMBxMPsFbGafEJ+w5OGI1oeReu5JPLBl6ZS0o2n9cJZ14k9UXVoT46urTIEI2y/FJl/eAsNUhOHcsvmvUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PxYvHGyvcuvKiq3ENRoL8/CUO0wAs6EtmFq4FlMnQXQ=;
 b=iPGUNhO2LxorHrwr3LzESbG0xOHcwmQkfouCBORg6ARsfhz/bkN095X6ex0G3PvVsfW9pmCdl5YTc0vaYoSzBIP6ka8v/3UTJJcEd583AMmRTLsP/w4sBoh50W/l6Jw+aNpZ0Q7+BRpnuiitXZ5EQ4bouYeHDs0f000oYm0Cp6PlCEPBBYKdpNqp/RWjwH/IVWvRq42m36Fr9g9y2MzhV9nQGvyg3vvL/ZPiiRulQE9frpNPCSHQhm9syPC4IC3rRbQgIVkuYrHTb16P2DfeuAAv0JgnJnvmKmx3aUS2x3ISV8dZBcpGOHI27XmPvhOjE0socDS7Ayhbcip28fmIsQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PxYvHGyvcuvKiq3ENRoL8/CUO0wAs6EtmFq4FlMnQXQ=;
 b=mNaX6BFEtGgSUzeWdPvXi8bD4abSkiitw5UkS8By1g7/UbO6EB0sFlkkmwNlEtRGo9IBVGhlog0zV5kEsflvBUNXrItuO/Y4efCvyAMAHWueMyvLTUOVRg443PV0JS2ww5j5qAD1gROPVCXCkwMMKLdCb0AnHOsOIv5qMZGQ32c=
Received: from DB3PR06CA0024.eurprd06.prod.outlook.com (2603:10a6:8:1::37) by
 DU0PR08MB8638.eurprd08.prod.outlook.com (2603:10a6:10:402::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8048.16; Thu, 10 Oct 2024 20:08:44 +0000
Received: from DU6PEPF0000B61C.eurprd02.prod.outlook.com
 (2603:10a6:8:1:cafe::e0) by DB3PR06CA0024.outlook.office365.com
 (2603:10a6:8:1::37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.20 via Frontend
 Transport; Thu, 10 Oct 2024 20:08:44 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU6PEPF0000B61C.mail.protection.outlook.com (10.167.8.135) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8048.13
 via Frontend Transport; Thu, 10 Oct 2024 20:08:43 +0000
Received: ("Tessian outbound 60a4253641a2:v473"); Thu, 10 Oct 2024 20:08:43 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: e473bf76a03c2fe8
X-TessianGatewayMetadata: OHkE7FtdjJpd8+Fwx8GpDZWoBVUD2ZHS6Joi0u6Ghh3a5gFMR+eAPeFFPpflvM6aBg8Em1c4D8E2QpnS647lrJXMIE8QZqjPaiW5YJf0Gb1zrWGkTf7lFKz2MsXDcEdb61MztcthfiP9ecfwevx2f138q1tpOsZASIBzcImQMn0=
X-CR-MTA-TID: 64aa7808
Received: from L1bae2da8cd6c.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 5A7F0D01-945B-43C0-B7BD-E68BB676614B.1;
	Thu, 10 Oct 2024 20:08:37 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id L1bae2da8cd6c.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 10 Oct 2024 20:08:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HlMQx3GXwCeQlsznduPW3BT/m1pbazQNwTDnp2enO7IU+zQ6UDyOT/nzpsLtOI9eLmxzt+sSVkBaCU8pJRqQIj/XSoTIowJ7n7jV5hxRpOiyaM48cpfoauIGIELNOn6Vgq6diuIzM0db9vdl0tfpUgkGL9TM/EbyxK0rH7TGTz37EPC86Eo6XaN+w7fAkHHbjOX3GPjWMZHrfdQLUAMoHAmu4uJKE/OIRooBNVAVIaRkuZxIQ1S8oaVGrtmXGIAx6T0Mi9vam+Gwf7+KkDpYu9O/E1vjEIgCOcoa5gUAtBvPA9tKlL1hOE8mDdwkQJuLSHSKbQNsW9cPghBa6eImaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PxYvHGyvcuvKiq3ENRoL8/CUO0wAs6EtmFq4FlMnQXQ=;
 b=a0rbopP2aqDubjP0kFOugmHuMNodaeUZn63CXoNxjgoZzJ0sx+5ubrPqmRIjTuC6TEARpiFIh8MzKCKSNYVfy2FXKOlljTc+OzKT9uszr0laEIHanmPzeay7Jx1womcdcZfmHziDu1icgeJlD8gg88KgGREIyhbK76OOWUahxO4oUGEcflHZ90LT1uxHWUiR6t07cGuERJWRPPBJj0dq6pV+z7mjQqAhD2pKQCA05G1vwenk8X8WtdAXFVVT9oZ3Xu1ApJgTN6K/+dN/iPAzsxTqRqlHF3DUBy70csXgEI/E6V+sWBaRgK7IQznT7j0Z+qPvlvPbfxE7bDc8N3tSWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PxYvHGyvcuvKiq3ENRoL8/CUO0wAs6EtmFq4FlMnQXQ=;
 b=mNaX6BFEtGgSUzeWdPvXi8bD4abSkiitw5UkS8By1g7/UbO6EB0sFlkkmwNlEtRGo9IBVGhlog0zV5kEsflvBUNXrItuO/Y4efCvyAMAHWueMyvLTUOVRg443PV0JS2ww5j5qAD1gROPVCXCkwMMKLdCb0AnHOsOIv5qMZGQ32c=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS2PR08MB8334.eurprd08.prod.outlook.com (2603:10a6:20b:556::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.23; Thu, 10 Oct
 2024 20:08:35 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%3]) with mapi id 15.20.8048.013; Thu, 10 Oct 2024
 20:08:35 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "jjvazha@yahoo.com" <jjvazha@yahoo.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] ln -rs throws suntax error in do_populate_sysroot:append()
Thread-Topic: [poky] ln -rs throws suntax error in
 do_populate_sysroot:append()
Thread-Index: AQHbG0XizT1nvE+JPUOQud8UWsaQE7KAVlIAgAATdAA=
Date: Thu, 10 Oct 2024 20:08:35 +0000
Message-ID: <83529DC7-F636-42AD-950A-40943EA52519@arm.com>
References: <LpIP.1728586485106072829.hLnO@lists.yoctoproject.org>
 <Groupsio.1.LpIP.1728586485106072829.hLnO@lists.yoctoproject.org>
In-Reply-To: <Groupsio.1.LpIP.1728586485106072829.hLnO@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3776.700.51.11.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS2PR08MB8334:EE_|DU6PEPF0000B61C:EE_|DU0PR08MB8638:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ace86ef-d7dc-444b-bfef-08dce9675784
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?YWtJemp5eUFFWGpncWMyd21PR21aNCtiQlJIUStQTFpkNyt1YzBUSjBRU3ZO?=
 =?utf-8?B?TXVFWERpNWhqWHlTZmU3RUYrbVo3L1dtYUlHM3g3USttcGZ6NkRNRXNzRXZ2?=
 =?utf-8?B?UlFtY2dhZEFxQ0Noa3JCVVMyVUg3T2dTL2x2VGpnMUdVQmZiL1VoamdiNU1Q?=
 =?utf-8?B?WWVyMHVvRVFTWk9FUU01c2tka1FJNHVqQ3RTTjIrL2ZTM3VxZ2pSMS9wOURw?=
 =?utf-8?B?ZGM3cWlWL2ZPc3RaUDNFY0tpV2tYeXB4WlJoWHJMbXB4RU5iY3dtNElHUU41?=
 =?utf-8?B?NXNRVk5LK0FPOVp1OWpxNTRTWmtsdzhJRWZnZlljekFBVFVYRzdXZCszNnND?=
 =?utf-8?B?MmlMN3VjdVhCNUxTSll1MU43dTFMb1VJTEZTRUE4RFBoOThqMmtXZ2FCalNP?=
 =?utf-8?B?d1lPWmRsRmVkVWg4QzRTTEhYZXZyMlZCSEhSVFBpMi9NLzBCR3NtWkRXcWt2?=
 =?utf-8?B?M0Njai9Ed1NmbVBuS016Ykg3Y0VnTU15RVowWDNwRHFVK0Vjb2FYaUhBVFov?=
 =?utf-8?B?UjF5MDRMZVFCSFhpSmlRbzZYZnZJcElhbFB4aWFrZTY2MU9IRkhFeWlHSWNE?=
 =?utf-8?B?eTZSNFdDRlBHSEUzQ2kzS1Yyb2o5bFBEa3lRWWIyT0FCNU4zUkNmWWVIdG94?=
 =?utf-8?B?SGs5NUR3eUVLRDh1eU1jUVQyZFJNZ1BZRksvZkhsT2hMTFlhTUF1WHhZcHBN?=
 =?utf-8?B?QU5IV1AxTEUvWTNBQWh1OE50em03QXZzQXhuTTBuU0VQcDFiRW9laXNHU2Ji?=
 =?utf-8?B?LzVIVzFLSit3VHU4b3lFK1E4NmNhNDdNS21TcnhCTGlnTWZodGxwUDkwY0V4?=
 =?utf-8?B?aCtRcUlVanZ0UXBtakUrV0hjVXh4ZGVmdXVndGtoZGFCbkJ2RkJrdElwb05m?=
 =?utf-8?B?akM1U05MdDVHRFUzU0Z6dUZqRThrMFA0eU44cXZJSmFWd1RHZlVCZUl1VGRM?=
 =?utf-8?B?NkhmMjlaZDRkLy9WaklrVHQzOXBEMFdRc0JtNkFINGZZdENtY2lTKy83NURL?=
 =?utf-8?B?NUlYNGpFSlZDUmJzd3pzQ1Rja3pUU21zWHVOdHNlM2k1S3dmK1lNUDhZd3V5?=
 =?utf-8?B?WEJmcUJ6MWFPaG15UjFCMU9zdXRXVlMxTFFaSXZEZGtvU0R4Y3RPUnhNZnJR?=
 =?utf-8?B?Y1dTdC9iTmt4SU1NK0pvSG0vS1Q2dVpvZExXRXdWK0EzZGpyaTV2NnZqUVpy?=
 =?utf-8?B?QTY3Y3paeEpKR3VjaFZncFFFdGNFYVAwZlZXSDR1Q0h3bDVReEtIb2JJVDdW?=
 =?utf-8?B?VVF6MUgrWThwbHVQb2hFUTIzMVVoLzRhSE1SZElkc1l1Ym9kK25xR2NLaFZP?=
 =?utf-8?B?eHJXeEtZMkNuZmhnT0lRTEZQM2ExN1ZWcXRReE5wN3ZXVlU3QmhyMlB5VEY4?=
 =?utf-8?B?WVdIazNOR0JaVnRLaFluM3NuSThwWEdYZ2twUHE4WllSNWx0YXRFTGFrSHA5?=
 =?utf-8?B?Vkc2TnZoQnZiU0ZaeGg1dGVEclNwOUE2eE02akJLeTIxM20wbkZWaEZtdC9v?=
 =?utf-8?B?RWMybjRqaDg0NWRnbEdwTmZGa0dHU3A3WWkyM2VIUC9KeHY3K3huNUlPeUhy?=
 =?utf-8?B?N0x2VGJLUHFqVWFrLzJVcHpqNDYrdzhQc01VdDd5OUJiQmE1K3dYUnhBNFJl?=
 =?utf-8?B?Q2FQbFIrYzVqMThtVnYrbGZjMENvZExQb21tRjcvU2w0Nmk4ZER6aHhuMnNE?=
 =?utf-8?B?K2xUTWRnRG9uZmNvWGtPRFpvOVdBQTlhZmNMMk1qWUk3VEs5UisrNjl1Zy96?=
 =?utf-8?B?Q2IvV3lxWDNkcC9FdFlPRkpzOHQ2SVlSb3gyOGlyY3BUUXc2MmZvWklzTTRy?=
 =?utf-8?B?c3doVmdPcDNjQnBjblJCdz09?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <0F10BEF5B8FC90448CF01B9D144158A6@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB8334
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU6PEPF0000B61C.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	ba0d9a17-2dfe-40ff-f84a-08dce9675256
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|36860700013|35042699022|376014|82310400026|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?cjNiZHd0clB1dDJrSkdlL1VYSll1RkVPYkRBaVBPeDI5engrSHhMVFg5dHdX?=
 =?utf-8?B?Z3lmdHd6MFY0SGRkSDNxcUpPcWVpcjh2WnQ3VCtxMjdpQVFlb2xUeXg3RTBL?=
 =?utf-8?B?UmFXS3VBT09WdXJEUlM1V01rbWF4bkl5Mi9XNjhjajRzWlYzUE0wVUYvZ1hp?=
 =?utf-8?B?K0NUWW85SzB6WVNrN3pWcWZSdUVCRVhRbDd3MnFBa2RXdWs4WlBYZWtOUzk2?=
 =?utf-8?B?THpmK2ZSajRiMGhNRGdlZHNYZ0JSeUwrWlA4U0NXSzQvRERZV0FldlpXNGJ4?=
 =?utf-8?B?NXhESmlhM2VaSW9YbHZZaEpsNFhmVG1IVzdkbU01V1VGU3BuNGtTWWtZOVdr?=
 =?utf-8?B?eEU4bDN1Tit5d2ZxallrQ0RUb3RkdjlJbmxzc2dKbG5lcDgzVW8rNXJDeWVD?=
 =?utf-8?B?ZEs0MUh0TERiY1ZJSG9VV0lqZTZUMm91NDRmUHA0aXp4amdHdE9UaXp2TWJC?=
 =?utf-8?B?R1UwZWxOdlhLVGRnOS9EMTc5ZkZTYWROaEhQUWJpbURGTXlKMVF6ZHFxRUhR?=
 =?utf-8?B?akY2WWc0WVRWWTFYSHdRWXhLSm4xV2RmK0VQcnJyN3ZoRkI2T3VLdjVORlFt?=
 =?utf-8?B?dmpLcm92R25zU1p2cHhFblFnTU50c2ZxbHZnOXE3NkxZN1pBdDQydHNrQXh3?=
 =?utf-8?B?K09Qa0x6ME1Xd1VQMTFMN1VTbkFlOUtSdzMwQ1NQMmpTM0FtTkFhN0ZsM1c3?=
 =?utf-8?B?MlRSQU03eFl5U0tFQk82UFpYNWhGcWl4L0pnMmEwUUU4WXVVYVp3QitJc2da?=
 =?utf-8?B?dE5idjVBbGoyNVJ0OHNZaDlpUFlTNTh5WURLWmtDeDhzUlRGbkFUSjNzUUZY?=
 =?utf-8?B?RnBSWmNzSTBzRW8xLzFHOVhxOEljZGgrRFBFVUlHTGMvU1NLNFQ0NnF2WXhW?=
 =?utf-8?B?eVZhWEh5UndDUjMzZlBLZ3NiWTlqWU9jZU16TGswbDB4Mk5IbGp3NFhTczFX?=
 =?utf-8?B?eGxFam1DRldhVGp2Nk95TmlsQWVWSVIxeUFXQlZJZVFnRVV0eE5EdU1kcElY?=
 =?utf-8?B?UEYwUjdhbEJkc0NWQVpzTEtSWXFTdXEvV3UvbGpFVm9tZDQ3S3NVMXlkNHBV?=
 =?utf-8?B?UjlQRzBReVFua2pFU1JKZXNUMWJ1QU9YazdpWEp0MGNxSzhqekxIekovWHN6?=
 =?utf-8?B?bVRES0wyWjBWWGxMVlYxTEQyN0RFWGpzRjgrRlp6SENsWWtTbFpZaDdrQTl6?=
 =?utf-8?B?QUptSGNrWEp1NHp4eFdKUFplMTEvZVc4ajMwMGNXeUNOV212RmovMHJ6bHF1?=
 =?utf-8?B?Z2VkbnRaSVk5TU1OaDljQmFWTVJDSkFpU2MyRjVDeUYzWE1YR3lrY0g5eHBw?=
 =?utf-8?B?UHJYdVpWZ2tQN01uTXNnWVpvMUZLSS9XOGZvbHFZdGpjZENIM1ltNGRuSDBn?=
 =?utf-8?B?dXJka0lhaXlZMTFNUDV4cERMd2lrT3NieXlsamNqM3cwS3F2ODhqeWdrbEZt?=
 =?utf-8?B?QnpoamtGekRyOXA4c1NlMDRhRWtBMllMQVo2dStxS0JKQW84cTIvQlRnQTJ0?=
 =?utf-8?B?NzNXVUlNZmM4TS9wYWcvUUh3cGVHaGVCY25MK29adjVjdEdteTgvRThuanpv?=
 =?utf-8?B?VDBOTlJLc1VLTnpVRVZkNUdFSk9WQnpZK0tLQjY3eGN6bisva01JajNWTCtj?=
 =?utf-8?B?Mk0xVlpYdDlWbjFXeEwySGt6dzNXUXo5Wm05Yy9jZkpKNUhJek9iZFViUTdR?=
 =?utf-8?B?WEdRWXgyRFFIZzNhWUtaUXA0ZFYyWkFHTXAwVGpNWSswbUU4U0VBeWRTZU5N?=
 =?utf-8?B?OUhzVjRQTFh2M1ZjeXJ3ZzI0L1Q2eSs0MmRwM1ZjdUhQV0pwMU9XcG54alFz?=
 =?utf-8?B?NFBnWWJMTmZ4eExVNjNhTG9pam1hVURXU2lMRHJlK1BycDRwK0xvQTVyUHFJ?=
 =?utf-8?Q?7e4R9boe0AJin?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230040)(36860700013)(35042699022)(376014)(82310400026)(1800799024);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2024 20:08:43.8832
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ace86ef-d7dc-444b-bfef-08dce9675784
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU6PEPF0000B61C.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB8638
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 10 Oct 2024 20:08:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13453

T24gMTAgT2N0IDIwMjQsIGF0IDE5OjU4LCBKb2phbiB2aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9y
ZyA8amp2YXpoYT15YWhvby5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gd3JvdGU6DQo+ICAg
ICBJIGFkZGVkICBhbiBhcHBlbmQgZnVuY3Rpb24gbGlrZSB0aGlzIHNvIHRoYXQgbGliNjQgaXMg
YSBzb2Z0bGluayB0byBsaWIgLiBUaGUgc3RhZ2UNCj4gZG9fcG9wdWxhdGVfc3lzcm9vdDphcHBl
bmQoKSB7DQo+ICAgICBkc3RkaXIgPSBkLmdldFZhcignU1lTUk9PVF9ERVNURElSJykNCg0KVGhp
cyBpcyBQeXRob24uDQoNCj4gIyAgICBiYi53YXJuKCJERVNUIERJUiBzICclcyciICUgKGRzdGRp
cikpDQo+ICAgICBsbiAtcyAtciAke2RzdGRpcn0ke2xpYmRpcn0gJHtTWVNST09UX0RFU1RESVJ9
JHtwcmVmaXhfbmF0aXZlfS9saWI2NA0KDQpUaGlzIGlzIHNoZWxsLg0KDQpZb3UgbmVlZCB0byBw
aWNrIGEgbGFuZ3VhZ2UsIG9yIGluIHRoZSBjYXNlIG9mIGFuIDphcHBlbmQgdXNlIHRoZSBzYW1l
IGxhbmd1YWdlIGFzIHRoZSBmdW5jdGlvbiB5b3XigJlyZSBhcHBlbmRpbmcuDQoNCmRvX3BvcHVs
YXRlX3N5c3Jvb3QoKSBpcyBweXRob24sIHNvIHlvdSBuZWVkIHRvIHVzZSBweXRob24uDQoNCkZl
ZWxzIGxpa2UgYSBiZXR0ZXIgZml4IHdvdWxkIGJlIHRvIGFjdHVhbGx5IGZpeCB0aGUgYnVnIGlu
IHRoZSBTWVNST09UX0RJUlMgaGFuZGxpbmcgaW5zdGVhZCBvZiB0cnlpbmcgdG8gd29yayBhcm91
bmQgaXQuDQoNClJvc3MNCg0K

