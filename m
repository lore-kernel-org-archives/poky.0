Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6203D6B088
	for <webhook@archiver.kernel.org>; Thu, 29 Jan 2026 16:28:00 +0000 (UTC)
Received: from OSPPR02CU001.outbound.protection.outlook.com (OSPPR02CU001.outbound.protection.outlook.com [40.107.159.44])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.18873.1769704077739256139
 for <poky@lists.yoctoproject.org>;
 Thu, 29 Jan 2026 08:27:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=T4Jpctdj;
 spf=pass (domain: cherry.de, ip: 40.107.159.44, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M3JCb0pC3gkSsrciJRm4lNil/+bk4646PtsdiAyR8IuYM7PJsX96tD/sM+8Qjj7vw1tz0uJrMxvmqgAecsJAtoh+Yf3OXrxF/n2+MyzJKv6Varo5KC8DEUeiECxsrP0jTSPNDN1C8/W5EQtN3sEB4C8CpNNuIYoAA9k67jgvZghO0I2Nhbpht4c8GxGfh0wN7eJ0qKx1BSdYYXUvu7CmLU6dHpifEkpiroym/UNY4YrsVQhGH612ysWJn7pk2VI0lxMPsexbJcIua0Cstafy4AT5kRuZww1CjLAII88Bp0lYvKZBr+6mCuei7To9OhytjAZ0vufWp3oYG0q6EpdqgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pTjOVRwsYqzNVHX2oiOdbFdWB8hLvi5uvEtzFM2VDHw=;
 b=pITj698AY0SaLcZ3/aXXBnytkNrSUORWNGWLCkS5iB4HkoKXyWWOUt42tqLX0+NnGo4nibOkGkPBWxnqTlGeQtTyWawwtlETVRyhUQvb65iMr5sGzxX9tpVMNAQNoAcpCSpYqBcdFhP2x2/Yc9jpYO6qEwHPg1m8n7fuCTivWr4z7kVZFYjwmZaJ1jFQX3B5ZwAzDnlfZrGfhRNJtpYbtzCGHgm7NG5vqZggq28XH87i6j7uKa3gqpOPnRUleP3NuDSJdkdLEJG2ZqkA8lxQk7v6eTglT0xFt7xTqAj/rLmT1D2rBV6/deDwVq2aA+eoEfCOIIlOTPqfh4EGWJVD8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pTjOVRwsYqzNVHX2oiOdbFdWB8hLvi5uvEtzFM2VDHw=;
 b=T4JpctdjqfSo3ZDURYBgtIjUW3YEB9VSYPUNXtEfkk9Sc7Z0njmTO8qpGJLZC9csGmac8u/Q60q3sktUHSZekTF1QF6AAggxLdO06Dl2V9I7wAUuSRyBte6NmRiCzmlGUKdJZpflVJR7QwKljFKqlO1LP8lnFoEpnJRFhjByvp8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from GVXPR04MB12038.eurprd04.prod.outlook.com (2603:10a6:150:2be::5)
 by PA1PR04MB10526.eurprd04.prod.outlook.com (2603:10a6:102:441::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.10; Thu, 29 Jan
 2026 16:27:53 +0000
Received: from GVXPR04MB12038.eurprd04.prod.outlook.com
 ([fe80::6c04:8947:f2f0:5e78]) by GVXPR04MB12038.eurprd04.prod.outlook.com
 ([fe80::6c04:8947:f2f0:5e78%6]) with mapi id 15.20.9564.006; Thu, 29 Jan 2026
 16:27:52 +0000
Message-ID: <22ebb247-6752-42ef-b6fe-5f6abc211ae4@cherry.de>
Date: Thu, 29 Jan 2026 17:27:44 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] [PATCH] Clearing empty linux firmware packages
To: yann.cardaillac@balena.io, poky@lists.yoctoproject.org
References: <20260129160033.849551-1-yann.cardaillac@balena.io>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <20260129160033.849551-1-yann.cardaillac@balena.io>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0227.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b2::7) To GVXPR04MB12038.eurprd04.prod.outlook.com
 (2603:10a6:150:2be::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR04MB12038:EE_|PA1PR04MB10526:EE_
X-MS-Office365-Filtering-Correlation-Id: b00800a0-a5a3-441e-4c73-08de5f5359da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?YUJrV1I1cGllVDQ1NGlJenY1ZlFaRnN4U0dLQ0ZnU2hpUzl3UHRVMW0yNjhm?=
 =?utf-8?B?T21jblVJTCtENXpNN054dzJoRzNyeHl5ZWZJT2h4N3BLQ0kxem44TjUzdFJM?=
 =?utf-8?B?Q292YTgzOFBwV2ppekdJcGxtSmFkMHJSaHcwd3NseXBrc0hrNXU1dlFCbExm?=
 =?utf-8?B?ZGpBbXRlcXFmajAwdk1hWFgyVzhhVGRPWFc5cmhUcGpuYzF0U1dqeHN5TTZn?=
 =?utf-8?B?dTBCckFENlFkdmxDN3BRU29pMCtNWnZPK3NhalBqVzVOcDcyc0ZyN2w0TlRW?=
 =?utf-8?B?RXpLNDk3cnNmcXpyYUR6dkwxOXpiY0YrZXZFdysrQjNpR1hhYUV0d20zR0px?=
 =?utf-8?B?cWRucnNncjNjRkJsOWZnVCtZeFNzeGl5ZENEQjZmcnlqd3lOYnJaSTVjdnQ3?=
 =?utf-8?B?MFdtQkRZbnpRa2Z0Smh5eWx6aW84YWVvbGZTMVhQamlBc1dIVlVxWGZKOFNy?=
 =?utf-8?B?Yzd5UjgrQUFRbVRvanRmRnFxTlVjd2FFY0tZV1JYaEJpVEJGWFMyMHE0Q2ZX?=
 =?utf-8?B?QkdEZXkvNDM1TEtsWE9UaXRqQzluN1BKcW8xMWhBZ3lveTl0RjA0RlNzbHdB?=
 =?utf-8?B?d2hVMUhEYklKLzFIbUVxM1Y5QmxJeFdjalZlQkt0WldtdUtBVFBrTUFiOGQ3?=
 =?utf-8?B?WkhXTnNjcHo5dnhDVGJKOHBnNjd3N0JXRDZGWCtBWWNnZU5qUlQwNmhDWjJu?=
 =?utf-8?B?OTdPa3o4WGNEOUxLQnhFVXJrOXF0RVZ5ZUhKQUVBd2srSUtZa1dQaUVJZ01V?=
 =?utf-8?B?UlBKZzBRb0tCRW4vcUtxTDJFU1dRdWJnUFoxTkU5bFFwWVVTRjV2MElpdkxY?=
 =?utf-8?B?Q1JPZnUrTmF6TlFabW13WkEwc2xsamx5a0VGYnhJTk5QcEhnNVIvOXdvUEZP?=
 =?utf-8?B?SmlBTlhneHlwVkdlV2RreTFySjY5QTM5dFRMVjJ3ZDhYRmh1Mkl2djc4Qkh6?=
 =?utf-8?B?NXNqc05QM2VKWGZzcU9Hb2lqL2ozS0RCVkRxV0ZrVVh3UWpINHBEVEF0RWpO?=
 =?utf-8?B?a0NPU3UrZk80RnNxTVlSNFVnY0JpNVdxNU95ZmpZWGZXamhBcWEvNUwxSXBY?=
 =?utf-8?B?d05ESHNUTDBKdDJmZ3haeXBjbzZiL1lHMmhXeFJYRjFJNnZQSTBPQS82ZnBF?=
 =?utf-8?B?bVgwTFlLT2tYeEV5RUdqOWlNZDZqcVl4Ui9FM0NYYlp2dHpHMGJyTEhzZGNL?=
 =?utf-8?B?aWNJWHMvMEl1b0NUb284enBvbWk5SDlLcDQxby9kSGtkNFhJOC9DTUhnNzZj?=
 =?utf-8?B?OFp5S0dHRXNoeW4wLzF5a01kV0NONjV3eFR5WStadXF3TVA4ei9DOVpsd3JF?=
 =?utf-8?B?aTFTU3E5SHVHb1NrUWp2OGViNmpIVWpOVENtOFd5WGZVUDJPM0I3RGM0bENt?=
 =?utf-8?B?MjJVaUhwbzVDbTk1bFFpRExRL09yUzQ3clAzUzgxSEZkQzA0MVEySVZUTDNy?=
 =?utf-8?B?V2tXZkNkTE10eW0zOVJCdTlBdXpOQnJwUExiVnJyTitNMEdSaGFDNkxlV0J6?=
 =?utf-8?B?YmxadnJVVlFXbkZRZkN1djV4bys1bGZsMHBBbVZHM09BR2hzU0VoQ3ZRdm93?=
 =?utf-8?B?eEhwK1JiWmdYWkJCaFA1S3Mya0RhSnRBaUZNTW5TeUR3MVZNZDlGaDRCUFlT?=
 =?utf-8?B?SUQydTVoM2N3blNVSEVvcllQQjM0TGMvQU1PNXBmd01yTG8wTXRydzhtc0My?=
 =?utf-8?B?NzNEbnp3dFZOTVdDTEFmajdFNEJyMUs1YVpWYmkxR0k0V1hwOHA2VDBheWoz?=
 =?utf-8?B?WWVpT3I0YlMvN0wxL0w5YTJoYlRrYUdoRVVLcEQ0bjNGRXNaVzI4UTMvQXl1?=
 =?utf-8?B?YTl5VEExa1gxU1Vsd0VuR3ZRL0FuWUV3bTJ2Vys5NjdUYWhFMThpSDdVZExB?=
 =?utf-8?B?MnAwTGt4MVVqdktnT3ZGQlNpaTZMRmZHMVNtTjBlOEIyM3RGd0Q2bDRPamIv?=
 =?utf-8?B?bUUvVUZ1M1FrZG9JTmVhV2hwZm9nTGN5SDZvVzdlZVQzMnF4SXBVSElObmhK?=
 =?utf-8?B?QzVBb3U5M2x2eXV5RDdxMk1rTVNlcUt4TlFUbytuZjFoTFFnK0dXdGk1c1hI?=
 =?utf-8?B?eThka3lzRkV6QjAyUkNRd0JRWSt5K3B2TUFkc2VDanRRM25yMDZhZU0rOHJP?=
 =?utf-8?Q?h8RA=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB12038.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RzdpU3hYRnZ3UlVub29oaHE5amVNZjBUdjRFZzVQaXNUYWNMM3c1YXhmWDk5?=
 =?utf-8?B?ZnVGT1RGZ1V3SG5OelA5b2tqNFN1NU53U2xkbFVMbEc5cnM2NENVbVhTWm9l?=
 =?utf-8?B?UUY1NEdzemRNTTZEcjVJVm12Q3pLaXNpMEkvKzNtK1pWaHgzT2RaWW9IWGFm?=
 =?utf-8?B?SWl4NVp3ODJ5VGhYZHMvY2Q0eWNRQlNpVFhNb2ZmM1VqSmxKbzJtenhiMGcr?=
 =?utf-8?B?ZmtUNVlWeDVuSGRzMnVJcWdXck1oMm1KUHZRcFVLMzMrWCtFYnphaDJ2M3Nh?=
 =?utf-8?B?eDVSWmRhQ3pQaGtQZUFURXdaeGNVVXBOR1N2cm1nQmZ5aWRMd1NyM0FiV3Ri?=
 =?utf-8?B?N2ZrcE1pNjJaV0ZTeDZ1d0wyekxYSU5yRTFtWWRnSzVBTkl3UXREdXo5Zksr?=
 =?utf-8?B?eDhUY2R2UFJUYTNTMmZ4M2tzUURaVGtKT3pUbVlvanJNalNYZVhIeVFROThX?=
 =?utf-8?B?ZyswcC9wMjQzOVY2WjgzeWQ4RG1rTFFYY1gyaWNFVjhiYVZGRWhSZlU4MG1O?=
 =?utf-8?B?OEN2MU1ORWMvVUZyQmdQOEJaRy9SRnpMdURJK3NUQWlRUy94ZU1nQlJPRGkv?=
 =?utf-8?B?czFHTmVtOXJBQzJiZG1CSTZUbEZSRm9oRkQ5S3I3L0l4VzFYRjRaeDhpTGhH?=
 =?utf-8?B?cUpNSGZZcU0rSXdVUTVhTlFPLy9MNGJkSzZINkNCeTJnT0tIK1IyZmJYS0Y3?=
 =?utf-8?B?OS9GNHlFNmcxVkRONHN2dWxkWEVTeGN3aS9waHV3Tk1pOVZaRzVjTlNneFBS?=
 =?utf-8?B?a3ZwTU5IZXdhcnFadVhNYXhRMy8zUUV0NnI5a1N2SmtXa2xHaUc1aDdUR3hK?=
 =?utf-8?B?aDhPL1Q1RnBNVEJTRitXTEFnTEpMKzlJK1pLbXpNNVdzL2pBZloxaWR3YnNM?=
 =?utf-8?B?SGRLeklwanZsSnEva0xxOTRyajFVSjNBYkp2REJSaDJsMXE1cE5ka0hTZ015?=
 =?utf-8?B?SXJuUzVPa21ISUI1eW9wdmdwVWdQeHpSODJ4bzVvR0Q5WTdKeWZvOE0rTHY3?=
 =?utf-8?B?OWV5ZE1QWnRrZE4xcFdLbkgwZnl6QkhlclVUcUUvWGZRaXQ4VVRxRFJ3b2tn?=
 =?utf-8?B?SUdkQmNFc3JCRzRwYjEvUDA5WUU3Q1lqWDZ0Z0xYeTl2bjhPN1hUN1kzbFhN?=
 =?utf-8?B?ODhnNDJ6a3FsQldKelRNUmwzendRY2dDLy9rZENXN2piRnBkdzFTaEtjTXBa?=
 =?utf-8?B?dFFQZ0xKWTBQaUVxVUhUblgvTm5ueGVnY0xmU3Y4RXcxMmZsT0I5L2pIbDRn?=
 =?utf-8?B?akZqK3MxZVJhdUxYRWNNNEUxcXkxOW5kcmxRbUR4eHM1dGxVQmdzdWdadVVT?=
 =?utf-8?B?RGg3R0JWZEtJOU1LbUQ0OUZJbzBvcFNXcGRtUllHQW4rRnNSMm1Oa2J2VTN2?=
 =?utf-8?B?SHJnM0JaU2VHNmdaN29vVHl0azFtd0ZRb2NZN2ljVHJiWVZBaWJiSGtSclRR?=
 =?utf-8?B?NnZ0dWcwd2s2b09yZVZQdTNkS09kcWpYRkdJTGtwT25PTmNIcXBJNkk2ZzFJ?=
 =?utf-8?B?VHhocFFyWVRTcGE0QUZUTW1qVCs0NG1CT003bGtjZmJnZ2VVSENpekEvYm5J?=
 =?utf-8?B?MmNCR1VlbVpVRXBib0t0bHBrQWFJenkrMEpyWVYxVG8vVVp0WHB5VXkyY3Vm?=
 =?utf-8?B?c2R3S1JzT0Z3LzAxaWdrdGxtVWNRYzRqYUVXVmNkMmxsVzRQUDJKN2QrWXpk?=
 =?utf-8?B?UWpUTGw5MEMxM3dXU0ZScjZDVzM4aW1PUWIrZVYxNmpCQWpZT1d5YXAydWZD?=
 =?utf-8?B?eUxWVExKdWNrcnNqNmFNdTRjYlNQUncvV1MvRzZ0VHVsQjI1QmZrUmE5Y1l6?=
 =?utf-8?B?K0xlb2JibUVma25FeUt5TmRTa2ZRZ24yYmZHMEt0REJnaEhLUU90Vjl3WXZV?=
 =?utf-8?B?U0QvcEJVMDJKS0RHNFhRZDZwSXF5UnJadm5yRXVlQkdmTFBqUEtmaThjYUdV?=
 =?utf-8?B?ZnhEWTFkNW9SN3Z1R1NEZWcvaUpucHIvMDJuREh4V2lzdklXb1l0dEFKRkVT?=
 =?utf-8?B?ZjQ3bzM0dkVZN0dNb1hVVE1JcG1NaGZJTFo0bW05a3RsUEcydDd6ZjhZUU5r?=
 =?utf-8?B?UGFzUjFKbFEzcHhMRjhtWUJuTVk3OEdBTkYwZlJwOG9RRnV3eDI0ZEJ5NEt6?=
 =?utf-8?B?Smk1a1VidXYxZXlaN3kxQlVSVGZ2aUUrWE1CUVpkV2hQaEZydHZsTll3anF6?=
 =?utf-8?B?czZWR1dISEVJaTB4a0Z0U1FsZTlwRkpXdTB4RnVUMTd4cDZndmdPS2lJNlJ1?=
 =?utf-8?B?OWlCYVRKbm4rN3RxdzhWcHozQ0NaK2daYWRCempjbzBiTG1ISXUxa0VMTUV4?=
 =?utf-8?B?dW1xVzFycXNuZXM2cVZCS0JVQlRhQkovVGlKR3JubTdIRzlLWmZ6dz09?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: b00800a0-a5a3-441e-4c73-08de5f5359da
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB12038.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2026 16:27:52.8738
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BySiqBqHwT5AgitGYmQDEtmD0WU7cQ79Cghoo1LXeSgUrAfyKM0muu8Vjl3UQXjTw8E2UOKwH8aiHsafocZAbOKmpTNvVRuN5e9SDzrYCZk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR04MB10526
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 29 Jan 2026 16:28:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13832

Hi Yann,

On 1/29/26 5:00 PM, Yann Cardaillac via lists.yoctoproject.org wrote:
> [You don't often get email from yann.cardaillac=balena.io@lists.yoctoproject.org. Learn why this is important at https://aka.ms/LearnAboutSenderIdentification ]
> 
> Removing packages:
> - ${PN}-wl1251 as it's already shipped in linux-firmware-wl12xx

NACK. We should backport bfe67c7775fb4a9177c7ca037ac08e93155b5808 and 
757d53f086a4458bc336b1db92c0ad9a5ae6ed70 from OE-Core instead. wl12xx 
has a different license than wl1251 so we really should have the files 
from wl1251 in their own package with the appropriate license.

> - Removing old ${PN}-iwlwifi-3160-* as only the version ${PN}-iwlwifi-3160-17 is now shipped

Does it hurt to keep the ${PN}-iwlwifi-3160-* packages? The issue is if 
a user of a stable release RDEPENDS or IMAGE_INSTALL's it explicitly, 
removing it means they won't be able to build their image anymore.

> - Removing ${PN}-iwlwifi-6000g2b-5 and ${PN}-iwlwifi-6000g2a-5 as they are replaced by versions 6

Ditto.

> - Removing ${PN}-iwlwifi-6050-4 as it's replaced by ${PN}-iwlwifi-6050-5
> 

Ditto.

> Signed-off-by: Yann CARDAILLAC <yann.cardaillac@balena.io>
> ---
>   .../linux-firmware/linux-firmware_20240909.bb | 56 ++-----------------
>   1 file changed, 4 insertions(+), 52 deletions(-)
> 
> diff --git a/meta/recipes-kernel/linux-firmware/linux-firmware_20240909.bb b/meta/recipes-kernel/linux-firmware/linux-firmware_20240909.bb
> index 30c47d7720..2a0f8049ce 100644
> --- a/meta/recipes-kernel/linux-firmware/linux-firmware_20240909.bb
> +++ b/meta/recipes-kernel/linux-firmware/linux-firmware_20240909.bb

And finally, this recipe is only (as far as I could tell) in Styhead 
which is not maintained anymore. If something needs to be fixed in 
kirkstone, scarthgap, whinlatter or master, then we can discuss about 
doing something about it (except master, all must be non-breaking changes).

Cheers,
Quentin

