Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 132F6C71159
	for <webhook@archiver.kernel.org>; Mon, 16 Jun 2025 19:05:57 +0000 (UTC)
Received: from DU2PR03CU002.outbound.protection.outlook.com (DU2PR03CU002.outbound.protection.outlook.com [52.101.65.34])
 by mx.groups.io with SMTP id smtpd.web10.425.1750100747994569832
 for <poky@lists.yoctoproject.org>;
 Mon, 16 Jun 2025 12:05:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=sP+g2G6X;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=sP+g2G6X;
 spf=pass (domain: arm.com, ip: 52.101.65.34, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=FdhVpT4yFsBup+PuXLAr0KfqAgjwCSCMNaWK+iT0Xk8caHXjBjmW5AyUP68fKPmurEaJ7PxOHsZU1I3UGUu5o6bF+26UMbo8WH7/d6bhvEkCioZ2Alg/MV+2XWMHS9LMHWngs0lFg9+OUJsA7ALYbk4Zozm3NRMXKbfEJuLvgLTpN0/W0n5xR6bdH4QHNLQSUzMTkESVqLgpyMK35Lslwbwn4d4RnhXm1m8NZ1GzA+mGSK2Gg49IlkuQiGz0+wvJrnjLBEah2awf8JXmOQGR1FaqLj/SI1s81hZmt+Bto2pziwi1chG0Cdj6fF/ppir6HTi4w4FTxsXs4LZy2/MZ8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U4f/OjkFhgJeHYFydckWuug8g51TEzBETn4uyE94evQ=;
 b=cHANOFZx62JroV6mE5dBKsBdkgT2KdyTxMEkLKjItjn5dq/IT9TYyMUlcGaUMt96OMIhbrYziMGngEKc3KYahHG0AIqDzzTyheyhuLNJtNSYIGYjUhvPjhzUDstUDHLIrBZeHMmZbnmAglOFP2pRJc/3qbu0E+ECRv3uumxzjAaDGxz1JpVcCBclDRtOgxZWFWHITNJQmdQG1QeckgiBr9ABcJgYpiYhZds6AwanZJdIecRfpwBHauMqbmY7DnM4gomtYkTkOwX9C1G7nPbbnBPaNqJjNAfdtYUhR/R5QddGr/f2xgbmfEQjUIQ8EQ/SOSsch5uZ2UrT/gpD5rJDEQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 4.158.2.129) smtp.rcpttodomain=linaro.org smtp.mailfrom=arm.com; dmarc=pass
 (p=none sp=none pct=100) action=none header.from=arm.com; dkim=pass
 (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U4f/OjkFhgJeHYFydckWuug8g51TEzBETn4uyE94evQ=;
 b=sP+g2G6X3J9SEXB97FwhEkXkBk1vSk6F9x0fZiTOzf/YehX1WZOzysnMk/O59//ewreXHOdTkUTtuid6jKWEs8flFPeZCaVzbR0APVY1EehLpunCVpPwDGpeVhVgyXAK68YBdEs55ccdasFbHxLW1BnAsvcXPk81C69AG8UNhYs=
Received: from AM6P191CA0016.EURP191.PROD.OUTLOOK.COM (2603:10a6:209:8b::29)
 by AS2PR08MB8672.eurprd08.prod.outlook.com (2603:10a6:20b:55f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.27; Mon, 16 Jun
 2025 19:05:39 +0000
Received: from AM4PEPF00025F97.EURPRD83.prod.outlook.com
 (2603:10a6:209:8b:cafe::b4) by AM6P191CA0016.outlook.office365.com
 (2603:10a6:209:8b::29) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8835.29 via Frontend Transport; Mon,
 16 Jun 2025 19:05:38 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.158.2.129)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 4.158.2.129 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.158.2.129; helo=outbound-uk1.az.dlp.m.darktrace.com; pr=C
Received: from outbound-uk1.az.dlp.m.darktrace.com (4.158.2.129) by
 AM4PEPF00025F97.mail.protection.outlook.com (10.167.16.6) with Microsoft SMTP
 Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8880.0 via
 Frontend Transport; Mon, 16 Jun 2025 19:05:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Az/RW5EtxYPQcmIOAj6Y1BERR/JqyMlVnAToTtZnnKF9v+7zB0KRKDYv+LaTv2D+azG5wZwOqDyqPw3jZYJK6dw3uo/L1UAW5QEVkbn9z/vXK75Gh8CTKt0E8fBoDdQ1GsiXbj8gNrzl+Mc3r0DOjqc8wdrAfJH5JAiVmcsP8mUP8fbE5w6dZ/EvfKtPCOb9bzLOCYzTOykI5mG3brONQZRI749Ny6PNf7WEz7xMYn2kULp+p9mDL1Pk7Yb/W4uMB3uKjX4GKImohz9kSV54VDC8WH7Y86HOo6i9zAl5XabKANGJxiR55WC21+X8HWa4Gy0Mwd0sbvp12PSII/QRRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U4f/OjkFhgJeHYFydckWuug8g51TEzBETn4uyE94evQ=;
 b=sx+Wr8vuoIde37VzM0cL2BIvG8RoIN5y5D2wxhiqG1moprcTH4UYUswx9qyZvIDSwDFAj1/pj5IkbAAvMOHGshxiZiqbkAVckXI4elKvVGcmtvB+evLDUrgJ+J4bkaArjLOIk3+QZX29iqj4dzCbZ2WHPp1QXAOROCbTgsibg9UCec9tYLjrgwayxwZ0FobxsHf4zUQ6nJ/kAQPk+2cUlHmmefflqGB8vgrjphX3iJhanbGUhl7DNq/CDFjAyNLxHF02ARTa1LSVJUacWokPY0xWbIbiwqp7y7s0CmUcmMp/xqdSE1c6YTbT4ypdEjL7oBDmNWY3iSTi0KT0wSlewg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U4f/OjkFhgJeHYFydckWuug8g51TEzBETn4uyE94evQ=;
 b=sP+g2G6X3J9SEXB97FwhEkXkBk1vSk6F9x0fZiTOzf/YehX1WZOzysnMk/O59//ewreXHOdTkUTtuid6jKWEs8flFPeZCaVzbR0APVY1EehLpunCVpPwDGpeVhVgyXAK68YBdEs55ccdasFbHxLW1BnAsvcXPk81C69AG8UNhYs=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by GV1PR08MB8179.eurprd08.prod.outlook.com (2603:10a6:150:91::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Mon, 16 Jun
 2025 19:05:02 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%6]) with mapi id 15.20.8835.027; Mon, 16 Jun 2025
 19:05:02 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "alexander.sowarka@linaro.org" <alexander.sowarka@linaro.org>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH 1/1] linux-yocto: Use in-tree config for
 genericarm64
