Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B592C3ABC9
	for <webhook@archiver.kernel.org>; Thu, 15 May 2025 12:40:04 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.67])
 by mx.groups.io with SMTP id smtpd.web10.11417.1747312794910369716
 for <poky@lists.yoctoproject.org>;
 Thu, 15 May 2025 05:39:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=JFAeAk1Y;
 spf=pass (domain: cherry.de, ip: 40.107.20.67, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bo3c42H68rlhjI75uiSsB+oIrCFWuGs25whAfXfCu9mTrXg0QzvCxutHutVTFjZrJzzvBsKRCph0VFpe2R90Wu722BbWn6bTdTUh5S16kiXqDdIuurSGrQzavHT6gFmIeDbX8Go0UwJI/rqME/I38l3QORSFek2uI0E+9iUpDARCH6tDp8aWRG6hOhty4sflHxiYKjsGHkrwRbTKNBV0AInaz7s2fQ05Ma/qnA1D/rADFjw0wAmyBXOTr8HsiKk7pUv+c0vM32/cuLAXtDZwLgpZvE6u7JWE9so5gjx8ymbiHD1iU7LG40eVByGM9xK6QXzk+4CvB2SRv9ehbmiG6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YTey2MdffXkS+6sJ5FgSiVSrqjwSrAGifnwy8Ek5B0M=;
 b=A1LsCLNYHy6R6wzJCZOjsa5k7WYrdgdV0rUsZOq9VXrBb3wxr1d/bG0IzSP6a8E0q49utw3ekU3hGO3tMklf+y/hZqpa9Ru4AFCxmBJ7uZS3iF74y6LAofy1cI6H3bwejmTvBSH9OOtNk1ZYxSCe1hguc8q3GXJyzI1v0ED6EdGnseJy1LzlqnIpvMinl6PXEvXZ/tA1OviJKaLfD6A4mg/USBinanfJRRnBv/mptMlp9+Rzpv2CkF5IG+EzBbN+FS1WEdH92dpGjxcugI47tMeWh7SaUltsytwW1q6pb6MoeNDNIJduBmqRE4g8wXYuCuIpWzljw/VZSxIK8AGetQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YTey2MdffXkS+6sJ5FgSiVSrqjwSrAGifnwy8Ek5B0M=;
 b=JFAeAk1Yhf2zg8j972ysHcySHPvhnt7pJA1LDIZPrLgeQTHgCsBGuI0POAwf1SSbT7AIgWlPugaOMHqhOrAD07F4t23EC+1Zf3rlfm0gqzGNKV4vuw0wsIU43xUTmzQzfX330JHb3NZbirPWs6Yl/8ba1fntBfayQy85fMl/jTQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AM9PR04MB8906.eurprd04.prod.outlook.com (2603:10a6:20b:409::9)
 by PAXPR04MB9571.eurprd04.prod.outlook.com (2603:10a6:102:24e::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.29; Thu, 15 May
 2025 12:39:49 +0000
Received: from AM9PR04MB8906.eurprd04.prod.outlook.com
 ([fe80::d379:5378:b1:cea]) by AM9PR04MB8906.eurprd04.prod.outlook.com
 ([fe80::d379:5378:b1:cea%4]) with mapi id 15.20.8722.031; Thu, 15 May 2025
 12:39:49 +0000
Message-ID: <d4444f34-9fa0-4f0a-b3de-9d49cfba18a3@cherry.de>
Date: Thu, 15 May 2025 14:39:47 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] Error while bitbaking core-image-minimal using Poky 5.0.9
 (Scarthgap) on VMware
To: srivamsi_malladi@trimble.com, poky@lists.yoctoproject.org
References: <7iAm.1747306937631397189.DLQB@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <7iAm.1747306937631397189.DLQB@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR5P281CA0016.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f1::14) To AM9PR04MB8906.eurprd04.prod.outlook.com
 (2603:10a6:20b:409::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8906:EE_|PAXPR04MB9571:EE_
X-MS-Office365-Filtering-Correlation-Id: e8ebbc94-96bc-4baf-a5a1-08dd93ad94af
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?bzlNbzh3WVI1RTMxSFgvcVR1Szl2U2R1Z2loU09HN3RoUVNlR1RjVmtkWWwz?=
 =?utf-8?B?TzFrOTVTSHdwSkpocERkQzJhZytBL1RlTDlSbDRLMk4wYmR0REtrbjBzSjBN?=
 =?utf-8?B?MzlQL0U2N2JxbzFhb25zWW1qR2ZDenNmeDJzdWF2RWliNC95aDlTTTFLS2Q3?=
 =?utf-8?B?akRIcFJRWXZnSWJGWGUrUmtRUWZiL1kxSDU2ZGZhcmhCUTUwOVFnQU9tVDV1?=
 =?utf-8?B?dE95L3FQZ3BEN1B2OVVXczFPbHhpRk1UVGR1ZmoxSVhXTFpCVEt6K3Z5V2pH?=
 =?utf-8?B?Vjk2dDBPSjZSN1VQQm9pa3liSEZ5TXBlY0w3ZWYzZFNWbmhyVEFTTU9tMHJ6?=
 =?utf-8?B?VUNYZUpNRnpsdEg5VUNhTVd5dWVxUldYdUVabTVYa0JYKzVQUUlGRUh1YThU?=
 =?utf-8?B?ZlJza2JMeG9EeThHS2tzeGxFblZLdCtnUTBxbTNFMUFnSlZxRDdzeFJ5eVFV?=
 =?utf-8?B?U3pyUkhPOThpWnd3ZTBqRnQreXFFNitLOU5Wdmx3SUVRbDZKRDFWMWc3Rll2?=
 =?utf-8?B?YVJ5elZNNzl4YTV3UkNjV3BiUEhrdUhUOGNCTHEzR3dFYXRIOExnMmRvd01H?=
 =?utf-8?B?U2Z5U1FGYWh6YVZ3Y2htYzU3OHFYdlBacGFhd1lnbWF5NG43dFpyZFpiR0xH?=
 =?utf-8?B?dWpOOFRwQnlweEdMeUpnQnBickdRUXRkbFRtQURVVHVCeGljZDVzN2RYSVZG?=
 =?utf-8?B?T1ZZNC9YUGVoRVZIT1dkenZHdXdGZk1uQzFUR0hYekNWcHB1VnFVRUErbFBN?=
 =?utf-8?B?OVI2K1JTOG93cVBMQnNKRUJCUGRDT1V5eUE5OWRBMExSVC9kMmNIQTd6REJt?=
 =?utf-8?B?YmtDQ2JxRVZ0a1p4L2d6aGlpeE5pVzMyN01CUlNPNGdwWnZCWDBsSlpQRVd1?=
 =?utf-8?B?b3MvQmF2VUJkdGk0bGlHeStVaGowSThocDJNeUQrYkZNeHBiZk1pOUcwQTla?=
 =?utf-8?B?WllaQ1Frc05LS1dvYXJrSzZ4bmhST1Jyem5PNDVxUjUzbm8zRzVOTXNHLzJh?=
 =?utf-8?B?V2txSVpObUdJZDd6dzNBc3V6WlB6N1hicEdEeHJUaHA4MGZWeHNpandmTDV4?=
 =?utf-8?B?K2N4OGZEaEVoSnhQZXE0Y2wxNnBORVVIZk9SN1RjRFJ0clp1Z0JWS2RXMEkv?=
 =?utf-8?B?aXZqWDdpSkNvSzc4MnczcmJ4aUN6TkRqYVBSOThmMWY5RDJXYWV0a0dhWTZK?=
 =?utf-8?B?RXhFRjcxZklvbEFycmYvREhmUGtnek1aNGI3cTUwV1VZRDh3YjEwUWxkaDRC?=
 =?utf-8?B?T01XZVhTT2gxSjdmdjFNN3luMkYwbHZwdkt2Y2ViVEp3WC9xSDNqaURBQU1D?=
 =?utf-8?B?OWFUeU9Tdml2QXdCajBOQmx4cE41TUthZUhHaG9FTWFqT3FTUDY3Ym1tTFdu?=
 =?utf-8?B?aEJ0Rk1lZkp1eFNRS0NqcXZndmgreWs4N21JQjBhQk1yaE0rbHBKSVprSElr?=
 =?utf-8?B?UGV0dzErTTBwTnpGNGhQYXVnVXBkdjFkbXdzZTB0dWFnejh2WHc4MVBONmZq?=
 =?utf-8?B?aUFSVWVDS09WclNxdndJaVdTU3ZtbUxCeC95RWVKTWFFNS9sZ25reUViUGZL?=
 =?utf-8?B?VzFFb3JQVW4vN0QxQ0pXbHVSdjNSUVZrRUI2eFNneWw1ZEt2dlFyQ0dMcU9Z?=
 =?utf-8?B?RHdielpwczRvMmlUYjlZRDdwZVBrcWpTQ0JlU3AxQmRwQmJod1U5VERtNFJv?=
 =?utf-8?B?K3JwU0g3azdBNjdPclpZUVQ2VHVtNVZIV1lHUkU1clZabGZyOC9VQVJXaUZN?=
 =?utf-8?B?cmtrR3k3UzFEUmVrby9QVHlzdGpFY0VEL1AxemFITFh5MlV4SjcyZEd3Wlla?=
 =?utf-8?Q?2bPumBahRjCOKmRpAcFzOpp4oi0SWHmiWGcVM=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8906.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dmVBaUcxTGdBbUFDczNnTUVxc0huM0FFTW1IclZVSFM5T1FhOCtTNWdlMm5z?=
 =?utf-8?B?Rmd5QnlucElsWnA2Umg2UVI3OS93K1hLNk1SSytNdk9BWTQ0SGdUdjRtMXZq?=
 =?utf-8?B?eGhTK00waEhVTjhNUmVwSWNKTjNkTGYrZnBrRHY1NE9CcDJEM2hCaXVoa3ZR?=
 =?utf-8?B?OEsyUWw4a0xxWEJRRG9nMi9TMUlmTFFEZU9GbFNDbEE3UVFKZlFkdVlETjli?=
 =?utf-8?B?VUJmVU16UHROMG5tNncxWER4MjBIbk5lUjdkOVRHb3RPTklIQmtNcThIS3pp?=
 =?utf-8?B?Q09lVWN0bFFhZW9YTSs0N3dJN3JlRno3THRFaWltbmd3cGlseFFQalZZRXBL?=
 =?utf-8?B?cEUrUURDd2RuaFZnT0pRakRKOGk1UHkyS1lhWWlNWUkzRWdZTzRzaW9DSlZN?=
 =?utf-8?B?aUgrM0ZJL0lNTCs5elRWQWVsSnJ0aDdOMVB4NGNiKzlBS3V3ZHdHM2EwUWNE?=
 =?utf-8?B?SWVFQktHejZEd0lBZE5SWGd5d3BTQlR2N0c5ZFcrNjhvWE9oVzVuMHhrdGwz?=
 =?utf-8?B?bHJWd0lWOUk4WVBSMm9SK2NEVmRWbUNGTHRscUp1dENSUWx4ekhJamJkYWI1?=
 =?utf-8?B?Y1ZuaVpYVzVhVHZ3d0FuOHlsVDBSSmNIUTJNTDJoRTIrUE1HY1hXRmpwR0Jl?=
 =?utf-8?B?UXhEbnMrWjZ1YnZnalV1RjRLaFoxUS9zTWNDT1d1UTFZM2tDRDA1MjBOQWJi?=
 =?utf-8?B?TmNKc3hSMXphTEMvMStNcjVtbFRYMFA5R3FQWkw1NmRuTkJKTXo3MHBQbGJH?=
 =?utf-8?B?MGpjaXlVVlhrbm4vK1FDQWFZWTY4cVFPdWt2UnY0TzhpZGI5cXIwcWpwSm1C?=
 =?utf-8?B?Y1JCNEJaRFI5QmhCZ2cyNzBMUEwrNC9VeWFxV3J6T2dMV3E2aFlPMHVUaHVF?=
 =?utf-8?B?TDV6Y1VFT21td3VIYVIyeG1WdHNYZGF1R3Q0VVBZNmpINVhHOHNLeUcvWWlH?=
 =?utf-8?B?aEV6MUlqVjN2bms2NHRuTjk5ZVp5NEl1SW5Qdm9UNUFFdlV2NGtuSW1SNkxO?=
 =?utf-8?B?S3VTczJMVkQvZHhJY1I4ZFg0K0tuaDJwMnpZTWZVd3ZtTmI1YW5uS25RQVVS?=
 =?utf-8?B?eFMrNm4xQmFUYlE5YncrN1hVZ0NKUEVQYmt2VDBWMTBuQUR0c0N2a3J4bk5m?=
 =?utf-8?B?bE9tb0hxc3dLVm9GdWd4NlB0c0JuUm5yeXRtL1pHRUNzSndVNkV6dWhVUUsr?=
 =?utf-8?B?MGM2SU5LYWdQOVQrdDgvay8wVGhCeWErbG5vYzdsMm4veDFNNWxNWFpTUHVO?=
 =?utf-8?B?SFBrb2V3R2dkQm1HU2xuL1RFZXBpemREcU96MGhsQVpYeDZETHAvQkxUVDVw?=
 =?utf-8?B?em9PN0Q2aHNIYUU5YjVJbElxV3pVNVhtbENVYUtkVVJKNG91K0o4bytzUndZ?=
 =?utf-8?B?TFQ1RlJSOU94cWxqSHpCd1lEWDllNnBjcEFtdTRaWEs0SmMwQ3dEQUtoM3JI?=
 =?utf-8?B?YzdlOVRZVytIRDgxeTdoNEZ6eC9RelQybW1PbzdNUkVpcSs4bzB2RXFTYnQw?=
 =?utf-8?B?NWcxcDZaUEY0MmdZTzQvcktncXlJbzkwTGIvMUcyUis0THNuMi9CM0VlK3ZW?=
 =?utf-8?B?OVZIR3VIbUp1OXpnK2QyQlYrTzU0WU8yNEZtMUd5ekRHTVJST1liS2V4M2hs?=
 =?utf-8?B?ODU2SGlwVFYrUlU1OVZHc1NERGl6TDZ3b0ZkLzBDYWxNZG4wM3pNSlRlc3NK?=
 =?utf-8?B?dGZVQXJjcmQxMExVdjJJSHNZNzYrSldJWGlaVVZRaGt3K0hrRDhxeENzYVhO?=
 =?utf-8?B?VTg3STZMekRGd1JpNGF2Rjg4RWF3b2FDeUFtY2g0K1FvNG0xOEJnZ0FFNmlu?=
 =?utf-8?B?cDVKRkRKZ2dyZnRnR0dETWhOaklWL1RPdnc5ZlpDTEtoREV5Q3VNclZlVGZ1?=
 =?utf-8?B?R0x2emFUa0xlSzRWOEpJS2I4MzZqUjFFRzIwRXZENG1FZVB6bThXRmlnYkVz?=
 =?utf-8?B?aDR0QnozVi9BdmUrd1g1ZHVFZHRNUmxPMllLUHdZd1hqbzhRM1NScGw3bzJr?=
 =?utf-8?B?SS8weU50ejNxbk9Qa3dsZ2wxTWtwUVJDK2o3Z3BYK2xkNEZ2eXFZQWFkZ25a?=
 =?utf-8?B?U1BaMWd2aks5NlpPWXVFZE9BR1VtelZNVEtCdUpXSnJCdXJsODdBbklPcngv?=
 =?utf-8?B?Z1JOQmtKRjE1TC9GcGZEY3lOcExPSmNkT3lsdzhKQTF3ZTFnM0JpVFI5M21K?=
 =?utf-8?B?Znc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: e8ebbc94-96bc-4baf-a5a1-08dd93ad94af
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8906.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2025 12:39:49.2566
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rxXm0TbznUXKW7bHPw+ZjNnbq9QeXSoPIWZvaZhC/It+Vz3XA4pYHbK9qWRfaE1jLhLjB2jabF63xj5eUS6bUXO/zNmh2kl1x0cPTK/BKE4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9571
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 15 May 2025 12:40:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13619

Hi,

On 5/15/25 1:02 PM, srivamsi_malladi via lists.yoctoproject.org wrote:
> You don't often get email from srivamsi_malladi=trimble.com@lists.yoctoproject.org. Learn why this is important<https://aka.ms/LearnAboutSenderIdentification>
> Hello all,
> 
> TL;DR: I ran into a couple of errors and fixed them with the help of Gemini. I would like to know if there are any better solutions to solve these errors.
> 
> I am absolutely new to the Yocto project and Poky, so I thought I will so a 'hello world' kind of thing with Poky. For that, I setup a VMware with Ubuntu 22.04 LTS and with 27.7GB RAM and 16 cores hardware config. My host computer is a i9-13th gen with 32GB RAM running Windows. I chose the really high (max actually) RAM and cores thinking I would have a really fast VM, but due to the problems I ran into, I realized more RAM, mores cores != more performance. So, following is the problem I ran into.
> 
> When I bitbake core-image-minimal in terminal, I got an error saying do_compile failed on gcc 13.0.1 and when I looked at the log, it said error x86_64-poky-linux-g++: fatal error: Killed signal terminated program cc1plus.
> After spending some time on Google and some forums, I found that my VM might be fighting with my host PC for resources and in this process, the tasks that bitbake wants to run (compiling gcc in this case) are not able to get enough PC resources due to which cc1plus got terminated which is needed in the process.
> I tried reducing the RAM to 16GB and cores to 8 and then to 4, the error still remained. After reducing the RAM to 8GB and cores to 2, gcc could finally compile, but I ran into another error.
> 
> 
> When I run bitbake core-image-minimal, I get an error and following are the contents of the corresponding log file
> 
> DEBUG: Executing python function extend_recipe_sysroot
> 
> NOTE: Direct dependencies are ['/home/ubuntu2204/work/poky/meta/recipes-devtools/quilt/quilt-native_0.67.bb:do_populate_sysroot']

This highlights that quilt-native is already a dependency.

> 
> NOTE: Installed into sysroot: []
> 
> NOTE: Skipping as already exists in sysroot: ['quilt-native']

This highlights that quilt-native is already available in the native 
sysroot of your recipe I believe.

> 
> DEBUG: Python function extend_recipe_sysroot finished
> 
> DEBUG: Executing python function do_patch
> 
> DEBUG: Executing python function patch_do_patch
> 
> DEBUG: Searching for 0001-Do-not-set-PYTHON_INSTALL_DIR-by-running-python.patch in paths:
> 
>      /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-c/createrepo-c-1.0.4/poky
> 
>      /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-c/createrepo-c/poky
> 
>      /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-c/files/poky
> 
>      /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-c/createrepo-c-1.0.4/
> 
>      /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-c/createrepo-c/
> 
>      /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-c/files/
> 
>      /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-c/createrepo-c-1.0.4/x86-64
> 
>      /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-c/createrepo-c/x86-64
> 
>      /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-c/files/x86-64
> 
>      /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-c/createrepo-c-1.0.4/
> 
>      /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-c/createrepo-c/
> 
>      /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-c/files/
> 
> DEBUG: Using /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-c/createrepo-c/0001-Do-not-set-PYTHON_INSTALL_DIR-by-running-python.patch for 0001-Do-not-set-PYTHON_INSTALL_DIR-by-running-python.patch
> 
> DEBUG: Searching for 0001-include-rpm-rpmstring.h.patch in paths:
> 
>      /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-c/createrepo-c-1.0.4/poky
> 
>      /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-c/createrepo-c/poky
> 
>      /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-c/files/poky
> 
>      /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-c/createrepo-c-1.0.4/
> 
>      /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-c/createrepo-c/
> 
>      /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-c/files/
> 
>      /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-c/createrepo-c-1.0.4/x86-64
> 
>      /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-c/createrepo-c/x86-64
> 
>      /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-c/files/x86-64
> 
>      /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-c/createrepo-c-1.0.4/
> 
>      /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-c/createrepo-c/
> 
>      /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-c/files/
> 
> DEBUG: Using /home/ubuntu2204/work/poky/meta/recipes-devtools/createrepo-c/createrepo-c/0001-include-rpm-rpmstring.h.patch for 0001-include-rpm-rpmstring.h.patch
> 
> NOTE: Applying patch '0001-Do-not-set-PYTHON_INSTALL_DIR-by-running-python.patch' (../meta/recipes-devtools/createrepo-c/createrepo-c/0001-Do-not-set-PYTHON_INSTALL_DIR-by-running-python.patch)
> 
> ERROR: Applying patch '0001-Do-not-set-PYTHON_INSTALL_DIR-by-running-python.patch' on target directory '/home/ubuntu2204/work/poky/build/tmp/work/x86_64-linux/createrepo-c-native/1.0.4/git'
> 
> CmdError('quilt --quiltrc /home/ubuntu2204/work/poky/build/tmp/work/x86_64-linux/createrepo-c-native/1.0.4/recipe-sysroot-native/etc/quiltrc push', 0, 'stdout:
> 
> stderr: /bin/sh: 1: quilt: not found
> 
> ')
> 
> DEBUG: Python function patch_do_patch finished
> 
> DEBUG: Python function do_patch finished
> 
> I asked Gemini about the error and it suggested installing quilt. But it was already installed.
> Then I gave it the whole log file and then it explained that quilt-native is available in sysroot but not in PATH and so asked me to create a new layer with do_patch:prepend()where I should add the bindir (which should be /usr/bin in the sysroot) to PATH.
> This fixed the error.
> 

Any chance this happened with the sstate-cache/build directory of your 
OOM'ed bitbake run? Maybe it's in an inconsistent state?

I would remove your own new layer and do

bitbake -c cleansstate createrepo-c

followed by

bitbake createrepo-c

and see if you can reproduce.

> Now my questions are
> 1. Regarding the first error, I had to decrease the RAM to 8GB and cores to 2 which cured the error but increased the build time. Is there a better way to handle this without compromising on the build time?

You can limit the number of cores to use for one recipe (or even a 
task), see PARALLEL_MAKE for example.

If I remember correctly, we used to recommend to have at least twice the 
amount of CPUs in free RAM. We also know that above a certain number of 
CPUs, it doesn't scale anymore. But 16 cores should be under that limit 
if I remember correctly.

You may want to have a look into the pressure variables (BB_PRESSURE_* 
in 
https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-user-manual-ref-variables.html) 
that should allow to limit parallel tasks when the CPU/IO/DRAM is 
already under heavy load.

> 2. Regarding the second error, did this occur because of some problems in my system? Or is this a known error with Poky Scarthgap?
> 

I would say the former.

Cheers,
Quentin

