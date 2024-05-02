Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 823BBC4345F
	for <webhook@archiver.kernel.org>; Thu,  2 May 2024 12:54:46 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.75])
 by mx.groups.io with SMTP id smtpd.web10.4474.1714654479751146468
 for <poky@lists.yoctoproject.org>;
 Thu, 02 May 2024 05:54:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=lFgLTuhW;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=lFgLTuhW;
 spf=pass (domain: arm.com, ip: 40.107.7.75, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=h1TGQkmKBiaIMzdZYqRh1zhbXPK/pJzaqNSvHJ1xQlmtXbGv2owk+YdaOGyqQxU0h6hHHIk59K7+tu7d3qFHof8zNxPvwM3oAefj+l+cVhPwNoRjtmyd2w4JemYic/j0f2yJSvBZujP9O/tpakJSeWkj+5ScyOHceMIU3OwW5BXO8sT7FS4ys9o0n/U9DSFwCa8faEjZi8szsmRNKOcZ3B5krtL+3PBvP5JommcBOD6dF8w9oSqo1jz6Wmgi0WBjGkT3bVvw6IVRAzvvENYi5tjQZ55IBTWG29XjTEAkTwW0x+RIkQfdj4sf8rj1CFqV0IL7RcnT/vpb4ANNupRkhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gRS6EqN7QCAchBT5vWC+Mghk+5N5JYmDcTGEI6p4HS8=;
 b=mZu8ZGkuIJLw6Mw9hKWIdavBld01yVUrphED4W2yT21tYxsYDIKWzg1rkkdSGV/WPvSEXJhU5kTxASWeEGV6witaGNLKsow/jc9TOvbJcBxs7FfEJWB4yFe2uObe/y667UeCLUOpQluhPlbMizW1dVPRA2mkxscgf+k2GkBauUgJFMmsjqlQc1xI9aEyR+a/spMydupqqohIQOq7yUYmqXppoJHHoN5MKokp8ism8V+TM4BoqF/IT199YIyUZpKAnNltLOZIurrz+GIuWBodag2IRNtPnMiRx0Z4qtJEwHMo2r75ZYaZiIVlVnm3wDquxN5B3eU8JZkAVPievG8Njg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gRS6EqN7QCAchBT5vWC+Mghk+5N5JYmDcTGEI6p4HS8=;
 b=lFgLTuhWiZ9jjzhEF3FRl0HTBXBb62O2ftHQxGc+m0IeCxXQ27sA8S3PM6jiB834lQcaMPLt18G/+RtQjBViKeVd1ZFcj6bvrzKgV4295j5vUzhhSavFn0lxNugHdO13L5NXdXZWXVQJlCfUnxB3um9bD6NPGo4y/iBYRvg6LmQ=
Received: from AS9P250CA0017.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:532::16)
 by DU0PR08MB9027.eurprd08.prod.outlook.com (2603:10a6:10:470::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.29; Thu, 2 May
 2024 12:54:31 +0000
Received: from AM2PEPF0001C715.eurprd05.prod.outlook.com
 (2603:10a6:20b:532:cafe::e9) by AS9P250CA0017.outlook.office365.com
 (2603:10a6:20b:532::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.35 via Frontend
 Transport; Thu, 2 May 2024 12:54:31 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM2PEPF0001C715.mail.protection.outlook.com (10.167.16.185) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7544.18
 via Frontend Transport; Thu, 2 May 2024 12:54:30 +0000
Received: ("Tessian outbound b7675f20d34d:v315"); Thu, 02 May 2024 12:54:30 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: f3438d9a32f75b8f
X-CR-MTA-TID: 64aa7808
Received: from 4e213ee953b9.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id F74FD35F-910C-45FF-9944-308487FD5A04.1;
	Thu, 02 May 2024 12:54:23 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 4e213ee953b9.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 02 May 2024 12:54:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LkGN5zF0U2c8tVyPjGd588xlYCcxR0YrKoOiOOBlkHH95uqtXYp1+TYetzG/UOjuh2FNVhukAzkxDcwPYkUCH9/Hjv5oxd2egOoNu/VlpzgM6aBPxOKDcSxhzKg9WHe+9FifBpvgM56bkkI/rj/t5qWzA0558qav0hujb3NA7jU+1gavR5aD+HP/8BIpVQ3rITkhaIpApvWiXte359oPJVF6a7Of429ZtVhpv+WhCtRrbX3f1pt9XlrKUuk/IBvOWBb887UC274aVqIVhCehDGsBKLyrPpXVYcQCz1lhm+fk1iZ3ZRAHjHKQRG44nEwm7pwQKILLOdLuDpwfRb6EEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gRS6EqN7QCAchBT5vWC+Mghk+5N5JYmDcTGEI6p4HS8=;
 b=nB3pcpg3r6AvMxUN2DlZi9f0OUdzjvNinoGcZRRAlLPs/dhhSw1aY2hqthQQwUAmY872grRDQDY2rSzBoaVmBQppJL5KebloQXpJx6OCr4XCdBEscMv0IiQBL9kw92HyVyCW5vO4PthX4aCZJX9Bfj72U8gOKYWywcAkHTMyjeQia/AYc5c9kT8mGfbtfVWtseMzKoixlBNuP/78tMThfZG6aLrxpBMg1hRMehGshx7xptGc/DwhARZVM2dAe0PgdbsWNUnrCLJtcGpTjbpj6wz7oFxb2/8w7aLtEOjnsU3vqGflEH1UytAgnIVW4uSXZSLnlaoWbXQNbxlPTO52cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gRS6EqN7QCAchBT5vWC+Mghk+5N5JYmDcTGEI6p4HS8=;
 b=lFgLTuhWiZ9jjzhEF3FRl0HTBXBb62O2ftHQxGc+m0IeCxXQ27sA8S3PM6jiB834lQcaMPLt18G/+RtQjBViKeVd1ZFcj6bvrzKgV4295j5vUzhhSavFn0lxNugHdO13L5NXdXZWXVQJlCfUnxB3um9bD6NPGo4y/iBYRvg6LmQ=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PA4PR08MB6191.eurprd08.prod.outlook.com (2603:10a6:102:f3::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.36; Thu, 2 May
 2024 12:54:22 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%4]) with mapi id 15.20.7544.029; Thu, 2 May 2024
 12:54:22 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "star@gmx.li" <star@gmx.li>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] avahi configuration (without d-bus/X11)
