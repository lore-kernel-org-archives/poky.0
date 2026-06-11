Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDD20CD98CC
	for <webhook@archiver.kernel.org>; Thu, 11 Jun 2026 13:45:06 +0000 (UTC)
Received: from PA4PR04CU001.outbound.protection.outlook.com (PA4PR04CU001.outbound.protection.outlook.com [40.107.162.59])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.45952.1781185496759025713
 for <poky@lists.yoctoproject.org>;
 Thu, 11 Jun 2026 06:44:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=bXDj6b6s;
 spf=pass (domain: cherry.de, ip: 40.107.162.59, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fz3IFga02wALgwk1IroQ6A9pE9IA+8iqX5hIo91af/hxs7MuGHLe7zdWhUnabalS3LByumEeMtXLAUl5CtElxpZVnVBXbz97veGkUzCpUNEHKqO7ZC5U/yL9lpS0D31DB2nV+BGNsw8bfjUnY2xqlGQMYr1RQII2Us2wlYYEO4oZ4ieb347HRWDgYqG249Iqpzl9BCSP/QX0avt7nzzpd0hgITkDjjBgBSCazdZU1DDUGJBX1c1USjmsMfceHWjD0NCM2n4qyxkmu3iwsqQd+l2XFqLrHHJtt1aDliWsItrnGVVZf41L1Z4eIhdAZQ2e58kjsJPx5nO0V0rxiHAFkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZaB7x+vUSKJlnAXtw4k5NUS6n8WG3M/6xkM4pSySuvc=;
 b=LP7LpadIoMkEZqb668cSP5URy/aPoLmRgjXc2EbkC0xDq8uRgepDv3u3epFtCwO7ZMah7FzwExWIHyAOdjmPhu5LMTHHCH16WvTnm47JDxCy217IKdiu5AsvDwmf7JLb15r2jVRs9YcrFeaVbKHOQ9og5kPLPLNmA+K8EnYiS9Iucn5kiqZ/1irVlLPT2dt/CE2pQ0pTI3lGs+7QdI3zPMDQZTCLu+syXGP2HxT6o0YS/9NiZKs9tUCr1yHlPH5iDJ0idRtF6aOKQVuKh8WHqY7eH8l7S89uCX+cz7keAGd9OyEW+TnPiC7EQ8Hl9a0ej66OIRCDXaYZesofIF5cmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZaB7x+vUSKJlnAXtw4k5NUS6n8WG3M/6xkM4pSySuvc=;
 b=bXDj6b6sORWl2ifj3V1+SmpuJvOW9b9BXdAx/ZmMMHs0/J80sBmkM3v1zFJWBmGPrH1CXR/tqL89BcbP02RviTI0pB0tMo3zpqa3wxf7L+mpMDTFbME6XehzZrgfzPjWYmqCqFNlLxcVSggEiHRXMOAMKf6+JtbWF2K8L0YmaNc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from PA4PR04MB7743.eurprd04.prod.outlook.com (2603:10a6:102:b8::20)
 by AS8PR04MB8769.eurprd04.prod.outlook.com (2603:10a6:20b:340::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.24; Thu, 11 Jun
 2026 13:44:52 +0000
Received: from PA4PR04MB7743.eurprd04.prod.outlook.com
 ([fe80::9a4e:252f:2fd:97b7]) by PA4PR04MB7743.eurprd04.prod.outlook.com
 ([fe80::9a4e:252f:2fd:97b7%6]) with mapi id 15.21.0071.010; Thu, 11 Jun 2026
 13:44:52 +0000
Message-ID: <0edfc7e8-c636-4278-b074-d7d15fd6c0e8@cherry.de>
Date: Thu, 11 Jun 2026 15:44:51 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] [scarthgap][PATCH] poky.conf: add Ubuntu 26.04 to
 SANITY_TESTED_DISTROS
To: yoann.congal@smile.fr, Poky ML <poky@lists.yoctoproject.org>
References: <20260611132836.489169-1-yoann.congal@smile.fr>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <20260611132836.489169-1-yoann.congal@smile.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VIZP296CA0021.AUTP296.PROD.OUTLOOK.COM
 (2603:10a6:800:2a8::7) To PA4PR04MB7743.eurprd04.prod.outlook.com
 (2603:10a6:102:b8::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB7743:EE_|AS8PR04MB8769:EE_
X-MS-Office365-Filtering-Correlation-Id: d2e9d0dc-c233-4e71-0e67-08dec7bf9d02
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|366016|1800799024|23010399003|4022899009|11063799006|22082099003|56012099006|18002099003;
X-Microsoft-Antispam-Message-Info: 
	safJ5RKCzlH+XaovHVlbs1Ug26rW8qav1xe5Hi8x8vX6rnl5sBGnWtngblu8TKUM0BVKzHyw93QaXPBnuK1bm5EbnH7SBwAmR7ctYuW/qDqtL+3K9FM/nmiqtXF8Ma6qfyfMMNGbAklqG5Fgz2y6rFO7EXoSKMuyXL8PCitb5bSq5QzaGrh0OJgAvQhKegMb4Ep2snqB/PTIXUjVrA3jQf1i6epzIo3z0jbZYOvZmBnDNVBPOOZ0cFoyrqkrtw9qxiO+dTNkrdvtS5vAk3fznVXSVjZzb4z5rMesDKRFrT0/jQFldpEOY5eLbXcHaj6mOBKWxsvO5SVcj+Oe/5sBtjessR0MAnVfAE+ysp5iyxo6pMcnN6aIq4NJ7cOx15oIl5JOUMaInXny5XIlnfEy6xf0AddGnWVZV8bQb6c/QojtgHT7qVASnpZ+kwOIyG20GCPpKxFkhS1QCkp29dOiDCiiGvXNC9sOOeYkGmHnnWy18sAP+KIOVLYzm735kIbGW0iNNBWmwNI+MuhS7hGdjgRdodPAvqcQbe9WwJP9hJQ49Cr2MPVcsapy30NrDAhwG+ckYn+ElbF1mU+7k7Qipjo2xCU/JovKQWeIpQkRa02KHLxE3J2ORaIaRf9ap+ycLpUsAbqxW1hXKZ0yghCUJw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB7743.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(23010399003)(4022899009)(11063799006)(22082099003)(56012099006)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cldnSzdBclNaZk1MbEdGd0h4VXR5MlpyVHdVU2JieW1KOEE5U3pxM296b2dI?=
 =?utf-8?B?TkhIbUlrWlVISm84ZngzTEtSekdFRW9LYzI1a3RZWGFqUk14VHYwV3B6dTRl?=
 =?utf-8?B?aGlIRGZ5WHhIcTF2SVNlMTlac3JDZkdZWHcwQzN1M20xZDdQVXp3QlFFRGpy?=
 =?utf-8?B?VTZFTjJVYTJDQTNzR3ZzRkFIdmpUR09SUDRrcFNVcDhPb0dJVU1LckxVblEx?=
 =?utf-8?B?ZTlZZDVLV0lyNXlUTW1RL3VXSk1GNUNDTUM0YmZtYU5KdGtqWGpoNXkwdnp0?=
 =?utf-8?B?QzdlSEZHZUNkRFpuZ0FUQ2VJZGJLaXYzVEJLV2V4dXZxeENnUmpFUU42NVlB?=
 =?utf-8?B?Sy8wbWZNM2kxSnVFbDFmdGpybE9KWE5LUE12aVk2Q2ZKMFJVSVBTK1ZtUjFV?=
 =?utf-8?B?VjFVblJCU25FekFGRVZRRVFXQmUvRTd3QkNxd2ZoMXJSTmNETUp5TktnS0Z4?=
 =?utf-8?B?VW9LUG9QMTA0UkFyTTFYOHg1bGdYOS9NYzJrNEplQmx3YTE5NjNKVFdBTGFq?=
 =?utf-8?B?bXFRQWJTQnllZjh1ODJHeEZEVnNrU3pnendJSnFZTVhaT3lsVU5acE9jUU9w?=
 =?utf-8?B?czdOWXlMZmlST2ZhbExRVU5DZEFKNGNaVVh5d25mOWdwaUdIOXpabWxXZW8r?=
 =?utf-8?B?M0RHQko3bWtONm1yOXZmeGtTdnU2c1N0RUJWVzl3RWpmOXR1YWhRUXpWVXo5?=
 =?utf-8?B?azB4WEg3MVRMK2tLS3NOWEZmMGFKbzM0UkZGeVZlRit0cWc3QzJMb3pGNElC?=
 =?utf-8?B?QzNqTU1PelM2MU9yZ0ZBR2NvdkxaVXdQQ0xhYUFWQ2QvYURvK2k5ZlJFTFJl?=
 =?utf-8?B?ci81YWR4ZU82MDl4ZXdiakdYOGYxaXNxalcvT0R0aWZmbjU1VGRFenRjWlk0?=
 =?utf-8?B?WmRUeW9LUmZnaTVyOUtOdE1EZEV5VG1JcWI4UkxQRUxxSXhzNmcvcGlEZzly?=
 =?utf-8?B?SlE0bzdmN3BtUEpFbzBXRHgwa3hZR3l2SkkyanppdEtackZzM0tpc2ZZVVFo?=
 =?utf-8?B?NENJckVuaXJnNUZ2T2JrSnp0ZE1NRVVPRlhQd0owaUczTHFWdmdVdmRnd0p1?=
 =?utf-8?B?Z2lXaW5qNmJjN3RvQTJodFRiMTQ0QnB0dVYwVzFIcG5vL1VET2RjdXBGVGxi?=
 =?utf-8?B?UWk4TTdPQ0tUTGd6TG9HdjduenJIckFENFg3QXhMYnFwRFlQYjdBQ3MzY1pC?=
 =?utf-8?B?ZzNxNW9lOXc5Rlhib0lmTEphOUJnS3QvbjdPZkxWNzUxdzY0cVo2Q1NDQ2ds?=
 =?utf-8?B?VTgreUtUN2xmTlk2RSt3WExBNXJTZWh4aXlaT2ZKVy90Y0tjcWErais0Mm5k?=
 =?utf-8?B?TFFNZkMrdERvV2ZiTGxod3B3dTEyN2QxQ2ZCWXJhWmYyOEdGQzlVOWdEWkNs?=
 =?utf-8?B?VkFhOVFuUW85VFJyVXNCb0hUbWxyOU85UzhXZVNDRjlKdDhTNjFtSzd2RUdW?=
 =?utf-8?B?Y1BrZEZnaDF1eGlvU1ZCQ0hWdjJQZlRJZFN6R3FYT2t6dlNjTVNKZk14S0dh?=
 =?utf-8?B?NFYwbmpPK1ZYbG1INFl2WGtaM0FvTnpISGMxOU5KMU1HbTRZYU9zK3ZtSWlr?=
 =?utf-8?B?N2FHcE1pR3N6Mm9SdXRpVXh2Z1ArT0prNWgvOWJ3elhhQ2JCS2F0QmRrV1cz?=
 =?utf-8?B?UnZOUmZvTnJLWUg4Y2JZd0sxZUNCMkZ3Q1hGNTNRaVVTenM5Mnd6MmJ1TmxX?=
 =?utf-8?B?Ni9JU2hXdXZHQ2JKL0x5R3NMY1djWEk2UVZTMWFQb0tzTnAwSER2K2J1YmdG?=
 =?utf-8?B?dmhVMXZIc3pGclh2VGpqM2xhL2t0QUIzVmFYc1BzYVU0RlRKblU2ZThsWkpP?=
 =?utf-8?B?b2xuMVFzZ1VVNTUrREQwSm5wL01XKzFPUHBaTm5kTTl0MnRVNXdpZ2NrNTZz?=
 =?utf-8?B?K2RkSDEzVUI1d2Y2WWhSN3FDaXBMdnB6aTNha2w1c2ZDNmlXTmpJbzVibGdG?=
 =?utf-8?B?Y0ZhNUtsN3hpWUJGeldqTkROSEc3Zis0VURCWGNITmpyOG5xdXJyYU55Q3Fy?=
 =?utf-8?B?RkErcHNlVnRBTFZ4MUsrS3FNbENkZWxUc1ljZ0RUOHdWa3JibnRhVllQM1kx?=
 =?utf-8?B?V1pLWFYyZUdzL2M4L3BwTDZKTmRmK0hYaUdvSjlRVU9ZWnE2WlF0ZFQ5dFAr?=
 =?utf-8?B?R3pUNzNUamdrUW12TFNtSW90U3Y2c0V3NlIrUjVuSWdxa0lSYzhsUXArY0NN?=
 =?utf-8?B?K21zRFFXZGpaU2cvTXZXbXFXeE96djFxUU1OZDhidUNVNkErK2hwRlBBRGxy?=
 =?utf-8?B?TGFlK2ZDNmN1emR6cG5JUmNvSFN1MGt6WkdINmM4QzkzQ3IxenZHMVJiRVNq?=
 =?utf-8?B?N283aUE3Yzh4WE81dVpvWmpjSG4rSXc0TkFTekRKOFVLMGtHNTdWQT09?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: d2e9d0dc-c233-4e71-0e67-08dec7bf9d02
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB7743.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2026 13:44:52.1237
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +TWa2xCnDVkKi7imkhpV1sE69irwHnVNjyYSHXm4PFyZT5nyTaJPqA0thlDWlwVat7soreWan/rSamE44JpDnHjfW4DaC5gaajPvs1H/K9w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8769
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 11 Jun 2026 13:45:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13922

Hi Yoann,

Can you consider sending a patch to the scarthgap docs once that's merged?

I believe documentation/ref-manual/system-requirements.rst should be 
modified to list the newly supported distro (but haven't checked if 
there are other places where changes need to be made as well).

Cheers,
Quentin

On 6/11/26 3:28 PM, Yoann Congal via lists.yoctoproject.org wrote:
> From: Yoann Congal <yoann.congal@smile.fr>
> 
> A Ubuntu 26.04 worker is available on autobuilder and ran successfully:
> * bringup-fast https://autobuilder.yoctoproject.org/valkyrie/#/builders/97/builds/22
> * bringup https://autobuilder.yoctoproject.org/valkyrie/#/builders/96/builds/34
>    This one was from the -nut branch but it did not change during merge
> 
> Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
> ---
>   meta-poky/conf/distro/poky.conf | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
> index a7dc4046..177e5e04 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -39,6 +39,7 @@ SANITY_TESTED_DISTROS ?= " \
>               ubuntu-22.04 \n \
>               ubuntu-23.04 \n \
>               ubuntu-24.04 \n \
> +            ubuntu-26.04 \n \
>               fedora-38 \n \
>               fedora-39 \n \
>               fedora-40 \n \
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13921): https://lists.yoctoproject.org/g/poky/message/13921
> Mute This Topic: https://lists.yoctoproject.org/mt/119756398/6293953
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [quentin.schulz@cherry.de]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


