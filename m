Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 235BACAC59A
	for <webhook@archiver.kernel.org>; Thu, 18 Sep 2025 09:41:41 +0000 (UTC)
Received: from DB3PR0202CU003.outbound.protection.outlook.com (DB3PR0202CU003.outbound.protection.outlook.com [52.101.84.66])
 by mx.groups.io with SMTP id smtpd.web11.9974.1758188492722977660
 for <poky@lists.yoctoproject.org>;
 Thu, 18 Sep 2025 02:41:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=SSgqq38L;
 spf=pass (domain: cherry.de, ip: 52.101.84.66, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PYHdm70GGUTeUHz5trTOwpLK+5vvWxMwzxuFpKWvMXQ9oGtF5ULzpsmFdsW87sJb97hSfqWMWH248UhvOnAXr0fgD+28Tm+QROwhDJDK0Rs6ruG16uI74UfUE6R+CuUoHAxUK1rvrhp+5oNM8ohNBI2O+oBIQLOKryIwaLe9CYGZTG82OvMkP6BMjvnNUj1mFly1/dQ6chgTSGZ3RFASVe2DAtKDK12Jw2TpNYC/t2dd+95rPe4U1j8lxkBE9/eekLlguulGiW/LQJ1OkxfXtIFkZXMHrdEy+Atj6hItfuXB7jcDTvOxow9ZyKs/9zWHh4S+fTzbiF7qdxGVzFAxIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EY5GYfRGpXqBpwSkkd98poAjlEfmis/tfCWgFd1yms8=;
 b=H4bwZyG2PYx5472sJulj/HZG0QqeYpeaKYROek6GeiqI4b2lDesBy3FgSI8g3HCMlDMrdAVs40Hdbgra2ZV13ZGIEI3xroXtcMlRkkGsL+uQ3MCievesjn1FYHso5xPrY+i4piOWDYFBanFakenjqbqf/6wobHhBUHzb8qooY8ONEiDZ6xsHwkHTKgrZjwPH+m9eO03OnbLCAvr0yfx0OR0gfwqXZx4jMK61CBUmlYPHjZyFtrpQATvl5cT82bOeIo05PiVt5Gl2BVrUqGWEmxGVo05xmOZ/09a61PyknucccHnv1rG2tL59IJZymXzNYiU+/tXo0QQJ6TBRLtOs2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EY5GYfRGpXqBpwSkkd98poAjlEfmis/tfCWgFd1yms8=;
 b=SSgqq38LwCURvsxagwCamqNiFu4ZonpwOiQoVBUfuHDVZJY25DEqY5/UZdoNQhpWldyi3n3Wuxqd3SdPWLMgMZL3A2GUZNkWzXLmjCiQCof7cVGY3uaPLT1fV43GUpTPnOaCn5Hl6I7TX7sAietJLhv7gmRms6jmLASGwE1xqWA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by PA4PR04MB7901.eurprd04.prod.outlook.com (2603:10a6:102:ca::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.14; Thu, 18 Sep
 2025 09:41:28 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::5ee:7297:93b4:a8d1]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::5ee:7297:93b4:a8d1%6]) with mapi id 15.20.9137.012; Thu, 18 Sep 2025
 09:41:28 +0000