Thread-Topic: [poky] avahi configuration (without d-bus/X11)
Thread-Index: AQHanIhbUG+kUPYpnEKJGKki6aLK87GD5pgA
Date: Thu, 2 May 2024 12:54:22 +0000
Message-ID: <55CA67CE-8196-4E70-B2BD-D8C5BB95B0F9@arm.com>
References: <17995B12D8E7BA2D.25909@lists.yoctoproject.org>
 <55b9a7c9-3ac3-40f2-a3cb-44328a067499@gmx.li>
 <447234ef-efc0-4b35-b71c-b4988b34859f@gmx.li>
In-Reply-To: <447234ef-efc0-4b35-b71c-b4988b34859f@gmx.li>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.500.171.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PA4PR08MB6191:EE_|AM2PEPF0001C715:EE_|DU0PR08MB9027:EE_
X-MS-Office365-Filtering-Correlation-Id: a9c436af-12ae-434d-118c-08dc6aa701ed
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230031|1800799015|376005|366007|38070700009;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?MEpzamRXTDQ0alRVTGRjMjFCSW9KZjhqY3pJVWMvcHErenpDNXZjSHl5QVBG?=
 =?utf-8?B?OVNKblpLUEtUTXI1OUFDTGp3d3l6RWMvVDNIL2hhdFduakhGd21jKzd0VWMy?=
 =?utf-8?B?N3puZDRFbFVKOTJTWVNzaitzS2FTdlRyaVdyejhnS1F3MWJRL01PYmkrcjRE?=
 =?utf-8?B?UTB2akp5bWpGT25YcmZTNWMzV295Sy9SRXpLRmtwRkJySVlNaEFFTjFQWVd1?=
 =?utf-8?B?Y3NnQXZtaC9LZ2loczJDVkc3M3ZGT3V0bHBmTjNFTUsxN253eWJEcVFSdGo2?=
 =?utf-8?B?VXBuVkR0TFN5eHdlU2ljRURFaXc3ZzVuaTRRck9KQ1hxVGJHaEVmNjQ0N1g0?=
 =?utf-8?B?RTl3cEhFNzEzZjkrbEdWTjZnZ0dHVXJqcHZ2cTcyT1NVNDU0SjNnQ2tBT3Yx?=
 =?utf-8?B?TGdDemxWS29XUUpPSzE3Lyt1YitkSS81eGhSOVJCR0RWWDhwa0Y0YmdhQlBP?=
 =?utf-8?B?T2NUZGtQcXA4MWdRTmkyN2U2VmdqT2tFaEZCclVGdUJiMjJaQ0hTT1NYb25k?=
 =?utf-8?B?QXVSWTI4dHpRMytCclZ4VDRZN0ZSRnJHSklaeld4dTFQSmZKSVVRY3p4ekVW?=
 =?utf-8?B?WnNaZzFUam1vMCtseEV6UkZPaDhJU25GREZmWlg1REFGbWttRUFlZFdXTHRL?=
 =?utf-8?B?MUpRZksxRkNHRFc0cTVSOWpaZTk3b1d0VmFnS01DVzdieHJBNmJTZTNQeW5U?=
 =?utf-8?B?VG9sRC8xMW1SSTdRVStwM0UrVUFMUzBnNUdrVWRXRTNNTWU3US92SEk0cnIz?=
 =?utf-8?B?MlAvN244R1ovYmtKVmtiN091T1NIVFphWTk2cCtNaW00aTk2T0FVR3pGd3J2?=
 =?utf-8?B?NFJFSlJTeFRFaEFIdDRCNWxLdi9rUThJTmErbVhGdzNkYmt6c1poLzFlemlE?=
 =?utf-8?B?ZWRhYUg4TFd0emVucVRkVWpoVldWR1BwdEVLdjYrRmRld3c0TzlhWGVGU3NW?=
 =?utf-8?B?VkFISEYzQjQ5MjdWM2VYOERxZXV3WFF3WTNiYWI4dHhSOVVHNzFCNHc0bG5n?=
 =?utf-8?B?MGpMSHpyRHR0ckdKUktBR285b2lDV094SHFWang2UExNL3BHN1hXakZ5SjRS?=
 =?utf-8?B?RnZlZWZUcmxCbm5QcHREUDY0aW53ZUZEYkR0UU1jMlBDc3VKSTZ6VjFVSCtZ?=
 =?utf-8?B?Znptc003MmNmNVY3WUkvWDNkMkVzRGF6cDZGbC9jQWFDcVV6bEh1cEw3QnBM?=
 =?utf-8?B?ZUtNRW0xVGJjN2ZBL1orVjc4RExodWRVT1A1TFp5OWJ2SGtiVjNIWGhQNmFK?=
 =?utf-8?B?NVk3blBTaHlTeWhuMFdIUEJtZW1JeS9mUEc2V1BKMGFVL2ZLNVk3alZRczFn?=
 =?utf-8?B?dmJYN2RIenhkOVkrdEVXNkJJdTY4UksvSklSSWQ0LzFobHJEYzR2a24xWjRj?=
 =?utf-8?B?dWorYlZHNVpPbXVJU0plNWpXWFVwUDBUblUxU1EzTzc1WkhMS2hsWDVXOVNP?=
 =?utf-8?B?TEVhSFRPbTg4NXRhZnpnQlE1NEZMWVRIb1ByK1RONnM2Znp0YmZjanQvUFZh?=
 =?utf-8?B?QXd0STZvYjk3MVZIQWdPbXNRaTlwcTVueDB6Ky9TMTFONjllQ0FDaHJZZkVW?=
 =?utf-8?B?WmhoSnF6QVUzN2tsWU5vTFhPUitWdGFUenhQQVp1bStBRllxYkdBMUZwR1BJ?=
 =?utf-8?B?SG1iOUlYRjlTdGRSQk4zNzNtZVQ4Vzc5bUVPczhoWlRTS28vVFdSSE9oMTV3?=
 =?utf-8?B?OTlMOURwb3dGV1BJVUNCVlVTWk9OOElKK2hXTjVoSklBYjkxUE1ld2sxdUFW?=
 =?utf-8?B?YVkrOEt6QTcwY3ViTDE1cmJGNzJmYm42cDVtYzA0dmU2U2p5ZUFwZDV0TWZG?=
 =?utf-8?B?bVE5TndkT3lSbFEvRWtNUT09?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(366007)(38070700009);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <F45DD0EADA21744D9A2A3D6D185DF7F3@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR08MB6191
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM2PEPF0001C715.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	b6ee7b3c-71e3-42d6-5082-08dc6aa6fd2f
X-Microsoft-Antispam: BCL:0;ARA:13230031|36860700004|376005|1800799015;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?ZnBvZndLZzlPMEFZRTVuVTJaV2pxdnp5ckRYVksyblpwSy9VNzdXS1ZVb2do?=
 =?utf-8?B?UFhTNk56VFdkQmRPci9KZE1kbWR4bWhyWFdBSkV0cHJlSzBQdlVCejcyUWxL?=
 =?utf-8?B?OStFdWJFdnJuVWEzZGxtVTFHd2txRFNubEJtYlIySEJlZkNyMWI2cUxPdUpy?=
 =?utf-8?B?SzVjUnF2WFVvb3pxaXdMYVFxRmc3VlFsOWU4NDJOaVZQeHA1MFpDU0Zkc1Bq?=
 =?utf-8?B?bzI2emxxSnoyS1RVYjg0b3Z4WEFUcExBaGd3Lzh2Zm1WMkpNU2JMejNOaW8w?=
 =?utf-8?B?U095dEdZRUJ4aUg5NFl1bUpIU3Fqa05nTVN6SEthek53eHlaRGlITmtsVzlE?=
 =?utf-8?B?QXdQM0lCT3dER0NKa1JNeEZkVjFrUjVoa1ptb3Rxd1l3Ykhrbm5jVWJEb1Zq?=
 =?utf-8?B?WlNxRnhSbkY1a0dCTm9qM2JSSGpveEcwZUFBRlgyOHB3ZjRJZXo1RWtzUm1Q?=
 =?utf-8?B?K25FbjFwS3VlRnk4Z0FkS1kwY3pJeDZXUUxXeUozeGhYYXNWSHVBNGQzUlpE?=
 =?utf-8?B?L09LT010Yk52NWpKUzJUTjVQNTZ4TzRUT0VBMnBnZDd6KzB5TUxsU01YelBq?=
 =?utf-8?B?ejJjcGJvVlhEK2JhLzFvN0paUXYvS3Y4ckxTc1VKZ2tKdTRZSlBmaFlyV0pW?=
 =?utf-8?B?dUplR3JDQ2d5U2x0SHRteFBIYjZwc3NyOWhlcDhKSUIrNWRQUlkrd3djcVl1?=
 =?utf-8?B?VnU3bG4yMkdHSjRyUXJSekZsQ1RoWUpXR0F3bHkzNnowUlJ2U0laaGpWTGEz?=
 =?utf-8?B?OXVJVlZkbGx3R0c2VFpXMFR6MC9YZkgzbnFUYkZ4bU9aem5zUWZEb0hGeHJ3?=
 =?utf-8?B?VVU1Z21vM2NKOUpVWm9hL2s1OTVock9VU0E4V2ZhaGpOT3VCWWFrVnIrc1c1?=
 =?utf-8?B?dnJZdDZKNzBlcE9jNkVxOGtvVzNkMWhUZ014TEhTZEFkVHA0M1QzTFZKKzk0?=
 =?utf-8?B?OTNrcDNHUHhVeU5jNk9mZDJZTHZpQll5d2dBR2E0bVlIWFJNcTNvOVB5N2tX?=
 =?utf-8?B?Y3lUckx1Z2ZVN3MrUkFlM2MrTTBTR2xRQWlTVTIwaUY4dWRuWnZETXIvd29l?=
 =?utf-8?B?RHl0U2hHQjhxUmh1MXhuQnVUOE5NYXQ2V1FFYmc5U21WdXdLNVJrNHdFYW5n?=
 =?utf-8?B?WDFicnhRK3NoVGtWd1Jrb2p0OStGQXJ0RjA3U2ZjOWFZUVhTSkgyWm1iS3U1?=
 =?utf-8?B?Y0dLTGJKcFBhdUtKY1RremNHWkxhemlRcHpEWVVnaFREaUJZejV0STBKWW93?=
 =?utf-8?B?V09rRU5mSmZzeVVFMjJPa045R0pweUdGTDA5U0FjSjJFVHIwWDlSb29ETnMv?=
 =?utf-8?B?SU5wR1Q5MzJtNVFWVFFiVzVpUGJBbFcvMUFqL2JTVzM1dWxKdm1jZ1F3K3FF?=
 =?utf-8?B?bFVVWUwyWkprelRyaTRhTWszWjdZbWI1SDg3eDZSdXdqMHlJUlBrRDh1RGMz?=
 =?utf-8?B?VXhCUjJiNXZYU09EdnU5RW5FSFltSmRrbGY5ZDJSTENYM0txMlVDVFZOWTI1?=
 =?utf-8?B?UWc2ZDdhaUFmUGJqV1NvTE4zRXZCcklsdGtyeHJyQ2VkKys1YzgzczB3Q083?=
 =?utf-8?B?WE8vTDc4Vk1XeG5HMEtpVXFhY0FJdWdMUTMvNTQvNnUwSzcrQkhkS0RKRTBV?=
 =?utf-8?B?eDdOTWdBb1VWQ2V2K0JWOGJ4Mko2RGZDTVprc1NTUkNWODlpOVJNNlF0WGp3?=
 =?utf-8?B?VGJ0K2JBNzJnNnRiVlZGVTYvV25jMlJldCtIUDBTbjdkMWhhUE9GTEk3OW0r?=
 =?utf-8?B?WHg2d0p0eUM4cVhmTGozNktxdW1kV1hzSFUvT0VEN3J1dmRmalYvbkZqZSt0?=
 =?utf-8?Q?LEWQl45NvCPth2Pmdhm3c9iLo9YtZ/DTReYYs=3D?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(36860700004)(376005)(1800799015);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2024 12:54:30.3539
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a9c436af-12ae-434d-118c-08dc6aa701ed
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM2PEPF0001C715.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB9027
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 02 May 2024 12:54:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13337

