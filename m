Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99704C02199
	for <webhook@archiver.kernel.org>; Thu,  6 Feb 2025 17:38:16 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.43])
 by mx.groups.io with SMTP id smtpd.web10.47590.1738863494217283369
 for <poky@lists.yoctoproject.org>;
 Thu, 06 Feb 2025 09:38:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=rGbHpJ6n;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=rGbHpJ6n;
 spf=pass (domain: arm.com, ip: 40.107.21.43, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=STdxvnv/+1PC7Lk+cOWayHHi/f4IRIvwc+f3nCtIPdAqq0D3adVMZkv+js3jNvgVrqSpiUoykrhpKK/NvlfXv41+8H7CmGoF5+wcRBpArlAVEuSKHGuOkgH3IeuShPGE5Dk9A90ETNWVjjr/AS4X4WMN0F9ttjOQuMk3DaTdDdtvxWlWuPwS5JFCTJt7X1ccC7UxQMMti5KCch2BRtsh5iCKGZ1P77sul/0jISO60BDwC7rTuUGUN+s1TI1tXMkqNuE/xnQq6gVbQlAsw9YC8E+Fh1zlbzkkJjHjg2jvHXaPvPjKKzZpwVmwj3C1CLZkZ0SYrIrfawMfpFc0DJezbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KlVP+YMK9kYAaZG7DYvVrMIvEJB+b/O5XvRxLOC74gE=;
 b=Ez7rSuv1/XPveIjM30I+4LPdM4RWR7LMSSrtO1nslBesyAH/GKIn/1bhAWu6vITMA7gL6wm4pCEwg7JCadg0BBzlNk1O9KthTS9zPlDWljSsW74o8KAwr9oyZATjcFsUi2D6UYnMxst4TCUKP2rodoTT+NGdasR0KQyhaqOKhGK0QjoHpmQ9vVtnisnLlO6l1D489V9qq6TvsWMpUuK55MKVtot/ASe1vogFIJyYf/bbB0VJtj5+K7vkAKz8slr/JXnL4KO9QauXtGAnNyFUeKJroaSl9U0t4SfGVFNmh40LwOOqVzd5O9lYDMfO+D7AorX8nXdtfF35kWz6jAJfEw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KlVP+YMK9kYAaZG7DYvVrMIvEJB+b/O5XvRxLOC74gE=;
 b=rGbHpJ6ndW2/tcUIQF/GlhLIiucT3CIKtZc56INOrknov8I6gjv7ICYFgVrZ6ImIuLNLMgXq91S0bEOKq+iwOlnSprDRJOHmCexuxAl4Mp7y7cltlx3xN6VUAErSUF83FEk5Hhgc8XaAW2u+pcYj6s7bcbBvaFtLeFnOqP6KYE0=
Received: from CWLP123CA0144.GBRP123.PROD.OUTLOOK.COM (2603:10a6:401:87::36)
 by AM8PR08MB6625.eurprd08.prod.outlook.com (2603:10a6:20b:357::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.26; Thu, 6 Feb
 2025 17:38:10 +0000
Received: from AMS0EPF000001A1.eurprd05.prod.outlook.com
 (2603:10a6:401:87:cafe::74) by CWLP123CA0144.outlook.office365.com
 (2603:10a6:401:87::36) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8398.29 via Frontend Transport; Thu,
 6 Feb 2025 17:38:10 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS0EPF000001A1.mail.protection.outlook.com (10.167.16.231) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8398.14
 via Frontend Transport; Thu, 6 Feb 2025 17:38:09 +0000
Received: ("Tessian outbound c79bb2535b53:v567"); Thu, 06 Feb 2025 17:38:09 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 316322be74cb44e4
X-TessianGatewayMetadata: MNHKUvU9LegexoJ47avXKRTdoZVpH9mftD84YHv9IvclZ2adHrDUY6MKUBaYoZkQhh4L7p5MzxqNmtF5O9c8qQiiosTxdC6zZ6LdH/FJo9PuoRUbU1tx5FehwcWhFdNGVrSzwnBBEd5qe0HZlXbjhi7eMUrV/RNHfhCmv/W6sr0=
X-CR-MTA-TID: 64aa7808
Received: from Lb7530478131a.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id D65F6C76-6096-414B-B45F-A0908CB39EF0.1;
	Thu, 06 Feb 2025 17:38:02 +0000
Received: from EUR02-DB5-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id Lb7530478131a.1
    (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
    Thu, 06 Feb 2025 17:38:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qUVIv8+TxLn2UiPrkykBxX1gXVlzt9e/+EXYzXm+XZBDVbvy6nYZT6hu6kppfT2Zg0VMdAVP0wEl86lX+0rCI9IaHqXN3OmJ+k4PX/TlmtqhAgnypazCpifeT1amdQjtRPparogEC34qWUsWPxE+NJ8v/irLGC6B86fBG++qNDY5/atlXXdBiwQCIoyUAEyAXtJS2BOOSYUgslDaJn3/nYqTsTJA+ro4PiW3W7wXALJAYC8OE3M5uX8B5+aWNyIJ5VQYeCcxRmV95iIXLHvU30L2yUUNzzaMZqySYrvxewURdK3nXxaLXPxMHq52zKcFBK7mpSs3b5Yq1twtNMCYXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KlVP+YMK9kYAaZG7DYvVrMIvEJB+b/O5XvRxLOC74gE=;
 b=RBnSpKEFvswQI2Fgo3IM1+rI/CrmxmtdW14N9LpulLxbrrnhB7aFNbpRsY64DUc5z1yvjdFOUQ5mYa8PB1cgO8fmWcINnwbYXS//5n835O/sDAr0wm3l1voVvks87cepD5LQPkfNYZ99yb5faEiTpA1bNByx13Qcm3LRIT01ALcbXRxAlr26iCtrZujYZRZjAuqiv0ygVuh0ed1itlB2j3oHJTDX5RtzJAylxCaS3r1XzU1s2cIEW2Fn8eFoWmIWAd6BiePn+/UXW/6ZSa9BRMeiOq+zJe2EKJa+ROkY0tuBZT0g972HyMP0YBtD5m8io7iRCxWUPs1KZBoJSAoaNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KlVP+YMK9kYAaZG7DYvVrMIvEJB+b/O5XvRxLOC74gE=;
 b=rGbHpJ6ndW2/tcUIQF/GlhLIiucT3CIKtZc56INOrknov8I6gjv7ICYFgVrZ6ImIuLNLMgXq91S0bEOKq+iwOlnSprDRJOHmCexuxAl4Mp7y7cltlx3xN6VUAErSUF83FEk5Hhgc8XaAW2u+pcYj6s7bcbBvaFtLeFnOqP6KYE0=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by GV1PR08MB8401.eurprd08.prod.outlook.com (2603:10a6:150:a6::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.11; Thu, 6 Feb
 2025 17:37:58 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%5]) with mapi id 15.20.8398.021; Thu, 6 Feb 2025
 17:37:58 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
CC: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH][meta-yocto-bsp] linux-yocto: revert omap8250 power
 management changes on genericarm64
Thread-Topic: [poky] [PATCH][meta-yocto-bsp] linux-yocto: revert omap8250
 power management changes on genericarm64
Thread-Index: AQHbeLwT3NT6+pSu3EijahR+oSLewbM6iJKAgAABoYA=
Date: Thu, 6 Feb 2025 17:37:58 +0000
Message-ID: <EFF7DAE7-034B-47DA-A77E-CD8464252749@arm.com>
References: <20250206172451.3843991-1-ross.burton@arm.com>
 <CADkTA4MGuh3msRuRpz47EeNRH7nPwD1pErYVKGfPu0pocRx_Rw@mail.gmail.com>
In-Reply-To: 
 <CADkTA4MGuh3msRuRpz47EeNRH7nPwD1pErYVKGfPu0pocRx_Rw@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.300.87.4.3)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|GV1PR08MB8401:EE_|AMS0EPF000001A1:EE_|AM8PR08MB6625:EE_