Message-ID: <436c8b6d-a9bc-41fb-8591-6bb4b2b414c6@cherry.de>
Date: Thu, 18 Sep 2025 11:41:27 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] [PATCH] poky.conf: don't mark debian-11 as supported
To: ross.burton@arm.com, poky@lists.yoctoproject.org
References: <20250911195545.3525333-1-ross.burton@arm.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <20250911195545.3525333-1-ross.burton@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0002.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::22) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|PA4PR04MB7901:EE_
X-MS-Office365-Filtering-Correlation-Id: 5d620294-113d-4b4d-9d2a-08ddf6978a93
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?SWVPNUFDcG51Q2ZSZzNZN20za1E3VVBSODFsNXg0YmRMUTl0eWMvVUZ0b1Nr?=
 =?utf-8?B?V29HNmk3UXZQSFZIRldZVTIxQlNjQk5QUkM1b253M2M5djRhUGY0OHYyMUhn?=
 =?utf-8?B?anFjMStLcHdmWVlxUXRGZk1xSDA4OHgveGpNcGlFUjl6ejBwQjdYd0o0eUJZ?=
 =?utf-8?B?UmUzUDc4bnVwU0x5QjV0OUMzeTBaVU1qalNWUlRxTi9MT2NpaGk3R3hnZ1hF?=
 =?utf-8?B?ajZEcVVaU1AxMFpJanJ2YWlWSEszMTU5V1ZmbzFzK2RDSSt6SkdQYXgxZjlo?=
 =?utf-8?B?SGw0NmpUcFFlcnZhaTVxSCtIN1FEYStLc2ZvalF4Y3hEaEtwa3lscjVYZmFs?=
 =?utf-8?B?TDBWaVVRWlk5MnE0YlNUYnFrYnIyN3ZJUEpLT0czakQzL1MwZnJoK09McUxB?=
 =?utf-8?B?Tm5XMExMWGVqcjFPbUhpL0JZU2k5SEY4WFM0RWg2b2NUeDBpNkpqeWJDc3lT?=
 =?utf-8?B?bmtQd2dtYjNXRVhZNkhNajVlMjVicnJRSXVTQTNWanFET2NNMkRGNjNZZTdx?=
 =?utf-8?B?ZEhrNkFvb3I4eHpUUXNmeW9QSVVhbXJiL3dOcGlMR1VzUWtrTkQrTit3eWV2?=
 =?utf-8?B?YUltdWhiZWtJTkhublRyVDlGNlA0RUYvY20rNXNPL1N1L0JOQ08rZFByc3lX?=
 =?utf-8?B?c0xtbXFuWTRtaElMeFl4eHVnM1BpamFMZXR4aExOeDNVQjFmaXA2L25kZzJK?=
 =?utf-8?B?b2hpYzlPS0NOU1JQQ2lwYzZFb3JHT1JqS3E2cHNhTWRHbHYyOUtpTlA1ektD?=
 =?utf-8?B?ck5TSUYxajN4bCtweEErOHJad3oxMkpzRkdTUXVsalBoVStBUWpHenkyUjBI?=
 =?utf-8?B?bjYzcmNRNUFJMk1xZHhPMmZTVzNIMVhGcFlBV3IrMFBEQlVmZ3VMUDJKT1pD?=
 =?utf-8?B?YXBrUHR2Y2xOcHRHb0xVZE9idW8zempHTThlVDJ0L0l0ZlBkVEpsS0JNbGNY?=
 =?utf-8?B?ZWgyME9JaStFRDhZamFna2kxVmpyZkxFZUplcnBNOU8zbFN0TXBhY2JUL29R?=
 =?utf-8?B?a05Uenk3ZW9LcmxuUnRITjgzd3NJcm1pZWd1Y282dHJHbXBEUkJvVWNtRVFk?=
 =?utf-8?B?VElJcWMzS0F3TGN4b0ZyRHRyd3Y1d3hIZzVOMGxjY2ZXSXF0dUYvOFZkOVVD?=
 =?utf-8?B?b0JIN2lFcWcyVFVNMTNhYUlzOXNybEtqRHl6bm5OdVE4aGNPRFZieWJqQkZ0?=
 =?utf-8?B?Rk8zSG9ZZEFzek1hRXozMnhNYndmcTgrVzR4cEoxZDZZNFBkRVA2MkpQbGZ3?=
 =?utf-8?B?QjhlbUp0SFBBUGZXblAxMkoveFhiaVNXS0RNMHRyNHUwLzRDUzlvU2hNSE5S?=
 =?utf-8?B?aVJidmtnUHpPUk01aWdQRG5XQndPVXBKdk9UWlV5YWZ3MGpCempxY2JaQ2pK?=
 =?utf-8?B?M3pGeStyRHQ4d0pxakxLU0kvVDFUQXE4SlhoejZFZGo4U2F0UVZxNEdzS0l6?=
 =?utf-8?B?SzhsOWtKdDZVUWd2Rm9QRXNDeU1EVEN2Ulp5MjZGdDBQTm9BNGVKZzVGTTE3?=
 =?utf-8?B?cnpUTXB5TjA2S3ByckFHVm0xd25BNExFV0JHZHlZSmhzUmo0N25zWTFLN3g4?=
 =?utf-8?B?RWcwemthbTZkQ0FPRWQxa0J4ZXN4Z0xYZTBhVEk3N1JKVWIzMExEQnhrQTlG?=
 =?utf-8?B?SFJyTmpqdDdidjNxeHhtZE9pd1cxZ3p2YTExWS9YR2lOTlp6bWlGdlZ1WnJ3?=
 =?utf-8?B?NlNBVk0vb2t4VE42d0txNzRsaEc2VTZOWTlGbFcxMjZNVVUzUGd2UnU3NW90?=
 =?utf-8?B?U25mNCtzVEVPWjJFaFRRNmRHZVJqWmVoZkRkQWNYcERoeWFHSlkvM29FYzZU?=
 =?utf-8?Q?pXGvE2nWPzJ0zg0RC96fAytOVeFPngxsDnmwY=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?d0tscU9QZUxpRWJIN0tmL25EWFphRlYxNWV0YlNaeDdWcC93ZXRycjdXekxk?=
 =?utf-8?B?WHV6V2pjcysrWFJzN0xDbGxWV1BCVk9WeXpNd2h4US9QNEdpNUZObmFNTWlx?=
 =?utf-8?B?NkdqaXlyZGQweU1PcC8rYWpTYW9ZQkdsU0JPR1B6ODBhUUhmeFJPL1JJcHl2?=
 =?utf-8?B?RjkvKzk0M1VXRWFNa0Z3WGJrRGZjb0h3Z0ZOSHRIbUZuSFdUSVdLR3pac3JE?=
 =?utf-8?B?WU0xSDRyclhDOFF4a2R2VnJuUjhRTENoazFvSEhaM25VaEVieTVYNldyUFJz?=
 =?utf-8?B?b2kyN1I4RkxqRGcvMExDdG9YenpkZiswK2lOZ2xZQXdXTTJDckJIUWRxZndR?=
 =?utf-8?B?Tk5aTndYcVd5b2pneFE5dXFqTUhiNEliZEJjZFdxL0tzaXAwWHdORm1OMWJh?=
 =?utf-8?B?UllJY3JPWC9OUFhseTNSajdKeDVFSEpKRmhDN1dVU3lNNDB2OFYrd1dUaHpL?=
 =?utf-8?B?dTMzeTdGd2dnRjF4OVowMHJuZWVvYnRJMWNicW1jOTByQ1VNWlBrSWNHM3k2?=
 =?utf-8?B?N3phc3FjaUhGUURMU0JydjVsZnh5NXo0c0ZUd0lsSXJvU2dzelhLTGpqcmRJ?=
 =?utf-8?B?blFwNmZXSUh5Mk5ZSEIyeWRRZDBjL3k2VVlFelRqNmpqcHZ3REdlajRhb2di?=
 =?utf-8?B?LzRFaDhOWUJObVBwc0NocksrTWF2SlN5akdhS0E5clVoeXJ4SHFSTkJVZXQ0?=
 =?utf-8?B?NTI1OHAvNXVqSEUwbmx0bkI4QlV3bi9JYTlGWEREbEVsdkd1emkxS3VCQ2VZ?=
 =?utf-8?B?V0VlTE9IcnVyVWN4b0E2VmR1c2t6T0c2NUYveFRKampWbzdyem11c01zSVlB?=
 =?utf-8?B?YW5tMGpydTFsaktuSGh3cDhoYjZ3STJGV0h0d3E1MXhIMFB1eDF5STIzckp6?=
 =?utf-8?B?Sm1WNWUxeUozUkJaRXRZNjVGU29saUNQRnl5ZjBTcmdFbmZsWEFuVmZQemtm?=
 =?utf-8?B?ZnF0SmRnblFpRHEra3lrdTlQODY3c282V2ppVnNPN3RLVHRKajlLTm8zdzhk?=
 =?utf-8?B?TkYzUUxRb2NzSHVWenJNRkdwcmZpaXFTTlJtd3dZdU1ZbjlMdGZMMTdya056?=
 =?utf-8?B?SG1WT1lqYkQwU2NIRTA2dGpuRVhZNytQQkFCTEp6KzBSYW5uMG1INzVDSW1G?=
 =?utf-8?B?UEVpUWU4eUg0R3E3T1FnYmgzK1NoZmdDREw5ZmhyUkhPTUJLWGZReHF5c3E4?=
 =?utf-8?B?OGN6VDF5MnFseVZIQUYrWXhBcGpvL3pSNGgzbHpaNkVJcno4NWFQUmJOV0hD?=
 =?utf-8?B?V1ROY2hvQnFpTkQ1RER0czdUeXptL0hGMTBHU01zK0FLa3ZROG9oWmdYQy9T?=
 =?utf-8?B?VFI4ak1QSi9hblJ1U1VvUTFHRTNQN3RjRmR6RDNyTG5SVXpyR2txN2FjMVdQ?=
 =?utf-8?B?UzVuU3drbmJFRzREN3Q2NnlTTmFWSGZCQUFTT1I4NWZBbTVZVTFDdTZ5ZStP?=
 =?utf-8?B?NFZ3U0VIN1ZsTk1ScDJ3STZHUXVyREhabVh0TXFvYmJMa2s5bFdpR1dDeE16?=
 =?utf-8?B?b0xkTGR2b1Y2YmNnT1FuWXZObkJLN0lDUEI4Vm9BMXhsVGRvNDQxK1N0RmFG?=
 =?utf-8?B?RXFybFlqWlhMbmtQMHV0aEhla2pXbFBjQ1pEWVhBeGhBUlJUT1l1bnF0N1k2?=
 =?utf-8?B?bG93RFc1QUt1OFhOeWd1Y0lscnAzVFVvNGxncjU0dEZ3ekdoT3pjeUE3UDJW?=
 =?utf-8?B?YlU1cGtHK1dGcklVdkpHbDZabWFEODRMazVKaE81Rm52bHltT0N3YUMvWGdL?=
 =?utf-8?B?YUVNUjQxTUNxNmtTd21zeGE3RXNYRkhFNUtpaDMyUC9mNjE3S1dpQlNmeXpt?=
 =?utf-8?B?SHMzbWd3MTV5TzVrUTlPa3NXT3dvNW85OE92Q1VBWjFwaE9qWC9Cby9mTm9X?=
 =?utf-8?B?U0NiNzdQa2tBTGYvRUdiUGh5NXlGUWw2VXJ3dmg3MU1wbHVUMXUyakhPVjUz?=
 =?utf-8?B?dGVLTDlDT0VDRVBoN3dsU2pFdGdHUGZUK09MSS9yOHZHdlVNckVuUjlCVk9T?=
 =?utf-8?B?VlZaaHcweDFuZkpTWHc0Zzh0RzNHdDk3MGt6QkRjMTIyUGFXRzZDYjhoVGpw?=
 =?utf-8?B?K08zcGtwOEhKRytMT1RYMzRiejZSak5JN29ZNmVLOU9Odk8xNU5wa28xSVd0?=
 =?utf-8?B?L3l5QU9MUW0zbWQ0NUlHVHlJVkhDcC8xWVdRQ3Y4ZW9NWEhySEsvcXNvOEZP?=
 =?utf-8?B?Y3c9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d620294-113d-4b4d-9d2a-08ddf6978a93
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2025 09:41:28.4265
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6ZYjkH/sn+62KELftZwQlxu3pXWjygkzm4ah+KFTIVE0ZDSjCG/U/E82ErY8QMBUv8aroz/2dZG7MbNB+H3rg3iPB2sRNCdNZrU0zmmoqV8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB7901
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 18 Sep 2025 09:41:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13749

Hi Ross,

On 9/11/25 9:55 PM, Ross Burton via lists.yoctoproject.org wrote:
> Debian 11 is now "oldoldstable" and under community LTS support until
> August 2026[1]. It is not covered by the Debian Security team and any
> fixes are best-effort only by the LTS community.
> 
> Debian 11 was released 2021-08-14, Debian 12 was released in 2023-06-10
> and is the current "oldstable" whilst Debian 12 is the current "stable"
> and was released in 2025-08-09.
> 
> We should shortly be testing on Debian 13. There's no real need to
> continue testing our next release on such an old release of Debian, so
> remove it from the tested distribution list.
> 
> [1] https://wiki.debian.org/LTS
> 

Fedora releases only are supported for one year, so what should we do 
with all currently supported Fedora releases? We don't even officially 
support fedora-42 according to this document and fedora-41 will be eol 
in about 2 months.

See https://docs.fedoraproject.org/en-US/releases/eol/

Cheers,
Quentin