T24gMiBNYXkgMjAyNCwgYXQgMTM6MDAsIFN0ZXZlIHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3Jn
IDxzdGFyPWdteC5saUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3cm90ZToNCj4gDQo+IEhlbGxv
LA0KPiBJIG5lZWQgdGhlIGF2YWhpIHRvIGFubm91bmNlIG15IGVtYmVkZGVkIGRldmljZSB0byBu
ZXR3b3JrIGFuZCBnaXZlIGl0DQo+IGFuIElQIGlmIERDSFAgaXMgbm90IHdvcmtpbmcuDQo+IE92
ZXIgdGhlIG5vcm1hbCAiYXZhaGktZGFlbW9uLmNvbmYiIEkgd2FudCB0byBkaXNhYmxlIGQtYnVz
IGFuZCBpcHY2Lg0KPiBUaGF0IGlzIHdvcmtpbmcgYnkgZG9faW5zdGFsbDphcHBlbmQgY2hhbmdp
bmcgdGhhdCBmaWxlLg0KPiANCj4gQnV0LCBhZGRpbmcgdG8gaW1hZ2UgdGhlIHBhY2thZ2UgImF2
YWhpLWRhZW1vbiIgKGF2YWhpLWF1dG9pcGQgaXMgbm90IGENCj4gcHJvYmxlbSkgYmxvYXRzIG15
IHJvb3RmcyB3aXRoIGRidXMtZGFlbW9uIGFuZCBsaWJzIGFuZCAgbGliWDExIGxpYnMuIEkNCj4g
ZG9uJ3QgaGF2ZSBhbiBzY3JlZW4gYXR0YWNoZWQuDQo+IA0KPiBTbyBxdWVzdGlvbjogSG93IHRv
IGF2b2lkIHRoYXQ/DQo+IA0KPiBJbiBteSBhdmFoaV8lLmJiYXBwZW5kIEkgYWRkZWQ6DQo+IEVY
VFJBX09FQ09ORiArPSAiIFwNCj4gICAgLS1kaXNhYmxlLWRidXMgXA0KPiAgICAtLWRpc2FibGUt
Z3RrIFwNCj4gICAgLS1kaXNhYmxlLWd0azMgXA0KPiAgICAtLWRpc2FibGUtbGliZXZlbnQgXA0K
PiAgICAtLWRpc2FibGUtcXQ1IFwNCj4gIg0KPiBCdXQgdGhhdCBkb2Vzbid0IHNlZW0gdG8gaGVs
cC4NCg0KSGF2ZSBhIGxvb2sgYXQgdGhlIHJlY2lwZSwgc3BlY2lmaWNhbGx5IHRoZSBQQUNLQUdF
Q09ORklHIG9wdGlvbnMuICBZb3Ugd2FudCB0byBkaXNhYmxlIHRoZSBkYnVzIGFuZCBndGszIG9w
dGlvbnMuICBOb3RlIHRoYXQgaWYgeW91IGhhdmUgYSBoZWFkbGVzcyBkZXZpY2Ugc28gZG9u4oCZ
dCBuZWVkIFgxMSBhdCBhbGwsIHRoZW4gcmVtb3ZlIHgxMSBmcm9tIERJU1RST19GRUFUVVJFUyBh
bmQgdGhhdCB3aWxsIG5ldmVyIGJlIGJ1aWx0Lg0KDQpSb3Nz