X-MS-Office365-Filtering-Correlation-Id: c8edf40d-6a6e-45fa-4763-08dd46d50607
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|366016|376014|1800799024|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?TERYK2RsRnh2RlNvTDJpWkFpTmJlU0pmNXRJaEd6dkFSN05NV0greHBVdzRa?=
 =?utf-8?B?YThuWjN2V0VPeDQxWmVaSndNREdWMnVZMTE1SW9sc3ZPb2pzMGZIUmYzNzZw?=
 =?utf-8?B?UWxOZTNDTCtteXZUaUwzcTJvb3E1ME55MXhTN1ZqUWFwSWxnb1owSjlPMkk1?=
 =?utf-8?B?OFNsampUN2lyQzFHVG1BL0NpRXZZR3JWZGNoVzFWWTBZS0EzbU93ZXQ2ZDFy?=
 =?utf-8?B?cEVvMC9mSkNsZDJUTElsN0UyVi8wYURDZ2lvMFI1K2dnUDRYendsdHJIUE1U?=
 =?utf-8?B?bnZYamp5RGFLaHFhUG05VUlPZDNUUTh3U1pXWnBuT2JXb1hLdjdSdUxCWVdt?=
 =?utf-8?B?SS9ZbEwxR2FrRnMySENleXgrZzltRmc1eFYrMGswUEw5emdueDhseHp5d0k2?=
 =?utf-8?B?R1BjQzhDeEpINlVCdGExdXI0TWtidkRBazlGcU5UM3owczRuVTBETGdFbUgr?=
 =?utf-8?B?VllDWnJUbGs5eitMZzB4dlBrVUtQeWxzMlliL0diWU5qQWNQYWxyRlpIVldG?=
 =?utf-8?B?WnVHQkJ3QzdUZEtpSmlDWHJ6T1JwZkhITFZYdk1PWitQd3F1UnAvOXB2YkFy?=
 =?utf-8?B?cTl3dGxlUk1QdUlCNmNiaGxhM1BnVzI3T2d3blR5bVhKcXF0UXVKS3prZU9E?=
 =?utf-8?B?dFpBZnlhVDVZSVlYOTlGK0dyZDVoa0NaRloyNnRuUW5PaUp6QUp4RjZJV0Zu?=
 =?utf-8?B?WVNaeFlyckVXK1hseENyejMwcFU3VDN5aXdEYmNZYTZta1Y1UTdEWWRvTjVP?=
 =?utf-8?B?eXRwSjREQ1RqQ3Vya0U4R0RhT0N6aXV1L3I4U2lxTGtpM1BZdGNiQ0R0VDhv?=
 =?utf-8?B?Wm9CUXZZd1JoTm8yS2w4RXl5S2VBUmYrQW9UZy9TSWpmTXYwTk1nQmhmMmdy?=
 =?utf-8?B?NFJyWWZGd0dpSGtjY2ZYQ1lNTWRXOXpXakpvZGwxUzd1akVMc2NJemdWS2tO?=
 =?utf-8?B?YkhjTTVkemZiSVhBbE1LNGhpWGVOR0M2NWgwbmdxd1loQmZpT0srR05OcGNP?=
 =?utf-8?B?OVhiR1p5RFJNZmRobFB4ZXh5RWhrc2plV1ovQWhEbHdJN0VPUFVIS0RPSmRY?=
 =?utf-8?B?NVVQOUErZkV0MVVyQmxUclprclpZRHRMM3dkUGxsZnZYZkF2ZzlCRUUwY1JS?=
 =?utf-8?B?cE0vOXRvRHNUM3Bxb1lVa1dVVkFGek91NDhnU1J5M1BYU1BrVjk3bDdPQkN4?=
 =?utf-8?B?TW9tM3g3dUVGanhhT3krbHBZL1U0Zk1paVlEWHkyUjVYbEVmazQ5WlV4Y2pV?=
 =?utf-8?B?SEpjYlN1M3JIYmRSU2pFeE1uMFcvdGh2bS93a0svY2lZeUpYdG1XalhZd1Jh?=
 =?utf-8?B?a2tyeTFSdGswM2J3alhzOUQzUWtXTjN0M0IvaXhXbjFvcFRuSGxlUFZ0RWQx?=
 =?utf-8?B?RGliTldSN2RISldjejNzOUhYeWRkL0tjMldQU3BmdnBnWWozZnlwSENoOGI3?=
 =?utf-8?B?UEZOV1B4U2w4YlpnQW1sRVJMNU5LejRxSDN0U2w2anhaaGpHMmJFeGxjcUVC?=
 =?utf-8?B?RGtuZ1o1eW8zOHpxQzVONktIVnhIdDNYeHVCQ012VHRGRTBhbEdyNTRJdUVY?=
 =?utf-8?B?dzRlQXpoeU1iMllRWnZYNXcxK2JldTdxaDd6TXBzTDhGTzJBaWNNYXIyTVFu?=
 =?utf-8?B?a3lZYmZoOG1MNC9IWnIyby92ZGJwUEhTSGNNY0JQbm92bWRCZDdOd05BRmli?=
 =?utf-8?B?Wmxma2pWSDJwQjB4S1Rya0E1ZGJkVlBOREN4KzUrYnIxNkpUbXp6dEN1NkV0?=
 =?utf-8?B?NEZxbDJlUi9BRDBMTm92MndFWXgxbzlubzU4R2ZubzllK0JqMFpnbUc3dXlI?=
 =?utf-8?B?dTVYWWxnSEtHdFNwcDNiMmhKQ2NwU3BKeEpWZ051QzlWc25hMk56ckFBRGQw?=
 =?utf-8?B?TVpqOFVNY3lHUjNWZnA4Yks0NVR6UEFZazU0UkdubUg5NjNzRE02TGRlRzlB?=
 =?utf-8?Q?akW60P5rLv95Td2obw9Y9Gx0qcn4sZ8T?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <502FAAA0864667418440D441DB27960B@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB8401
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF000001A1.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	b1b7dc80-74bc-47e1-4785-08dd46d4feeb
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|35042699022|36860700013|82310400026|1800799024|14060799003;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?ZDVaZFg2TWxsUTlYemJXM2tkcHd2RnhGQnpVZGJvNEtGeVNKeGhsVi9yTCt4?=
 =?utf-8?B?UkJ3blZTek0xTXJGUVVDQ1UvN0dqRGtib1RyUlhLMVkrTFB2Q3U3WWJ5UC9q?=
 =?utf-8?B?WGFRY2swYWR1U2JkTm5rR3dUNmtnampsQnFBTEN1TzhuR2o4M0w2dVZkdVFN?=
 =?utf-8?B?R2Vpdmt5V3YxTGJ0c1lWYjNxZ1JGdzM5SGd2YXZyUERMR2NsTTFVbzAzbkQz?=
 =?utf-8?B?MlM5Ynl1aG1FWTR6UWhTRFhBdFprV2tudFJ2cEh6RTNvYmsvNTVJa3ZUTFdy?=
 =?utf-8?B?YjlicG55KytUZndtU3dLaEltUERMUkhLL1RuUVdXeHFocFNNU2pCT2tDa2JL?=
 =?utf-8?B?cnVqb1plQ253VjFyZTRsa3l1d0pEcUNMaFlxY2hKUGdtWCtjZ2R5UHI2M3J4?=
 =?utf-8?B?RzIzc0haUHhSYzA2cHJDaVR3SHlJSTNIL3ZoMS9HZ3JzaWhBbytIU0RSNVlp?=
 =?utf-8?B?OG5uNFlXNm1EYmU1TUZ3d3RmVVhhMk5VQjBuNUNpeVhHM3NTK1VQNlF0aFdx?=
 =?utf-8?B?ZmRoQkl3OUJYSXlHTW9RNU1PRHNaQUEwdUVMdTI5My85bGo5Yzc4T2pwZlZm?=
 =?utf-8?B?am0vMjlQb1Y3ajQ4VmUxbXlQY3hacFNkNjRTeE84eHY0aDdUb1RBbUhtZENk?=
 =?utf-8?B?ZlJZQ1ZGT1I3V3ZPSHJoNHNqZmo1MGZPVXdURzVxM1FpTGhtSHhMMmcva0xr?=
 =?utf-8?B?U2JpU0ZXS3l4UWJpTnJ1NVUxTE1FRnlWZnNwekloc0pWUFE3NzBtSlczZFZj?=
 =?utf-8?B?ZTROT21UUXhTNStjZTd4WFlwWTFsY3RqZTJPVVdRd1V6YmtQam9HR2lkVFZa?=
 =?utf-8?B?OFJodFF6R2NFdlZDU3pFeHg1UnVQbWE3T2NJeXdzSFV0bjlMamplQ0VOTTl3?=
 =?utf-8?B?TWhxY0l6eW12N1ZsczRDWDlSNm9qTG1nNmNqTmMyNWdGb3FuVGQxczFzTUtp?=
 =?utf-8?B?dlhucEZMTkZkK0NkOFJWcWlmdmkzRXlBUmpkMmJSdTJlZi9WV21oV2VLUmgy?=
 =?utf-8?B?RmduWHY4QUZ3czc2Q3ozSHRiTjJybnErY3YzZ0tLeWFQUE5lS3RCZlQ3K09M?=
 =?utf-8?B?VGw2bDQxNHN3Z0tIQkZDRk9FUjAvMGMyZDFNdWNXMzZ5SzA3L1NvWEZWYUFZ?=
 =?utf-8?B?Y3pFSWR3bWlkdzZQSnV1YU54RDJydjBsTTM5TXNLREFoenRFZVZlR2FuNGg1?=
 =?utf-8?B?R0tPWWMzQzJQK1VzS0lJaVdsVXprVlQ1V0hxYlZSaUF5cFAweXhoNmwvcWJN?=
 =?utf-8?B?Z2NDbXZndWlHVDA2YXNMOWRHUmlRcXZ0RDRtbVQ4QmZQOGpmRC82U205cDNl?=
 =?utf-8?B?WGE1Zk5XQ09YNFRhSmxHN2xNWmFRVUo1YnlpSGFkR1FpMlNWKzdMNGd3OCtY?=
 =?utf-8?B?c242Myt2a2pxRW5FcTVHekZmVHRpVTlaQUVnRmZnYW5hNlYxWHN0c25MU1ZZ?=
 =?utf-8?B?c3F0Q01nUDgwd0YwLzRkNEs3Yi9yU0tlRDlVT2NKejM0ZHBZaUNNdm41Wnh2?=
 =?utf-8?B?dGErUW9USlVSQVRnWGttM2dzQWxqSXl1dGFVTjIxaDVWbjBUWGFhTWdqeXAx?=
 =?utf-8?B?Q0Z3bXZ2THhUc0RIUjlidjNvTWZPeCtGUWpQSkZZQzJiTGxzc0JGZERZSjJa?=
 =?utf-8?B?YlpTWUJGNVpDRkUvellid0lKaHh1MHVRWStXRWpKZDBFVzlJMGxBaXplRGR0?=
 =?utf-8?B?Qy9MRk9oQ1RvRDlKb0svTHAva2YrSDRzYlVuZ2p6N2RGM3VBSVk0NXo5ZUEv?=
 =?utf-8?B?NEw3WjVST1pOK0JTNStzUHlVZEE0VjlNNmxvUUM0Y3dpOS81MFJweEdlTUhj?=
 =?utf-8?B?QklGNDMzanRTdnQ4MkFNb2NTQVBBa1FzTnpHWjNTdmhwanFLenkxQUl4c1Zy?=
 =?utf-8?B?QUxyNTRZWExaR1lCZXFuU0lXLzRQZWVSZG9pVGRYeXQ1Mk1ldEJ1b1h5YlVy?=
 =?utf-8?B?QTYrOHA3ckVmTFNyV0pwaHNnbWs4a0ZYRXFzOU5xZGdFdEpzbHNYRGQ1cldj?=
 =?utf-8?Q?QY8FBJUvq3IkD91WEQNV+i/ZlrQbPw=3D?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:64aa7808-outbound-1.mta.getcheckrecipient.com;CAT:NONE;SFS:(13230040)(376014)(35042699022)(36860700013)(82310400026)(1800799024)(14060799003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2025 17:38:09.8815
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c8edf40d-6a6e-45fa-4763-08dd46d50607
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF000001A1.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB6625
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 06 Feb 2025 17:38:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13526

T24gNiBGZWIgMjAyNSwgYXQgMTc6MzEsIEJydWNlIEFzaGZpZWxkIDxicnVjZS5hc2hmaWVsZEBn
bWFpbC5jb20+IHdyb3RlOg0KPiBJdCBpc24ndCBhbnkgZXh0cmEgd29yayB0byBqdXN0IHJldmVy
dCBpdCBpbiBsaW51eC15b2N0byBkaXJlY3RseSwgdmVyc3VzDQo+IGRvaW5nIHRoaXMuDQo+IA0K
PiBJcyB0aGVyZSBhbnkgcGFydGljdWxhciByZWFzb24gd2UnZCBwYXRjaCB0aGlzLCB2ZXJzdXMg
aGF2aW5nIHRoZQ0KPiByZXZlcnQgaW4gdGhlIHRyZWUgPw0KDQpIb25lc3RseSwgbWFpbmx5IGJl
Y2F1c2UgdGhpcyBpcyBtb3JlIHVnbHkgc28gaXTigJlzIG1vcmUgb2J2aW91cyB0aGF0IHdlIG5l
ZWQgdG8gcmVtb3ZlIGl0IGFzYXAuIDopDQoNCknigJltIGhhcHB5IGVpdGhlciB3YXkuDQoNClJv
c3M=

