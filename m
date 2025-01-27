Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0DF4AC02188
	for <webhook@archiver.kernel.org>; Mon, 27 Jan 2025 11:48:10 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.67])
 by mx.groups.io with SMTP id smtpd.web10.49901.1737978485188113314
 for <poky@lists.yoctoproject.org>;
 Mon, 27 Jan 2025 03:48:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=CDa1LXw8;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=CDa1LXw8;
 spf=pass (domain: arm.com, ip: 40.107.22.67, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=RWtAv0JSlcYeNKMReDl4qcMlvDRta7LrHeKEFoEloLT36AQiW92hpHhwBNDVPCyEArDpMH+E6rP8CCoqPO9Hv2UmS6z/TRe+w49jAWgklnM/7Pu6AOW032V0xVTo3+shm82g1BqEgicmayok+OMGFf7+DRmxDj2JYUnUR+v6YzoNkMsNh+1XaU7Xn9eD2SSIXRphZxUT+ZkukLZXRvAkkTuSlhmzZcDOqyg9Jr5j8j48UP/Jeet4ThRIhx5UFPxg5boXsRx3Zzhfsuw6hDYeYPyhlL5sjJ1dlkEirgUYiOK4kPkMjBnjnt2FLCFkK8KEA+SyenDrNlw/K+vJnyFqdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kKoyDR6tGD25wdB9PdNubemjhwj+cSY1vyLrLIlhtl0=;
 b=HchKNmh9/YeDiqssXdtuNITfMH0/3d+xIDm5kJN7ZXGHGVK3O/M8jl43/bazTsq4AhlOWVMuWgPs5fUMli8Dc3324FsVLJGuBPL3qQOVzpFlrawqBuOrU6l/JOPz3bqpviTqmdAKmOAd9C1VCyybosmBEuMdmRi5Fe+qRdfQv3KoWuh+XWq5VgoBoG7SdTSAr5S5+IcKMlI8yPlB8gEkXGSTLy6e9t9sCB/LQU4do0mWJtAknJXuZxX7XF3l17/hCz80WUYYkoW/t/TKpP8HJudT6Egl3CIDptUMQlCjDRCHR8Z0HDVJtJ5czQJtP8SFNieKHndDMD3B7tRooNn/+Q==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kKoyDR6tGD25wdB9PdNubemjhwj+cSY1vyLrLIlhtl0=;
 b=CDa1LXw8qT9ZvIBZE1EThvzSoaKptPSzhJGHlnFcZwuQXHFtGvmnr7fuzuJim8kknNOHU0I1oxTj8M+OLybJD1sRnJq/M4jHyiE2y9mN00DcnCIG2m/hWZ+aA3DjXTljwnnQkL2IZF+y1rZqcN6Bv7d8qMIE08JLBzLaHagz16g=
Received: from AS9PR05CA0217.eurprd05.prod.outlook.com (2603:10a6:20b:494::35)
 by VI0PR08MB10684.eurprd08.prod.outlook.com (2603:10a6:800:212::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.22; Mon, 27 Jan
 2025 11:47:58 +0000
Received: from AM4PEPF00027A60.eurprd04.prod.outlook.com
 (2603:10a6:20b:494:cafe::6e) by AS9PR05CA0217.outlook.office365.com
 (2603:10a6:20b:494::35) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8377.22 via Frontend Transport; Mon,
 27 Jan 2025 11:47:58 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM4PEPF00027A60.mail.protection.outlook.com (10.167.16.68) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8398.14
 via Frontend Transport; Mon, 27 Jan 2025 11:47:57 +0000
Received: ("Tessian outbound fc2e7feb7122:v554"); Mon, 27 Jan 2025 11:47:57 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: a73c479ad649271a
X-TessianGatewayMetadata: e+8YpomjVgPfcdB1UD4zWtgRuLxxI7X0y2iOAipdmsnbwZi6dE5ZpAI4NNTy7cIp7SG5yQSt+T79OfVfM5EHKPkeGeYxVf9iAIlQnF7lAnR4AFBV3NY6qw5HGMN0Nn1xcg/MfIiWcOKozEljEWnyPN7kEY1QTxhk73CkI1B/6o8=
X-CR-MTA-TID: 64aa7808
Received: from L3af232971688.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 44EA49B1-D2AD-4E1F-8E24-BB86E2E19BFF.1;
	Mon, 27 Jan 2025 11:47:50 +0000
Received: from EUR02-DB5-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id L3af232971688.1
    (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
    Mon, 27 Jan 2025 11:47:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Pf0pGqMcdPNcJ8JreTr9GvGko6OyqlmvPabhc+vuq1fVGopxhHqij2CICt14VKrzYoUNBJEoyEQWQ6C8YPUIKwx/QhjfSQHV0XkBBLmC5s9BcErm/MO5kcVWDXUAZ8DaS5hhlDp4MIBlKtNhrbce/BlvDCMBejuYF6XouoZlSxZQwZy1jFCCC47KtBVYCpVXRw862k+g4kJqxhfywKkWzLmR6G95gT6bQXkeqcPaBWXivIQzrigv7yQfJVykSZJSEoDghRezRwpTSGsU6HNu/EXjYb/rlGPR71kVz54lVeuyLFQZg3NMpzYyjSc3jOh1YzWy11D1n2m3qcKz464DlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kKoyDR6tGD25wdB9PdNubemjhwj+cSY1vyLrLIlhtl0=;
 b=dECc9Q6Bd/kB6LszxCrhyJ66a9qe+khVOjWd/ocz1lumHF84JiDDGXnFax1SVDGHV7ij0bOtbuD8T+tNnYup09pEk97uUJc2OrSoRpkvdfhe0LE01svJfOEWZ36OmEi9o5M6i3UBnY284rCqtcfW7FAEa/Rulq4WnDUVyAr4Z1KYCdf3LrK3j3bmctyWSsqhEGHUkVEQxfDnnHXsr+fy6Q8AVxpqasSK2HSQzt8v8jsc33atxJmva5Wfuxf1zksMKMXLaovYHcZThPAM8on5YYN6b6CRffkjWSPq97skRSPPTYnflR5KX7QeI8njCoZH7SLtmejLxDiO/D9DKhLklA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kKoyDR6tGD25wdB9PdNubemjhwj+cSY1vyLrLIlhtl0=;
 b=CDa1LXw8qT9ZvIBZE1EThvzSoaKptPSzhJGHlnFcZwuQXHFtGvmnr7fuzuJim8kknNOHU0I1oxTj8M+OLybJD1sRnJq/M4jHyiE2y9mN00DcnCIG2m/hWZ+aA3DjXTljwnnQkL2IZF+y1rZqcN6Bv7d8qMIE08JLBzLaHagz16g=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DU5PR08MB10496.eurprd08.prod.outlook.com (2603:10a6:10:527::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.22; Mon, 27 Jan
 2025 11:47:47 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%6]) with mapi id 15.20.8377.021; Mon, 27 Jan 2025
 11:47:47 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "michael.opdenacker@rootcommit.com" <michael.opdenacker@rootcommit.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] runqemu on genericarm64: "u-boot.bin not found" error
Thread-Topic: [poky] runqemu on genericarm64: "u-boot.bin not found" error
Thread-Index: AQHbcK59ceoTFxtEk0i9myeN4cNnAbMqgScA
Date: Mon, 27 Jan 2025 11:47:47 +0000
Message-ID: <EFE01A51-DF3E-422C-AE1D-4F66EF1AA916@arm.com>
References: <30b7ea7f-6793-4150-8551-ddc9b093255a@rootcommit.com>
In-Reply-To: <30b7ea7f-6793-4150-8551-ddc9b093255a@rootcommit.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.300.87.4.3)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DU5PR08MB10496:EE_|AM4PEPF00027A60:EE_|VI0PR08MB10684:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b4d1863-7e5f-4b70-5216-08dd3ec871ae
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|376014|366016|1800799024|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?N3hNSGQzczVTRDV2RWszV0xXVFROQTFENGZrb1VrMDJxcHlYRExLNFMrQzA0?=
 =?utf-8?B?NFZ3RXFRSnJHZ0dDY28xVGhEQWlUbm0wTlZGemt3d0hMeHRoalZOT2Z3Z090?=
 =?utf-8?B?alFGZXQxVjRmcVFadmZWUlNhRTNuTk42ZVJkZUtWU21uV1VINGZBYW10YkJp?=
 =?utf-8?B?YXZyLzJMWC9iNnJFTmVxYnBSQUYrK0k3YXQyRkZxNEorbDVzTHZYUHB0QlAw?=
 =?utf-8?B?bmJyekZENVhndVJhQUJGemF5K1ZWUXRZSjBYL3lscWR2WDNuRWhpN2ZPdEZa?=
 =?utf-8?B?M3FhZHA0TG5Qa09MekVzOEhlY1h0OU4rT3AyTWJVWkFPMFA1eklySDN2Y2x2?=
 =?utf-8?B?ZkxrSjFNYjdpNUhjQUN2NTVhc00vVFdqVDViMnRQeXBmZG9tMmRDVG5IMk42?=
 =?utf-8?B?WE5KbnFXRzRhUVhhWXBrRGwrUTdwaGFtUGhQNmdpUnNtYjV4Y3pqS0hqd1hR?=
 =?utf-8?B?RHhtVzVTVTZmUDFaY2lnU3ZuYWRLN3BrazVxNEpnUXNBWHJmVzhBMkYxQUNX?=
 =?utf-8?B?MlA4VzFpakIrdWp2UGFUVHZ2NmlrYnNYUFQrZ2d1QmNTcTMxcktjaG1ESE8w?=
 =?utf-8?B?Uk1HS0hSSllWWTFQWHo2WEpvaEdnRDhpTGJ6WUdSamZkcEpoY3Q4ZkZPeW9p?=
 =?utf-8?B?T2xXODVBbEgyL0UwUmxTUmdKRHBmSXRWNW5VL3duZmVLWWwvYXVNWjZpdUpH?=
 =?utf-8?B?MEdqMHJEY0FhdTZheVJqa1ZBMVJGSWdjYi9yanFkdDIyMENTdDZ3bktyU0M2?=
 =?utf-8?B?anFlaHlaWVZZZ3ppbmc1SFNuNFltSlk4bGc1eGxicnBkVncwTGdZZ3ZpM0tG?=
 =?utf-8?B?VXlSSzdDNjhSbWhIZEREQkxmQXp0NWNhM0wzb2hHVWpJdlhsdU1DU0UzSGJr?=
 =?utf-8?B?TERzOTVMNzNMNi9tREluQlpJaUpsc1Mva2JGamNsbGh1eG4xTFJuU053Uml3?=
 =?utf-8?B?N3RxczM0OU1GeEhkQ0hLTld6SmhZbm1aODNkWldwNWE4RWpxSEpVbWd6M21P?=
 =?utf-8?B?VlljWUdJdXhJSWx6UlovdXQ4M3N1eG9TS3BGRHF3azM0OUVCTzhzbDRSTWY3?=
 =?utf-8?B?b1Y1eFJzdkVFZEh3MUg4dzBMaDd3a1IrbUVEcG9KQ1ppbG1SZm41MDIrY3M2?=
 =?utf-8?B?MFJPanc5Y0J1U3NJdVFaTGhVcmF3SmNFbkpOK0tDWjBzN3Nyc1RRWERwZllC?=
 =?utf-8?B?SE1JbTYvWjU0OGNYYnRDQWRDeVBTV2xVR1JwYlZ1NUVKU0RlSXFPTUR2Lysv?=
 =?utf-8?B?L2JxcWxqMm9LcW1sZFAwUVE2dnJvUTZPVGxCaE5MTGowT2Q5aTVjYWRpV1NX?=
 =?utf-8?B?SW1QZFZYVjZhb2xaMXJNRVJ2R3BUM1lVajhNdGx5c0hROFJYZ3BkOGxmT3pk?=
 =?utf-8?B?NUtZSDVsQkZOTDl4NWplcWRPR0FKSU9BbDl5S0dpcW1sR09Lckk0ZFIvdGZ3?=
 =?utf-8?B?M2NGSlVPVFIybFFYeWZnakNvRWxqZEUxTzJTRWdQWXl4OXBzREw2WWEvcC9p?=
 =?utf-8?B?cXQ5U1pFbWtIaWJRSVRINEpjVFNweUtkOElFeTRyeEc1N2t5Vlp5Ym1HQzk1?=
 =?utf-8?B?bm1GUGpVTkkwdm5OSUlrK1ZWY2c3SEdXbiswYVRLZ1JITVNnTXZ5V0RmSm16?=
 =?utf-8?B?enNyRVhVWnY0ZVJRZlJGYUtYb05RSEZJVlY2UzlJeFlmZmRHZkVudWpyS1Bl?=
 =?utf-8?B?dlg0YUt2b3VqWEY2ejJhKzQzcFpPTEVjUDFGSDdLSEM5Y1dNc1ZSZG5Xejgw?=
 =?utf-8?B?MDdQS0RlUFI3YXB0S2MvSWMyaFN0d2U3aU9LeStqSzBlckdGdXFoY0RrZEd6?=
 =?utf-8?B?eTQ0Qi82K2lhd0tKRFZkaDlnL2c0MmZDNWNIUGU3MXQ0aDVKSkxySjBURmN1?=
 =?utf-8?B?L204Ny8vcEhtQnlsQzJMQWg4OUl5ZWM0UlBYQnpMdkFYMHNzQ1RCRFc3Z1VX?=
 =?utf-8?Q?JPcnwQzDSm8yg16R9pm2qV2uIGRL7sf9?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <94CFE35C1725EA40BA15B7DFD3BAD329@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU5PR08MB10496
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM4PEPF00027A60.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	750694be-2c09-4bb4-2e40-08dd3ec86b49
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|36860700013|82310400026|376014|1800799024|35042699022|14060799003;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?MnNxRHp6bkhYcG1DdFNLQ0JaYndBVVcyM1QvSHEyTERIa3RldzhDN2p0eXBr?=
 =?utf-8?B?bkhsLy9NZjY3MDhEaVpUeS9YbS9DWTIzdkVXYzNkM0pWSTlKQkVmTitBMkpp?=
 =?utf-8?B?WWN5eW5UOXk1R1RTR0tnSFlWYnF6ajNRWnN2VXpZVXpyYkpnaElBU1luNnJO?=
 =?utf-8?B?ZWdUTUl6Tlc0Vkpib1ZxSlUvOWVnVENQam5Ycm44L1pRZml0Tmk4TG5lMHlp?=
 =?utf-8?B?eVdxZmVPeDFBQWRSMlgrN1JSZ1lkWFZqNVZNZTNmd3BDbWxWQmFNSjZ5R1E1?=
 =?utf-8?B?aWJ0Q0srVFBWNGRFbC9HNkJNY040YitYVm9mQ0V4aVZGQUVXSGwwR3lha0Yv?=
 =?utf-8?B?Smc3aXoxZkRQa0xLTFp5QXR0Z1RZUGFmRG5JRGc2Z052eWRCc2dZTWNaL0dG?=
 =?utf-8?B?UzZEZDN6OWoxaWJ2RkNsSXBXL0xMcEthYTRtQ3hJVmxHZ2lsc0svL2Q1T21N?=
 =?utf-8?B?S2Z1cUpSV21BTnQ0d29vbmZPZ016Rk04QWJnZ1pmZjZoZjlmMHBiTkhuT0Fk?=
 =?utf-8?B?U0tnS1gycDN2bFFUWjVlT2J2OHh5MFg3aWdNYkZzZkRGdnpHZTNlTUhDRi8z?=
 =?utf-8?B?eS9yZHBVd0hhN2c0eEczb0gzQk1iS2VzUXpNdDF0ZFRIOFlBYjR0a0dPTXZw?=
 =?utf-8?B?TUY5T3pqU1FxbE9xaU5WdHhLWWZOZlFhdmlkYXZXMk1wdXNzdkF4Q2I0bWtQ?=
 =?utf-8?B?R04yRG5ESG94MzNhM1JPM0J6THBwYXozeXpuMkJRQUdCMmR1dkoxWmJJcHZx?=
 =?utf-8?B?K2owUHVEbHRkd3ExOUtvQzZTUHllTFgrcklDeC9tRDVUeXMrbGh0RlgxdWMy?=
 =?utf-8?B?bWFEMkpaUkVNOTQvR1VIK0hBQ3doNDVzYk00K1BIT0U0aVZlYTVIZUhyZStZ?=
 =?utf-8?B?QUN6N2tmMUdOa216cnIvS0djUFNzM0RLcGIvQmh5bUtSMlRIU0laVzdpT3dI?=
 =?utf-8?B?TENjOG81RzBOZUxSdmpXYUhCZ3ZmMVNTQ3g5TFBRMFVjQVQyb1d1S1hCUFpx?=
 =?utf-8?B?WjJNNk1WNVVWQVZsMS9qK3FROVVtMXdieHpWSnk1UGJKZXhJUDQ4TzRBanV2?=
 =?utf-8?B?SXcxWTFZcmVva3I1czBTcENDVS82K3FZdkUrYWVFdVlQYTZqak5HbUJIMHYw?=
 =?utf-8?B?Y21WdWs5UTNzSmtFQW1DNy9mUk5lMTBvemo3WURCcmp4c3ROaE1xeTNVcTdK?=
 =?utf-8?B?ZDVURFNVS20xU1JtVjFMeTJlTXI0T01FNUNqcHdiMnArT1NZZGRscXEzdHJv?=
 =?utf-8?B?bFF5Rlo2VEVqaDFGSTVyVnc3bjJzM1c4VVBEMWhCUFNkWC9RcFBuRllIZW55?=
 =?utf-8?B?YmV6ZThYNlBpc083VWxyamltekhQSmVFYzFyZHp5ejc0OTdBYmlWcFliTENo?=
 =?utf-8?B?dllHQmFNTHF5dnBoRWxXWUo1Tk1xRGVsbHQ2YVZlZ2dhY25CTnlWbmdzSFlU?=
 =?utf-8?B?SkJPRjBhM1dVemxyQkRBRzFYUTd1U1JxZ0NiVVNYUFVvV3VDTFhvWFZ5U3Fa?=
 =?utf-8?B?SUpZUWVFZFI1WXZDSkgzNnZhMFNoMit0NENlOXBYY3RxTUkwd0drQmQzVmU0?=
 =?utf-8?B?YThzdU10MEE2ejlOeVdlSVY4K0dsYU5XSzdxVHV0aEVncTk4ekROSCtLQmxS?=
 =?utf-8?B?SFo4WDRiazZnS3RyVUdRSGk1V2I4SHdaZXNDZC95RWR5RmlkU2JNQWd4QTJ6?=
 =?utf-8?B?MEVzclZhWUJ0QkZZR0hOc0pST09yM3ZDdC9TVC9Id0lZV2VGSmszeXFFSWRo?=
 =?utf-8?B?ZWV3S0xyTmtYYmd0U2pnZFhFSEI1M3IyS0lodFJ0RlhnN1JQakQ5amNtS2hT?=
 =?utf-8?B?NDFuT3o1Q3p6MkpXRng4UWRDbTFGRjNRR2ZwV0U3dndBNThoZDhJdW5lZWhy?=
 =?utf-8?B?UExjdWFZOS8wRy9jMTFWcjVmNVJROXBoTHBYckpnS091UWFSUmlybXI3L050?=
 =?utf-8?B?Yit4NlM0STlCN0RQNGs3NXVzR2xJbGlCa004L0VBUnFEVlkrYTFTZG1XWW05?=
 =?utf-8?Q?LZBY9Q9lqZAUHsB3s/xhSOGYHHyfuE=3D?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:64aa7808-outbound-1.mta.getcheckrecipient.com;CAT:NONE;SFS:(13230040)(36860700013)(82310400026)(376014)(1800799024)(35042699022)(14060799003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2025 11:47:57.7640
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b4d1863-7e5f-4b70-5216-08dd3ec871ae
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM4PEPF00027A60.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR08MB10684
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 27 Jan 2025 11:48:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13516

T24gMjcgSmFuIDIwMjUsIGF0IDExOjI3LCBNaWNoYWVsIE9wZGVuYWNrZXIgdmlhIGxpc3RzLnlv
Y3RvcHJvamVjdC5vcmcgPG1pY2hhZWwub3BkZW5hY2tlcj1yb290Y29tbWl0LmNvbUBsaXN0cy55
b2N0b3Byb2plY3Qub3JnPiB3cm90ZToNCj4gDQo+IFJvc3MsIGFsbCwNCj4gDQo+IFByb2JhYmx5
IG5vdCBhIHN1cnByaXNlIGZvciBzb21lIG9mIHlvdSwgYnV0IEkgZmlndXJlZCBpdCdzIGdvb2Qg
dG8gcmVwb3J0IHRoaXMgc29tZXdoZXJlOg0KPiANCj4gSSBnZW5lcmF0ZWQgYW4gaW1hZ2UgZm9y
IHRoZSAiZ2VuZXJpY2FybTY0IiBtYWNoaW5lLCBhbmQgd2hlbiB0cnlpbmcgdG8gdXNlIHRoZSAi
cnVucWVtdSIgY29tbWFuZCwgSSBnZXQgdGhpcyBlcnJvcjoNCj4gDQo+ICQgcnVucWVtdSBub2dy
YXBoaWMgc2xpcnANCj4gcnVucWVtdSAtIElORk8gLSBSdW5uaW5nIGJpdGJha2UgLWUgIC4uLg0K
PiBydW5xZW11IC0gRVJST1IgLSBCSU9TIC9ob21lL21pa2Uvd29yay95b2N0by9tYXN0ZXIvcG9r
eS9idWlsZC1nZW5lcmljYXJtNjQvdG1wL2RlcGxveS9pbWFnZXMvZ2VuZXJpY2FybTY0L3UtYm9v
dC5iaW4gbm90IGZvdW5kDQo+IHJ1bnFlbXUgLSBJTkZPIC0gQ2xlYW5pbmcgdXANCj4gcnVucWVt
dSAtIElORk8gLSBIb3N0IHVwdGltZTogNjcwNDQ2LjA3DQo+IA0KPiBUaGF0J3Mgbm90IGEgc3Vy
cHJpc2UsIGFzIHRoZSBib290bG9hZGVyIGZvciB0aGlzIGltYWdlIGlzIGJhc2VkIG9uIGdydWIu
DQo+IA0KPiBJIHRyaWVkIHRvIG1vZGlmeSBtZXRhLXlvY3RvLWJzcC9jb25mL21hY2hpbmUvZ2Vu
ZXJpY2FybTY0LmNvbmYgdG8gdXNlIHRoZSAiZ3J1Yi1lZmktYm9vdGFhNjQuZWZpIiBmaWxlIGlu
c3RlYWQuIEhvd2V2ZXIsIHdoaWxlIHJ1bnFlbXUgZG9lc24ndCBjb21wbGFpbiBhbnkgbW9yZSwg
dGhlIHZpcnR1YWwgbWFjaGluZSBkb2Vzbid0IHNlZW0gdG8gYm9vdC4NCj4gDQo+IEFueSB3b3Jr
YXJvdW5kIGZvciB0ZXN0aW5nIHRoZSAiZ2VuZXJpY2FybTY0IiBtYWNoaW5lIHRocm91Z2ggdGhl
ICJydW5xZW11IiBzY3JpcHQ/DQo+IA0KPiBJbiB0aGUgbG9uZyBydW4sIGl0IHdvdWxkIGJlIGdy
ZWF0IGlmIHRoZSBub3JtYWwgInJ1bnFlbXUiIGNvbW1hbmQgd29ya2VkIG91dCBvZiB0aGUgYm94
Lg0KDQpGcm9tIHRoZSBnZW5lcmljYXJtNjQgUkVBRE1FOg0KDQpUaGVyZSBpcyBhbHNvIGxpbWl0
ZWQgc3VwcG9ydCBmb3IgYm9vdGluZyBhIGdlbmVyaWNhcm02NCBpbWFnZSBpbnNpZGUgUUVNVS4g
V2hlbg0KYnVpbGRpbmcgdGhlIGltYWdlIGFsc28gYnVpbGQgdGhlIGB1LWJvb3RgIHJlY2lwZSB0
byBidWlsZCB0aGUgcmVxdWlyZWQNCmZpcm13YXJlIChub3RlIHRoYXQgdGhpcyBmaXJtd2FyZSB3
aWxsIF9ub3RfIGJvb3Qgb24gcmVhbCBoYXJkd2FyZSksIHRoZW4gdXNlDQpgcnVucWVtdWAgYXMg
dXN1YWwuDQoNClRoYXQgdWJvb3Qgd2lsbCB0aGVuIGNoYWlubG9hZCBpbnRvIGdydWIuDQoNCkkg
ZG9u4oCZdCB0aGluayBpdOKAmXMgYXBwcm9wcmlhdGUgdG8gYWx3YXlzIGJ1aWxkIHRoZSB1Ym9v
dCBiZWNhdXNlIHRoZXJl4oCZcyBhIHJpc2sgdGhhdCBwZW9wbGUgd2lsbCB0aGluayBpdOKAmXMg
c3VpdGFibGUgZm9yIHRoZSB0YXJnZXQgaGFyZHdhcmUsIHdoZW4gaXTigJlzIG9ubHkgdXNlZnVs
IHdpdGggYSBxZW11LiAgDQoNClJvc3M=