Thread-Topic: [poky] [PATCH 1/1] linux-yocto: Use in-tree config for
 genericarm64
Thread-Index: AQHb3u70BBtmWOZi3Em1bmJnpI+U/rQGJTUA
Date: Mon, 16 Jun 2025 19:05:02 +0000
Message-ID: <958D0280-79D4-4421-A161-4D5451A4D035@arm.com>
References: <20250616184607.92039-1-alexander.sowarka@linaro.org>
 <20250616184607.92039-2-alexander.sowarka@linaro.org>
In-Reply-To: <20250616184607.92039-2-alexander.sowarka@linaro.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.600.51.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|GV1PR08MB8179:EE_|AM4PEPF00025F97:EE_|AS2PR08MB8672:EE_
X-MS-Office365-Filtering-Correlation-Id: c3c3753e-65fa-420b-53bf-08ddad08c79a
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|366016|1800799024|376014|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?enlKbTAvWHZsZlpNVUVISmVLMTZwQ1FFTzBMRmg2MHVMMVhuMVBDM1d6elhV?=
 =?utf-8?B?d0U1QzBBaW9iN1BYTGhVWU9ydDJJSHEvTVJKTjIzRTJrdlEzN2x5T2lzK3ZE?=
 =?utf-8?B?NDNnbk44L2VSR3cxcTdxNlAvWUk3UEJmN0tGcW40TThtTERCbVBuS3F1SFl2?=
 =?utf-8?B?M2lGeE5vUElDeE9ldTJVc3l0S0MrdEsySnRBaGRETEJrTlpCV3kvaEpCVDZZ?=
 =?utf-8?B?WkdIQ2NjeFozSUdLbVNuSmczRmJxdk5QckxLaEh3WU9XbGFmZWwzck1DaFlD?=
 =?utf-8?B?UllDZHBOdVFYRHlpcElmckhVb0pjVTdwb21ndTFJWlc0dGprY2xCS1RmTzh1?=
 =?utf-8?B?T0pmb3JhL0pZQW5DKzlSZXdaY0NuaWpiaVZDNEdNZlJvcUw5cGY2MmZuVjFt?=
 =?utf-8?B?QkdPNnUrNEJRTlBsb2xvekZOcWpNVG16TXgxdDl0WkkyM0lwOGorbXIyekU1?=
 =?utf-8?B?MmtUREhxVkhHL25JNDVOVEdKQncweGhONFJmeWNEbjlvM1dDT0xCR1BlZ05w?=
 =?utf-8?B?bzdhSmp0REt3aDNldjk1cFl1TklSRjBEMXF1eThQMEJGMVJiRUZUV3lPVkRo?=
 =?utf-8?B?NkVjb0lnTTNjYjlZcUhIMjBhRkppMFd1L1VXaVZyd0NqTytOakxtNTd1UDJX?=
 =?utf-8?B?YTZUOGo2bU1EQVdyR0d3ZkgrQzk2TzVlbi9OSGx6S21uMVdjTmNCMHNHMGgx?=
 =?utf-8?B?cHI2cDFZN3ZZcWN4N1Z0R1JsUjZqQkdGUy8ydWdoWlZVM0dHMFVPdEk2Ympx?=
 =?utf-8?B?UXMvZ2pmVTdhc0k5R1BVR1A1SStZODU5anZBYnNjQWV5TGt6b0R6UUwwV21N?=
 =?utf-8?B?a0srVHYzdC9GR0l1Z1FlZStoRlZKNVgwSjE5Z0dtdnJhUnZSb1c2YlNoUGFQ?=
 =?utf-8?B?UGRaSXJJbmxPQnlYZWxpcTB1U1NCZjNZRWFlT0NraEdmZGhrdmdKVlpqZk1I?=
 =?utf-8?B?UndadjNFNlREL2EwOUlRbEJhbEJWRUNZU2paK05neklyMTI5WjFHUWdnSDFO?=
 =?utf-8?B?cExhOGtvWXp0TFlFcVExRExiVHJlVnd6SXRhSm1JTjc4dExUY3R0bk84eHVV?=
 =?utf-8?B?R2tCdm94S3JObkJrejRQdGVvVEg5YXVIVU10RzNvb3ZtZTVPdU1HVkcxTzd4?=
 =?utf-8?B?ZFdBNWxaWHFqQzVYb3E4bXd1R2hKbGZjdnFYZHYxUVljNitaTmluNGdzMVZL?=
 =?utf-8?B?d1FXSE5UdGJvVUNMY20xM1BOYzRsK0Z0ZlpTZjNaS2g3U3ppQkFOaG9WNVVW?=
 =?utf-8?B?d0JtVUY5ODU3SS9DVEJOZGlpUU95N0NtUUcrc1pHZXJkNnpzRi9hSFVKdktK?=
 =?utf-8?B?cms1bDBJeFA0dm5wQmRiSHJNaHhiSW9qVnVrbUppYUFYeGV6SXM5NHV6QU41?=
 =?utf-8?B?WnlubkJnU09kU2p5dFhmNzZrK3JiWkFRKzJxMnE5bytZbEExVHMvdVFOVk1s?=
 =?utf-8?B?TFhsY0ZocG1yRkVOam9QclNRYXBlWGRHQWtzNTltVjdwbkU1T05sVkRYZWNB?=
 =?utf-8?B?UDlQUEk4S0RxY05xL2tDL1hkK0dMN2NaZVhFVVhiN2RRTXlRTDh5VWpYYVpM?=
 =?utf-8?B?b0hvY1RYY0tPUkFRYTA3Zmt3aDFoaDNUTkdUVFdiYnE5aEovM1QxMEZvQlh4?=
 =?utf-8?B?RWJ4V0xSNVUyWm1JOWlUYXZyeDBLN1NzbFRFaDNKZmhFZXVWM0JieHBtWGlX?=
 =?utf-8?B?bWlTc0R0SFhjcXQzd2lsUDRPMEdYS1JBSm8yVnNwMVpPU2k2UEMxREE4S0lq?=
 =?utf-8?B?c2o1blppMG1nZk44S2t5Z2lwUGdVVnNRSExBUEhsdUpBbm93K0cvUHlCcmhM?=
 =?utf-8?B?RTZacjdwdjdWUjZmb0lsbFF2MFVBUS9Cd3QwYm00azhodHJtVkowaGxsa2xP?=
 =?utf-8?B?ZTg5VGM4UTdyN1dkSHcyTXlOMENwL0RlNEN0anZEQWlkc09YTUxWTG1ySk9F?=
 =?utf-8?B?LzFGMHgzTlVnaTlpMXV0MEVqM2NsaTdXTjNSb2kxT21BY2pZMFJqYnhxWHZU?=
 =?utf-8?Q?x8geu9Fd4DqKYBvQ4JXapx9XEOakX0=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <546DC0771CCE834B84582293613E6FE4@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB8179
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM4PEPF00025F97.EURPRD83.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	0ce84cdb-c038-42b4-740c-08ddad08b2ae
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|14060799003|1800799024|82310400026|35042699022|36860700013|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?eW5DRVJ3SCt1dllSWjZ6YW1ZY2lTY0ZzUmRQQlFqcHR2V0Y0TTd3REhHT0dl?=
 =?utf-8?B?ZTVONFZLbU00TVRhYndYVmFaTVN4R0ZCcEtGTThPWXU4SFFMOWRjVnZPM3RB?=
 =?utf-8?B?Nm1GckVETWVJekMzZEs2Qk5hOUR3eGxDcXFacFJ3RThycVR5NkYyVXFtUk52?=
 =?utf-8?B?RVBqRE1nTzVrNkU0K2JQRzE1SGJBM3VWMzBxek1kNEpDZ1psNSs5UEhrQStp?=
 =?utf-8?B?dFVudTRQZXd5OHI5RFprcXlGTW1hV1lCVHY0MlkrK2lQK3NqV2Y2YlNubWpi?=
 =?utf-8?B?cUtNZ3hrSll1dFgrQzlWK25JR0YyME9MaThYeTJGUzZpcHF2ZzNOMzY5R25m?=
 =?utf-8?B?OVJNRW04K2VKanBqYktSYWwyQyticDdFcndTRGRldlU5WU9hbGpRNXpDOS90?=
 =?utf-8?B?ZVducXRNM2NkR0dodmJFSW9yY0drVm1ERGRrS2s4cE9OQWxPL0I4UHRtZGdI?=
 =?utf-8?B?KzJxTUo0aEtGckZ6LzVqbmlNelZkMVVKNUdlTWJJcGYxb0d4MFBDamJueDF0?=
 =?utf-8?B?ZE80OFk3TU9zcFMwb29rWDZpdTRWbGozQ1JKMURCMys2Yk9KZ0p0cnA2WjE2?=
 =?utf-8?B?UEt0UDcxc2NRcXJaajR5TUtFTUlZbVk1TjVaNHVsUFUvSVVNcGNxNFZvc2Jo?=
 =?utf-8?B?VUt2TlVjUUQ5NHBRN05HUjd5cEkyekFNTnRBL1RVei95Yy9WRmVTUmRkMVF0?=
 =?utf-8?B?SnhWazV4L3VmYndQR016dEJETlRkeU5GTm1zUDIxTWJ0Vkh0Vm5WM3hhWVkv?=
 =?utf-8?B?b1BBZWQrMGNUU3laeWZ5NXlVMmJFWXhCd09hSDhaajhVc1V1QlBDdzA0cEpQ?=
 =?utf-8?B?ckJuNzFZVU41N2ZFUFdLaHF5MHJaMFZtSW9nUENrclRtLzJ0VGI4d2x2ZmQv?=
 =?utf-8?B?eXFGb3dNaml4dkphc0c5RFlJVzA3ajhHOGRIb2NZMk1aWjBEMzBQSTE3b0ZQ?=
 =?utf-8?B?U0J6SFN6bkhIOW5QU0VjUTVjdVU5Y3V0aTNOTk5NVmhnQVd0UmEybHJTa05p?=
 =?utf-8?B?akNFVlZPejQvb0VMVjBoNVlzSkU1S0VZVnUzdW9lQ3J0WmdOYkhLZGpYVCtY?=
 =?utf-8?B?RCs0STJWS0d1TDRZOXdKTVNBZ1dVOGxtTU5obEZ4RjNqc0s2Q0MzelBXWmhK?=
 =?utf-8?B?WDgySXJMUW1SQ0tNNE44OFFvRWxnMDgrRldCZnYwQUlPUnpxNWFoc3lSclcv?=
 =?utf-8?B?WjFtNlJEZ1NmdkMvZGYwZ09MVG9WU0tTbDY0Tzg1NFBEVllpbUV2SHdMZnhQ?=
 =?utf-8?B?WHVtZlhML0dGN3pEZTVSaG51WW02N1AxdmxqTW9CQ3o4S1dDZVJVTkpWbGZX?=
 =?utf-8?B?cXp4WUw0WEhRaXFNRS8vMThjSVhCT1p0M2U4QUd4Qk44NDhML0trTzFjRWNC?=
 =?utf-8?B?dkFmRythRUt5ZldkMm8wMjRkNTZIajFxa1BjVTgvNjJoMWZqeWFKbytLL1NP?=
 =?utf-8?B?YWVuelY5R0tVazlzNlVSZ0l0MWk2T0hxZWZ6SHRuMHRuZzlPVFcwWTc5cTFH?=
 =?utf-8?B?dUora0ZKaC9Qb0FidEJpVmo5WVVENktJRS83WUwwM1h4UW90M2F1NWMyczRK?=
 =?utf-8?B?SU5JQkhySlZIQS90dk5GQkF5SWFFdUdBYmJSU1BwTU9OSDhKdzl2QnJIZlEy?=
 =?utf-8?B?MDJVZXJsY21Pa05pV250cFNmSWhDd0VSclROWHBTcjIydWxNVHIzUEYyWUlP?=
 =?utf-8?B?cURkd2hHUGlaNVRRMDl3bGs2c2Nsd2YyRERoSWR3NUlhQTdGZjNhbVY2TG1Y?=
 =?utf-8?B?YnZ5d0wwUDBKaGltVWFZdWk2Z3ljODZNdWVUaGlxRDZFdWsvTEo0SHA1OFBV?=
 =?utf-8?B?a2xacGZmWlMyQVlZWXpvdXVRSStHOGl2Szc4bE1vdnFtZ3JkUnI4QlBubXdK?=
 =?utf-8?B?RytaQ2xJVWx0b0NreFlBZVdXTFo2eWMway9Mb0tmL2hrR1hNb3FLNEJoc2c1?=
 =?utf-8?B?cjVmSGNwbXBJSmxGblhjZVc4d0hoclhvdzhxZW1ERG8ycTU3ZUd4cCtINWI4?=
 =?utf-8?B?RUFERWZMbU5yYVE2ZWtCQjE2MGZ0ak81OStXbXBjcnNEM2luSXlIVUVEaHB6?=
 =?utf-8?Q?WfjOmR?=
X-Forefront-Antispam-Report: 
	CIP:4.158.2.129;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:outbound-uk1.az.dlp.m.darktrace.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(14060799003)(1800799024)(82310400026)(35042699022)(36860700013)(376014);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2025 19:05:37.6226
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c3c3753e-65fa-420b-53bf-08ddad08c79a
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[4.158.2.129];Helo=[outbound-uk1.az.dlp.m.darktrace.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM4PEPF00025F97.EURPRD83.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB8672
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 16 Jun 2025 19:05:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13651

T24gMTYgSnVuIDIwMjUsIGF0IDE5OjQ2LCBBbGV4YW5kZXIgU293YXJrYSB2aWEgbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZyA8YWxleGFuZGVyLnNvd2Fya2E9bGluYXJvLm9yZ0BsaXN0cy55b2N0b3By
b2plY3Qub3JnPiB3cm90ZToNCj4gDQo+IFRoZSBnZW5lcmljYXJtNjQgbWFjaGluZSBzaG91bGQg
cnVuIG9uIG1vc3QgQVJNIFN5c3RlbVJlYWR5IGRldmljZXMuDQo+IFRoZSBhcm02NCBjb25maWd1
cmF0aW9uIGluIHRoZSBtYWlubGluZSBrZXJuZWwgcmVwb3NpdG9yeSB3b3JrcyBzdGFibGUNCj4g
b24gYSBsb3QgbW9yZSBkZXZpY2VzIHRoZW4gdGhlIHBva3kgaW50ZXJuYWwgb25lLg0KPiBTd2l0
Y2ggdG8gdXNpbmcgdGhlIGluLXRyZWUga2VybmVsIGNvbmZpZyB0byBydW4gb24gbW9yZSBTeXN0
ZW1SZWFkeQ0KPiBkZXZpY2VzLg0KDQpUaGlzIHdhcyBhbG1vc3QgYnkgZGVzaWduOiB0aGUgaW5p
dGlhbCB0YXJnZXQgcGxhdGZvcm0gd2FzIHRoZSBCZWFnbGVQbGF5LCBhbmQgdGhlbiB0aGUgWGls
aW54IEtWMjYwLg0KDQpBcyB0aGUgY28tbWFpbnRhaW5lciBvZiB0aGlzIEJTUCBJ4oCZZCBfbXVj
aF8gcHJlZmVyIHRvIHNlZSB0aGUgZ2FwcyBmaXhlZCBpbnN0ZWFkIG9mIHVwc3RyZWFtIGRlZmNv
bmZpZyB1c2VkIGJsaW5kbHkuICBJdOKAmXMgYW4gdW51c3VhbCB1cHN0cmVhbSByZWxlYXNlIHdo
ZXJlIHRoZSBkZWZjb25maWcgZG9lc27igJl0IHJlc3VsdCBpbiBjb25maWd1cmF0aW9uIHdhcm5p
bmdzLCBhbmQgd2UgaGF2ZSBhIGdlbmVyYWwgZXRob3MgdGhhdCBtb2R1bGFyIGNvbmZpZ3VyYXRp
b25zIGFyZSBiZXR0ZXIgdGhhbiBhIHNpbmdsZSBtb25vbGl0aGljIGRlZmNvbmZpZy4NCg0KUm9z
cw0KDQo=

